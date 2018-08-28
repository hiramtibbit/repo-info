<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `haproxy`

-	[`haproxy:1`](#haproxy1)
-	[`haproxy:1.5`](#haproxy15)
-	[`haproxy:1.5.19`](#haproxy1519)
-	[`haproxy:1.5.19-alpine`](#haproxy1519-alpine)
-	[`haproxy:1.5-alpine`](#haproxy15-alpine)
-	[`haproxy:1.6`](#haproxy16)
-	[`haproxy:1.6.14`](#haproxy1614)
-	[`haproxy:1.6.14-alpine`](#haproxy1614-alpine)
-	[`haproxy:1.6-alpine`](#haproxy16-alpine)
-	[`haproxy:1.7`](#haproxy17)
-	[`haproxy:1.7.11`](#haproxy1711)
-	[`haproxy:1.7.11-alpine`](#haproxy1711-alpine)
-	[`haproxy:1.7-alpine`](#haproxy17-alpine)
-	[`haproxy:1.8`](#haproxy18)
-	[`haproxy:1.8.13`](#haproxy1813)
-	[`haproxy:1.8.13-alpine`](#haproxy1813-alpine)
-	[`haproxy:1.8-alpine`](#haproxy18-alpine)
-	[`haproxy:1-alpine`](#haproxy1-alpine)
-	[`haproxy:alpine`](#haproxyalpine)
-	[`haproxy:latest`](#haproxylatest)

## `haproxy:1`

```console
$ docker pull haproxy@sha256:7dd7e5ef68fe5d1c91436743b286abc04c46145586bfbe96f29e6d80368fb8c6
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

### `haproxy:1` - linux; amd64

```console
$ docker pull haproxy@sha256:448a04e2e749b69695c3b75fb41f88fa7f9023e3120a77bffbdde43af2ca9593
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28062532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:991c6e578a0d6f0b1c2e0ddf6fcf0ef5a9de18283dc403c4479e5946dbe5408f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Wed, 25 Jul 2018 17:35:20 GMT
ENV HAPROXY_MAJOR=1.8
# Tue, 31 Jul 2018 16:45:37 GMT
ENV HAPROXY_VERSION=1.8.13
# Tue, 31 Jul 2018 16:45:37 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Tue, 31 Jul 2018 16:46:22 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 31 Jul 2018 16:46:23 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 31 Jul 2018 16:46:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Jul 2018 16:46:23 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a9c22a0d424622e6bc9cc4369a375fad9fd1cc62854282dd104cce2fd65f978`  
		Last Modified: Tue, 31 Jul 2018 16:47:37 GMT  
		Size: 5.6 MB (5576246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eaf021ab522b6c5c15ca19a4d0cb451a3cf342ea2d9dd11d510f9754d9e756f`  
		Last Modified: Tue, 31 Jul 2018 16:47:35 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:d6c603e6925957f87dcaa0cfb6d2043b6b79a85f6cfbde7eedc03c8a3c228b5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26391858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24e3fcb12911b9a6e694828b00b7de67e215319efd647903664d69002eb37b91`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:54:08 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 08:48:36 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 08:48:37 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 08:49:31 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 08:48:57 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:48:58 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 28 Aug 2018 08:48:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:48:58 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:235e2c34c6b727f2b00aae7eed907f84338b4002c487e0caaa123a50334c0810`  
		Last Modified: Tue, 17 Jul 2018 09:09:00 GMT  
		Size: 21.2 MB (21162647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d3dbab12711ba8abb2fef7c0883c4643b7d70e7f75b22048abc60b655cfee89`  
		Last Modified: Wed, 01 Aug 2018 08:49:48 GMT  
		Size: 5.2 MB (5228831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e866219e8841c6b4c5e95cff7cb7202c5dbb12ad83b5b7c2b1b60904e52061e`  
		Last Modified: Tue, 28 Aug 2018 08:49:56 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:d7ba0e608800eb7cace102669f5a9c5678239456c14ba975006a1c2117cdd401
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24363426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5de1b89d98930132541bd7a77c1fb36173dffe994a19556e3473dc0a08ff363d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 12:02:03 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 12:02:26 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 12:02:27 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 12:03:19 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 01 Aug 2018 12:03:20 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 12:03:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 12:03:20 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d4f2ad4558a359ca0b29ab64098fd8991d577e558c18b4acc7bb04080bfe6f`  
		Last Modified: Wed, 01 Aug 2018 12:03:38 GMT  
		Size: 5.1 MB (5092863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1245234b05aee58ce01e23ad6d00ac12e87d054a557a3f43d65b4a1e4de97036`  
		Last Modified: Wed, 01 Aug 2018 12:03:37 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:4958b6874d96a8c421d68351bc9c38d2b7f37790c236663ca5a648a01fbdece5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25526301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e77219b2422be68b70a98d4638b65e515da01428ae4761fe15a4a28a0302553`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 09:05:24 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 08:52:53 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 08:52:54 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 08:54:49 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 01 Aug 2018 08:54:50 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 08:54:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 08:54:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b63efd500a726cb366891bba79d56deb3e645e9f31359e4153ededf78f421bf`  
		Last Modified: Wed, 01 Aug 2018 08:56:44 GMT  
		Size: 5.2 MB (5194274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31cd73de60dc2e2378f4a4626a8bcd8e363dfdaf60dd7b5894dd66b6db45c1b`  
		Last Modified: Wed, 01 Aug 2018 08:56:43 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; 386

```console
$ docker pull haproxy@sha256:591a3bca4c83fc374a0a18966c639ffc6f84d35770b981e4073ce11b25a9492a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28641759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ce3b317facfbcbd6c3290e9ef2039974cd06ddecb2977206c531590e251ac88`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 10:51:45 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 11:04:18 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 11:04:18 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 11:05:09 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 01 Aug 2018 11:05:09 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 11:05:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 11:05:10 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07347f3b9bde7f131ece4e3936017260bec03787d0b564e92e2683d5ea0b35a0`  
		Last Modified: Wed, 01 Aug 2018 11:06:28 GMT  
		Size: 5.5 MB (5515002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b4e46830cc4f8c823b36f98153f547dd106971c7b7d6a22b71ce4d0b10c37e`  
		Last Modified: Wed, 01 Aug 2018 11:06:25 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; ppc64le

```console
$ docker pull haproxy@sha256:c70dc211d3a9038150e6345128bd06f4950c0cb596d44815df2228b7140ec87c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (27977734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67a1ea930b11c9aaf9701f0c3bf27897ab3c7007585bf7e5f646eb70a4dcd600`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:59:57 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 08:49:35 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 08:49:43 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 09:05:11 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 08:50:25 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:50:26 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 28 Aug 2018 08:50:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:50:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48b1f3e880a86259c0c12b4a1c5d2b76d9682175c07082b834102316604f88b`  
		Last Modified: Wed, 01 Aug 2018 09:09:15 GMT  
		Size: 5.2 MB (5236909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028dc0ab404ec6584881ba98b080f404645bfdc5f108988f7f7ac8454ca44206`  
		Last Modified: Tue, 28 Aug 2018 08:52:55 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; s390x

```console
$ docker pull haproxy@sha256:941cd41b244bd34d331c65243b708bb2f6518056a387fc6483b5f961f65cceb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27733115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb6d1b3faa28d67db786df11e20555c0ee89617cc566728982c8460bbc23ec5d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 11:48:59 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 11:46:18 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 11:46:18 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 11:46:52 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 01 Aug 2018 11:46:53 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 11:46:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 11:46:53 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e154bae0117d7f9bc79428d41eea228da45b9812a9ae09be3a67c83cd7518831`  
		Last Modified: Wed, 01 Aug 2018 11:47:42 GMT  
		Size: 5.4 MB (5398218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922a140f3945b6aefb4b17d715621b53fa17cb5c78c552969ecd4987a1e52dac`  
		Last Modified: Wed, 01 Aug 2018 11:47:42 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5`

```console
$ docker pull haproxy@sha256:3549297299caaa1821b9229c450bf2451fde2758b119a1617e3d9d5a5179dfd3
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

### `haproxy:1.5` - linux; amd64

```console
$ docker pull haproxy@sha256:8a95c3dda7ec634e612000b1fd971fb810c3e3f3eeb1c9273df586fcdc636f3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26614285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1609edc2b7a55bc51e4bcc97baa9c5532897fbf60887f39d5ea2cd2011a91ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Wed, 25 Jul 2018 17:29:07 GMT
ENV HAPROXY_MAJOR=1.5
# Wed, 25 Jul 2018 17:29:08 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 25 Jul 2018 17:29:08 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Wed, 25 Jul 2018 17:29:53 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 25 Jul 2018 17:29:54 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 25 Jul 2018 17:29:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:29:54 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72357f34176931c9f38ac582742ca63d268eafc6b0ec4660f859322e5de1d9a4`  
		Last Modified: Wed, 25 Jul 2018 17:37:32 GMT  
		Size: 4.1 MB (4127976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868e57e0bb9ec4c4e0fd29584de72f3758c6bb212d6b009738bc124babc4de87`  
		Last Modified: Wed, 25 Jul 2018 17:37:31 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:7831cdd67dbc3e200f770ca10ffd067247c64fba06d5ff91c5e78f358419296d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24837687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e14ce12f586c33490010ea87131f654947a63303cd911fc8dd293dc542ac1c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:50:45 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 26 Jul 2018 08:50:45 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 26 Jul 2018 08:50:46 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 26 Jul 2018 08:51:37 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 08:48:27 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:48:28 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 08:48:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:48:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:235e2c34c6b727f2b00aae7eed907f84338b4002c487e0caaa123a50334c0810`  
		Last Modified: Tue, 17 Jul 2018 09:09:00 GMT  
		Size: 21.2 MB (21162647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22c3065bee14c39b378e5e8dd3965d10e4d1e9de30d69fc4bd7576f369ec417`  
		Last Modified: Thu, 26 Jul 2018 08:55:07 GMT  
		Size: 3.7 MB (3674637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caea749256dad63338b2e9d59bacce21471d9112542c8603d45e879607420930`  
		Last Modified: Tue, 28 Aug 2018 08:49:10 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:f42c12ebca7d23a043961a1af56a06f94cad3dd244019f118e7f5d041045fcfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.9 MB (22853347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad7dce60505d7617751b19a55f0c3105bc28b97df268fb5e71daadc4bb15747e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 11:58:03 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 26 Jul 2018 11:58:14 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 26 Jul 2018 11:58:14 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 26 Jul 2018 11:59:00 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 26 Jul 2018 11:59:11 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 11:59:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:59:11 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d0fe9a8199718338cecd40e9a95ffe65a1e2947257e4d252ed3ebfe6f0e8a1e`  
		Last Modified: Thu, 26 Jul 2018 12:03:03 GMT  
		Size: 3.6 MB (3582762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3597bfa8b7a1d7a9943b1d637d0e347cfefb128cb2ffe25c8de5cd79d74ef703`  
		Last Modified: Thu, 26 Jul 2018 12:03:02 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:4aedd1e062d2006b133b918c61880a23a6083140c0fd8978dc258edfc2f4ee7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (24033422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df1dccec3bf021168b3f5e623ca8cc50082c5adacefc4f0530f7d3891a01d58f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:51:51 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 26 Jul 2018 08:51:52 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 26 Jul 2018 08:51:53 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 26 Jul 2018 08:53:35 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 09:37:37 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 09:37:38 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 09:37:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 09:37:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40098aba2ff3d6615ee44e8d0ad1c74cff7cb097d95e710840b5a5b66e6d0985`  
		Last Modified: Thu, 26 Jul 2018 09:11:02 GMT  
		Size: 3.7 MB (3701371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ff6a9ab351a71c390fb2299aa0da8f50aedc794d9b09c00ceff7ccb40605f`  
		Last Modified: Tue, 28 Aug 2018 09:41:34 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; 386

```console
$ docker pull haproxy@sha256:7e8e647116deab38cd07ef2fe7b44e7927a5277fa91016fdb151ca7957015738
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 MB (27020739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70fc04c532a786be4ad924212307c4f86807ab73cf2d855011e0fc6287668dc3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 10:45:42 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 26 Jul 2018 10:45:42 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 26 Jul 2018 10:45:42 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 26 Jul 2018 10:46:33 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 26 Jul 2018 10:46:33 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 10:46:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 10:46:34 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20176025e5a0c34d504d06c91e657a644bddbbe2f63487919f0e85cb41bd29a`  
		Last Modified: Thu, 26 Jul 2018 10:53:38 GMT  
		Size: 3.9 MB (3893960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4620b41824dc66cafe9b4333a6d020e0a438e16ec3a852ef992841d55de31596`  
		Last Modified: Thu, 26 Jul 2018 10:53:36 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; ppc64le

```console
$ docker pull haproxy@sha256:567b563c4a4fe31383844217d420a002b4b444b6b36c06c3c137e40f7bac481a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26586273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84a19215fa774a4cec5adfd3c8e090c812abf251af414b249a75789b03a223f6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:33:32 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 26 Jul 2018 08:33:33 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 26 Jul 2018 08:33:35 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 26 Jul 2018 08:38:21 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 08:48:55 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:48:56 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 08:48:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:48:58 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba16f5e9f7d4ea7659e1230b3cf68a55028dd9170f5c2a99d3528c7b040ffea`  
		Last Modified: Thu, 26 Jul 2018 09:10:50 GMT  
		Size: 3.8 MB (3845424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bba598f8f60a91af0e46d4da6f5a13bf9ec4105c7032e3c8ba93c07f019e9a2`  
		Last Modified: Tue, 28 Aug 2018 08:51:00 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; s390x

```console
$ docker pull haproxy@sha256:73a15432898e38808991fb95db525c9877135fe26469c1eeb6ff5dc897442840
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.3 MB (26288197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94be7a38e32bed422468152e58092040c6bf9490653c091e16a16261dd82f187`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 11:42:04 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 26 Jul 2018 11:42:04 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 26 Jul 2018 11:42:05 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 26 Jul 2018 11:43:03 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 26 Jul 2018 11:43:03 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 11:43:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:43:04 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81937fa34cdd7525f0b0f7c40953244cf87f276ad6495206cb3be2c4a24746b7`  
		Last Modified: Thu, 26 Jul 2018 11:51:13 GMT  
		Size: 4.0 MB (3953278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c8aa0f602b6b754929ddfb01cdf69e8d46f47d35a4764577760e925f35a503`  
		Last Modified: Thu, 26 Jul 2018 11:51:12 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5.19`

```console
$ docker pull haproxy@sha256:3549297299caaa1821b9229c450bf2451fde2758b119a1617e3d9d5a5179dfd3
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

### `haproxy:1.5.19` - linux; amd64

```console
$ docker pull haproxy@sha256:8a95c3dda7ec634e612000b1fd971fb810c3e3f3eeb1c9273df586fcdc636f3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26614285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1609edc2b7a55bc51e4bcc97baa9c5532897fbf60887f39d5ea2cd2011a91ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Wed, 25 Jul 2018 17:29:07 GMT
ENV HAPROXY_MAJOR=1.5
# Wed, 25 Jul 2018 17:29:08 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 25 Jul 2018 17:29:08 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Wed, 25 Jul 2018 17:29:53 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 25 Jul 2018 17:29:54 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 25 Jul 2018 17:29:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:29:54 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72357f34176931c9f38ac582742ca63d268eafc6b0ec4660f859322e5de1d9a4`  
		Last Modified: Wed, 25 Jul 2018 17:37:32 GMT  
		Size: 4.1 MB (4127976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868e57e0bb9ec4c4e0fd29584de72f3758c6bb212d6b009738bc124babc4de87`  
		Last Modified: Wed, 25 Jul 2018 17:37:31 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:7831cdd67dbc3e200f770ca10ffd067247c64fba06d5ff91c5e78f358419296d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24837687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e14ce12f586c33490010ea87131f654947a63303cd911fc8dd293dc542ac1c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:50:45 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 26 Jul 2018 08:50:45 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 26 Jul 2018 08:50:46 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 26 Jul 2018 08:51:37 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 08:48:27 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:48:28 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 08:48:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:48:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:235e2c34c6b727f2b00aae7eed907f84338b4002c487e0caaa123a50334c0810`  
		Last Modified: Tue, 17 Jul 2018 09:09:00 GMT  
		Size: 21.2 MB (21162647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22c3065bee14c39b378e5e8dd3965d10e4d1e9de30d69fc4bd7576f369ec417`  
		Last Modified: Thu, 26 Jul 2018 08:55:07 GMT  
		Size: 3.7 MB (3674637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caea749256dad63338b2e9d59bacce21471d9112542c8603d45e879607420930`  
		Last Modified: Tue, 28 Aug 2018 08:49:10 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:f42c12ebca7d23a043961a1af56a06f94cad3dd244019f118e7f5d041045fcfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.9 MB (22853347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad7dce60505d7617751b19a55f0c3105bc28b97df268fb5e71daadc4bb15747e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 11:58:03 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 26 Jul 2018 11:58:14 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 26 Jul 2018 11:58:14 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 26 Jul 2018 11:59:00 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 26 Jul 2018 11:59:11 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 11:59:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:59:11 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d0fe9a8199718338cecd40e9a95ffe65a1e2947257e4d252ed3ebfe6f0e8a1e`  
		Last Modified: Thu, 26 Jul 2018 12:03:03 GMT  
		Size: 3.6 MB (3582762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3597bfa8b7a1d7a9943b1d637d0e347cfefb128cb2ffe25c8de5cd79d74ef703`  
		Last Modified: Thu, 26 Jul 2018 12:03:02 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:4aedd1e062d2006b133b918c61880a23a6083140c0fd8978dc258edfc2f4ee7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (24033422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df1dccec3bf021168b3f5e623ca8cc50082c5adacefc4f0530f7d3891a01d58f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:51:51 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 26 Jul 2018 08:51:52 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 26 Jul 2018 08:51:53 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 26 Jul 2018 08:53:35 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 09:37:37 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 09:37:38 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 09:37:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 09:37:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40098aba2ff3d6615ee44e8d0ad1c74cff7cb097d95e710840b5a5b66e6d0985`  
		Last Modified: Thu, 26 Jul 2018 09:11:02 GMT  
		Size: 3.7 MB (3701371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ff6a9ab351a71c390fb2299aa0da8f50aedc794d9b09c00ceff7ccb40605f`  
		Last Modified: Tue, 28 Aug 2018 09:41:34 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; 386

```console
$ docker pull haproxy@sha256:7e8e647116deab38cd07ef2fe7b44e7927a5277fa91016fdb151ca7957015738
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 MB (27020739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70fc04c532a786be4ad924212307c4f86807ab73cf2d855011e0fc6287668dc3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 10:45:42 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 26 Jul 2018 10:45:42 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 26 Jul 2018 10:45:42 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 26 Jul 2018 10:46:33 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 26 Jul 2018 10:46:33 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 10:46:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 10:46:34 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20176025e5a0c34d504d06c91e657a644bddbbe2f63487919f0e85cb41bd29a`  
		Last Modified: Thu, 26 Jul 2018 10:53:38 GMT  
		Size: 3.9 MB (3893960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4620b41824dc66cafe9b4333a6d020e0a438e16ec3a852ef992841d55de31596`  
		Last Modified: Thu, 26 Jul 2018 10:53:36 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; ppc64le

```console
$ docker pull haproxy@sha256:567b563c4a4fe31383844217d420a002b4b444b6b36c06c3c137e40f7bac481a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26586273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84a19215fa774a4cec5adfd3c8e090c812abf251af414b249a75789b03a223f6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:33:32 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 26 Jul 2018 08:33:33 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 26 Jul 2018 08:33:35 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 26 Jul 2018 08:38:21 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 08:48:55 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:48:56 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 08:48:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:48:58 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba16f5e9f7d4ea7659e1230b3cf68a55028dd9170f5c2a99d3528c7b040ffea`  
		Last Modified: Thu, 26 Jul 2018 09:10:50 GMT  
		Size: 3.8 MB (3845424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bba598f8f60a91af0e46d4da6f5a13bf9ec4105c7032e3c8ba93c07f019e9a2`  
		Last Modified: Tue, 28 Aug 2018 08:51:00 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; s390x

```console
$ docker pull haproxy@sha256:73a15432898e38808991fb95db525c9877135fe26469c1eeb6ff5dc897442840
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.3 MB (26288197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94be7a38e32bed422468152e58092040c6bf9490653c091e16a16261dd82f187`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 11:42:04 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 26 Jul 2018 11:42:04 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 26 Jul 2018 11:42:05 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 26 Jul 2018 11:43:03 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 26 Jul 2018 11:43:03 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 11:43:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:43:04 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81937fa34cdd7525f0b0f7c40953244cf87f276ad6495206cb3be2c4a24746b7`  
		Last Modified: Thu, 26 Jul 2018 11:51:13 GMT  
		Size: 4.0 MB (3953278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c8aa0f602b6b754929ddfb01cdf69e8d46f47d35a4764577760e925f35a503`  
		Last Modified: Thu, 26 Jul 2018 11:51:12 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5.19-alpine`

```console
$ docker pull haproxy@sha256:1c5c1f8762538e16167aaee42e7267c6bb783fabc73c2853f969983b907433ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:1.5.19-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:97ceb8961eb0546f0bd0d0d5282d5cd52220d37418fa7372fe279d4c977bf8bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7105465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba5801d4e959fbaa019df2608e5b2ea06f57db0e9333426ac4fca5ab1e7669e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 25 Jul 2018 17:30:12 GMT
ENV HAPROXY_MAJOR=1.5
# Wed, 25 Jul 2018 17:30:12 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 25 Jul 2018 17:30:12 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Wed, 25 Jul 2018 17:30:27 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 25 Jul 2018 17:30:28 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 25 Jul 2018 17:30:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:30:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327c3fedb5d6e79ea42c979a7f9a63fd2f11fdadb06a5e33a3246b4d5a837fbf`  
		Last Modified: Wed, 25 Jul 2018 17:38:15 GMT  
		Size: 4.9 MB (4898520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21671ed0d6c1078c5ca155940a15773d2263d314104a385947ae3fb440765c96`  
		Last Modified: Wed, 25 Jul 2018 17:38:13 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:50531b34917802e77c1ec01edb6452b607b788d7865eef14a91d18990642c93f
```

-	Docker Version: 17.05.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5109517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a8f65f403de06bb84ddfe892bc02c9e442e8895c71f249431e0020ba29e01eb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 02 Jun 2017 21:12:32 GMT
ADD file:be7cfe66d037514dfa5b3049f3c2912458d1f83132ef9d13780c84a85353cc80 in / 
# Fri, 02 Jun 2017 21:12:33 GMT
ENV TZ=UTC
# Fri, 02 Jun 2017 21:12:35 GMT
CMD ["sh"]
# Sat, 03 Jun 2017 05:21:34 GMT
ENV HAPROXY_MAJOR=1.5
# Sat, 03 Jun 2017 05:21:35 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 03 Jun 2017 05:21:36 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Sat, 03 Jun 2017 05:25:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 03 Jun 2017 05:25:42 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Sat, 03 Jun 2017 05:25:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 03 Jun 2017 05:25:43 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47c5ef52fac1f1ab481cccaf684fd041d64aaca4b9fd16d2fef19ef1aaaed084`  
		Last Modified: Sat, 13 May 2017 05:38:04 GMT  
		Size: 1.9 MB (1867536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b27052ac3a8878c5e30d294a5c2d3271b7c79fe8cf7f5e5b9e14594b3ce62c`  
		Last Modified: Sat, 03 Jun 2017 05:36:33 GMT  
		Size: 3.2 MB (3241634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba728e06a48ae9e13ea6641a95a1a4a928aaee15448647048513b0bc04033d5c`  
		Last Modified: Sat, 03 Jun 2017 05:36:31 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:f6fdf40a15158773349455394d738319c6569bd32287f938337d5e542fa5dea9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6571322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1206679d39facfae33b4ac61cac5c2627e5e4b6c51185c6dc1db44a1ec504e5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 08:54:21 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 26 Jul 2018 08:54:22 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 26 Jul 2018 08:54:23 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 26 Jul 2018 08:54:51 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 28 Aug 2018 09:38:04 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 09:38:06 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 09:38:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 09:38:07 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c793874fc2a6bc4d69cd2add91969aa481f5fe3f5b1f44578dc1fca3438ce6f`  
		Last Modified: Thu, 26 Jul 2018 09:11:40 GMT  
		Size: 4.5 MB (4471229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13029b2362bee3667959ce84e70ac253b6922b9b39a2aa0b978272dd12d5f639`  
		Last Modified: Tue, 28 Aug 2018 09:42:22 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:02b776fe7961722f1e37c7d0781bf6f82698496280da307db9cd690e87019d38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6916429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec62bbc79b947f256346c7a070cf906238122037c3bef6065ff2dc7d1ee8842b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 10:47:03 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 26 Jul 2018 10:47:03 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 26 Jul 2018 10:47:03 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 26 Jul 2018 10:47:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Jul 2018 10:47:37 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 10:47:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 10:47:38 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a4d3c5e42da01432cc266135fc28882f05e47f1770ba871b5b4e86ac5a620a`  
		Last Modified: Thu, 26 Jul 2018 10:54:12 GMT  
		Size: 4.6 MB (4644931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569d7827b2dfb2580a990c22db728472a71c6eb1c1933ea1a95fcc41c70806a8`  
		Last Modified: Thu, 26 Jul 2018 10:54:11 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:018926f43a010d2f12413c3bb23504aa364b625964d82e3f664c5632730bfcb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6790232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f6c31795fc064ad04adf621a66eb6ee2fc995e33662881601ef0d9bcfb3901a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 08:39:02 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 26 Jul 2018 08:39:05 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 26 Jul 2018 08:39:17 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 26 Jul 2018 08:40:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 28 Aug 2018 08:49:14 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:49:15 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 08:49:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:49:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e2c2fef751f4c5a3a3b6967ed45c8dec6b5fdded315cb84a789a243d88b451`  
		Last Modified: Thu, 26 Jul 2018 09:11:44 GMT  
		Size: 4.6 MB (4594792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be8e0beab34cb9c02283bcf6034f2bb7f2ad5f9fe8b6645e9fe152198ad9113`  
		Last Modified: Tue, 28 Aug 2018 08:51:19 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:09bb62c59ca6d1a4be92652ea9b6e95a94587b4699fd73f13d44ca70bd60ad5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6881650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:952bca7be567c667bef7e4a282f47424de21a431944e1eff7a992f08c4eaf4fb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 11:43:16 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 26 Jul 2018 11:43:17 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 26 Jul 2018 11:43:18 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 26 Jul 2018 11:43:44 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Jul 2018 11:43:45 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 11:43:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:43:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554f245e28bd9150cb645cc2643b3d168771bc1e5d0b8e4b5d63a4744b200916`  
		Last Modified: Thu, 26 Jul 2018 11:51:28 GMT  
		Size: 4.6 MB (4573601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3878bdb64e5a374fb5bcb37dc095d45353119cc641def34f695da4a361f2db`  
		Last Modified: Thu, 26 Jul 2018 11:51:27 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5-alpine`

```console
$ docker pull haproxy@sha256:1c5c1f8762538e16167aaee42e7267c6bb783fabc73c2853f969983b907433ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:1.5-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:97ceb8961eb0546f0bd0d0d5282d5cd52220d37418fa7372fe279d4c977bf8bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7105465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba5801d4e959fbaa019df2608e5b2ea06f57db0e9333426ac4fca5ab1e7669e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 25 Jul 2018 17:30:12 GMT
ENV HAPROXY_MAJOR=1.5
# Wed, 25 Jul 2018 17:30:12 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 25 Jul 2018 17:30:12 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Wed, 25 Jul 2018 17:30:27 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 25 Jul 2018 17:30:28 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 25 Jul 2018 17:30:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:30:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327c3fedb5d6e79ea42c979a7f9a63fd2f11fdadb06a5e33a3246b4d5a837fbf`  
		Last Modified: Wed, 25 Jul 2018 17:38:15 GMT  
		Size: 4.9 MB (4898520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21671ed0d6c1078c5ca155940a15773d2263d314104a385947ae3fb440765c96`  
		Last Modified: Wed, 25 Jul 2018 17:38:13 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:50531b34917802e77c1ec01edb6452b607b788d7865eef14a91d18990642c93f
```

-	Docker Version: 17.05.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5109517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a8f65f403de06bb84ddfe892bc02c9e442e8895c71f249431e0020ba29e01eb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 02 Jun 2017 21:12:32 GMT
ADD file:be7cfe66d037514dfa5b3049f3c2912458d1f83132ef9d13780c84a85353cc80 in / 
# Fri, 02 Jun 2017 21:12:33 GMT
ENV TZ=UTC
# Fri, 02 Jun 2017 21:12:35 GMT
CMD ["sh"]
# Sat, 03 Jun 2017 05:21:34 GMT
ENV HAPROXY_MAJOR=1.5
# Sat, 03 Jun 2017 05:21:35 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 03 Jun 2017 05:21:36 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Sat, 03 Jun 2017 05:25:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 03 Jun 2017 05:25:42 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Sat, 03 Jun 2017 05:25:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 03 Jun 2017 05:25:43 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47c5ef52fac1f1ab481cccaf684fd041d64aaca4b9fd16d2fef19ef1aaaed084`  
		Last Modified: Sat, 13 May 2017 05:38:04 GMT  
		Size: 1.9 MB (1867536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b27052ac3a8878c5e30d294a5c2d3271b7c79fe8cf7f5e5b9e14594b3ce62c`  
		Last Modified: Sat, 03 Jun 2017 05:36:33 GMT  
		Size: 3.2 MB (3241634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba728e06a48ae9e13ea6641a95a1a4a928aaee15448647048513b0bc04033d5c`  
		Last Modified: Sat, 03 Jun 2017 05:36:31 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:f6fdf40a15158773349455394d738319c6569bd32287f938337d5e542fa5dea9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6571322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1206679d39facfae33b4ac61cac5c2627e5e4b6c51185c6dc1db44a1ec504e5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 08:54:21 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 26 Jul 2018 08:54:22 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 26 Jul 2018 08:54:23 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 26 Jul 2018 08:54:51 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 28 Aug 2018 09:38:04 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 09:38:06 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 09:38:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 09:38:07 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c793874fc2a6bc4d69cd2add91969aa481f5fe3f5b1f44578dc1fca3438ce6f`  
		Last Modified: Thu, 26 Jul 2018 09:11:40 GMT  
		Size: 4.5 MB (4471229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13029b2362bee3667959ce84e70ac253b6922b9b39a2aa0b978272dd12d5f639`  
		Last Modified: Tue, 28 Aug 2018 09:42:22 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:02b776fe7961722f1e37c7d0781bf6f82698496280da307db9cd690e87019d38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6916429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec62bbc79b947f256346c7a070cf906238122037c3bef6065ff2dc7d1ee8842b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 10:47:03 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 26 Jul 2018 10:47:03 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 26 Jul 2018 10:47:03 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 26 Jul 2018 10:47:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Jul 2018 10:47:37 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 10:47:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 10:47:38 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a4d3c5e42da01432cc266135fc28882f05e47f1770ba871b5b4e86ac5a620a`  
		Last Modified: Thu, 26 Jul 2018 10:54:12 GMT  
		Size: 4.6 MB (4644931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569d7827b2dfb2580a990c22db728472a71c6eb1c1933ea1a95fcc41c70806a8`  
		Last Modified: Thu, 26 Jul 2018 10:54:11 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:018926f43a010d2f12413c3bb23504aa364b625964d82e3f664c5632730bfcb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6790232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f6c31795fc064ad04adf621a66eb6ee2fc995e33662881601ef0d9bcfb3901a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 08:39:02 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 26 Jul 2018 08:39:05 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 26 Jul 2018 08:39:17 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 26 Jul 2018 08:40:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 28 Aug 2018 08:49:14 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:49:15 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 08:49:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:49:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e2c2fef751f4c5a3a3b6967ed45c8dec6b5fdded315cb84a789a243d88b451`  
		Last Modified: Thu, 26 Jul 2018 09:11:44 GMT  
		Size: 4.6 MB (4594792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be8e0beab34cb9c02283bcf6034f2bb7f2ad5f9fe8b6645e9fe152198ad9113`  
		Last Modified: Tue, 28 Aug 2018 08:51:19 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:09bb62c59ca6d1a4be92652ea9b6e95a94587b4699fd73f13d44ca70bd60ad5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6881650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:952bca7be567c667bef7e4a282f47424de21a431944e1eff7a992f08c4eaf4fb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 11:43:16 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 26 Jul 2018 11:43:17 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 26 Jul 2018 11:43:18 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 26 Jul 2018 11:43:44 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Jul 2018 11:43:45 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 11:43:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:43:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554f245e28bd9150cb645cc2643b3d168771bc1e5d0b8e4b5d63a4744b200916`  
		Last Modified: Thu, 26 Jul 2018 11:51:28 GMT  
		Size: 4.6 MB (4573601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3878bdb64e5a374fb5bcb37dc095d45353119cc641def34f695da4a361f2db`  
		Last Modified: Thu, 26 Jul 2018 11:51:27 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6`

```console
$ docker pull haproxy@sha256:8368159115bbe4cfd985e92efd24435b0ced8b5c4c64bf9d4666452e77a505ff
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

### `haproxy:1.6` - linux; amd64

```console
$ docker pull haproxy@sha256:ed3fc3cb52f5bacda98855cac5db466e34575c655ed421af566fa51bb9998dc3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27438879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a3098b2cfc3204de0e43a491524396d727f3e5c18d969895bf719ff38d0cbf6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Wed, 25 Jul 2018 17:30:59 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 25 Jul 2018 17:31:00 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 25 Jul 2018 17:31:00 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Wed, 25 Jul 2018 17:31:38 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 25 Jul 2018 17:31:39 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 25 Jul 2018 17:31:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:31:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6618f10a4dadd410feaa0d141270e430e4bed67e2b42989b163040ac8e4b62fd`  
		Last Modified: Wed, 25 Jul 2018 17:39:01 GMT  
		Size: 5.0 MB (4952570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5971f2c7f392de0c4439cddb42be899b99248dd9bec70f2e4145593c885f44`  
		Last Modified: Wed, 25 Jul 2018 17:38:59 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:c4557766e88ecbdf88ee5793b69a9b41150702e6a236710719f04a58935f8729
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25627586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd063ce55857d4831192f09f8f3088ef0cd6afc1c6a83124ca4d6d00ff83c004`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:52:09 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 26 Jul 2018 08:52:10 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 26 Jul 2018 08:52:10 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 26 Jul 2018 08:52:49 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 08:48:36 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:48:36 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 08:48:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:48:37 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:235e2c34c6b727f2b00aae7eed907f84338b4002c487e0caaa123a50334c0810`  
		Last Modified: Tue, 17 Jul 2018 09:09:00 GMT  
		Size: 21.2 MB (21162647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d39d9e7d71926f778e120395398fe340358d03ef17cb175f62a6f5af819833`  
		Last Modified: Thu, 26 Jul 2018 08:55:32 GMT  
		Size: 4.5 MB (4464536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee02f366307523312ce51522cb708cd4d162f4addf809de05c64a62d6c08c76`  
		Last Modified: Tue, 28 Aug 2018 08:49:29 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:4913d80d04e04361eb403df70118ba39059ee04f0814ddbea915382f9b6b1359
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23612574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52d9304e1522635331286d6c6ce3c5bd4b37e0bd6df4b2575f859e63c9ea7558`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 11:59:42 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 26 Jul 2018 11:59:43 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 26 Jul 2018 11:59:43 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 26 Jul 2018 12:00:13 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 26 Jul 2018 12:00:27 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 12:00:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 12:00:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da2afb72882b945cc230298331aa8e1485b5f4b66826c596020a636df935167`  
		Last Modified: Thu, 26 Jul 2018 12:03:34 GMT  
		Size: 4.3 MB (4341988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197829e7b0c848a21af5a6e488854b5246783cd233c3b87aeafb7e77ab33201a`  
		Last Modified: Thu, 26 Jul 2018 12:03:33 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:75f686c16ee9e65d4e1f87e039bf58c61de5060bb410f30bcafbc686bd47286b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24828115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512b7b5467aa6f14db49f24f158d3e40250627b6ab81961736239103115abc02`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:55:13 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 26 Jul 2018 08:55:14 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 26 Jul 2018 08:55:15 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 26 Jul 2018 08:58:25 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 09:38:33 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 09:38:34 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 09:38:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 09:38:36 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352ff3d244f8a1d2b1b28f44bfdb9c562216f8ce9cb08a128c2548469e8129b9`  
		Last Modified: Thu, 26 Jul 2018 09:12:32 GMT  
		Size: 4.5 MB (4496065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaa64a4c66576cc04b03836c757b6348f7dc2248b413007190d1addea2f1bd7`  
		Last Modified: Tue, 28 Aug 2018 09:43:28 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; 386

```console
$ docker pull haproxy@sha256:984704ead06d3e45c3d25936145fdaf4376496003a7228697d38e942c77bf96e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27862733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fbf23cfc7da046f69d45df1431e0b0d13cf9b85df8641c7cd3fb3defc546ef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 10:48:06 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 26 Jul 2018 10:48:06 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 26 Jul 2018 10:48:06 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 26 Jul 2018 10:48:48 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 26 Jul 2018 10:48:49 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 10:48:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 10:48:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a85436224df713934f7f7e6b2345df44312d8114a55ca771e87e4c4b215d0d`  
		Last Modified: Thu, 26 Jul 2018 10:54:52 GMT  
		Size: 4.7 MB (4735953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a3ad2d4f6b1088995a8261e4740369975295116e6166272149ae6744289758`  
		Last Modified: Thu, 26 Jul 2018 10:54:50 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; ppc64le

```console
$ docker pull haproxy@sha256:f5b04b4b438a4b8599a07bf8eab5657aa74fe5d7b0a6554cf828015a97b2f538
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27423143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10b9f97735f88e0482cb248c4b7ab29e542fae537e5432ce85073a9c541b3c4d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:40:54 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 26 Jul 2018 08:40:55 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 26 Jul 2018 08:40:56 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 26 Jul 2018 08:51:32 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 08:49:32 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:49:33 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 08:49:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:49:34 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e039c0806bde2297e927916cbda219676291766949b8362fca16733df911dd02`  
		Last Modified: Thu, 26 Jul 2018 09:12:36 GMT  
		Size: 4.7 MB (4682295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe5f20e5ea9f835b080b67a6d11bf9585a7e40a9ce5e12a9015986f49ee2d6c`  
		Last Modified: Tue, 28 Aug 2018 08:51:38 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; s390x

```console
$ docker pull haproxy@sha256:e88ff5176f14ced6891d590c9aa112f179875b4d1cfa10612880c067c3b3ee4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27142694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a394ef0d27586d83376871a7e79a76aee61b01b87ca0ce36a063db65c5f97b1e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 11:43:58 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 26 Jul 2018 11:43:59 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 26 Jul 2018 11:43:59 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 26 Jul 2018 11:45:22 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 26 Jul 2018 11:45:23 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 11:45:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:45:29 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46ef4f3f90244cb415dee7485a125b10d70df7ac80f5a1cf95ba5d6143ae7dd`  
		Last Modified: Thu, 26 Jul 2018 11:51:43 GMT  
		Size: 4.8 MB (4807776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240359d378370dfd5bda5e19985630ea7891159170c6bb738eafc25fb44e8cea`  
		Last Modified: Thu, 26 Jul 2018 11:51:41 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6.14`

```console
$ docker pull haproxy@sha256:8368159115bbe4cfd985e92efd24435b0ced8b5c4c64bf9d4666452e77a505ff
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

### `haproxy:1.6.14` - linux; amd64

```console
$ docker pull haproxy@sha256:ed3fc3cb52f5bacda98855cac5db466e34575c655ed421af566fa51bb9998dc3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27438879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a3098b2cfc3204de0e43a491524396d727f3e5c18d969895bf719ff38d0cbf6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Wed, 25 Jul 2018 17:30:59 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 25 Jul 2018 17:31:00 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 25 Jul 2018 17:31:00 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Wed, 25 Jul 2018 17:31:38 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 25 Jul 2018 17:31:39 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 25 Jul 2018 17:31:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:31:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6618f10a4dadd410feaa0d141270e430e4bed67e2b42989b163040ac8e4b62fd`  
		Last Modified: Wed, 25 Jul 2018 17:39:01 GMT  
		Size: 5.0 MB (4952570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5971f2c7f392de0c4439cddb42be899b99248dd9bec70f2e4145593c885f44`  
		Last Modified: Wed, 25 Jul 2018 17:38:59 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:c4557766e88ecbdf88ee5793b69a9b41150702e6a236710719f04a58935f8729
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25627586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd063ce55857d4831192f09f8f3088ef0cd6afc1c6a83124ca4d6d00ff83c004`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:52:09 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 26 Jul 2018 08:52:10 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 26 Jul 2018 08:52:10 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 26 Jul 2018 08:52:49 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 08:48:36 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:48:36 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 08:48:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:48:37 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:235e2c34c6b727f2b00aae7eed907f84338b4002c487e0caaa123a50334c0810`  
		Last Modified: Tue, 17 Jul 2018 09:09:00 GMT  
		Size: 21.2 MB (21162647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d39d9e7d71926f778e120395398fe340358d03ef17cb175f62a6f5af819833`  
		Last Modified: Thu, 26 Jul 2018 08:55:32 GMT  
		Size: 4.5 MB (4464536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee02f366307523312ce51522cb708cd4d162f4addf809de05c64a62d6c08c76`  
		Last Modified: Tue, 28 Aug 2018 08:49:29 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:4913d80d04e04361eb403df70118ba39059ee04f0814ddbea915382f9b6b1359
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23612574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52d9304e1522635331286d6c6ce3c5bd4b37e0bd6df4b2575f859e63c9ea7558`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 11:59:42 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 26 Jul 2018 11:59:43 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 26 Jul 2018 11:59:43 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 26 Jul 2018 12:00:13 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 26 Jul 2018 12:00:27 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 12:00:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 12:00:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da2afb72882b945cc230298331aa8e1485b5f4b66826c596020a636df935167`  
		Last Modified: Thu, 26 Jul 2018 12:03:34 GMT  
		Size: 4.3 MB (4341988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197829e7b0c848a21af5a6e488854b5246783cd233c3b87aeafb7e77ab33201a`  
		Last Modified: Thu, 26 Jul 2018 12:03:33 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:75f686c16ee9e65d4e1f87e039bf58c61de5060bb410f30bcafbc686bd47286b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24828115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512b7b5467aa6f14db49f24f158d3e40250627b6ab81961736239103115abc02`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:55:13 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 26 Jul 2018 08:55:14 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 26 Jul 2018 08:55:15 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 26 Jul 2018 08:58:25 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 09:38:33 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 09:38:34 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 09:38:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 09:38:36 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352ff3d244f8a1d2b1b28f44bfdb9c562216f8ce9cb08a128c2548469e8129b9`  
		Last Modified: Thu, 26 Jul 2018 09:12:32 GMT  
		Size: 4.5 MB (4496065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaa64a4c66576cc04b03836c757b6348f7dc2248b413007190d1addea2f1bd7`  
		Last Modified: Tue, 28 Aug 2018 09:43:28 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; 386

```console
$ docker pull haproxy@sha256:984704ead06d3e45c3d25936145fdaf4376496003a7228697d38e942c77bf96e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27862733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fbf23cfc7da046f69d45df1431e0b0d13cf9b85df8641c7cd3fb3defc546ef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 10:48:06 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 26 Jul 2018 10:48:06 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 26 Jul 2018 10:48:06 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 26 Jul 2018 10:48:48 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 26 Jul 2018 10:48:49 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 10:48:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 10:48:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a85436224df713934f7f7e6b2345df44312d8114a55ca771e87e4c4b215d0d`  
		Last Modified: Thu, 26 Jul 2018 10:54:52 GMT  
		Size: 4.7 MB (4735953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a3ad2d4f6b1088995a8261e4740369975295116e6166272149ae6744289758`  
		Last Modified: Thu, 26 Jul 2018 10:54:50 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; ppc64le

```console
$ docker pull haproxy@sha256:f5b04b4b438a4b8599a07bf8eab5657aa74fe5d7b0a6554cf828015a97b2f538
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27423143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10b9f97735f88e0482cb248c4b7ab29e542fae537e5432ce85073a9c541b3c4d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:40:54 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 26 Jul 2018 08:40:55 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 26 Jul 2018 08:40:56 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 26 Jul 2018 08:51:32 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 08:49:32 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:49:33 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 08:49:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:49:34 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e039c0806bde2297e927916cbda219676291766949b8362fca16733df911dd02`  
		Last Modified: Thu, 26 Jul 2018 09:12:36 GMT  
		Size: 4.7 MB (4682295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe5f20e5ea9f835b080b67a6d11bf9585a7e40a9ce5e12a9015986f49ee2d6c`  
		Last Modified: Tue, 28 Aug 2018 08:51:38 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; s390x

```console
$ docker pull haproxy@sha256:e88ff5176f14ced6891d590c9aa112f179875b4d1cfa10612880c067c3b3ee4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27142694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a394ef0d27586d83376871a7e79a76aee61b01b87ca0ce36a063db65c5f97b1e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 11:43:58 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 26 Jul 2018 11:43:59 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 26 Jul 2018 11:43:59 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 26 Jul 2018 11:45:22 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 26 Jul 2018 11:45:23 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 11:45:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:45:29 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46ef4f3f90244cb415dee7485a125b10d70df7ac80f5a1cf95ba5d6143ae7dd`  
		Last Modified: Thu, 26 Jul 2018 11:51:43 GMT  
		Size: 4.8 MB (4807776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240359d378370dfd5bda5e19985630ea7891159170c6bb738eafc25fb44e8cea`  
		Last Modified: Thu, 26 Jul 2018 11:51:41 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6.14-alpine`

```console
$ docker pull haproxy@sha256:b200980fd2573657d400b716c8a6f659906344cfc92d2c41cded453788099632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:1.6.14-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:9b540c1471db95ee3da2b9880aa9d5a48440d7f6756be16835d5e611408d8e8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7793379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f899aa14aa7d3bd53d5bc03e4a2c284cc10cbdc44be5ba296d3800a8c63f040`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 25 Jul 2018 17:32:04 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 25 Jul 2018 17:32:05 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 25 Jul 2018 17:32:05 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Wed, 25 Jul 2018 17:32:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 25 Jul 2018 17:32:30 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 25 Jul 2018 17:32:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:32:31 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138dd23511d292de893b53556dbb7b9901afc4f2ca71474c80904b9e96fd783c`  
		Last Modified: Wed, 25 Jul 2018 17:40:04 GMT  
		Size: 5.6 MB (5586436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ce1a83c095dbb3583a7b135e7308951cf25c565c4def2058f38fd40969ad2d`  
		Last Modified: Wed, 25 Jul 2018 17:40:02 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:023817615912a2c7ae048aa5ccd25ce5bd41cb978fe221164ab641a84915466d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7238272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84d7aff6e3724ef98bfd7f9d8a484f13ef63d547afa8efb1238b1060fcd08484`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 08:59:00 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 26 Jul 2018 08:59:02 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 26 Jul 2018 08:59:04 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 26 Jul 2018 08:59:38 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Jul 2018 08:59:41 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 08:59:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 08:59:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e378fcff31120205b7938eab35108644d8d606c28c64e9895695399d4dbb42a8`  
		Last Modified: Thu, 26 Jul 2018 09:13:23 GMT  
		Size: 5.1 MB (5138180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccf3e8bf8122ac8cd9754dfc5033844e93bca7d563b2c6b75e2f7ac75fad342`  
		Last Modified: Thu, 26 Jul 2018 09:13:22 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:b1d7f8a2e14f9be7f4df2b59273dc524550ced8d42db81a7622a477fe6921ba9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7605069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b289aad93c1a35745d8d4cbb9b7f852652617498dab7604b37db4b0cb319ee9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 10:49:23 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 26 Jul 2018 10:49:24 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 26 Jul 2018 10:49:24 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 26 Jul 2018 10:49:46 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Jul 2018 10:49:46 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 10:49:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 10:49:47 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72aaa6a7facfd14440cb7d54fdae44f254f8c48dd92f4342d682ded74c6f7289`  
		Last Modified: Thu, 26 Jul 2018 10:55:44 GMT  
		Size: 5.3 MB (5333571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:364e7f06768b672cf0932efa4402ad780c58c90c20b659dd30bd7056a83ba2f6`  
		Last Modified: Thu, 26 Jul 2018 10:55:41 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:5626d8f1f93c02a6f2095baa3e46006fcc8e8692b7a59b675466157a89507676
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7479386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f237ea4a50bde8351a084a876f46af05e4e4f271b24e1cba7b6706dbf733591b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 08:52:45 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 26 Jul 2018 08:52:46 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 26 Jul 2018 08:52:47 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 26 Jul 2018 08:53:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 28 Aug 2018 08:49:41 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:49:42 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 08:49:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:49:47 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ea60944df5d548898e023dd01e952e80a3cd4033d8e34ad9fca44e80787f6d`  
		Last Modified: Thu, 26 Jul 2018 09:13:29 GMT  
		Size: 5.3 MB (5283946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f6fd604fafcfa750141c15b091fb34f4f1d1d07b7bfed69f1191bd98e69bc3`  
		Last Modified: Tue, 28 Aug 2018 08:51:57 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:a85774c785aab10f7cc2750d431997ae2fc2e87f497990ef8a86a912b1cd69f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7582557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29ee899dc0ebee4bbc475fdf080217b7f38a2ae3ab139e37a07a7ffc41360e02`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 11:45:54 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 26 Jul 2018 11:45:54 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 26 Jul 2018 11:45:55 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 26 Jul 2018 11:46:33 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Jul 2018 11:46:35 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 11:46:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:46:36 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bc6b29372c094fb422edd81e4cc523811c672ed24d6ca359650d064726a5c1`  
		Last Modified: Thu, 26 Jul 2018 11:51:56 GMT  
		Size: 5.3 MB (5274509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699172f87257cd30dfd2e9031e9938bf18c5c461ddf55f09b149f610887d1089`  
		Last Modified: Thu, 26 Jul 2018 11:51:55 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6-alpine`

```console
$ docker pull haproxy@sha256:b200980fd2573657d400b716c8a6f659906344cfc92d2c41cded453788099632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:1.6-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:9b540c1471db95ee3da2b9880aa9d5a48440d7f6756be16835d5e611408d8e8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7793379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f899aa14aa7d3bd53d5bc03e4a2c284cc10cbdc44be5ba296d3800a8c63f040`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 25 Jul 2018 17:32:04 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 25 Jul 2018 17:32:05 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 25 Jul 2018 17:32:05 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Wed, 25 Jul 2018 17:32:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 25 Jul 2018 17:32:30 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 25 Jul 2018 17:32:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:32:31 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138dd23511d292de893b53556dbb7b9901afc4f2ca71474c80904b9e96fd783c`  
		Last Modified: Wed, 25 Jul 2018 17:40:04 GMT  
		Size: 5.6 MB (5586436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ce1a83c095dbb3583a7b135e7308951cf25c565c4def2058f38fd40969ad2d`  
		Last Modified: Wed, 25 Jul 2018 17:40:02 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:023817615912a2c7ae048aa5ccd25ce5bd41cb978fe221164ab641a84915466d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7238272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84d7aff6e3724ef98bfd7f9d8a484f13ef63d547afa8efb1238b1060fcd08484`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 08:59:00 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 26 Jul 2018 08:59:02 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 26 Jul 2018 08:59:04 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 26 Jul 2018 08:59:38 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Jul 2018 08:59:41 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 08:59:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 08:59:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e378fcff31120205b7938eab35108644d8d606c28c64e9895695399d4dbb42a8`  
		Last Modified: Thu, 26 Jul 2018 09:13:23 GMT  
		Size: 5.1 MB (5138180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccf3e8bf8122ac8cd9754dfc5033844e93bca7d563b2c6b75e2f7ac75fad342`  
		Last Modified: Thu, 26 Jul 2018 09:13:22 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:b1d7f8a2e14f9be7f4df2b59273dc524550ced8d42db81a7622a477fe6921ba9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7605069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b289aad93c1a35745d8d4cbb9b7f852652617498dab7604b37db4b0cb319ee9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 10:49:23 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 26 Jul 2018 10:49:24 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 26 Jul 2018 10:49:24 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 26 Jul 2018 10:49:46 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Jul 2018 10:49:46 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 10:49:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 10:49:47 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72aaa6a7facfd14440cb7d54fdae44f254f8c48dd92f4342d682ded74c6f7289`  
		Last Modified: Thu, 26 Jul 2018 10:55:44 GMT  
		Size: 5.3 MB (5333571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:364e7f06768b672cf0932efa4402ad780c58c90c20b659dd30bd7056a83ba2f6`  
		Last Modified: Thu, 26 Jul 2018 10:55:41 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:5626d8f1f93c02a6f2095baa3e46006fcc8e8692b7a59b675466157a89507676
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7479386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f237ea4a50bde8351a084a876f46af05e4e4f271b24e1cba7b6706dbf733591b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 08:52:45 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 26 Jul 2018 08:52:46 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 26 Jul 2018 08:52:47 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 26 Jul 2018 08:53:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 28 Aug 2018 08:49:41 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:49:42 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 08:49:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:49:47 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ea60944df5d548898e023dd01e952e80a3cd4033d8e34ad9fca44e80787f6d`  
		Last Modified: Thu, 26 Jul 2018 09:13:29 GMT  
		Size: 5.3 MB (5283946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f6fd604fafcfa750141c15b091fb34f4f1d1d07b7bfed69f1191bd98e69bc3`  
		Last Modified: Tue, 28 Aug 2018 08:51:57 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:a85774c785aab10f7cc2750d431997ae2fc2e87f497990ef8a86a912b1cd69f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7582557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29ee899dc0ebee4bbc475fdf080217b7f38a2ae3ab139e37a07a7ffc41360e02`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 11:45:54 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 26 Jul 2018 11:45:54 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 26 Jul 2018 11:45:55 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 26 Jul 2018 11:46:33 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Jul 2018 11:46:35 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 11:46:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:46:36 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bc6b29372c094fb422edd81e4cc523811c672ed24d6ca359650d064726a5c1`  
		Last Modified: Thu, 26 Jul 2018 11:51:56 GMT  
		Size: 5.3 MB (5274509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699172f87257cd30dfd2e9031e9938bf18c5c461ddf55f09b149f610887d1089`  
		Last Modified: Thu, 26 Jul 2018 11:51:55 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7`

```console
$ docker pull haproxy@sha256:f6f4011e236c4626099c353f1e895ef9cf40eef1a81ee655b4ac48edad05df47
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

### `haproxy:1.7` - linux; amd64

```console
$ docker pull haproxy@sha256:6ec57cbcabb3357583b09c6815e062705d43d5ec3d47d307f2bf4bec3b6b60f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27239069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d116f65ab234ae049bf247df0531bad7418a00dbcfef9bd39889dd260d4595`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Wed, 25 Jul 2018 17:32:52 GMT
ENV HAPROXY_MAJOR=1.7
# Wed, 25 Jul 2018 17:32:53 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 25 Jul 2018 17:32:53 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Wed, 25 Jul 2018 17:33:29 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 25 Jul 2018 17:33:45 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 25 Jul 2018 17:33:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:33:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b333976d786da5cbf121565abb4d25924e1411249a54fee369fef81a027dd239`  
		Last Modified: Wed, 25 Jul 2018 17:41:03 GMT  
		Size: 4.8 MB (4752762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c4ef7e04263704ef1051b13106db8ebfc1513462dc6f0894375333af22d9c1`  
		Last Modified: Wed, 25 Jul 2018 17:41:01 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:e2ffb735f5a39129f132f31ac442ef4132c847dae6b6add4ce2cd7fdf93d5421
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25601820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec58f3dbb044c1a717aace1deecac8e3d86119fe1caafcf8d64e5fb2d0afe851`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:53:04 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Jul 2018 08:53:04 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 26 Jul 2018 08:53:04 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 26 Jul 2018 08:53:38 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 08:48:44 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:48:45 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 08:48:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:48:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:235e2c34c6b727f2b00aae7eed907f84338b4002c487e0caaa123a50334c0810`  
		Last Modified: Tue, 17 Jul 2018 09:09:00 GMT  
		Size: 21.2 MB (21162647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2259c697c5bdb30bcb6097b8f5925712cca70bc01a9b88b0968da1253bc2b2ac`  
		Last Modified: Thu, 26 Jul 2018 08:55:59 GMT  
		Size: 4.4 MB (4438770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da4cee5e4a4c0bebec4bc5f16da4a069d5474e18af3e9e15db27d20de87a780`  
		Last Modified: Tue, 28 Aug 2018 08:49:43 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:946f0b240a2a6dad274042107ab1f6f7c2e6a1e2566da90f8e3800f53d5d83a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23587128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a89320e71ea2399cfa13a362ac1803fe7ee0c00e72ff2b37cb6744dcf20af9d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 12:00:59 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Jul 2018 12:00:59 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 26 Jul 2018 12:01:00 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 26 Jul 2018 12:01:27 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 26 Jul 2018 12:01:32 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 12:01:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 12:01:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ff9757f406e9db989896063dabdd08b4917404fbadf22c860fdee8910e763b`  
		Last Modified: Thu, 26 Jul 2018 12:04:00 GMT  
		Size: 4.3 MB (4316543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b26d0be1b541e081144bc13ca27ff96f75be6d15e87fef61fdd9450b5f7b1d`  
		Last Modified: Thu, 26 Jul 2018 12:03:59 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:1be32b5ba61c394c269a5349ac5d6365dd5dee930aabc5173d1f57fa9e48b0a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24773150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb9e7e75a79bcb705dccb278cdccf1de526f46621c48bdf2e45e6a80adcc36ae`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 09:00:07 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Jul 2018 09:00:08 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 26 Jul 2018 09:00:09 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 26 Jul 2018 09:03:57 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 26 Jul 2018 09:03:58 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 09:03:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:04:00 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128f20abe4e25eda65144eebb9d1f8c860c7134561b3dc6bcfc189e956f62747`  
		Last Modified: Thu, 26 Jul 2018 09:14:01 GMT  
		Size: 4.4 MB (4441100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a769cc2144c8ca8286c02e089a1a86ce651f153df47e6db949e1c1c84d6147`  
		Last Modified: Thu, 26 Jul 2018 09:14:00 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; 386

```console
$ docker pull haproxy@sha256:0853b57198f51342f7af29fadc0745491b9d4232f4bdf436f37f3d16fce58c4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27831477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83b87e9f6260051f516570221dcff63095094e91245b8b22146453d58758e2a3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 10:50:03 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Jul 2018 10:50:03 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 26 Jul 2018 10:50:04 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 26 Jul 2018 10:50:49 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 26 Jul 2018 10:50:50 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 10:50:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 10:50:50 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8537f6d4498b7c1ea18d3eb4ad06c7b4e64979a1448c9731fbc4a8c7518583`  
		Last Modified: Thu, 26 Jul 2018 10:56:33 GMT  
		Size: 4.7 MB (4704698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc688240d73c097efe7057fa9b504f2638c51bc7039a999583408a7459a26a4`  
		Last Modified: Thu, 26 Jul 2018 10:56:31 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; ppc64le

```console
$ docker pull haproxy@sha256:65170fc372a7cb7a3ec6fb14d84dd0f382db17c838ea41cfbe2e79e8426a5cdc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27201019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f334e9883e39674816a52ebf22e75dad838f7bde50bfad2aa10a1ede6f86d8a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:53:37 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Jul 2018 08:53:37 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 26 Jul 2018 08:53:38 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 26 Jul 2018 08:58:25 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 08:50:02 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:50:03 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 08:50:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:50:05 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44917970d6cb8cfd60d08f9f525ebd9d596e2e919bd5d3834d4877b2cfae58b4`  
		Last Modified: Thu, 26 Jul 2018 09:14:11 GMT  
		Size: 4.5 MB (4460171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39358cd33a7c9b003b0a9e3eae6fca62270f88d56f6eb36b33ed3cf6bcfd9140`  
		Last Modified: Tue, 28 Aug 2018 08:52:17 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; s390x

```console
$ docker pull haproxy@sha256:27e67633ac31fc03ed7a76923c90251a06b9c2ee6050276d7584c1fced6892ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26920243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2145f3a633aa9b012b7e997dcf840ac5f95e75a622cb6ec41ca99208925c7c6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 11:46:50 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Jul 2018 11:46:51 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 26 Jul 2018 11:46:52 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 26 Jul 2018 11:47:53 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 26 Jul 2018 11:47:53 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 11:47:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:47:54 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e488ec45b31a2f921cc667479d9563201feba65975c9f12b63bce355cf3944a8`  
		Last Modified: Thu, 26 Jul 2018 11:52:10 GMT  
		Size: 4.6 MB (4585324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f7eb9b381df10245fa9cddede5e8659f4a6f197a507bd625462565c08744f7`  
		Last Modified: Thu, 26 Jul 2018 11:52:09 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7.11`

```console
$ docker pull haproxy@sha256:f6f4011e236c4626099c353f1e895ef9cf40eef1a81ee655b4ac48edad05df47
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

### `haproxy:1.7.11` - linux; amd64

```console
$ docker pull haproxy@sha256:6ec57cbcabb3357583b09c6815e062705d43d5ec3d47d307f2bf4bec3b6b60f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27239069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d116f65ab234ae049bf247df0531bad7418a00dbcfef9bd39889dd260d4595`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Wed, 25 Jul 2018 17:32:52 GMT
ENV HAPROXY_MAJOR=1.7
# Wed, 25 Jul 2018 17:32:53 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 25 Jul 2018 17:32:53 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Wed, 25 Jul 2018 17:33:29 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 25 Jul 2018 17:33:45 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 25 Jul 2018 17:33:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:33:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b333976d786da5cbf121565abb4d25924e1411249a54fee369fef81a027dd239`  
		Last Modified: Wed, 25 Jul 2018 17:41:03 GMT  
		Size: 4.8 MB (4752762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c4ef7e04263704ef1051b13106db8ebfc1513462dc6f0894375333af22d9c1`  
		Last Modified: Wed, 25 Jul 2018 17:41:01 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:e2ffb735f5a39129f132f31ac442ef4132c847dae6b6add4ce2cd7fdf93d5421
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25601820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec58f3dbb044c1a717aace1deecac8e3d86119fe1caafcf8d64e5fb2d0afe851`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:53:04 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Jul 2018 08:53:04 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 26 Jul 2018 08:53:04 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 26 Jul 2018 08:53:38 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 08:48:44 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:48:45 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 08:48:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:48:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:235e2c34c6b727f2b00aae7eed907f84338b4002c487e0caaa123a50334c0810`  
		Last Modified: Tue, 17 Jul 2018 09:09:00 GMT  
		Size: 21.2 MB (21162647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2259c697c5bdb30bcb6097b8f5925712cca70bc01a9b88b0968da1253bc2b2ac`  
		Last Modified: Thu, 26 Jul 2018 08:55:59 GMT  
		Size: 4.4 MB (4438770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da4cee5e4a4c0bebec4bc5f16da4a069d5474e18af3e9e15db27d20de87a780`  
		Last Modified: Tue, 28 Aug 2018 08:49:43 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:946f0b240a2a6dad274042107ab1f6f7c2e6a1e2566da90f8e3800f53d5d83a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23587128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a89320e71ea2399cfa13a362ac1803fe7ee0c00e72ff2b37cb6744dcf20af9d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 12:00:59 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Jul 2018 12:00:59 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 26 Jul 2018 12:01:00 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 26 Jul 2018 12:01:27 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 26 Jul 2018 12:01:32 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 12:01:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 12:01:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ff9757f406e9db989896063dabdd08b4917404fbadf22c860fdee8910e763b`  
		Last Modified: Thu, 26 Jul 2018 12:04:00 GMT  
		Size: 4.3 MB (4316543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b26d0be1b541e081144bc13ca27ff96f75be6d15e87fef61fdd9450b5f7b1d`  
		Last Modified: Thu, 26 Jul 2018 12:03:59 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:1be32b5ba61c394c269a5349ac5d6365dd5dee930aabc5173d1f57fa9e48b0a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24773150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb9e7e75a79bcb705dccb278cdccf1de526f46621c48bdf2e45e6a80adcc36ae`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 09:00:07 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Jul 2018 09:00:08 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 26 Jul 2018 09:00:09 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 26 Jul 2018 09:03:57 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 26 Jul 2018 09:03:58 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 09:03:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:04:00 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128f20abe4e25eda65144eebb9d1f8c860c7134561b3dc6bcfc189e956f62747`  
		Last Modified: Thu, 26 Jul 2018 09:14:01 GMT  
		Size: 4.4 MB (4441100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a769cc2144c8ca8286c02e089a1a86ce651f153df47e6db949e1c1c84d6147`  
		Last Modified: Thu, 26 Jul 2018 09:14:00 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; 386

```console
$ docker pull haproxy@sha256:0853b57198f51342f7af29fadc0745491b9d4232f4bdf436f37f3d16fce58c4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27831477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83b87e9f6260051f516570221dcff63095094e91245b8b22146453d58758e2a3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 10:50:03 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Jul 2018 10:50:03 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 26 Jul 2018 10:50:04 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 26 Jul 2018 10:50:49 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 26 Jul 2018 10:50:50 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 10:50:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 10:50:50 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8537f6d4498b7c1ea18d3eb4ad06c7b4e64979a1448c9731fbc4a8c7518583`  
		Last Modified: Thu, 26 Jul 2018 10:56:33 GMT  
		Size: 4.7 MB (4704698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc688240d73c097efe7057fa9b504f2638c51bc7039a999583408a7459a26a4`  
		Last Modified: Thu, 26 Jul 2018 10:56:31 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; ppc64le

```console
$ docker pull haproxy@sha256:65170fc372a7cb7a3ec6fb14d84dd0f382db17c838ea41cfbe2e79e8426a5cdc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27201019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f334e9883e39674816a52ebf22e75dad838f7bde50bfad2aa10a1ede6f86d8a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:53:37 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Jul 2018 08:53:37 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 26 Jul 2018 08:53:38 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 26 Jul 2018 08:58:25 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 08:50:02 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:50:03 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 08:50:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:50:05 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44917970d6cb8cfd60d08f9f525ebd9d596e2e919bd5d3834d4877b2cfae58b4`  
		Last Modified: Thu, 26 Jul 2018 09:14:11 GMT  
		Size: 4.5 MB (4460171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39358cd33a7c9b003b0a9e3eae6fca62270f88d56f6eb36b33ed3cf6bcfd9140`  
		Last Modified: Tue, 28 Aug 2018 08:52:17 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; s390x

```console
$ docker pull haproxy@sha256:27e67633ac31fc03ed7a76923c90251a06b9c2ee6050276d7584c1fced6892ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26920243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2145f3a633aa9b012b7e997dcf840ac5f95e75a622cb6ec41ca99208925c7c6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 11:46:50 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Jul 2018 11:46:51 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 26 Jul 2018 11:46:52 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 26 Jul 2018 11:47:53 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 26 Jul 2018 11:47:53 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 11:47:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:47:54 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e488ec45b31a2f921cc667479d9563201feba65975c9f12b63bce355cf3944a8`  
		Last Modified: Thu, 26 Jul 2018 11:52:10 GMT  
		Size: 4.6 MB (4585324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f7eb9b381df10245fa9cddede5e8659f4a6f197a507bd625462565c08744f7`  
		Last Modified: Thu, 26 Jul 2018 11:52:09 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7.11-alpine`

```console
$ docker pull haproxy@sha256:1d8374478aabaa2809afacf7eae0d8c0e177bc228865dbe42c5109624d5e82e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:1.7.11-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:ac1dc01c64b2ce0af01a809f5ecec349ccaaba7d4d3291a3e3039eee111ed9f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8268560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d37c14e85ef19c01804a327c893d2113c2e9312a6bda35b01862c22c2b0716b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 25 Jul 2018 17:34:29 GMT
ENV HAPROXY_MAJOR=1.7
# Wed, 25 Jul 2018 17:34:29 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 25 Jul 2018 17:34:29 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Wed, 25 Jul 2018 17:34:49 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 25 Jul 2018 17:34:49 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 25 Jul 2018 17:34:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:34:50 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7bd6c4eea16c03482f700edd67957c45bc6b120ded235795f202054ae677070`  
		Last Modified: Wed, 25 Jul 2018 17:42:00 GMT  
		Size: 6.1 MB (6061617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7e0fd03c4df949aefc12001ca16f6f4933c2a814b71376ee2fb60d37b7357e`  
		Last Modified: Wed, 25 Jul 2018 17:41:59 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:8ea451c85f879354f21f74d9406093770af8309dd85ade6a13c05e7d5de0802e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7705009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507e1e1afc449a2d5b735a6bf145d617f1123c415badd418b1f0d730880775e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 09:04:24 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Jul 2018 09:04:25 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 26 Jul 2018 09:04:26 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 26 Jul 2018 09:05:04 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Jul 2018 09:05:05 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 09:05:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:05:07 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8518e30d9fe35c5ebf9557951f67ad19fd867fa603e871daf5d3d5fcd4a5d33`  
		Last Modified: Thu, 26 Jul 2018 09:14:47 GMT  
		Size: 5.6 MB (5604916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164051972b97712ca84f907039cd0fa3355b0f322c9c00593c3dbff3d35d4034`  
		Last Modified: Thu, 26 Jul 2018 09:14:46 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:60f9c439147abe0dce34ef34188aab7a20b5c0e6c37a9fa91ff8e478e6405dc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8073855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4cfcff21835ea84c685d6c39436334f0532c6311945f62a6426dcf394f4943e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 10:51:06 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Jul 2018 10:51:07 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 26 Jul 2018 10:51:07 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 26 Jul 2018 10:51:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Jul 2018 10:51:27 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 10:51:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 10:51:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad6441ffe7a2e2d5913a03e6f97329e12f5737149c776f7620746a020100523`  
		Last Modified: Thu, 26 Jul 2018 10:57:23 GMT  
		Size: 5.8 MB (5802358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7223378d888e5cffb6e55f49dc609b314229067d30296a026802fb60d599767`  
		Last Modified: Thu, 26 Jul 2018 10:57:21 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:f7b276c715dd8bf385086fb2d06dc363a3cade315f845ec2cdc5aad0f0ad222b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7955552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef64b4134d92d06aff32365d03f5e321202e3ac012cf4cde04cdeff4ca9c5e03`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 08:58:52 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Jul 2018 08:58:56 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 26 Jul 2018 08:59:01 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 26 Jul 2018 08:59:34 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 28 Aug 2018 08:50:13 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:50:14 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 08:50:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:50:17 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1960000343d5a25455d01545b8224a87e9f2f233115a489ae7967c804130704b`  
		Last Modified: Thu, 26 Jul 2018 09:14:52 GMT  
		Size: 5.8 MB (5760112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0207e6ccb3e5ba428cd5ae9d0aa274974acb7a30f859b8751cbc09089ab606bf`  
		Last Modified: Tue, 28 Aug 2018 08:52:37 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:d7ab774cd51739061ba41e97e30fad853a6ed12dbdc57d033e129f70c9fd1ad5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8069362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be453684a58aef63261c5b1306fedf7bd88a3edf0b3084298c060e004ed4c120`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 11:48:06 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Jul 2018 11:48:07 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 26 Jul 2018 11:48:07 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 26 Jul 2018 11:48:44 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Jul 2018 11:48:44 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 11:48:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:48:44 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eda1eff0d8cde11b69da8dc39b2f588c63ccf39697afc97babec2f20e00b146`  
		Last Modified: Thu, 26 Jul 2018 11:52:25 GMT  
		Size: 5.8 MB (5761312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cfd32ec2543dc6d22d71617f4e5e8b1d48a94c00b39840210317f906268858`  
		Last Modified: Thu, 26 Jul 2018 11:52:23 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7-alpine`

```console
$ docker pull haproxy@sha256:1d8374478aabaa2809afacf7eae0d8c0e177bc228865dbe42c5109624d5e82e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:1.7-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:ac1dc01c64b2ce0af01a809f5ecec349ccaaba7d4d3291a3e3039eee111ed9f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8268560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d37c14e85ef19c01804a327c893d2113c2e9312a6bda35b01862c22c2b0716b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 25 Jul 2018 17:34:29 GMT
ENV HAPROXY_MAJOR=1.7
# Wed, 25 Jul 2018 17:34:29 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 25 Jul 2018 17:34:29 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Wed, 25 Jul 2018 17:34:49 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 25 Jul 2018 17:34:49 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 25 Jul 2018 17:34:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 17:34:50 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7bd6c4eea16c03482f700edd67957c45bc6b120ded235795f202054ae677070`  
		Last Modified: Wed, 25 Jul 2018 17:42:00 GMT  
		Size: 6.1 MB (6061617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7e0fd03c4df949aefc12001ca16f6f4933c2a814b71376ee2fb60d37b7357e`  
		Last Modified: Wed, 25 Jul 2018 17:41:59 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:8ea451c85f879354f21f74d9406093770af8309dd85ade6a13c05e7d5de0802e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7705009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507e1e1afc449a2d5b735a6bf145d617f1123c415badd418b1f0d730880775e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 09:04:24 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Jul 2018 09:04:25 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 26 Jul 2018 09:04:26 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 26 Jul 2018 09:05:04 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Jul 2018 09:05:05 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 09:05:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 09:05:07 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8518e30d9fe35c5ebf9557951f67ad19fd867fa603e871daf5d3d5fcd4a5d33`  
		Last Modified: Thu, 26 Jul 2018 09:14:47 GMT  
		Size: 5.6 MB (5604916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164051972b97712ca84f907039cd0fa3355b0f322c9c00593c3dbff3d35d4034`  
		Last Modified: Thu, 26 Jul 2018 09:14:46 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:60f9c439147abe0dce34ef34188aab7a20b5c0e6c37a9fa91ff8e478e6405dc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8073855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4cfcff21835ea84c685d6c39436334f0532c6311945f62a6426dcf394f4943e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 10:51:06 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Jul 2018 10:51:07 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 26 Jul 2018 10:51:07 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 26 Jul 2018 10:51:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Jul 2018 10:51:27 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 10:51:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 10:51:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad6441ffe7a2e2d5913a03e6f97329e12f5737149c776f7620746a020100523`  
		Last Modified: Thu, 26 Jul 2018 10:57:23 GMT  
		Size: 5.8 MB (5802358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7223378d888e5cffb6e55f49dc609b314229067d30296a026802fb60d599767`  
		Last Modified: Thu, 26 Jul 2018 10:57:21 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:f7b276c715dd8bf385086fb2d06dc363a3cade315f845ec2cdc5aad0f0ad222b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7955552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef64b4134d92d06aff32365d03f5e321202e3ac012cf4cde04cdeff4ca9c5e03`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 08:58:52 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Jul 2018 08:58:56 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 26 Jul 2018 08:59:01 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 26 Jul 2018 08:59:34 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 28 Aug 2018 08:50:13 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:50:14 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Tue, 28 Aug 2018 08:50:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:50:17 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1960000343d5a25455d01545b8224a87e9f2f233115a489ae7967c804130704b`  
		Last Modified: Thu, 26 Jul 2018 09:14:52 GMT  
		Size: 5.8 MB (5760112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0207e6ccb3e5ba428cd5ae9d0aa274974acb7a30f859b8751cbc09089ab606bf`  
		Last Modified: Tue, 28 Aug 2018 08:52:37 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:d7ab774cd51739061ba41e97e30fad853a6ed12dbdc57d033e129f70c9fd1ad5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8069362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be453684a58aef63261c5b1306fedf7bd88a3edf0b3084298c060e004ed4c120`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 11:48:06 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Jul 2018 11:48:07 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 26 Jul 2018 11:48:07 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 26 Jul 2018 11:48:44 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Jul 2018 11:48:44 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Jul 2018 11:48:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 11:48:44 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eda1eff0d8cde11b69da8dc39b2f588c63ccf39697afc97babec2f20e00b146`  
		Last Modified: Thu, 26 Jul 2018 11:52:25 GMT  
		Size: 5.8 MB (5761312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cfd32ec2543dc6d22d71617f4e5e8b1d48a94c00b39840210317f906268858`  
		Last Modified: Thu, 26 Jul 2018 11:52:23 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8`

```console
$ docker pull haproxy@sha256:7dd7e5ef68fe5d1c91436743b286abc04c46145586bfbe96f29e6d80368fb8c6
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

### `haproxy:1.8` - linux; amd64

```console
$ docker pull haproxy@sha256:448a04e2e749b69695c3b75fb41f88fa7f9023e3120a77bffbdde43af2ca9593
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28062532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:991c6e578a0d6f0b1c2e0ddf6fcf0ef5a9de18283dc403c4479e5946dbe5408f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Wed, 25 Jul 2018 17:35:20 GMT
ENV HAPROXY_MAJOR=1.8
# Tue, 31 Jul 2018 16:45:37 GMT
ENV HAPROXY_VERSION=1.8.13
# Tue, 31 Jul 2018 16:45:37 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Tue, 31 Jul 2018 16:46:22 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 31 Jul 2018 16:46:23 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 31 Jul 2018 16:46:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Jul 2018 16:46:23 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a9c22a0d424622e6bc9cc4369a375fad9fd1cc62854282dd104cce2fd65f978`  
		Last Modified: Tue, 31 Jul 2018 16:47:37 GMT  
		Size: 5.6 MB (5576246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eaf021ab522b6c5c15ca19a4d0cb451a3cf342ea2d9dd11d510f9754d9e756f`  
		Last Modified: Tue, 31 Jul 2018 16:47:35 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:d6c603e6925957f87dcaa0cfb6d2043b6b79a85f6cfbde7eedc03c8a3c228b5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26391858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24e3fcb12911b9a6e694828b00b7de67e215319efd647903664d69002eb37b91`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:54:08 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 08:48:36 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 08:48:37 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 08:49:31 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 08:48:57 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:48:58 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 28 Aug 2018 08:48:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:48:58 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:235e2c34c6b727f2b00aae7eed907f84338b4002c487e0caaa123a50334c0810`  
		Last Modified: Tue, 17 Jul 2018 09:09:00 GMT  
		Size: 21.2 MB (21162647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d3dbab12711ba8abb2fef7c0883c4643b7d70e7f75b22048abc60b655cfee89`  
		Last Modified: Wed, 01 Aug 2018 08:49:48 GMT  
		Size: 5.2 MB (5228831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e866219e8841c6b4c5e95cff7cb7202c5dbb12ad83b5b7c2b1b60904e52061e`  
		Last Modified: Tue, 28 Aug 2018 08:49:56 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:d7ba0e608800eb7cace102669f5a9c5678239456c14ba975006a1c2117cdd401
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24363426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5de1b89d98930132541bd7a77c1fb36173dffe994a19556e3473dc0a08ff363d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 12:02:03 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 12:02:26 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 12:02:27 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 12:03:19 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 01 Aug 2018 12:03:20 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 12:03:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 12:03:20 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d4f2ad4558a359ca0b29ab64098fd8991d577e558c18b4acc7bb04080bfe6f`  
		Last Modified: Wed, 01 Aug 2018 12:03:38 GMT  
		Size: 5.1 MB (5092863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1245234b05aee58ce01e23ad6d00ac12e87d054a557a3f43d65b4a1e4de97036`  
		Last Modified: Wed, 01 Aug 2018 12:03:37 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:4958b6874d96a8c421d68351bc9c38d2b7f37790c236663ca5a648a01fbdece5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25526301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e77219b2422be68b70a98d4638b65e515da01428ae4761fe15a4a28a0302553`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 09:05:24 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 08:52:53 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 08:52:54 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 08:54:49 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 01 Aug 2018 08:54:50 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 08:54:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 08:54:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b63efd500a726cb366891bba79d56deb3e645e9f31359e4153ededf78f421bf`  
		Last Modified: Wed, 01 Aug 2018 08:56:44 GMT  
		Size: 5.2 MB (5194274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31cd73de60dc2e2378f4a4626a8bcd8e363dfdaf60dd7b5894dd66b6db45c1b`  
		Last Modified: Wed, 01 Aug 2018 08:56:43 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; 386

```console
$ docker pull haproxy@sha256:591a3bca4c83fc374a0a18966c639ffc6f84d35770b981e4073ce11b25a9492a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28641759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ce3b317facfbcbd6c3290e9ef2039974cd06ddecb2977206c531590e251ac88`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 10:51:45 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 11:04:18 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 11:04:18 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 11:05:09 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 01 Aug 2018 11:05:09 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 11:05:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 11:05:10 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07347f3b9bde7f131ece4e3936017260bec03787d0b564e92e2683d5ea0b35a0`  
		Last Modified: Wed, 01 Aug 2018 11:06:28 GMT  
		Size: 5.5 MB (5515002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b4e46830cc4f8c823b36f98153f547dd106971c7b7d6a22b71ce4d0b10c37e`  
		Last Modified: Wed, 01 Aug 2018 11:06:25 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; ppc64le

```console
$ docker pull haproxy@sha256:c70dc211d3a9038150e6345128bd06f4950c0cb596d44815df2228b7140ec87c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (27977734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67a1ea930b11c9aaf9701f0c3bf27897ab3c7007585bf7e5f646eb70a4dcd600`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:59:57 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 08:49:35 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 08:49:43 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 09:05:11 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 08:50:25 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:50:26 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 28 Aug 2018 08:50:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:50:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48b1f3e880a86259c0c12b4a1c5d2b76d9682175c07082b834102316604f88b`  
		Last Modified: Wed, 01 Aug 2018 09:09:15 GMT  
		Size: 5.2 MB (5236909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028dc0ab404ec6584881ba98b080f404645bfdc5f108988f7f7ac8454ca44206`  
		Last Modified: Tue, 28 Aug 2018 08:52:55 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; s390x

```console
$ docker pull haproxy@sha256:941cd41b244bd34d331c65243b708bb2f6518056a387fc6483b5f961f65cceb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27733115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb6d1b3faa28d67db786df11e20555c0ee89617cc566728982c8460bbc23ec5d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 11:48:59 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 11:46:18 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 11:46:18 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 11:46:52 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 01 Aug 2018 11:46:53 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 11:46:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 11:46:53 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e154bae0117d7f9bc79428d41eea228da45b9812a9ae09be3a67c83cd7518831`  
		Last Modified: Wed, 01 Aug 2018 11:47:42 GMT  
		Size: 5.4 MB (5398218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922a140f3945b6aefb4b17d715621b53fa17cb5c78c552969ecd4987a1e52dac`  
		Last Modified: Wed, 01 Aug 2018 11:47:42 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8.13`

```console
$ docker pull haproxy@sha256:7dd7e5ef68fe5d1c91436743b286abc04c46145586bfbe96f29e6d80368fb8c6
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

### `haproxy:1.8.13` - linux; amd64

```console
$ docker pull haproxy@sha256:448a04e2e749b69695c3b75fb41f88fa7f9023e3120a77bffbdde43af2ca9593
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28062532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:991c6e578a0d6f0b1c2e0ddf6fcf0ef5a9de18283dc403c4479e5946dbe5408f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Wed, 25 Jul 2018 17:35:20 GMT
ENV HAPROXY_MAJOR=1.8
# Tue, 31 Jul 2018 16:45:37 GMT
ENV HAPROXY_VERSION=1.8.13
# Tue, 31 Jul 2018 16:45:37 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Tue, 31 Jul 2018 16:46:22 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 31 Jul 2018 16:46:23 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 31 Jul 2018 16:46:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Jul 2018 16:46:23 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a9c22a0d424622e6bc9cc4369a375fad9fd1cc62854282dd104cce2fd65f978`  
		Last Modified: Tue, 31 Jul 2018 16:47:37 GMT  
		Size: 5.6 MB (5576246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eaf021ab522b6c5c15ca19a4d0cb451a3cf342ea2d9dd11d510f9754d9e756f`  
		Last Modified: Tue, 31 Jul 2018 16:47:35 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.13` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:d6c603e6925957f87dcaa0cfb6d2043b6b79a85f6cfbde7eedc03c8a3c228b5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26391858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24e3fcb12911b9a6e694828b00b7de67e215319efd647903664d69002eb37b91`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:54:08 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 08:48:36 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 08:48:37 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 08:49:31 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 08:48:57 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:48:58 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 28 Aug 2018 08:48:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:48:58 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:235e2c34c6b727f2b00aae7eed907f84338b4002c487e0caaa123a50334c0810`  
		Last Modified: Tue, 17 Jul 2018 09:09:00 GMT  
		Size: 21.2 MB (21162647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d3dbab12711ba8abb2fef7c0883c4643b7d70e7f75b22048abc60b655cfee89`  
		Last Modified: Wed, 01 Aug 2018 08:49:48 GMT  
		Size: 5.2 MB (5228831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e866219e8841c6b4c5e95cff7cb7202c5dbb12ad83b5b7c2b1b60904e52061e`  
		Last Modified: Tue, 28 Aug 2018 08:49:56 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.13` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:d7ba0e608800eb7cace102669f5a9c5678239456c14ba975006a1c2117cdd401
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24363426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5de1b89d98930132541bd7a77c1fb36173dffe994a19556e3473dc0a08ff363d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 12:02:03 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 12:02:26 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 12:02:27 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 12:03:19 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 01 Aug 2018 12:03:20 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 12:03:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 12:03:20 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d4f2ad4558a359ca0b29ab64098fd8991d577e558c18b4acc7bb04080bfe6f`  
		Last Modified: Wed, 01 Aug 2018 12:03:38 GMT  
		Size: 5.1 MB (5092863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1245234b05aee58ce01e23ad6d00ac12e87d054a557a3f43d65b4a1e4de97036`  
		Last Modified: Wed, 01 Aug 2018 12:03:37 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.13` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:4958b6874d96a8c421d68351bc9c38d2b7f37790c236663ca5a648a01fbdece5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25526301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e77219b2422be68b70a98d4638b65e515da01428ae4761fe15a4a28a0302553`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 09:05:24 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 08:52:53 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 08:52:54 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 08:54:49 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 01 Aug 2018 08:54:50 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 08:54:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 08:54:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b63efd500a726cb366891bba79d56deb3e645e9f31359e4153ededf78f421bf`  
		Last Modified: Wed, 01 Aug 2018 08:56:44 GMT  
		Size: 5.2 MB (5194274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31cd73de60dc2e2378f4a4626a8bcd8e363dfdaf60dd7b5894dd66b6db45c1b`  
		Last Modified: Wed, 01 Aug 2018 08:56:43 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.13` - linux; 386

```console
$ docker pull haproxy@sha256:591a3bca4c83fc374a0a18966c639ffc6f84d35770b981e4073ce11b25a9492a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28641759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ce3b317facfbcbd6c3290e9ef2039974cd06ddecb2977206c531590e251ac88`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 10:51:45 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 11:04:18 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 11:04:18 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 11:05:09 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 01 Aug 2018 11:05:09 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 11:05:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 11:05:10 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07347f3b9bde7f131ece4e3936017260bec03787d0b564e92e2683d5ea0b35a0`  
		Last Modified: Wed, 01 Aug 2018 11:06:28 GMT  
		Size: 5.5 MB (5515002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b4e46830cc4f8c823b36f98153f547dd106971c7b7d6a22b71ce4d0b10c37e`  
		Last Modified: Wed, 01 Aug 2018 11:06:25 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.13` - linux; ppc64le

```console
$ docker pull haproxy@sha256:c70dc211d3a9038150e6345128bd06f4950c0cb596d44815df2228b7140ec87c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (27977734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67a1ea930b11c9aaf9701f0c3bf27897ab3c7007585bf7e5f646eb70a4dcd600`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:59:57 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 08:49:35 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 08:49:43 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 09:05:11 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 08:50:25 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:50:26 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 28 Aug 2018 08:50:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:50:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48b1f3e880a86259c0c12b4a1c5d2b76d9682175c07082b834102316604f88b`  
		Last Modified: Wed, 01 Aug 2018 09:09:15 GMT  
		Size: 5.2 MB (5236909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028dc0ab404ec6584881ba98b080f404645bfdc5f108988f7f7ac8454ca44206`  
		Last Modified: Tue, 28 Aug 2018 08:52:55 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.13` - linux; s390x

```console
$ docker pull haproxy@sha256:941cd41b244bd34d331c65243b708bb2f6518056a387fc6483b5f961f65cceb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27733115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb6d1b3faa28d67db786df11e20555c0ee89617cc566728982c8460bbc23ec5d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 11:48:59 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 11:46:18 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 11:46:18 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 11:46:52 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 01 Aug 2018 11:46:53 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 11:46:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 11:46:53 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e154bae0117d7f9bc79428d41eea228da45b9812a9ae09be3a67c83cd7518831`  
		Last Modified: Wed, 01 Aug 2018 11:47:42 GMT  
		Size: 5.4 MB (5398218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922a140f3945b6aefb4b17d715621b53fa17cb5c78c552969ecd4987a1e52dac`  
		Last Modified: Wed, 01 Aug 2018 11:47:42 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8.13-alpine`

```console
$ docker pull haproxy@sha256:f5b6363a6a61f5d5b727fe780ea600329b3720a3d0b4008e1f3fd1f06c351ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:1.8.13-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:4bd9b336e5bcf22a4ce7cf839ac1ecca20eb843461dd6af28297e400a68edcbc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9167242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90ac5a28bd390ba1e210eedd7908832357ad77aeb977d1289ac09b797bb6ded`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 25 Jul 2018 17:36:33 GMT
ENV HAPROXY_MAJOR=1.8
# Tue, 31 Jul 2018 16:46:47 GMT
ENV HAPROXY_VERSION=1.8.13
# Tue, 31 Jul 2018 16:46:47 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Tue, 31 Jul 2018 16:47:05 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 31 Jul 2018 16:47:05 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 31 Jul 2018 16:47:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Jul 2018 16:47:06 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365b3831311b6a0c9633c645f5ebf310c4007a319336520a7a813beaac9743e3`  
		Last Modified: Tue, 31 Jul 2018 16:48:52 GMT  
		Size: 7.0 MB (6960320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02b18710db6a717aa2a24133cb021074488043f503a748a796412f5a80fd0aa`  
		Last Modified: Tue, 31 Jul 2018 16:48:49 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.13-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:153dc98b18b53405c6231f1da15d032e080a77b7ff8deb34cd43ecdcc3d02081
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8546057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47e73f38e1f05940a7c192815a99dcac289e3eb08a131011bc9bf995790d5c22`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 09:09:41 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 08:55:24 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 08:55:25 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 08:56:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 01 Aug 2018 08:56:08 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 08:56:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 08:56:09 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7edef814b32a26ce1aa3e93a9ddbc801002e646ba48eda74f004e74a97be24d7`  
		Last Modified: Wed, 01 Aug 2018 08:57:57 GMT  
		Size: 6.4 MB (6445986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3267045fbd42cf8e670ae6fc00432e9eab5b5ce3d084043ee554ddeab7e1c8d6`  
		Last Modified: Wed, 01 Aug 2018 08:57:55 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.13-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:dc4aa911f22093129ac7f19e8cdcb355194c315ea13edbd4936bfb3e668a94d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (8962870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c1c18d91f1bf244752c7950e8f60e6e59f0ac2212c958ea80100e287b1eafa6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 10:52:46 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 11:05:30 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 11:05:30 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 11:05:52 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 01 Aug 2018 11:05:54 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 11:05:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 11:05:54 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e7966f4b9ceeb58998e2bc98dee6ef57d17dfd6361a4d8c7792fb578be6fd7`  
		Last Modified: Wed, 01 Aug 2018 11:08:08 GMT  
		Size: 6.7 MB (6691395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01526a751b8353a7c3adbd4fb5b78db41435a2d0c89a7e4870595c19e661a45`  
		Last Modified: Wed, 01 Aug 2018 11:08:05 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.13-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:8a62607787e65d89ae29a61223fe792aef1139dd34b68b1e4abe928662546bc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8809332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b623c028f8c0399a0ea08f92e3618782710fde8447b8aab5497c3ec5b08a222d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 09:08:06 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 09:06:15 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 09:06:23 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 09:07:44 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 28 Aug 2018 08:50:34 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:50:35 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 28 Aug 2018 08:50:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:50:37 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06b5d4bddd281021ff92cc7bfea5285f9dc90d3ab93a10951f0952742bbb22c4`  
		Last Modified: Wed, 01 Aug 2018 09:10:26 GMT  
		Size: 6.6 MB (6613915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8349f2e7b4e1e0e7dc7856e91b674e9e3b3af149cc4aaac54a3cd7e1ed4c00`  
		Last Modified: Tue, 28 Aug 2018 08:53:27 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.13-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:33394ceadda5627ea088b70aca60bec34315fbe8c522f8ffa2c6c52de4e069ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8932541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a51bb804441ec1f78cd0fd2191c251ac07ed1cc0ea37b6a299fe1e45ee7642fe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 11:50:11 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 11:47:01 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 11:47:01 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 11:47:24 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 01 Aug 2018 11:47:24 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 11:47:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 11:47:25 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b210a78684def395bfba8ecd6cedf01840df87b82ebbf283ad63b02e9e76c0a8`  
		Last Modified: Wed, 01 Aug 2018 11:48:03 GMT  
		Size: 6.6 MB (6624514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f30a63f09c8cd5734c12538bf3b308b48d68dd7b5f77d5b369ca947346ceb3b`  
		Last Modified: Wed, 01 Aug 2018 11:48:01 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8-alpine`

```console
$ docker pull haproxy@sha256:f5b6363a6a61f5d5b727fe780ea600329b3720a3d0b4008e1f3fd1f06c351ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:1.8-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:4bd9b336e5bcf22a4ce7cf839ac1ecca20eb843461dd6af28297e400a68edcbc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9167242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90ac5a28bd390ba1e210eedd7908832357ad77aeb977d1289ac09b797bb6ded`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 25 Jul 2018 17:36:33 GMT
ENV HAPROXY_MAJOR=1.8
# Tue, 31 Jul 2018 16:46:47 GMT
ENV HAPROXY_VERSION=1.8.13
# Tue, 31 Jul 2018 16:46:47 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Tue, 31 Jul 2018 16:47:05 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 31 Jul 2018 16:47:05 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 31 Jul 2018 16:47:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Jul 2018 16:47:06 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365b3831311b6a0c9633c645f5ebf310c4007a319336520a7a813beaac9743e3`  
		Last Modified: Tue, 31 Jul 2018 16:48:52 GMT  
		Size: 7.0 MB (6960320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02b18710db6a717aa2a24133cb021074488043f503a748a796412f5a80fd0aa`  
		Last Modified: Tue, 31 Jul 2018 16:48:49 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:153dc98b18b53405c6231f1da15d032e080a77b7ff8deb34cd43ecdcc3d02081
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8546057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47e73f38e1f05940a7c192815a99dcac289e3eb08a131011bc9bf995790d5c22`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 09:09:41 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 08:55:24 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 08:55:25 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 08:56:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 01 Aug 2018 08:56:08 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 08:56:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 08:56:09 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7edef814b32a26ce1aa3e93a9ddbc801002e646ba48eda74f004e74a97be24d7`  
		Last Modified: Wed, 01 Aug 2018 08:57:57 GMT  
		Size: 6.4 MB (6445986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3267045fbd42cf8e670ae6fc00432e9eab5b5ce3d084043ee554ddeab7e1c8d6`  
		Last Modified: Wed, 01 Aug 2018 08:57:55 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:dc4aa911f22093129ac7f19e8cdcb355194c315ea13edbd4936bfb3e668a94d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (8962870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c1c18d91f1bf244752c7950e8f60e6e59f0ac2212c958ea80100e287b1eafa6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 10:52:46 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 11:05:30 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 11:05:30 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 11:05:52 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 01 Aug 2018 11:05:54 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 11:05:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 11:05:54 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e7966f4b9ceeb58998e2bc98dee6ef57d17dfd6361a4d8c7792fb578be6fd7`  
		Last Modified: Wed, 01 Aug 2018 11:08:08 GMT  
		Size: 6.7 MB (6691395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01526a751b8353a7c3adbd4fb5b78db41435a2d0c89a7e4870595c19e661a45`  
		Last Modified: Wed, 01 Aug 2018 11:08:05 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:8a62607787e65d89ae29a61223fe792aef1139dd34b68b1e4abe928662546bc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8809332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b623c028f8c0399a0ea08f92e3618782710fde8447b8aab5497c3ec5b08a222d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 09:08:06 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 09:06:15 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 09:06:23 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 09:07:44 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 28 Aug 2018 08:50:34 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:50:35 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 28 Aug 2018 08:50:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:50:37 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06b5d4bddd281021ff92cc7bfea5285f9dc90d3ab93a10951f0952742bbb22c4`  
		Last Modified: Wed, 01 Aug 2018 09:10:26 GMT  
		Size: 6.6 MB (6613915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8349f2e7b4e1e0e7dc7856e91b674e9e3b3af149cc4aaac54a3cd7e1ed4c00`  
		Last Modified: Tue, 28 Aug 2018 08:53:27 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:33394ceadda5627ea088b70aca60bec34315fbe8c522f8ffa2c6c52de4e069ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8932541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a51bb804441ec1f78cd0fd2191c251ac07ed1cc0ea37b6a299fe1e45ee7642fe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 11:50:11 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 11:47:01 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 11:47:01 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 11:47:24 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 01 Aug 2018 11:47:24 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 11:47:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 11:47:25 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b210a78684def395bfba8ecd6cedf01840df87b82ebbf283ad63b02e9e76c0a8`  
		Last Modified: Wed, 01 Aug 2018 11:48:03 GMT  
		Size: 6.6 MB (6624514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f30a63f09c8cd5734c12538bf3b308b48d68dd7b5f77d5b369ca947346ceb3b`  
		Last Modified: Wed, 01 Aug 2018 11:48:01 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1-alpine`

```console
$ docker pull haproxy@sha256:f5b6363a6a61f5d5b727fe780ea600329b3720a3d0b4008e1f3fd1f06c351ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:1-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:4bd9b336e5bcf22a4ce7cf839ac1ecca20eb843461dd6af28297e400a68edcbc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9167242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90ac5a28bd390ba1e210eedd7908832357ad77aeb977d1289ac09b797bb6ded`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 25 Jul 2018 17:36:33 GMT
ENV HAPROXY_MAJOR=1.8
# Tue, 31 Jul 2018 16:46:47 GMT
ENV HAPROXY_VERSION=1.8.13
# Tue, 31 Jul 2018 16:46:47 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Tue, 31 Jul 2018 16:47:05 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 31 Jul 2018 16:47:05 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 31 Jul 2018 16:47:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Jul 2018 16:47:06 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365b3831311b6a0c9633c645f5ebf310c4007a319336520a7a813beaac9743e3`  
		Last Modified: Tue, 31 Jul 2018 16:48:52 GMT  
		Size: 7.0 MB (6960320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02b18710db6a717aa2a24133cb021074488043f503a748a796412f5a80fd0aa`  
		Last Modified: Tue, 31 Jul 2018 16:48:49 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:153dc98b18b53405c6231f1da15d032e080a77b7ff8deb34cd43ecdcc3d02081
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8546057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47e73f38e1f05940a7c192815a99dcac289e3eb08a131011bc9bf995790d5c22`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 09:09:41 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 08:55:24 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 08:55:25 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 08:56:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 01 Aug 2018 08:56:08 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 08:56:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 08:56:09 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7edef814b32a26ce1aa3e93a9ddbc801002e646ba48eda74f004e74a97be24d7`  
		Last Modified: Wed, 01 Aug 2018 08:57:57 GMT  
		Size: 6.4 MB (6445986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3267045fbd42cf8e670ae6fc00432e9eab5b5ce3d084043ee554ddeab7e1c8d6`  
		Last Modified: Wed, 01 Aug 2018 08:57:55 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:dc4aa911f22093129ac7f19e8cdcb355194c315ea13edbd4936bfb3e668a94d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (8962870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c1c18d91f1bf244752c7950e8f60e6e59f0ac2212c958ea80100e287b1eafa6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 10:52:46 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 11:05:30 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 11:05:30 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 11:05:52 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 01 Aug 2018 11:05:54 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 11:05:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 11:05:54 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e7966f4b9ceeb58998e2bc98dee6ef57d17dfd6361a4d8c7792fb578be6fd7`  
		Last Modified: Wed, 01 Aug 2018 11:08:08 GMT  
		Size: 6.7 MB (6691395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01526a751b8353a7c3adbd4fb5b78db41435a2d0c89a7e4870595c19e661a45`  
		Last Modified: Wed, 01 Aug 2018 11:08:05 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:8a62607787e65d89ae29a61223fe792aef1139dd34b68b1e4abe928662546bc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8809332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b623c028f8c0399a0ea08f92e3618782710fde8447b8aab5497c3ec5b08a222d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 09:08:06 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 09:06:15 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 09:06:23 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 09:07:44 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 28 Aug 2018 08:50:34 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:50:35 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 28 Aug 2018 08:50:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:50:37 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06b5d4bddd281021ff92cc7bfea5285f9dc90d3ab93a10951f0952742bbb22c4`  
		Last Modified: Wed, 01 Aug 2018 09:10:26 GMT  
		Size: 6.6 MB (6613915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8349f2e7b4e1e0e7dc7856e91b674e9e3b3af149cc4aaac54a3cd7e1ed4c00`  
		Last Modified: Tue, 28 Aug 2018 08:53:27 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:33394ceadda5627ea088b70aca60bec34315fbe8c522f8ffa2c6c52de4e069ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8932541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a51bb804441ec1f78cd0fd2191c251ac07ed1cc0ea37b6a299fe1e45ee7642fe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 11:50:11 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 11:47:01 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 11:47:01 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 11:47:24 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 01 Aug 2018 11:47:24 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 11:47:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 11:47:25 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b210a78684def395bfba8ecd6cedf01840df87b82ebbf283ad63b02e9e76c0a8`  
		Last Modified: Wed, 01 Aug 2018 11:48:03 GMT  
		Size: 6.6 MB (6624514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f30a63f09c8cd5734c12538bf3b308b48d68dd7b5f77d5b369ca947346ceb3b`  
		Last Modified: Wed, 01 Aug 2018 11:48:01 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:alpine`

```console
$ docker pull haproxy@sha256:f5b6363a6a61f5d5b727fe780ea600329b3720a3d0b4008e1f3fd1f06c351ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:4bd9b336e5bcf22a4ce7cf839ac1ecca20eb843461dd6af28297e400a68edcbc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9167242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90ac5a28bd390ba1e210eedd7908832357ad77aeb977d1289ac09b797bb6ded`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 25 Jul 2018 17:36:33 GMT
ENV HAPROXY_MAJOR=1.8
# Tue, 31 Jul 2018 16:46:47 GMT
ENV HAPROXY_VERSION=1.8.13
# Tue, 31 Jul 2018 16:46:47 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Tue, 31 Jul 2018 16:47:05 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 31 Jul 2018 16:47:05 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 31 Jul 2018 16:47:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Jul 2018 16:47:06 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365b3831311b6a0c9633c645f5ebf310c4007a319336520a7a813beaac9743e3`  
		Last Modified: Tue, 31 Jul 2018 16:48:52 GMT  
		Size: 7.0 MB (6960320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02b18710db6a717aa2a24133cb021074488043f503a748a796412f5a80fd0aa`  
		Last Modified: Tue, 31 Jul 2018 16:48:49 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:153dc98b18b53405c6231f1da15d032e080a77b7ff8deb34cd43ecdcc3d02081
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8546057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47e73f38e1f05940a7c192815a99dcac289e3eb08a131011bc9bf995790d5c22`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 09:09:41 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 08:55:24 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 08:55:25 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 08:56:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 01 Aug 2018 08:56:08 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 08:56:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 08:56:09 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7edef814b32a26ce1aa3e93a9ddbc801002e646ba48eda74f004e74a97be24d7`  
		Last Modified: Wed, 01 Aug 2018 08:57:57 GMT  
		Size: 6.4 MB (6445986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3267045fbd42cf8e670ae6fc00432e9eab5b5ce3d084043ee554ddeab7e1c8d6`  
		Last Modified: Wed, 01 Aug 2018 08:57:55 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; 386

```console
$ docker pull haproxy@sha256:dc4aa911f22093129ac7f19e8cdcb355194c315ea13edbd4936bfb3e668a94d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (8962870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c1c18d91f1bf244752c7950e8f60e6e59f0ac2212c958ea80100e287b1eafa6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 10:52:46 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 11:05:30 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 11:05:30 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 11:05:52 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 01 Aug 2018 11:05:54 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 11:05:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 11:05:54 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e7966f4b9ceeb58998e2bc98dee6ef57d17dfd6361a4d8c7792fb578be6fd7`  
		Last Modified: Wed, 01 Aug 2018 11:08:08 GMT  
		Size: 6.7 MB (6691395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01526a751b8353a7c3adbd4fb5b78db41435a2d0c89a7e4870595c19e661a45`  
		Last Modified: Wed, 01 Aug 2018 11:08:05 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:8a62607787e65d89ae29a61223fe792aef1139dd34b68b1e4abe928662546bc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8809332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b623c028f8c0399a0ea08f92e3618782710fde8447b8aab5497c3ec5b08a222d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 09:08:06 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 09:06:15 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 09:06:23 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 09:07:44 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 28 Aug 2018 08:50:34 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:50:35 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 28 Aug 2018 08:50:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:50:37 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06b5d4bddd281021ff92cc7bfea5285f9dc90d3ab93a10951f0952742bbb22c4`  
		Last Modified: Wed, 01 Aug 2018 09:10:26 GMT  
		Size: 6.6 MB (6613915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8349f2e7b4e1e0e7dc7856e91b674e9e3b3af149cc4aaac54a3cd7e1ed4c00`  
		Last Modified: Tue, 28 Aug 2018 08:53:27 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:33394ceadda5627ea088b70aca60bec34315fbe8c522f8ffa2c6c52de4e069ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8932541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a51bb804441ec1f78cd0fd2191c251ac07ed1cc0ea37b6a299fe1e45ee7642fe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 11:50:11 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 11:47:01 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 11:47:01 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 11:47:24 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 01 Aug 2018 11:47:24 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 11:47:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 11:47:25 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b210a78684def395bfba8ecd6cedf01840df87b82ebbf283ad63b02e9e76c0a8`  
		Last Modified: Wed, 01 Aug 2018 11:48:03 GMT  
		Size: 6.6 MB (6624514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f30a63f09c8cd5734c12538bf3b308b48d68dd7b5f77d5b369ca947346ceb3b`  
		Last Modified: Wed, 01 Aug 2018 11:48:01 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:latest`

```console
$ docker pull haproxy@sha256:7dd7e5ef68fe5d1c91436743b286abc04c46145586bfbe96f29e6d80368fb8c6
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

### `haproxy:latest` - linux; amd64

```console
$ docker pull haproxy@sha256:448a04e2e749b69695c3b75fb41f88fa7f9023e3120a77bffbdde43af2ca9593
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28062532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:991c6e578a0d6f0b1c2e0ddf6fcf0ef5a9de18283dc403c4479e5946dbe5408f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Wed, 25 Jul 2018 17:35:20 GMT
ENV HAPROXY_MAJOR=1.8
# Tue, 31 Jul 2018 16:45:37 GMT
ENV HAPROXY_VERSION=1.8.13
# Tue, 31 Jul 2018 16:45:37 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Tue, 31 Jul 2018 16:46:22 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 31 Jul 2018 16:46:23 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 31 Jul 2018 16:46:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Jul 2018 16:46:23 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a9c22a0d424622e6bc9cc4369a375fad9fd1cc62854282dd104cce2fd65f978`  
		Last Modified: Tue, 31 Jul 2018 16:47:37 GMT  
		Size: 5.6 MB (5576246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eaf021ab522b6c5c15ca19a4d0cb451a3cf342ea2d9dd11d510f9754d9e756f`  
		Last Modified: Tue, 31 Jul 2018 16:47:35 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:d6c603e6925957f87dcaa0cfb6d2043b6b79a85f6cfbde7eedc03c8a3c228b5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26391858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24e3fcb12911b9a6e694828b00b7de67e215319efd647903664d69002eb37b91`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:54:08 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 08:48:36 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 08:48:37 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 08:49:31 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 08:48:57 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:48:58 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 28 Aug 2018 08:48:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:48:58 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:235e2c34c6b727f2b00aae7eed907f84338b4002c487e0caaa123a50334c0810`  
		Last Modified: Tue, 17 Jul 2018 09:09:00 GMT  
		Size: 21.2 MB (21162647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d3dbab12711ba8abb2fef7c0883c4643b7d70e7f75b22048abc60b655cfee89`  
		Last Modified: Wed, 01 Aug 2018 08:49:48 GMT  
		Size: 5.2 MB (5228831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e866219e8841c6b4c5e95cff7cb7202c5dbb12ad83b5b7c2b1b60904e52061e`  
		Last Modified: Tue, 28 Aug 2018 08:49:56 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:d7ba0e608800eb7cace102669f5a9c5678239456c14ba975006a1c2117cdd401
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24363426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5de1b89d98930132541bd7a77c1fb36173dffe994a19556e3473dc0a08ff363d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 12:02:03 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 12:02:26 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 12:02:27 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 12:03:19 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 01 Aug 2018 12:03:20 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 12:03:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 12:03:20 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d4f2ad4558a359ca0b29ab64098fd8991d577e558c18b4acc7bb04080bfe6f`  
		Last Modified: Wed, 01 Aug 2018 12:03:38 GMT  
		Size: 5.1 MB (5092863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1245234b05aee58ce01e23ad6d00ac12e87d054a557a3f43d65b4a1e4de97036`  
		Last Modified: Wed, 01 Aug 2018 12:03:37 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:4958b6874d96a8c421d68351bc9c38d2b7f37790c236663ca5a648a01fbdece5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25526301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e77219b2422be68b70a98d4638b65e515da01428ae4761fe15a4a28a0302553`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 09:05:24 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 08:52:53 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 08:52:54 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 08:54:49 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 01 Aug 2018 08:54:50 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 08:54:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 08:54:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b63efd500a726cb366891bba79d56deb3e645e9f31359e4153ededf78f421bf`  
		Last Modified: Wed, 01 Aug 2018 08:56:44 GMT  
		Size: 5.2 MB (5194274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31cd73de60dc2e2378f4a4626a8bcd8e363dfdaf60dd7b5894dd66b6db45c1b`  
		Last Modified: Wed, 01 Aug 2018 08:56:43 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; 386

```console
$ docker pull haproxy@sha256:591a3bca4c83fc374a0a18966c639ffc6f84d35770b981e4073ce11b25a9492a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28641759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ce3b317facfbcbd6c3290e9ef2039974cd06ddecb2977206c531590e251ac88`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 10:51:45 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 11:04:18 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 11:04:18 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 11:05:09 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 01 Aug 2018 11:05:09 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 11:05:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 11:05:10 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07347f3b9bde7f131ece4e3936017260bec03787d0b564e92e2683d5ea0b35a0`  
		Last Modified: Wed, 01 Aug 2018 11:06:28 GMT  
		Size: 5.5 MB (5515002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b4e46830cc4f8c823b36f98153f547dd106971c7b7d6a22b71ce4d0b10c37e`  
		Last Modified: Wed, 01 Aug 2018 11:06:25 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; ppc64le

```console
$ docker pull haproxy@sha256:c70dc211d3a9038150e6345128bd06f4950c0cb596d44815df2228b7140ec87c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (27977734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67a1ea930b11c9aaf9701f0c3bf27897ab3c7007585bf7e5f646eb70a4dcd600`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 08:59:57 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 08:49:35 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 08:49:43 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 09:05:11 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 28 Aug 2018 08:50:25 GMT
STOPSIGNAL [SIGUSR1]
# Tue, 28 Aug 2018 08:50:26 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 28 Aug 2018 08:50:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:50:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48b1f3e880a86259c0c12b4a1c5d2b76d9682175c07082b834102316604f88b`  
		Last Modified: Wed, 01 Aug 2018 09:09:15 GMT  
		Size: 5.2 MB (5236909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028dc0ab404ec6584881ba98b080f404645bfdc5f108988f7f7ac8454ca44206`  
		Last Modified: Tue, 28 Aug 2018 08:52:55 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; s390x

```console
$ docker pull haproxy@sha256:941cd41b244bd34d331c65243b708bb2f6518056a387fc6483b5f961f65cceb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27733115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb6d1b3faa28d67db786df11e20555c0ee89617cc566728982c8460bbc23ec5d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Thu, 26 Jul 2018 11:48:59 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 01 Aug 2018 11:46:18 GMT
ENV HAPROXY_VERSION=1.8.13
# Wed, 01 Aug 2018 11:46:18 GMT
ENV HAPROXY_SHA256=2bf5dafbb5f1530c0e67ab63666565de948591f8e0ee2a1d3c84c45e738220f1
# Wed, 01 Aug 2018 11:46:52 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 01 Aug 2018 11:46:53 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 01 Aug 2018 11:46:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Aug 2018 11:46:53 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e154bae0117d7f9bc79428d41eea228da45b9812a9ae09be3a67c83cd7518831`  
		Last Modified: Wed, 01 Aug 2018 11:47:42 GMT  
		Size: 5.4 MB (5398218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922a140f3945b6aefb4b17d715621b53fa17cb5c78c552969ecd4987a1e52dac`  
		Last Modified: Wed, 01 Aug 2018 11:47:42 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
