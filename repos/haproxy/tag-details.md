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
-	[`haproxy:1.8.20`](#haproxy1820)
-	[`haproxy:1.8.20-alpine`](#haproxy1820-alpine)
-	[`haproxy:1.8-alpine`](#haproxy18-alpine)
-	[`haproxy:1.9`](#haproxy19)
-	[`haproxy:1.9.8`](#haproxy198)
-	[`haproxy:1.9.8-alpine`](#haproxy198-alpine)
-	[`haproxy:1.9-alpine`](#haproxy19-alpine)
-	[`haproxy:1-alpine`](#haproxy1-alpine)
-	[`haproxy:2.0-dev6`](#haproxy20-dev6)
-	[`haproxy:2.0-dev6-alpine`](#haproxy20-dev6-alpine)
-	[`haproxy:2.0-rc`](#haproxy20-rc)
-	[`haproxy:2.0-rc-alpine`](#haproxy20-rc-alpine)
-	[`haproxy:alpine`](#haproxyalpine)
-	[`haproxy:latest`](#haproxylatest)

## `haproxy:1`

```console
$ docker pull haproxy@sha256:1f40ca332590c6647516a11711b74933ee8a889a9fbb47127a4b8c7e3c4cf651
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
$ docker pull haproxy@sha256:63f8c142298c5768c06b7b7405a75a18b5785c59967f4b75cdde46bf244f5542
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29131354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c63dfa229dbe96c0b3832dfce273f3733069949d017eb3cf4ccfbe1cd2efdcad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:21:26 GMT
ENV HAPROXY_VERSION=1.9.8
# Tue, 11 Jun 2019 00:21:27 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Tue, 11 Jun 2019 00:21:27 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Tue, 11 Jun 2019 00:23:31 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:23:32 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:23:32 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:23:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:23:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03bf45fcc87a5130f533d242518760ecc198ea4653c5aba4fc023801cb11fb2`  
		Last Modified: Tue, 11 Jun 2019 00:30:42 GMT  
		Size: 6.6 MB (6641672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9197512f12db4d086eac7ba17f4bb082dd5e2fb79ec567d424e53d8a51bf6619`  
		Last Modified: Tue, 11 Jun 2019 00:30:38 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:5841bdd58524f40a4f01dae96cb81f3febb71ad717e158501597d5ab5e5a8479
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27418587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65381bf0d91a4aa23dab87f3913c83e8ebc24de1cd949cae95fd2194a86db3a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 15 May 2019 23:48:27 GMT
ENV HAPROXY_VERSION=1.9.8
# Wed, 15 May 2019 23:48:28 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Wed, 15 May 2019 23:48:28 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:50:12 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:50:13 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:50:13 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:50:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:50:15 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bffc056707e011397b8d5c78f20c2771be114c1158a277132cd8936ba15172d`  
		Last Modified: Fri, 24 May 2019 22:54:13 GMT  
		Size: 6.3 MB (6262344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b06e538d41f4618a712a6cecd2d24f5cb7e2ed241e0ee7a4d476c8de8f776b`  
		Last Modified: Fri, 24 May 2019 22:52:11 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:6496026df28c95f85255a9638a1526ac90b97d9b6e961f1c43161eb05ac5ee68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25451994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3dfc856cd1118f4fd1d697c39a63bf9a1d314a37eac176901a5dc3452e5b94b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:07:28 GMT
ENV HAPROXY_VERSION=1.9.7
# Wed, 08 May 2019 13:07:28 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.7.tar.gz
# Wed, 08 May 2019 13:07:29 GMT
ENV HAPROXY_SHA256=5e59466728cc3ec0bcdd0271d8a8c5bd07d99a3a9cfa0989583da0ddde099632
# Wed, 08 May 2019 13:08:11 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 13:08:12 GMT
STOPSIGNAL SIGUSR1
# Wed, 08 May 2019 13:08:13 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 08 May 2019 13:08:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 13:08:14 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ad789fafc308c82ea6874c1b9029326845c744c8dee79e2508c5cf331f6d63`  
		Last Modified: Wed, 08 May 2019 13:11:58 GMT  
		Size: 6.2 MB (6175397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61dc2afcbc8c6a28a3738d5f195df588b96f47c58ee8c7fafb245a4673ede2ec`  
		Last Modified: Wed, 08 May 2019 13:11:56 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:983ed763d70e5aede75db79805fdc50cd1f372e7fc5e83915c07ec045ffd1133
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26624033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b8027ee9ddf687d132b8fea5f9e01a19d1ee2186c5f66b525bbfe69c04b4f2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:52:08 GMT
ENV HAPROXY_VERSION=1.9.8
# Tue, 11 Jun 2019 00:52:08 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Tue, 11 Jun 2019 00:52:09 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Tue, 11 Jun 2019 00:52:46 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:52:47 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:52:47 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:52:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:52:48 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e97f95b45cad1e1172b98644d3bb06d95a21a4585c5c94bc80a26b3dcb0a8fe`  
		Last Modified: Tue, 11 Jun 2019 00:57:08 GMT  
		Size: 6.3 MB (6289862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e11476194539001ec7370e03db5779a59cddb510203ebf75d5916687a84b3ed`  
		Last Modified: Tue, 11 Jun 2019 00:57:06 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; 386

```console
$ docker pull haproxy@sha256:1be321c365e3ab74aae1e63d6f444c8ea2043080366cbef1de8be4cf2a686817
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.6 MB (29633016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cea5d4d5bb215b11485dd10f934cbe5c5452d4098865c237b73c4ca76dbe95ea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Thu, 16 May 2019 01:38:11 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 16 May 2019 01:38:12 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 16 May 2019 01:38:12 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:48:42 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:48:42 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:48:42 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:48:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:48:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df336c664dc9d236456024fde0feaedaa0db7abd40d9c44ad59e30ba50dfedee`  
		Last Modified: Fri, 24 May 2019 22:58:46 GMT  
		Size: 6.5 MB (6511793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbbda2095f418c27f64c41515280c5d0d76ec828f892e9f55dc2e42e70114e15`  
		Last Modified: Fri, 24 May 2019 22:58:46 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; ppc64le

```console
$ docker pull haproxy@sha256:23a3816076c6bcd5ca554df34f2be3d94bbedfc338930634a646cf3c934f000b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29026923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07e019bb03b4f30235870f786645e8d05b883095d578a10d655adabfb2a682da`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Thu, 30 May 2019 17:56:07 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 30 May 2019 17:56:09 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 30 May 2019 17:56:12 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Thu, 30 May 2019 18:00:05 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 30 May 2019 18:00:10 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:00:15 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Thu, 30 May 2019 18:00:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:00:22 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047da7677fc1c1bb4bab9a7e00c19c6c308718d09e89c7c9fd70adc600d5caf3`  
		Last Modified: Thu, 30 May 2019 18:21:01 GMT  
		Size: 6.3 MB (6281629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c35c511fbdb3b22a3fbe621f8dec8bdaa45accbd77fe052c1df72fcce4a164c`  
		Last Modified: Thu, 30 May 2019 18:20:57 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; s390x

```console
$ docker pull haproxy@sha256:82eff554be9e8cf7bfc3c84e01a93cc8a3148bbedceceaf3646cd40fb7c22e23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.8 MB (28838330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:260c21251833bf69a6e822c53730b2e23aca603545cd2319710488a3659605ab`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:54 GMT
ADD file:e253b6e8cd43e8026b8cd0ba0bbe34460e255b131bdb2f50d5b8a2cfd5c9495b in / 
# Mon, 10 Jun 2019 23:43:55 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:07:32 GMT
ENV HAPROXY_VERSION=1.9.8
# Tue, 11 Jun 2019 00:07:32 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Tue, 11 Jun 2019 00:07:33 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Tue, 11 Jun 2019 00:08:18 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:08:18 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:08:19 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:08:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:08:19 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:7ffdabbd82ddae873be4d1eeb64de2e4b43db4450b465d53b47f3b46eb55bd53`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 22.3 MB (22338852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ed8ce291fc45577a3cb3de5c1bf30896c3a3f94e00074a17bb057fbf4892f3`  
		Last Modified: Tue, 11 Jun 2019 00:13:01 GMT  
		Size: 6.5 MB (6499098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390f08fd73af606358e9d2e624465a3e243c145246c37b7f9ca8a5f3b897322b`  
		Last Modified: Tue, 11 Jun 2019 00:13:00 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5`

```console
$ docker pull haproxy@sha256:36c3ae319194f0ba08ba39ddf65a9993062aa2eb681aa286a5ef79cbb24d7596
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
$ docker pull haproxy@sha256:1331815e5f2cdfbbf4cba021f418077fd5a64efcb366dcec29dad89abe22eb2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26625814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2214f8873eba2f10a294452d94d9016c4f685ece843fabd67c5b592497613fd3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:28:48 GMT
ENV HAPROXY_VERSION=1.5.19
# Tue, 11 Jun 2019 00:28:48 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Tue, 11 Jun 2019 00:28:49 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Tue, 11 Jun 2019 00:29:48 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:29:49 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:29:49 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Tue, 11 Jun 2019 00:29:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:29:50 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b99cfe74ba8b31ebc6f34d7c1492e3585ecec22eb82aa7d787bd9d4355ca3f`  
		Last Modified: Tue, 11 Jun 2019 00:31:11 GMT  
		Size: 4.1 MB (4136111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c32c6926af52ea07f338d3703eec97a1f7d7902f657ff435a42266fe6d29423`  
		Last Modified: Tue, 11 Jun 2019 00:31:10 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:10b2f689b8bbddf3599f9db851048374451c683da70ca26edc836e576e365ee1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24834509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c950db988dbe744a568d3696cc10d542530ff7cd30498ea78860a10971bbabf1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:46:35 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 08 May 2019 09:46:35 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Wed, 08 May 2019 09:46:36 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Fri, 24 May 2019 22:53:40 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:53:41 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:53:41 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:53:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:53:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731a58fd26905085a4c63d0b30fc874fe997f51d443f82f646a413f23da7f241`  
		Last Modified: Fri, 24 May 2019 22:54:41 GMT  
		Size: 3.7 MB (3678244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4772315c15cebbd00c1db311994d986d8a13feaa3d1231c5cebbfd7f6fc2729f`  
		Last Modified: Fri, 24 May 2019 22:54:40 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:db97d49abaa786008fa6c933c302f0cf35e2c377b17b406d3975e4cd501f9fff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.9 MB (22862227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:140861dd6379be94b5d1fb22bed12195606b25223f86c515128dbadd18736986`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:10:57 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 08 May 2019 13:10:58 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Wed, 08 May 2019 13:10:59 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Fri, 24 May 2019 22:05:47 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:05:48 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:05:48 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:05:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:05:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0659e220af7f9620e656acfa8230de3d1d3b4da2bea127808a73ae324315ce66`  
		Last Modified: Fri, 24 May 2019 22:06:59 GMT  
		Size: 3.6 MB (3585608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195c9d9db37aef7beb1fc59b82103632f46cef7dac4b5cd97c073a93aacaddfe`  
		Last Modified: Fri, 24 May 2019 22:06:58 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:4bd9371352faef56f90fda9afd5a244db875ab804dd0b054a78300be51708ae4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (24039187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:278f3b62850733de501ff46ca0e7c536b3c3822fd894994040067955087b014f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:55:39 GMT
ENV HAPROXY_VERSION=1.5.19
# Tue, 11 Jun 2019 00:55:40 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Tue, 11 Jun 2019 00:55:40 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Tue, 11 Jun 2019 00:56:20 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:56:21 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:56:21 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Tue, 11 Jun 2019 00:56:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:56:23 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acda778d3fce04b99596053acc4a67f063e6ffa12b3b85173fcee17b9f7070db`  
		Last Modified: Tue, 11 Jun 2019 00:57:37 GMT  
		Size: 3.7 MB (3704994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b528a2ac286d4310b7c98dd344a8bb1c44585feda45723339ab16b7275ab2bdf`  
		Last Modified: Tue, 11 Jun 2019 00:57:36 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; 386

```console
$ docker pull haproxy@sha256:d50282e9e9cac8141041a724a8875540a7f7a96cd63b159e4d225c8a94f3b250
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 MB (27020660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cd3276dea0839492e2a1afa015d4a0e2b2d95c2b97d8635f9c1d429c252a163`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:19:14 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 08 May 2019 19:19:14 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Wed, 08 May 2019 19:19:14 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Fri, 24 May 2019 22:57:25 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:57:26 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:57:26 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:57:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:57:26 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776b77c9fbf92499e9845c1b35d874d5948aadc6923baa7bd22add2bb2cd5612`  
		Last Modified: Fri, 24 May 2019 22:59:34 GMT  
		Size: 3.9 MB (3899415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434cc96dad58b97ff38d7df747d2f5f5827dc6d741b847c05ad06c851d28a2dd`  
		Last Modified: Fri, 24 May 2019 22:59:32 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; ppc64le

```console
$ docker pull haproxy@sha256:8fa858d8b036b32e88fc146787cf854f534ddc1e8d95288cda32ca6184439b64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26596673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79de9d3ea51af812b0e0d013a8a854d4a88da135a34c36b3021b8375e0ea011`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Thu, 30 May 2019 18:14:49 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 30 May 2019 18:14:53 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Thu, 30 May 2019 18:14:57 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 30 May 2019 18:18:17 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 30 May 2019 18:18:22 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:18:24 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Thu, 30 May 2019 18:18:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:18:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bfaf2c31eef6ed86edcf38e17c97dccf37ce7e23b38b7830cef16db0baa05a`  
		Last Modified: Thu, 30 May 2019 18:23:18 GMT  
		Size: 3.9 MB (3851356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79e607de23ae04fd844f595091b431c500e0b2c2e4dba47d1ac488e65688caf`  
		Last Modified: Thu, 30 May 2019 18:23:16 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; s390x

```console
$ docker pull haproxy@sha256:b67f9f201f5a8ac2edcb68d822c4cfef0a9d0b7393c3946707a4cde69a562fb4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.3 MB (26297278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a84caf0b2465eedf07f575fcc2a3aca021d6044f464e7d3ed8ccff3897b8972e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:54 GMT
ADD file:e253b6e8cd43e8026b8cd0ba0bbe34460e255b131bdb2f50d5b8a2cfd5c9495b in / 
# Mon, 10 Jun 2019 23:43:55 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:11:48 GMT
ENV HAPROXY_VERSION=1.5.19
# Tue, 11 Jun 2019 00:11:48 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Tue, 11 Jun 2019 00:11:48 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Tue, 11 Jun 2019 00:12:25 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:12:26 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:12:26 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Tue, 11 Jun 2019 00:12:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:12:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:7ffdabbd82ddae873be4d1eeb64de2e4b43db4450b465d53b47f3b46eb55bd53`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 22.3 MB (22338852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdb524a660af0f3478cb2a9689b9e23b2cc83bbbc0733d6f428a625fe3286fc9`  
		Last Modified: Tue, 11 Jun 2019 00:13:33 GMT  
		Size: 4.0 MB (3958024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51afb237ba7f5b6ffb0499e0d635096323f0584fa018afdeb1a6c65a0ee5be65`  
		Last Modified: Tue, 11 Jun 2019 00:13:32 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5.19`

```console
$ docker pull haproxy@sha256:36c3ae319194f0ba08ba39ddf65a9993062aa2eb681aa286a5ef79cbb24d7596
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
$ docker pull haproxy@sha256:1331815e5f2cdfbbf4cba021f418077fd5a64efcb366dcec29dad89abe22eb2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26625814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2214f8873eba2f10a294452d94d9016c4f685ece843fabd67c5b592497613fd3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:28:48 GMT
ENV HAPROXY_VERSION=1.5.19
# Tue, 11 Jun 2019 00:28:48 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Tue, 11 Jun 2019 00:28:49 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Tue, 11 Jun 2019 00:29:48 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:29:49 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:29:49 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Tue, 11 Jun 2019 00:29:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:29:50 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b99cfe74ba8b31ebc6f34d7c1492e3585ecec22eb82aa7d787bd9d4355ca3f`  
		Last Modified: Tue, 11 Jun 2019 00:31:11 GMT  
		Size: 4.1 MB (4136111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c32c6926af52ea07f338d3703eec97a1f7d7902f657ff435a42266fe6d29423`  
		Last Modified: Tue, 11 Jun 2019 00:31:10 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:10b2f689b8bbddf3599f9db851048374451c683da70ca26edc836e576e365ee1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24834509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c950db988dbe744a568d3696cc10d542530ff7cd30498ea78860a10971bbabf1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:46:35 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 08 May 2019 09:46:35 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Wed, 08 May 2019 09:46:36 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Fri, 24 May 2019 22:53:40 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:53:41 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:53:41 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:53:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:53:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731a58fd26905085a4c63d0b30fc874fe997f51d443f82f646a413f23da7f241`  
		Last Modified: Fri, 24 May 2019 22:54:41 GMT  
		Size: 3.7 MB (3678244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4772315c15cebbd00c1db311994d986d8a13feaa3d1231c5cebbfd7f6fc2729f`  
		Last Modified: Fri, 24 May 2019 22:54:40 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:db97d49abaa786008fa6c933c302f0cf35e2c377b17b406d3975e4cd501f9fff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.9 MB (22862227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:140861dd6379be94b5d1fb22bed12195606b25223f86c515128dbadd18736986`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:10:57 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 08 May 2019 13:10:58 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Wed, 08 May 2019 13:10:59 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Fri, 24 May 2019 22:05:47 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:05:48 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:05:48 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:05:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:05:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0659e220af7f9620e656acfa8230de3d1d3b4da2bea127808a73ae324315ce66`  
		Last Modified: Fri, 24 May 2019 22:06:59 GMT  
		Size: 3.6 MB (3585608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195c9d9db37aef7beb1fc59b82103632f46cef7dac4b5cd97c073a93aacaddfe`  
		Last Modified: Fri, 24 May 2019 22:06:58 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:4bd9371352faef56f90fda9afd5a244db875ab804dd0b054a78300be51708ae4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (24039187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:278f3b62850733de501ff46ca0e7c536b3c3822fd894994040067955087b014f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:55:39 GMT
ENV HAPROXY_VERSION=1.5.19
# Tue, 11 Jun 2019 00:55:40 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Tue, 11 Jun 2019 00:55:40 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Tue, 11 Jun 2019 00:56:20 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:56:21 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:56:21 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Tue, 11 Jun 2019 00:56:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:56:23 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acda778d3fce04b99596053acc4a67f063e6ffa12b3b85173fcee17b9f7070db`  
		Last Modified: Tue, 11 Jun 2019 00:57:37 GMT  
		Size: 3.7 MB (3704994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b528a2ac286d4310b7c98dd344a8bb1c44585feda45723339ab16b7275ab2bdf`  
		Last Modified: Tue, 11 Jun 2019 00:57:36 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; 386

```console
$ docker pull haproxy@sha256:d50282e9e9cac8141041a724a8875540a7f7a96cd63b159e4d225c8a94f3b250
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 MB (27020660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cd3276dea0839492e2a1afa015d4a0e2b2d95c2b97d8635f9c1d429c252a163`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:19:14 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 08 May 2019 19:19:14 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Wed, 08 May 2019 19:19:14 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Fri, 24 May 2019 22:57:25 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:57:26 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:57:26 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:57:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:57:26 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776b77c9fbf92499e9845c1b35d874d5948aadc6923baa7bd22add2bb2cd5612`  
		Last Modified: Fri, 24 May 2019 22:59:34 GMT  
		Size: 3.9 MB (3899415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434cc96dad58b97ff38d7df747d2f5f5827dc6d741b847c05ad06c851d28a2dd`  
		Last Modified: Fri, 24 May 2019 22:59:32 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; ppc64le

```console
$ docker pull haproxy@sha256:8fa858d8b036b32e88fc146787cf854f534ddc1e8d95288cda32ca6184439b64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26596673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79de9d3ea51af812b0e0d013a8a854d4a88da135a34c36b3021b8375e0ea011`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Thu, 30 May 2019 18:14:49 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 30 May 2019 18:14:53 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Thu, 30 May 2019 18:14:57 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 30 May 2019 18:18:17 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 30 May 2019 18:18:22 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:18:24 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Thu, 30 May 2019 18:18:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:18:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bfaf2c31eef6ed86edcf38e17c97dccf37ce7e23b38b7830cef16db0baa05a`  
		Last Modified: Thu, 30 May 2019 18:23:18 GMT  
		Size: 3.9 MB (3851356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79e607de23ae04fd844f595091b431c500e0b2c2e4dba47d1ac488e65688caf`  
		Last Modified: Thu, 30 May 2019 18:23:16 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; s390x

```console
$ docker pull haproxy@sha256:b67f9f201f5a8ac2edcb68d822c4cfef0a9d0b7393c3946707a4cde69a562fb4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.3 MB (26297278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a84caf0b2465eedf07f575fcc2a3aca021d6044f464e7d3ed8ccff3897b8972e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:54 GMT
ADD file:e253b6e8cd43e8026b8cd0ba0bbe34460e255b131bdb2f50d5b8a2cfd5c9495b in / 
# Mon, 10 Jun 2019 23:43:55 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:11:48 GMT
ENV HAPROXY_VERSION=1.5.19
# Tue, 11 Jun 2019 00:11:48 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Tue, 11 Jun 2019 00:11:48 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Tue, 11 Jun 2019 00:12:25 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:12:26 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:12:26 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Tue, 11 Jun 2019 00:12:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:12:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:7ffdabbd82ddae873be4d1eeb64de2e4b43db4450b465d53b47f3b46eb55bd53`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 22.3 MB (22338852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdb524a660af0f3478cb2a9689b9e23b2cc83bbbc0733d6f428a625fe3286fc9`  
		Last Modified: Tue, 11 Jun 2019 00:13:33 GMT  
		Size: 4.0 MB (3958024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51afb237ba7f5b6ffb0499e0d635096323f0584fa018afdeb1a6c65a0ee5be65`  
		Last Modified: Tue, 11 Jun 2019 00:13:32 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5.19-alpine`

```console
$ docker pull haproxy@sha256:ebb51caa7bb9258eab3fd546f23707e5a0b8eede1f177d9516935d24350a2264
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
$ docker pull haproxy@sha256:621cf9fc39250db68c9a0428444afa2525d801e421c2672dec491a1f058f45c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7119499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713d274c7c16d5d930b3ca170b2605d59b38bfa24fa03fac678ae07d34381fd2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:20:29 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 07 Mar 2019 23:20:52 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Thu, 07 Mar 2019 23:20:59 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Fri, 24 May 2019 22:30:11 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:30:11 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:30:11 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:30:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:30:12 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ed98fea5ad3ac3a0c838506c51dab35e9b659f426fe082a944688d42016bed`  
		Last Modified: Fri, 24 May 2019 22:31:27 GMT  
		Size: 4.9 MB (4911921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e365a8579c9ee83b83175059067a1ace3035a5bd1b02503129353aa6c60400`  
		Last Modified: Fri, 24 May 2019 22:31:26 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:92e38150760286f2bc2cf3ed4c9e8b231238ab5a902008d19c94e99610a0a0a5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6581797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be60c293b85d39b0a885711ec33ed65b8efc6517c1f4d1bfae541c4e428df7d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:11:11 GMT
ENV HAPROXY_VERSION=1.5.19
# Fri, 08 Mar 2019 04:11:11 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Fri, 08 Mar 2019 04:11:11 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Fri, 24 May 2019 22:51:55 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:51:56 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:51:56 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:51:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:51:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91519f1fdd107727cab54d7861dc98ab6da02f45162270defab62dc23d0ad87d`  
		Last Modified: Fri, 24 May 2019 22:52:50 GMT  
		Size: 4.4 MB (4435273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a30a5604459933d6acc88bc2cb3c309e29e61301c2de2683bd447ba320c15cb1`  
		Last Modified: Fri, 24 May 2019 22:52:48 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:761485b6c71e5548e0134b8463927a7c4810aa893ab64b830430604750265ba5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6582389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:128e93668ca372eb352377765ddbe2df0f2a7df2a41f3a76380b4ddb2c5d694b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:47:13 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 16 May 2019 00:47:13 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Thu, 16 May 2019 00:47:13 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Fri, 24 May 2019 22:51:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:51:08 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:51:08 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:51:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:51:09 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850da8e4da899a49f97af02095f9212266f747ba7794c95c41dddfeaf09d7fcb`  
		Last Modified: Fri, 24 May 2019 22:53:00 GMT  
		Size: 4.5 MB (4482025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dccd2003e0372cf9e09349aae2833bfbd489f41fb07473c92da5d229efb68cd5`  
		Last Modified: Fri, 24 May 2019 22:52:59 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:77549fe505714e136efbdcf56a78892dbb418b7d235b04935a1b0763c3ba7c49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6931216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e52bae7fe7acc0e9f01095bb5e7c3a1061f6be6c7405766f9304e9881819c1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:57 GMT
ADD file:7de7a3a712d1367c4976c56379673692330b31dcae349cb4df3a46f389d9de1a in / 
# Fri, 08 Mar 2019 03:35:58 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:38:28 GMT
ENV HAPROXY_VERSION=1.5.19
# Fri, 08 Mar 2019 04:38:28 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Fri, 08 Mar 2019 04:38:29 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Fri, 24 May 2019 22:58:01 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:58:02 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:58:02 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:58:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:58:02 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bb688fb2ed64cf52097deee74b161bb2df71ee9b4300bedb832ad48f1c5a5b86`  
		Last Modified: Fri, 08 Mar 2019 03:36:39 GMT  
		Size: 2.3 MB (2272029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9713a62c5b52ad20ea8b2303f7828558e464ddaf317fdc4269a1dfe4242024fa`  
		Last Modified: Fri, 24 May 2019 22:59:39 GMT  
		Size: 4.7 MB (4658785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ae5659b333f773c7d173f444b7d885095b12336f787f24f44ae0a9ea3b37c0`  
		Last Modified: Fri, 24 May 2019 22:59:38 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:ab9ff930ff80d659b1647a5a5eff9ed98e3753f35660809a1bae24ed0b3c70a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6802076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819a2a3db02eee674bfec28f8449a80e19678fa0308c9fcad5478d771e3d311a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:43 GMT
ADD file:a0b688c2ad4ec9d0535b05f0f63ecc15d1af3e496ad8fcf29809af582add17f0 in / 
# Fri, 08 Mar 2019 03:37:45 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 18:18:48 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 30 May 2019 18:18:51 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Thu, 30 May 2019 18:18:54 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 30 May 2019 18:19:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 30 May 2019 18:19:25 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:19:26 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Thu, 30 May 2019 18:19:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:19:31 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0c6396bb25a488a80e061dc7e486b5fee792a25d36fbafa08c0b0f31ef402eac`  
		Last Modified: Fri, 08 Mar 2019 03:38:44 GMT  
		Size: 2.2 MB (2194926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76ff24fc4f61869f5a0398a33c5a88ddb3c03e392db1bf77ed558105df117fc`  
		Last Modified: Thu, 30 May 2019 18:23:30 GMT  
		Size: 4.6 MB (4606748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23dd9663442b88a916984d0cee17d2e837ab940e0d6bd20e46efa2c480e49ec1`  
		Last Modified: Thu, 30 May 2019 18:23:29 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:87385d3ee4299f08fe14790ffd8536fa82765420ed341f7b4a9239c335d7f751
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6893131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f86d9612a91665d902478b2a6c9c170ab78d898fee6700e025440b99b94715d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:b9321d1e8cf25ce80f0bd36bfb6169057897654d8014c3bd74545c2348e8018d in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:54:20 GMT
ENV HAPROXY_VERSION=1.5.19
# Fri, 08 Mar 2019 03:54:20 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Fri, 08 Mar 2019 03:54:20 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Fri, 24 May 2019 22:48:50 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:48:50 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:48:50 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:48:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:48:51 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2dae612ccf35f9ba25dee8f8762f1b8d330eaaad0cccef7cdac1c8292a37a081`  
		Last Modified: Fri, 08 Mar 2019 03:36:25 GMT  
		Size: 2.3 MB (2307669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a4b5b35c524cc8251e33baeee9c7ebf4b490e31aa8895547df87a22652198f`  
		Last Modified: Fri, 24 May 2019 22:50:09 GMT  
		Size: 4.6 MB (4585060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77d85d41b600e0c155acb85b2a7bdd2c51cccddc1b19bdddeb732707618a61a`  
		Last Modified: Fri, 24 May 2019 22:50:09 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5-alpine`

```console
$ docker pull haproxy@sha256:ebb51caa7bb9258eab3fd546f23707e5a0b8eede1f177d9516935d24350a2264
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
$ docker pull haproxy@sha256:621cf9fc39250db68c9a0428444afa2525d801e421c2672dec491a1f058f45c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7119499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713d274c7c16d5d930b3ca170b2605d59b38bfa24fa03fac678ae07d34381fd2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:20:29 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 07 Mar 2019 23:20:52 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Thu, 07 Mar 2019 23:20:59 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Fri, 24 May 2019 22:30:11 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:30:11 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:30:11 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:30:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:30:12 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ed98fea5ad3ac3a0c838506c51dab35e9b659f426fe082a944688d42016bed`  
		Last Modified: Fri, 24 May 2019 22:31:27 GMT  
		Size: 4.9 MB (4911921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e365a8579c9ee83b83175059067a1ace3035a5bd1b02503129353aa6c60400`  
		Last Modified: Fri, 24 May 2019 22:31:26 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:92e38150760286f2bc2cf3ed4c9e8b231238ab5a902008d19c94e99610a0a0a5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6581797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be60c293b85d39b0a885711ec33ed65b8efc6517c1f4d1bfae541c4e428df7d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:11:11 GMT
ENV HAPROXY_VERSION=1.5.19
# Fri, 08 Mar 2019 04:11:11 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Fri, 08 Mar 2019 04:11:11 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Fri, 24 May 2019 22:51:55 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:51:56 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:51:56 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:51:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:51:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91519f1fdd107727cab54d7861dc98ab6da02f45162270defab62dc23d0ad87d`  
		Last Modified: Fri, 24 May 2019 22:52:50 GMT  
		Size: 4.4 MB (4435273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a30a5604459933d6acc88bc2cb3c309e29e61301c2de2683bd447ba320c15cb1`  
		Last Modified: Fri, 24 May 2019 22:52:48 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:761485b6c71e5548e0134b8463927a7c4810aa893ab64b830430604750265ba5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6582389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:128e93668ca372eb352377765ddbe2df0f2a7df2a41f3a76380b4ddb2c5d694b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:47:13 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 16 May 2019 00:47:13 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Thu, 16 May 2019 00:47:13 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Fri, 24 May 2019 22:51:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:51:08 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:51:08 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:51:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:51:09 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850da8e4da899a49f97af02095f9212266f747ba7794c95c41dddfeaf09d7fcb`  
		Last Modified: Fri, 24 May 2019 22:53:00 GMT  
		Size: 4.5 MB (4482025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dccd2003e0372cf9e09349aae2833bfbd489f41fb07473c92da5d229efb68cd5`  
		Last Modified: Fri, 24 May 2019 22:52:59 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:77549fe505714e136efbdcf56a78892dbb418b7d235b04935a1b0763c3ba7c49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6931216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e52bae7fe7acc0e9f01095bb5e7c3a1061f6be6c7405766f9304e9881819c1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:57 GMT
ADD file:7de7a3a712d1367c4976c56379673692330b31dcae349cb4df3a46f389d9de1a in / 
# Fri, 08 Mar 2019 03:35:58 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:38:28 GMT
ENV HAPROXY_VERSION=1.5.19
# Fri, 08 Mar 2019 04:38:28 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Fri, 08 Mar 2019 04:38:29 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Fri, 24 May 2019 22:58:01 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:58:02 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:58:02 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:58:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:58:02 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bb688fb2ed64cf52097deee74b161bb2df71ee9b4300bedb832ad48f1c5a5b86`  
		Last Modified: Fri, 08 Mar 2019 03:36:39 GMT  
		Size: 2.3 MB (2272029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9713a62c5b52ad20ea8b2303f7828558e464ddaf317fdc4269a1dfe4242024fa`  
		Last Modified: Fri, 24 May 2019 22:59:39 GMT  
		Size: 4.7 MB (4658785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ae5659b333f773c7d173f444b7d885095b12336f787f24f44ae0a9ea3b37c0`  
		Last Modified: Fri, 24 May 2019 22:59:38 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:ab9ff930ff80d659b1647a5a5eff9ed98e3753f35660809a1bae24ed0b3c70a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6802076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819a2a3db02eee674bfec28f8449a80e19678fa0308c9fcad5478d771e3d311a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:43 GMT
ADD file:a0b688c2ad4ec9d0535b05f0f63ecc15d1af3e496ad8fcf29809af582add17f0 in / 
# Fri, 08 Mar 2019 03:37:45 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 18:18:48 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 30 May 2019 18:18:51 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Thu, 30 May 2019 18:18:54 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Thu, 30 May 2019 18:19:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 30 May 2019 18:19:25 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:19:26 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Thu, 30 May 2019 18:19:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:19:31 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0c6396bb25a488a80e061dc7e486b5fee792a25d36fbafa08c0b0f31ef402eac`  
		Last Modified: Fri, 08 Mar 2019 03:38:44 GMT  
		Size: 2.2 MB (2194926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76ff24fc4f61869f5a0398a33c5a88ddb3c03e392db1bf77ed558105df117fc`  
		Last Modified: Thu, 30 May 2019 18:23:30 GMT  
		Size: 4.6 MB (4606748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23dd9663442b88a916984d0cee17d2e837ab940e0d6bd20e46efa2c480e49ec1`  
		Last Modified: Thu, 30 May 2019 18:23:29 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:87385d3ee4299f08fe14790ffd8536fa82765420ed341f7b4a9239c335d7f751
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6893131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f86d9612a91665d902478b2a6c9c170ab78d898fee6700e025440b99b94715d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:b9321d1e8cf25ce80f0bd36bfb6169057897654d8014c3bd74545c2348e8018d in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:54:20 GMT
ENV HAPROXY_VERSION=1.5.19
# Fri, 08 Mar 2019 03:54:20 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Fri, 08 Mar 2019 03:54:20 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Fri, 24 May 2019 22:48:50 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:48:50 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:48:50 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:48:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:48:51 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2dae612ccf35f9ba25dee8f8762f1b8d330eaaad0cccef7cdac1c8292a37a081`  
		Last Modified: Fri, 08 Mar 2019 03:36:25 GMT  
		Size: 2.3 MB (2307669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a4b5b35c524cc8251e33baeee9c7ebf4b490e31aa8895547df87a22652198f`  
		Last Modified: Fri, 24 May 2019 22:50:09 GMT  
		Size: 4.6 MB (4585060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77d85d41b600e0c155acb85b2a7bdd2c51cccddc1b19bdddeb732707618a61a`  
		Last Modified: Fri, 24 May 2019 22:50:09 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6`

```console
$ docker pull haproxy@sha256:13d4b0fbb959eff6850d08bab62555b9168b00288c87cfdca1cb2621571e8d6f
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
$ docker pull haproxy@sha256:dd72158905e3239f8cfbc21a11883ad210e9f577d7f3c4467496f88b669e68b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27449064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ece2870422df50ddba311e4aab51afa55fd5c1f3fc2114e8b4eaeaa5ee2196d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:27:16 GMT
ENV HAPROXY_VERSION=1.6.14
# Tue, 11 Jun 2019 00:27:17 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Tue, 11 Jun 2019 00:27:17 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Tue, 11 Jun 2019 00:28:31 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:28:31 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:28:32 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Tue, 11 Jun 2019 00:28:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:28:32 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c2decd3a30406d6006e83272a4cd9b1f509f581ef359408d1b649ad29ea776`  
		Last Modified: Tue, 11 Jun 2019 00:31:06 GMT  
		Size: 5.0 MB (4959360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecd9df0e3f223d897059508da209898cae44d6294c91817d1f5a58f4ce61d4f`  
		Last Modified: Tue, 11 Jun 2019 00:31:04 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:ce8da24b6ea54d0874c3f464a0ed383da8d5d9f182a60237f456dc05c054520a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25627982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8469cfcb7f5913a2d1d514ad507dc6f43f70fa528303fdbac17d52645d207ab1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:45:41 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 08 May 2019 09:45:41 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Wed, 08 May 2019 09:45:42 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Fri, 24 May 2019 22:52:50 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:52:51 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:52:51 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:52:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:52:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630abf5364c0bd5a7c83a4c245dd901e39184d565d9cc2819f41b98253e3a741`  
		Last Modified: Fri, 24 May 2019 22:54:35 GMT  
		Size: 4.5 MB (4471717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691b313d193be38fda51b372014caeced7a025bfe17575b981b0009379a3031b`  
		Last Modified: Fri, 24 May 2019 22:54:34 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:2039e29702a1f534c9fd391cb935f60e171b1e4125851d164e208156b6ee32fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23621678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de62b1beabdcaf91cec3abe994e0449bf40541d38a088d8087ed8c06290331b6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:10:11 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 08 May 2019 13:10:11 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Wed, 08 May 2019 13:10:12 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Fri, 24 May 2019 22:05:05 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:05:06 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:05:07 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:05:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:05:07 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adc9549a932693701cf93a4757f7da8f68b305f6877dabb0e28d20302cbff90`  
		Last Modified: Fri, 24 May 2019 22:06:53 GMT  
		Size: 4.3 MB (4345059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97651f52f5a3321153d559a328a3066d7282ee81916829553a7c46a0524c1191`  
		Last Modified: Fri, 24 May 2019 22:06:52 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:4bfa33255cdadbade454dc7cfad6e841137a7c83769e963393918f48cd79fe90
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24835466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a20f6c8a1536846d151cd25c98f5807c581dad9c7ac655024e01f2e1f9af3497`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:54:41 GMT
ENV HAPROXY_VERSION=1.6.14
# Tue, 11 Jun 2019 00:54:42 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Tue, 11 Jun 2019 00:54:42 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Tue, 11 Jun 2019 00:55:22 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:55:23 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:55:23 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Tue, 11 Jun 2019 00:55:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:55:24 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7a7880b754b4164abe710bc8b22863309cf34face2dc70b7e21a3788b2e7e4`  
		Last Modified: Tue, 11 Jun 2019 00:57:31 GMT  
		Size: 4.5 MB (4501275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28702e7565a5e79049ef596d27930615dff687a02f4fdbcfc095187efecfe08c`  
		Last Modified: Tue, 11 Jun 2019 00:57:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; 386

```console
$ docker pull haproxy@sha256:64a622c73edfa51c2ad9e87551d91a2b4b2e6981ce34851ada5d586189d98eeb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27862869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:622ab99235ac7c4a485b8da21ab53c7ef3201e6e6f50ebb6e9b1240e5e3c838a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:18:19 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 08 May 2019 19:18:19 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Wed, 08 May 2019 19:18:19 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Fri, 24 May 2019 22:55:43 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:55:43 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:55:43 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:55:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:55:44 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1e96a589f5e7c7279535391cf354d2408a1a5549b923094de1f37201a0cd69`  
		Last Modified: Fri, 24 May 2019 22:59:24 GMT  
		Size: 4.7 MB (4741624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1039f389e67cedd443eb3834e8a0af0682ee55458fc8a1bfa962807a6a56c2`  
		Last Modified: Fri, 24 May 2019 22:59:23 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; ppc64le

```console
$ docker pull haproxy@sha256:5745f8d8d89f46bdcc9e74c305d93774be7f6fd563571e4cd698a01848bf1ca0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27433236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b50213f4c660d11e60ca7aec125706a7c8dbbd876dbc1ca7348005f1e4ab76`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Thu, 30 May 2019 18:10:32 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 30 May 2019 18:10:36 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Thu, 30 May 2019 18:10:41 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 30 May 2019 18:13:38 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 30 May 2019 18:13:40 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:13:41 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Thu, 30 May 2019 18:13:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:13:47 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc78cb1bbe0d703851cb1b13392ffc42463a9c963365b0bdafdf23522b6fe600`  
		Last Modified: Thu, 30 May 2019 18:22:47 GMT  
		Size: 4.7 MB (4687919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16abc6f7484aca0bb410f5864d356bbc535359577667687eb7446c35d1a1714e`  
		Last Modified: Thu, 30 May 2019 18:22:46 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; s390x

```console
$ docker pull haproxy@sha256:6f47612992e94c26cac7261be10c29efb545a5f02203d6a5ab505d2bdc57ee7e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27154623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8bac77571e47e0fb184d65780a60a1151a590e0732efa71f4af5996f352ca85`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:54 GMT
ADD file:e253b6e8cd43e8026b8cd0ba0bbe34460e255b131bdb2f50d5b8a2cfd5c9495b in / 
# Mon, 10 Jun 2019 23:43:55 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:10:57 GMT
ENV HAPROXY_VERSION=1.6.14
# Tue, 11 Jun 2019 00:10:58 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Tue, 11 Jun 2019 00:10:58 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Tue, 11 Jun 2019 00:11:37 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:11:38 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:11:38 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Tue, 11 Jun 2019 00:11:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:11:38 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:7ffdabbd82ddae873be4d1eeb64de2e4b43db4450b465d53b47f3b46eb55bd53`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 22.3 MB (22338852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bbd51dab6ebf0ef370cccb9db1e60957ae6c3cbb614ad5cc7a59e9bebac806`  
		Last Modified: Tue, 11 Jun 2019 00:13:27 GMT  
		Size: 4.8 MB (4815368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a71a192679ee6049098a75b31a9f16330c8c5f450792cfeee995b0fe1469609c`  
		Last Modified: Tue, 11 Jun 2019 00:13:26 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6.14`

```console
$ docker pull haproxy@sha256:13d4b0fbb959eff6850d08bab62555b9168b00288c87cfdca1cb2621571e8d6f
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
$ docker pull haproxy@sha256:dd72158905e3239f8cfbc21a11883ad210e9f577d7f3c4467496f88b669e68b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27449064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ece2870422df50ddba311e4aab51afa55fd5c1f3fc2114e8b4eaeaa5ee2196d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:27:16 GMT
ENV HAPROXY_VERSION=1.6.14
# Tue, 11 Jun 2019 00:27:17 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Tue, 11 Jun 2019 00:27:17 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Tue, 11 Jun 2019 00:28:31 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:28:31 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:28:32 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Tue, 11 Jun 2019 00:28:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:28:32 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c2decd3a30406d6006e83272a4cd9b1f509f581ef359408d1b649ad29ea776`  
		Last Modified: Tue, 11 Jun 2019 00:31:06 GMT  
		Size: 5.0 MB (4959360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecd9df0e3f223d897059508da209898cae44d6294c91817d1f5a58f4ce61d4f`  
		Last Modified: Tue, 11 Jun 2019 00:31:04 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:ce8da24b6ea54d0874c3f464a0ed383da8d5d9f182a60237f456dc05c054520a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25627982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8469cfcb7f5913a2d1d514ad507dc6f43f70fa528303fdbac17d52645d207ab1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:45:41 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 08 May 2019 09:45:41 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Wed, 08 May 2019 09:45:42 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Fri, 24 May 2019 22:52:50 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:52:51 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:52:51 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:52:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:52:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630abf5364c0bd5a7c83a4c245dd901e39184d565d9cc2819f41b98253e3a741`  
		Last Modified: Fri, 24 May 2019 22:54:35 GMT  
		Size: 4.5 MB (4471717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691b313d193be38fda51b372014caeced7a025bfe17575b981b0009379a3031b`  
		Last Modified: Fri, 24 May 2019 22:54:34 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:2039e29702a1f534c9fd391cb935f60e171b1e4125851d164e208156b6ee32fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23621678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de62b1beabdcaf91cec3abe994e0449bf40541d38a088d8087ed8c06290331b6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:10:11 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 08 May 2019 13:10:11 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Wed, 08 May 2019 13:10:12 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Fri, 24 May 2019 22:05:05 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:05:06 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:05:07 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:05:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:05:07 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adc9549a932693701cf93a4757f7da8f68b305f6877dabb0e28d20302cbff90`  
		Last Modified: Fri, 24 May 2019 22:06:53 GMT  
		Size: 4.3 MB (4345059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97651f52f5a3321153d559a328a3066d7282ee81916829553a7c46a0524c1191`  
		Last Modified: Fri, 24 May 2019 22:06:52 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:4bfa33255cdadbade454dc7cfad6e841137a7c83769e963393918f48cd79fe90
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24835466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a20f6c8a1536846d151cd25c98f5807c581dad9c7ac655024e01f2e1f9af3497`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:54:41 GMT
ENV HAPROXY_VERSION=1.6.14
# Tue, 11 Jun 2019 00:54:42 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Tue, 11 Jun 2019 00:54:42 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Tue, 11 Jun 2019 00:55:22 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:55:23 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:55:23 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Tue, 11 Jun 2019 00:55:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:55:24 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7a7880b754b4164abe710bc8b22863309cf34face2dc70b7e21a3788b2e7e4`  
		Last Modified: Tue, 11 Jun 2019 00:57:31 GMT  
		Size: 4.5 MB (4501275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28702e7565a5e79049ef596d27930615dff687a02f4fdbcfc095187efecfe08c`  
		Last Modified: Tue, 11 Jun 2019 00:57:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; 386

```console
$ docker pull haproxy@sha256:64a622c73edfa51c2ad9e87551d91a2b4b2e6981ce34851ada5d586189d98eeb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27862869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:622ab99235ac7c4a485b8da21ab53c7ef3201e6e6f50ebb6e9b1240e5e3c838a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:18:19 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 08 May 2019 19:18:19 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Wed, 08 May 2019 19:18:19 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Fri, 24 May 2019 22:55:43 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:55:43 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:55:43 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:55:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:55:44 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1e96a589f5e7c7279535391cf354d2408a1a5549b923094de1f37201a0cd69`  
		Last Modified: Fri, 24 May 2019 22:59:24 GMT  
		Size: 4.7 MB (4741624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1039f389e67cedd443eb3834e8a0af0682ee55458fc8a1bfa962807a6a56c2`  
		Last Modified: Fri, 24 May 2019 22:59:23 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; ppc64le

```console
$ docker pull haproxy@sha256:5745f8d8d89f46bdcc9e74c305d93774be7f6fd563571e4cd698a01848bf1ca0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27433236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b50213f4c660d11e60ca7aec125706a7c8dbbd876dbc1ca7348005f1e4ab76`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Thu, 30 May 2019 18:10:32 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 30 May 2019 18:10:36 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Thu, 30 May 2019 18:10:41 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 30 May 2019 18:13:38 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 30 May 2019 18:13:40 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:13:41 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Thu, 30 May 2019 18:13:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:13:47 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc78cb1bbe0d703851cb1b13392ffc42463a9c963365b0bdafdf23522b6fe600`  
		Last Modified: Thu, 30 May 2019 18:22:47 GMT  
		Size: 4.7 MB (4687919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16abc6f7484aca0bb410f5864d356bbc535359577667687eb7446c35d1a1714e`  
		Last Modified: Thu, 30 May 2019 18:22:46 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; s390x

```console
$ docker pull haproxy@sha256:6f47612992e94c26cac7261be10c29efb545a5f02203d6a5ab505d2bdc57ee7e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27154623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8bac77571e47e0fb184d65780a60a1151a590e0732efa71f4af5996f352ca85`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:54 GMT
ADD file:e253b6e8cd43e8026b8cd0ba0bbe34460e255b131bdb2f50d5b8a2cfd5c9495b in / 
# Mon, 10 Jun 2019 23:43:55 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:10:57 GMT
ENV HAPROXY_VERSION=1.6.14
# Tue, 11 Jun 2019 00:10:58 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Tue, 11 Jun 2019 00:10:58 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Tue, 11 Jun 2019 00:11:37 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:11:38 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:11:38 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Tue, 11 Jun 2019 00:11:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:11:38 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:7ffdabbd82ddae873be4d1eeb64de2e4b43db4450b465d53b47f3b46eb55bd53`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 22.3 MB (22338852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bbd51dab6ebf0ef370cccb9db1e60957ae6c3cbb614ad5cc7a59e9bebac806`  
		Last Modified: Tue, 11 Jun 2019 00:13:27 GMT  
		Size: 4.8 MB (4815368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a71a192679ee6049098a75b31a9f16330c8c5f450792cfeee995b0fe1469609c`  
		Last Modified: Tue, 11 Jun 2019 00:13:26 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6.14-alpine`

```console
$ docker pull haproxy@sha256:c929afda45c992ea7710a2e2445dece3308ed045ba541e868192e772bd2ce234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:1.6.14-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:d59ac7ba6f342db3c81bf9c3990587a33e0275e2ff8db8bfe7e36c962dead058
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7806555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc8ce72e7a0847ff0524b0a59e1d64f2180f2dd74cc18ead3a53e6489f68eb12`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:19:55 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 07 Mar 2019 23:19:55 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Thu, 07 Mar 2019 23:19:55 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Fri, 24 May 2019 22:29:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:29:09 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:29:09 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:29:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:29:10 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b1397fe9fd1c25127268be243ac7a7b43dc96bd269e36182ae6410608abd78`  
		Last Modified: Fri, 24 May 2019 22:31:19 GMT  
		Size: 5.6 MB (5598977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f529c576421f441de259d30efce6e68b5e0f898b7644c92dcab52580094e0c`  
		Last Modified: Fri, 24 May 2019 22:31:19 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:6a30d98020f19fdcf5026b61fb98872be8ee65251f2a4be3a39a487cbd0ce19c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7255101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43218dcd59beb61e8eff4175fe5d1b1994ed349ac2836d1b26864d96e4fb9653`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:10:47 GMT
ENV HAPROXY_VERSION=1.6.14
# Fri, 08 Mar 2019 04:10:47 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Fri, 08 Mar 2019 04:10:48 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Fri, 24 May 2019 22:51:33 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:51:33 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:51:34 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:51:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:51:35 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e30be5b4621198131c4640a08b6b9e636aad62d8b18f36550999191d7ce1db`  
		Last Modified: Fri, 24 May 2019 22:52:44 GMT  
		Size: 5.1 MB (5108576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5539c07ca90f41d8a84a371d3a6dd77d45481cf622194be37dd8c8131e96a9fe`  
		Last Modified: Fri, 24 May 2019 22:52:43 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:407bb2625d57444bb46c300d0eb55de05a08d72d5becb7b1ed7b644570630392
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7249361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26a42669a43c5d6a42975c29771d3469e6710f2b2f8aa967f8850341c7292c5b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:46:00 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 16 May 2019 00:46:00 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Thu, 16 May 2019 00:46:01 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Fri, 24 May 2019 22:49:56 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:49:56 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:49:57 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:49:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:49:58 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfed99268fa0488bdda3018e1d93383eeac8430d1566eab678268ece843a7d8`  
		Last Modified: Fri, 24 May 2019 22:52:48 GMT  
		Size: 5.1 MB (5148997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f639c46603a8a9a61e0ae6af019470213ec83e6d9ccd73a8b2cc44f2ec15345a`  
		Last Modified: Fri, 24 May 2019 22:52:46 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:45add5c0576adcfc884ca12398dd568364baf990d350800c3c38089529050c7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7618453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5e1432e39662f8be431c4698d52ed2b140470d7ccd46e231c23fd920ce0288`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:57 GMT
ADD file:7de7a3a712d1367c4976c56379673692330b31dcae349cb4df3a46f389d9de1a in / 
# Fri, 08 Mar 2019 03:35:58 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:37:43 GMT
ENV HAPROXY_VERSION=1.6.14
# Fri, 08 Mar 2019 04:37:44 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Fri, 08 Mar 2019 04:37:44 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Fri, 24 May 2019 22:56:29 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:56:29 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:56:29 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:56:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:56:29 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bb688fb2ed64cf52097deee74b161bb2df71ee9b4300bedb832ad48f1c5a5b86`  
		Last Modified: Fri, 08 Mar 2019 03:36:39 GMT  
		Size: 2.3 MB (2272029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18346027311fb805e60854922c8fea4925da0e90a57c19e2140fdde66148c33`  
		Last Modified: Fri, 24 May 2019 22:59:29 GMT  
		Size: 5.3 MB (5346022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95901267e1c0e0b99a13b144461d759ef735009078edb5fa280a275c9505c787`  
		Last Modified: Fri, 24 May 2019 22:59:28 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:26818999f573c0682c3756d23de722f17bd167a556ea6259ef1d9123e255c10d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:282768540662b9335cd77c7c0dd1f287094dc6f06e8cc0095e1866ffbdf8f9af`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:43 GMT
ADD file:a0b688c2ad4ec9d0535b05f0f63ecc15d1af3e496ad8fcf29809af582add17f0 in / 
# Fri, 08 Mar 2019 03:37:45 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 18:13:59 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 30 May 2019 18:14:01 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Thu, 30 May 2019 18:14:02 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 30 May 2019 18:14:29 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 30 May 2019 18:14:32 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:14:35 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Thu, 30 May 2019 18:14:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:14:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0c6396bb25a488a80e061dc7e486b5fee792a25d36fbafa08c0b0f31ef402eac`  
		Last Modified: Fri, 08 Mar 2019 03:38:44 GMT  
		Size: 2.2 MB (2194926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f89493f3d586704730de236864831a3df714fe67f0971f23d4a591141218e2a`  
		Last Modified: Thu, 30 May 2019 18:23:05 GMT  
		Size: 5.3 MB (5296591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef403110a1e5a5219ba19f54d5d9b728abf0d5f29665e27971a2f44a6cecc165`  
		Last Modified: Thu, 30 May 2019 18:22:58 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:809903b4522d04b6d71451bf20264844d1b5057fc2da96761ba3ee9eab3979e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7593688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75a7efc30441688023858c38947f3337dc9a51208f580e45e67770b5573bbca9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:b9321d1e8cf25ce80f0bd36bfb6169057897654d8014c3bd74545c2348e8018d in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:51 GMT
ENV HAPROXY_VERSION=1.6.14
# Fri, 08 Mar 2019 03:53:51 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Fri, 08 Mar 2019 03:53:51 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Fri, 24 May 2019 22:47:56 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:47:56 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:47:57 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:47:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:47:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2dae612ccf35f9ba25dee8f8762f1b8d330eaaad0cccef7cdac1c8292a37a081`  
		Last Modified: Fri, 08 Mar 2019 03:36:25 GMT  
		Size: 2.3 MB (2307669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb1e23067152ac4b703169cb32ceaed5ab7059e987760a7a7fc3de69c579a4e`  
		Last Modified: Fri, 24 May 2019 22:49:59 GMT  
		Size: 5.3 MB (5285617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe82c0e0117b8e18bc904cee0030ddc426355378cf5b1917d3e207617b98c282`  
		Last Modified: Fri, 24 May 2019 22:49:58 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6-alpine`

```console
$ docker pull haproxy@sha256:c929afda45c992ea7710a2e2445dece3308ed045ba541e868192e772bd2ce234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:1.6-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:d59ac7ba6f342db3c81bf9c3990587a33e0275e2ff8db8bfe7e36c962dead058
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7806555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc8ce72e7a0847ff0524b0a59e1d64f2180f2dd74cc18ead3a53e6489f68eb12`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:19:55 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 07 Mar 2019 23:19:55 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Thu, 07 Mar 2019 23:19:55 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Fri, 24 May 2019 22:29:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:29:09 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:29:09 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:29:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:29:10 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b1397fe9fd1c25127268be243ac7a7b43dc96bd269e36182ae6410608abd78`  
		Last Modified: Fri, 24 May 2019 22:31:19 GMT  
		Size: 5.6 MB (5598977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f529c576421f441de259d30efce6e68b5e0f898b7644c92dcab52580094e0c`  
		Last Modified: Fri, 24 May 2019 22:31:19 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:6a30d98020f19fdcf5026b61fb98872be8ee65251f2a4be3a39a487cbd0ce19c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7255101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43218dcd59beb61e8eff4175fe5d1b1994ed349ac2836d1b26864d96e4fb9653`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:10:47 GMT
ENV HAPROXY_VERSION=1.6.14
# Fri, 08 Mar 2019 04:10:47 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Fri, 08 Mar 2019 04:10:48 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Fri, 24 May 2019 22:51:33 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:51:33 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:51:34 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:51:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:51:35 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e30be5b4621198131c4640a08b6b9e636aad62d8b18f36550999191d7ce1db`  
		Last Modified: Fri, 24 May 2019 22:52:44 GMT  
		Size: 5.1 MB (5108576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5539c07ca90f41d8a84a371d3a6dd77d45481cf622194be37dd8c8131e96a9fe`  
		Last Modified: Fri, 24 May 2019 22:52:43 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:407bb2625d57444bb46c300d0eb55de05a08d72d5becb7b1ed7b644570630392
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7249361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26a42669a43c5d6a42975c29771d3469e6710f2b2f8aa967f8850341c7292c5b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:46:00 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 16 May 2019 00:46:00 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Thu, 16 May 2019 00:46:01 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Fri, 24 May 2019 22:49:56 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:49:56 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:49:57 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:49:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:49:58 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfed99268fa0488bdda3018e1d93383eeac8430d1566eab678268ece843a7d8`  
		Last Modified: Fri, 24 May 2019 22:52:48 GMT  
		Size: 5.1 MB (5148997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f639c46603a8a9a61e0ae6af019470213ec83e6d9ccd73a8b2cc44f2ec15345a`  
		Last Modified: Fri, 24 May 2019 22:52:46 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:45add5c0576adcfc884ca12398dd568364baf990d350800c3c38089529050c7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7618453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5e1432e39662f8be431c4698d52ed2b140470d7ccd46e231c23fd920ce0288`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:57 GMT
ADD file:7de7a3a712d1367c4976c56379673692330b31dcae349cb4df3a46f389d9de1a in / 
# Fri, 08 Mar 2019 03:35:58 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:37:43 GMT
ENV HAPROXY_VERSION=1.6.14
# Fri, 08 Mar 2019 04:37:44 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Fri, 08 Mar 2019 04:37:44 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Fri, 24 May 2019 22:56:29 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:56:29 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:56:29 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:56:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:56:29 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bb688fb2ed64cf52097deee74b161bb2df71ee9b4300bedb832ad48f1c5a5b86`  
		Last Modified: Fri, 08 Mar 2019 03:36:39 GMT  
		Size: 2.3 MB (2272029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18346027311fb805e60854922c8fea4925da0e90a57c19e2140fdde66148c33`  
		Last Modified: Fri, 24 May 2019 22:59:29 GMT  
		Size: 5.3 MB (5346022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95901267e1c0e0b99a13b144461d759ef735009078edb5fa280a275c9505c787`  
		Last Modified: Fri, 24 May 2019 22:59:28 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:26818999f573c0682c3756d23de722f17bd167a556ea6259ef1d9123e255c10d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:282768540662b9335cd77c7c0dd1f287094dc6f06e8cc0095e1866ffbdf8f9af`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:43 GMT
ADD file:a0b688c2ad4ec9d0535b05f0f63ecc15d1af3e496ad8fcf29809af582add17f0 in / 
# Fri, 08 Mar 2019 03:37:45 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 18:13:59 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 30 May 2019 18:14:01 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Thu, 30 May 2019 18:14:02 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Thu, 30 May 2019 18:14:29 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 30 May 2019 18:14:32 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:14:35 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Thu, 30 May 2019 18:14:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:14:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0c6396bb25a488a80e061dc7e486b5fee792a25d36fbafa08c0b0f31ef402eac`  
		Last Modified: Fri, 08 Mar 2019 03:38:44 GMT  
		Size: 2.2 MB (2194926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f89493f3d586704730de236864831a3df714fe67f0971f23d4a591141218e2a`  
		Last Modified: Thu, 30 May 2019 18:23:05 GMT  
		Size: 5.3 MB (5296591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef403110a1e5a5219ba19f54d5d9b728abf0d5f29665e27971a2f44a6cecc165`  
		Last Modified: Thu, 30 May 2019 18:22:58 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:809903b4522d04b6d71451bf20264844d1b5057fc2da96761ba3ee9eab3979e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7593688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75a7efc30441688023858c38947f3337dc9a51208f580e45e67770b5573bbca9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:b9321d1e8cf25ce80f0bd36bfb6169057897654d8014c3bd74545c2348e8018d in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:51 GMT
ENV HAPROXY_VERSION=1.6.14
# Fri, 08 Mar 2019 03:53:51 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Fri, 08 Mar 2019 03:53:51 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Fri, 24 May 2019 22:47:56 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:47:56 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:47:57 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:47:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:47:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2dae612ccf35f9ba25dee8f8762f1b8d330eaaad0cccef7cdac1c8292a37a081`  
		Last Modified: Fri, 08 Mar 2019 03:36:25 GMT  
		Size: 2.3 MB (2307669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb1e23067152ac4b703169cb32ceaed5ab7059e987760a7a7fc3de69c579a4e`  
		Last Modified: Fri, 24 May 2019 22:49:59 GMT  
		Size: 5.3 MB (5285617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe82c0e0117b8e18bc904cee0030ddc426355378cf5b1917d3e207617b98c282`  
		Last Modified: Fri, 24 May 2019 22:49:58 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7`

```console
$ docker pull haproxy@sha256:3cd3ce49dd68d076e898f9a74f5f4b40e9367cf5030045df76f6c7c4c15ad023
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
$ docker pull haproxy@sha256:0e05acda89645391df6e2c3924aad31ea3239860c7617c0d4277bd836183931a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27253253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4e82cef283cf585179d7b11b9e9e779904f3cb2fce2203be7141ffecf8ef945`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:25:44 GMT
ENV HAPROXY_VERSION=1.7.11
# Tue, 11 Jun 2019 00:25:44 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Tue, 11 Jun 2019 00:25:44 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Tue, 11 Jun 2019 00:27:08 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:27:09 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:27:09 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Tue, 11 Jun 2019 00:27:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:27:09 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e25873ee217cf5472a92eb30c56988759f526506bff416c1ca1b4086db27906`  
		Last Modified: Tue, 11 Jun 2019 00:30:59 GMT  
		Size: 4.8 MB (4763549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130e23a2e6e8bab7a6e341562121468d8d41e1deec6f1622908008b0fa14e1be`  
		Last Modified: Tue, 11 Jun 2019 00:30:58 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:18da2ebeda17c473896446b2b7f42d923c085fca93c9ec2108cc67812958d6d7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25607204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc117bdb169554ae23e9350513fdc51d46eed15951662f425cfbe59ad29b094a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:44:46 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 08 May 2019 09:44:46 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Wed, 08 May 2019 09:44:47 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 24 May 2019 22:51:57 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:51:58 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:51:58 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:51:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:51:59 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2ad8c46be3bacf1bb319f4156980a985e6cd20e248cce01deb09f5ad27e981`  
		Last Modified: Fri, 24 May 2019 22:54:29 GMT  
		Size: 4.5 MB (4450937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200f41367f47559f3f2bb24324b583987c3029462bf1b2d4e7b0ef740d1fd6e`  
		Last Modified: Fri, 24 May 2019 22:54:28 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:39f012c6b1d93607b5eb8f1d591fa89e086767043aaf3bffbc644332f7afde5f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23604314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8694e453936ef755ab0ca8a6bf5f9fb161c9f67288fe8318da82d9d7b2253406`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:09:22 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 08 May 2019 13:09:22 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Wed, 08 May 2019 13:09:23 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 24 May 2019 22:03:55 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:03:56 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:03:57 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:03:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:03:58 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf3721411dfd82c6868d16f72c425fbd237c8771a67d7220fb1018083a673b6`  
		Last Modified: Fri, 24 May 2019 22:06:41 GMT  
		Size: 4.3 MB (4327695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182714951b572178c3dd16d0081ac37ac23267dd4ef923033b4d8a4356e6837b`  
		Last Modified: Fri, 24 May 2019 22:06:39 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:24453e7e0eb987830c616158e2e98c73f64b63d76209761f6b22b65427aebf3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24782950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ce9aa30872db615a6ccc1ba7d9920838db41c6f6cb9c244f8084062b3ccbba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:53:53 GMT
ENV HAPROXY_VERSION=1.7.11
# Tue, 11 Jun 2019 00:53:54 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Tue, 11 Jun 2019 00:53:54 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Tue, 11 Jun 2019 00:54:32 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:54:33 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:54:34 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Tue, 11 Jun 2019 00:54:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:54:35 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a2087c581f9ee4769a824bb160ac91fb7f415b4ab32ba7eac6563337795eb7`  
		Last Modified: Tue, 11 Jun 2019 00:57:24 GMT  
		Size: 4.4 MB (4448757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae48ce564b6f30dc6d9a9190803f4c870522db7ba80c561601bd92b2e38d64f5`  
		Last Modified: Tue, 11 Jun 2019 00:57:22 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; 386

```console
$ docker pull haproxy@sha256:d1e9ab2684110da15af4c269309a77c5672d7a579c1d24e059c394956d702ce1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27839764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a99b2cac3943f0fc2abee890388e772a639628d55c78d61ff00c10f924fbecea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:17:32 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 08 May 2019 19:17:33 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Wed, 08 May 2019 19:17:33 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 24 May 2019 22:53:50 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:53:50 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:53:50 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:53:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:53:51 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec372d695b5150d6db5bd700d2c98b2f0953c033bf5c9d21930022fe2655c31`  
		Last Modified: Fri, 24 May 2019 22:59:14 GMT  
		Size: 4.7 MB (4718519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7d38166013f1f81cebc2b2f8c40e031d6418b0c64cac939e47eb76b903b2ae`  
		Last Modified: Fri, 24 May 2019 22:59:13 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; ppc64le

```console
$ docker pull haproxy@sha256:2161b9978f120f3f57aa8a84ce7176c60e279ec66fdae15661dd7ca957ef69a9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27212821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c81cbcb81466439da099ca7245071a904d262a674196fd8166370fb886e246fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Thu, 30 May 2019 18:06:01 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 30 May 2019 18:06:03 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Thu, 30 May 2019 18:06:08 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 30 May 2019 18:09:00 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 30 May 2019 18:09:04 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:09:07 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Thu, 30 May 2019 18:09:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:09:13 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c814c7d28521f0e4557fa7a228943971d9ee699bdc1937733060d5af9a9c13`  
		Last Modified: Thu, 30 May 2019 18:22:20 GMT  
		Size: 4.5 MB (4467504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c36c14d512c842108a8ee280b58b6c5f8afd164fe609688a632ebb2f6d4225e`  
		Last Modified: Thu, 30 May 2019 18:22:19 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; s390x

```console
$ docker pull haproxy@sha256:9a054bec63a78c7263201437f9cc0fdd9759b324dbe2f4ef44f0fb3796ec5bd5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26937480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a1024f2343d4e7c89839313a5863f42a6112a6e0251318085bc26c29e509d55`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:54 GMT
ADD file:e253b6e8cd43e8026b8cd0ba0bbe34460e255b131bdb2f50d5b8a2cfd5c9495b in / 
# Mon, 10 Jun 2019 23:43:55 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:09:38 GMT
ENV HAPROXY_VERSION=1.7.11
# Tue, 11 Jun 2019 00:09:39 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Tue, 11 Jun 2019 00:09:39 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Tue, 11 Jun 2019 00:10:48 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:10:48 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:10:48 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Tue, 11 Jun 2019 00:10:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:10:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:7ffdabbd82ddae873be4d1eeb64de2e4b43db4450b465d53b47f3b46eb55bd53`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 22.3 MB (22338852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69cd892315848af87c04d9b0384df4ecf8cb13f09440c4dc421519c5e7a48ce7`  
		Last Modified: Tue, 11 Jun 2019 00:13:21 GMT  
		Size: 4.6 MB (4598226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb773a056955de241dbc222d999129ad3968ed31b99835c3bf629eab736dc0a`  
		Last Modified: Tue, 11 Jun 2019 00:13:20 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7.11`

```console
$ docker pull haproxy@sha256:3cd3ce49dd68d076e898f9a74f5f4b40e9367cf5030045df76f6c7c4c15ad023
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
$ docker pull haproxy@sha256:0e05acda89645391df6e2c3924aad31ea3239860c7617c0d4277bd836183931a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27253253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4e82cef283cf585179d7b11b9e9e779904f3cb2fce2203be7141ffecf8ef945`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:25:44 GMT
ENV HAPROXY_VERSION=1.7.11
# Tue, 11 Jun 2019 00:25:44 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Tue, 11 Jun 2019 00:25:44 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Tue, 11 Jun 2019 00:27:08 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:27:09 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:27:09 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Tue, 11 Jun 2019 00:27:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:27:09 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e25873ee217cf5472a92eb30c56988759f526506bff416c1ca1b4086db27906`  
		Last Modified: Tue, 11 Jun 2019 00:30:59 GMT  
		Size: 4.8 MB (4763549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130e23a2e6e8bab7a6e341562121468d8d41e1deec6f1622908008b0fa14e1be`  
		Last Modified: Tue, 11 Jun 2019 00:30:58 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:18da2ebeda17c473896446b2b7f42d923c085fca93c9ec2108cc67812958d6d7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25607204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc117bdb169554ae23e9350513fdc51d46eed15951662f425cfbe59ad29b094a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:44:46 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 08 May 2019 09:44:46 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Wed, 08 May 2019 09:44:47 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 24 May 2019 22:51:57 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:51:58 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:51:58 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:51:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:51:59 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2ad8c46be3bacf1bb319f4156980a985e6cd20e248cce01deb09f5ad27e981`  
		Last Modified: Fri, 24 May 2019 22:54:29 GMT  
		Size: 4.5 MB (4450937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200f41367f47559f3f2bb24324b583987c3029462bf1b2d4e7b0ef740d1fd6e`  
		Last Modified: Fri, 24 May 2019 22:54:28 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:39f012c6b1d93607b5eb8f1d591fa89e086767043aaf3bffbc644332f7afde5f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23604314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8694e453936ef755ab0ca8a6bf5f9fb161c9f67288fe8318da82d9d7b2253406`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:09:22 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 08 May 2019 13:09:22 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Wed, 08 May 2019 13:09:23 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 24 May 2019 22:03:55 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:03:56 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:03:57 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:03:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:03:58 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf3721411dfd82c6868d16f72c425fbd237c8771a67d7220fb1018083a673b6`  
		Last Modified: Fri, 24 May 2019 22:06:41 GMT  
		Size: 4.3 MB (4327695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182714951b572178c3dd16d0081ac37ac23267dd4ef923033b4d8a4356e6837b`  
		Last Modified: Fri, 24 May 2019 22:06:39 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:24453e7e0eb987830c616158e2e98c73f64b63d76209761f6b22b65427aebf3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24782950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ce9aa30872db615a6ccc1ba7d9920838db41c6f6cb9c244f8084062b3ccbba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:53:53 GMT
ENV HAPROXY_VERSION=1.7.11
# Tue, 11 Jun 2019 00:53:54 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Tue, 11 Jun 2019 00:53:54 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Tue, 11 Jun 2019 00:54:32 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:54:33 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:54:34 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Tue, 11 Jun 2019 00:54:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:54:35 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a2087c581f9ee4769a824bb160ac91fb7f415b4ab32ba7eac6563337795eb7`  
		Last Modified: Tue, 11 Jun 2019 00:57:24 GMT  
		Size: 4.4 MB (4448757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae48ce564b6f30dc6d9a9190803f4c870522db7ba80c561601bd92b2e38d64f5`  
		Last Modified: Tue, 11 Jun 2019 00:57:22 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; 386

```console
$ docker pull haproxy@sha256:d1e9ab2684110da15af4c269309a77c5672d7a579c1d24e059c394956d702ce1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27839764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a99b2cac3943f0fc2abee890388e772a639628d55c78d61ff00c10f924fbecea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:17:32 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 08 May 2019 19:17:33 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Wed, 08 May 2019 19:17:33 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 24 May 2019 22:53:50 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:53:50 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:53:50 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:53:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:53:51 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec372d695b5150d6db5bd700d2c98b2f0953c033bf5c9d21930022fe2655c31`  
		Last Modified: Fri, 24 May 2019 22:59:14 GMT  
		Size: 4.7 MB (4718519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7d38166013f1f81cebc2b2f8c40e031d6418b0c64cac939e47eb76b903b2ae`  
		Last Modified: Fri, 24 May 2019 22:59:13 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; ppc64le

```console
$ docker pull haproxy@sha256:2161b9978f120f3f57aa8a84ce7176c60e279ec66fdae15661dd7ca957ef69a9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27212821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c81cbcb81466439da099ca7245071a904d262a674196fd8166370fb886e246fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Thu, 30 May 2019 18:06:01 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 30 May 2019 18:06:03 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Thu, 30 May 2019 18:06:08 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 30 May 2019 18:09:00 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 30 May 2019 18:09:04 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:09:07 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Thu, 30 May 2019 18:09:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:09:13 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c814c7d28521f0e4557fa7a228943971d9ee699bdc1937733060d5af9a9c13`  
		Last Modified: Thu, 30 May 2019 18:22:20 GMT  
		Size: 4.5 MB (4467504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c36c14d512c842108a8ee280b58b6c5f8afd164fe609688a632ebb2f6d4225e`  
		Last Modified: Thu, 30 May 2019 18:22:19 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; s390x

```console
$ docker pull haproxy@sha256:9a054bec63a78c7263201437f9cc0fdd9759b324dbe2f4ef44f0fb3796ec5bd5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26937480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a1024f2343d4e7c89839313a5863f42a6112a6e0251318085bc26c29e509d55`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:54 GMT
ADD file:e253b6e8cd43e8026b8cd0ba0bbe34460e255b131bdb2f50d5b8a2cfd5c9495b in / 
# Mon, 10 Jun 2019 23:43:55 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:09:38 GMT
ENV HAPROXY_VERSION=1.7.11
# Tue, 11 Jun 2019 00:09:39 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Tue, 11 Jun 2019 00:09:39 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Tue, 11 Jun 2019 00:10:48 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:10:48 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:10:48 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Tue, 11 Jun 2019 00:10:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:10:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:7ffdabbd82ddae873be4d1eeb64de2e4b43db4450b465d53b47f3b46eb55bd53`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 22.3 MB (22338852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69cd892315848af87c04d9b0384df4ecf8cb13f09440c4dc421519c5e7a48ce7`  
		Last Modified: Tue, 11 Jun 2019 00:13:21 GMT  
		Size: 4.6 MB (4598226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb773a056955de241dbc222d999129ad3968ed31b99835c3bf629eab736dc0a`  
		Last Modified: Tue, 11 Jun 2019 00:13:20 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7.11-alpine`

```console
$ docker pull haproxy@sha256:43bd3e3ca229acc4c06b858042695cab92e184ead447bacecfa8fe1e1e27d1a6
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

### `haproxy:1.7.11-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:69547f071b316dda09f5b3a37ed7975fc7864b64a0156424ea8fff410873c998
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7282586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61eff96adb727de67e45b53703e9dc5117f4eeb2d9c565be505393d5a6efa88b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 02:25:10 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 11 May 2019 02:25:11 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 11 May 2019 02:25:11 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 24 May 2019 22:27:51 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:27:52 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:27:52 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:27:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:27:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec3cb999cbde3d3c2d51cc9e197d71244dbefc183c8b31a845dea30fc6023de`  
		Last Modified: Fri, 24 May 2019 22:31:11 GMT  
		Size: 4.5 MB (4525148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895965caf9aa7ac9718ba7adf643a8153de3cd0354073f7fd5283e31ec72b198`  
		Last Modified: Fri, 24 May 2019 22:31:11 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:09312d237ca7d0909a1cd1cf3a2a6a3a1e4cb3ed57b53f7d163f04df493f58dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6945236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13a3147eab5c02faf60b38ab2e2c01aff3d5f8a4df2014c24a51da9928403908`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:29:40 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 11 May 2019 09:29:40 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 11 May 2019 09:29:41 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 24 May 2019 22:51:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:51:08 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:51:09 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:51:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:51:10 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476a89a036629eb3bb0e2b6483f8dc999345d1de1223ce82ec481351225e7ca6`  
		Last Modified: Fri, 24 May 2019 22:52:38 GMT  
		Size: 4.4 MB (4401407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea29164295a3bed08a38b781d26b661da356615dc8f766c5cd0376bd143a5abe`  
		Last Modified: Fri, 24 May 2019 22:52:37 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11-alpine` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:05f9f4a173c45adbfeeef4970852309ea33fc1d9f3dc086e9ec84ee114cb18e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7cc2a7eeec4c7b2bbc6e3b91411c5b48f67a43836e2a8dd97581cf618aefdf2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:14:35 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 11 May 2019 12:14:36 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 11 May 2019 12:14:36 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 24 May 2019 22:04:21 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:04:21 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:04:22 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:04:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:04:23 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b269315b8dc15a171e58029e9ca9b8a75b3733e1a55e764dda637f85c07e78`  
		Last Modified: Fri, 24 May 2019 22:06:47 GMT  
		Size: 4.4 MB (4355179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe8196039c8ac9d59c233d17e5a59df8dd9b8c2843ed718ef678bbf4c00aafd`  
		Last Modified: Fri, 24 May 2019 22:06:46 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:cff037d77d6fc7beb0a71e91b4f2e43a4bd4185bd58705068b6541b1297d9682
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7177255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:285ee51e28eaec7c0fe1247f97115f8445bc5ccfb4bed716f18fefec06e77c8c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:44:27 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 16 May 2019 00:44:27 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Thu, 16 May 2019 00:44:28 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 24 May 2019 22:48:33 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:48:34 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:48:34 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:48:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:48:35 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f2121fde8d8731fc1dfb79649d801b329bcb28ace3057d74d94de32b65a5b6`  
		Last Modified: Fri, 24 May 2019 22:52:34 GMT  
		Size: 4.5 MB (4488073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d77ec4a2d5a370078614ac81199b9de336acbe94297d9d28b86a52d9bc13d39`  
		Last Modified: Fri, 24 May 2019 22:52:33 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:f6801e4d47015a860e5cf4f754510a489260a61f62fc9660db6037ea676c135b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7182117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c32d74059b2a0e3686da9edde46b24d47904710a64c21cab421797b3b2eafd3d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 15:26:51 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 11 May 2019 15:26:51 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 11 May 2019 15:26:51 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 24 May 2019 22:54:45 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:54:45 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:54:45 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:54:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:54:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75e09f11bf15dfb64c2f684c12d724d2049efab33af0f29ac9d4f1a2e91b581`  
		Last Modified: Fri, 24 May 2019 22:59:19 GMT  
		Size: 4.4 MB (4429623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bde3a3cd075c7e391d8255dc2ce91569264a190442f60b0094c3b6888570ee5`  
		Last Modified: Fri, 24 May 2019 22:59:18 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:bb09622c44098acb62cb1131b3f4e9c62f0fe4c75de9cccf9369b6d2610d48c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7460890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038728d91d9384966e354a4c92851ba425dd88d02b2cd3ac2a50ac298092585b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 18:09:29 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 30 May 2019 18:09:33 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Thu, 30 May 2019 18:09:36 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 30 May 2019 18:10:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 30 May 2019 18:10:10 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:10:12 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Thu, 30 May 2019 18:10:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:10:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c0851abe684720f182b964ca1b20a0c3e7576b92b4ab87dd7b7bd21a4f16b5`  
		Last Modified: Thu, 30 May 2019 18:22:34 GMT  
		Size: 4.7 MB (4679468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecebdbab65c9689b2df6b1e90e4a4aa5919abf18bc181df6631d74b87e6d629d`  
		Last Modified: Thu, 30 May 2019 18:22:33 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:c3e9dd4057a608aeb68eaef81dd05561287ae27ed98108c9ab5103f092fdf96f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6977096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7985ad2b80725469701c0204cab6133fb09b560dbec577c3979290016e85257e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:20:06 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 11 May 2019 12:20:06 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 11 May 2019 12:20:07 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 24 May 2019 22:46:54 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:46:54 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:46:54 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:46:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:46:55 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5628976d672d0168ba12834de93b757f28f58928ad8952c2945420b3a7d0b4b`  
		Last Modified: Fri, 24 May 2019 22:49:50 GMT  
		Size: 4.4 MB (4433362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3606c6c988a2fea3c0047403c82da2d1d88c36ed4b145106748b27caebc3ea4f`  
		Last Modified: Fri, 24 May 2019 22:49:49 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7-alpine`

```console
$ docker pull haproxy@sha256:43bd3e3ca229acc4c06b858042695cab92e184ead447bacecfa8fe1e1e27d1a6
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

### `haproxy:1.7-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:69547f071b316dda09f5b3a37ed7975fc7864b64a0156424ea8fff410873c998
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7282586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61eff96adb727de67e45b53703e9dc5117f4eeb2d9c565be505393d5a6efa88b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 02:25:10 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 11 May 2019 02:25:11 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 11 May 2019 02:25:11 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 24 May 2019 22:27:51 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:27:52 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:27:52 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:27:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:27:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec3cb999cbde3d3c2d51cc9e197d71244dbefc183c8b31a845dea30fc6023de`  
		Last Modified: Fri, 24 May 2019 22:31:11 GMT  
		Size: 4.5 MB (4525148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895965caf9aa7ac9718ba7adf643a8153de3cd0354073f7fd5283e31ec72b198`  
		Last Modified: Fri, 24 May 2019 22:31:11 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:09312d237ca7d0909a1cd1cf3a2a6a3a1e4cb3ed57b53f7d163f04df493f58dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6945236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13a3147eab5c02faf60b38ab2e2c01aff3d5f8a4df2014c24a51da9928403908`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:29:40 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 11 May 2019 09:29:40 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 11 May 2019 09:29:41 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 24 May 2019 22:51:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:51:08 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:51:09 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:51:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:51:10 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476a89a036629eb3bb0e2b6483f8dc999345d1de1223ce82ec481351225e7ca6`  
		Last Modified: Fri, 24 May 2019 22:52:38 GMT  
		Size: 4.4 MB (4401407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea29164295a3bed08a38b781d26b661da356615dc8f766c5cd0376bd143a5abe`  
		Last Modified: Fri, 24 May 2019 22:52:37 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7-alpine` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:05f9f4a173c45adbfeeef4970852309ea33fc1d9f3dc086e9ec84ee114cb18e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7cc2a7eeec4c7b2bbc6e3b91411c5b48f67a43836e2a8dd97581cf618aefdf2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:14:35 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 11 May 2019 12:14:36 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 11 May 2019 12:14:36 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 24 May 2019 22:04:21 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:04:21 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:04:22 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:04:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:04:23 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b269315b8dc15a171e58029e9ca9b8a75b3733e1a55e764dda637f85c07e78`  
		Last Modified: Fri, 24 May 2019 22:06:47 GMT  
		Size: 4.4 MB (4355179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe8196039c8ac9d59c233d17e5a59df8dd9b8c2843ed718ef678bbf4c00aafd`  
		Last Modified: Fri, 24 May 2019 22:06:46 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:cff037d77d6fc7beb0a71e91b4f2e43a4bd4185bd58705068b6541b1297d9682
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7177255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:285ee51e28eaec7c0fe1247f97115f8445bc5ccfb4bed716f18fefec06e77c8c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:44:27 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 16 May 2019 00:44:27 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Thu, 16 May 2019 00:44:28 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 24 May 2019 22:48:33 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:48:34 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:48:34 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:48:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:48:35 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f2121fde8d8731fc1dfb79649d801b329bcb28ace3057d74d94de32b65a5b6`  
		Last Modified: Fri, 24 May 2019 22:52:34 GMT  
		Size: 4.5 MB (4488073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d77ec4a2d5a370078614ac81199b9de336acbe94297d9d28b86a52d9bc13d39`  
		Last Modified: Fri, 24 May 2019 22:52:33 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:f6801e4d47015a860e5cf4f754510a489260a61f62fc9660db6037ea676c135b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7182117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c32d74059b2a0e3686da9edde46b24d47904710a64c21cab421797b3b2eafd3d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 15:26:51 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 11 May 2019 15:26:51 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 11 May 2019 15:26:51 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 24 May 2019 22:54:45 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:54:45 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:54:45 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:54:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:54:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75e09f11bf15dfb64c2f684c12d724d2049efab33af0f29ac9d4f1a2e91b581`  
		Last Modified: Fri, 24 May 2019 22:59:19 GMT  
		Size: 4.4 MB (4429623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bde3a3cd075c7e391d8255dc2ce91569264a190442f60b0094c3b6888570ee5`  
		Last Modified: Fri, 24 May 2019 22:59:18 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:bb09622c44098acb62cb1131b3f4e9c62f0fe4c75de9cccf9369b6d2610d48c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7460890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038728d91d9384966e354a4c92851ba425dd88d02b2cd3ac2a50ac298092585b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 18:09:29 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 30 May 2019 18:09:33 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Thu, 30 May 2019 18:09:36 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 30 May 2019 18:10:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 30 May 2019 18:10:10 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:10:12 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Thu, 30 May 2019 18:10:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:10:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c0851abe684720f182b964ca1b20a0c3e7576b92b4ab87dd7b7bd21a4f16b5`  
		Last Modified: Thu, 30 May 2019 18:22:34 GMT  
		Size: 4.7 MB (4679468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecebdbab65c9689b2df6b1e90e4a4aa5919abf18bc181df6631d74b87e6d629d`  
		Last Modified: Thu, 30 May 2019 18:22:33 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:c3e9dd4057a608aeb68eaef81dd05561287ae27ed98108c9ab5103f092fdf96f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6977096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7985ad2b80725469701c0204cab6133fb09b560dbec577c3979290016e85257e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:20:06 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 11 May 2019 12:20:06 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 11 May 2019 12:20:07 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 24 May 2019 22:46:54 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:46:54 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:46:54 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 24 May 2019 22:46:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:46:55 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5628976d672d0168ba12834de93b757f28f58928ad8952c2945420b3a7d0b4b`  
		Last Modified: Fri, 24 May 2019 22:49:50 GMT  
		Size: 4.4 MB (4433362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3606c6c988a2fea3c0047403c82da2d1d88c36ed4b145106748b27caebc3ea4f`  
		Last Modified: Fri, 24 May 2019 22:49:49 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8`

```console
$ docker pull haproxy@sha256:7dfb94a7af866f4b4c5a24e8aae6db82bfbe8569ee829f2928a9da90bae75fdd
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
$ docker pull haproxy@sha256:50c21839b28cdbb16c6e6f69168eb9ce85af717dfc9229207d39e92095dcf69b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28099713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98a14376a24ab471a3467689cb2bf3c584bd8626e02d514b703fe66e94d7199`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:23:42 GMT
ENV HAPROXY_VERSION=1.8.20
# Tue, 11 Jun 2019 00:23:43 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Tue, 11 Jun 2019 00:23:43 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Tue, 11 Jun 2019 00:25:25 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:25:25 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:25:25 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:25:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:25:26 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d06163b24489212aaa4121220b8e859154d944a89ed9b0121441b88c64ffad7`  
		Last Modified: Tue, 11 Jun 2019 00:30:54 GMT  
		Size: 5.6 MB (5610030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10869b79eb234714840514d35d8926bbab60df51290929727f9bb620761bc5d`  
		Last Modified: Tue, 11 Jun 2019 00:30:53 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:1a7b36b05e6d63d3c4069bfc281e359249132fc69772ae622c9b89fcc5f34ad5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26414375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b7ae885feed40dab4d1918560c31749714702b783e8d6765198c932edb3c226`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:43:52 GMT
ENV HAPROXY_VERSION=1.8.20
# Wed, 08 May 2019 09:43:52 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Wed, 08 May 2019 09:43:53 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Fri, 24 May 2019 22:51:08 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:51:08 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:51:09 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:51:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:51:10 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dccbdd421ba75772563db905e2e144384b94ef0d43a1350fde070600eb64a0d`  
		Last Modified: Fri, 24 May 2019 22:54:22 GMT  
		Size: 5.3 MB (5258132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7107e067ffb71953aead6ad3c776715b9d5b3cd1633360938204c857dd552e8`  
		Last Modified: Fri, 24 May 2019 22:54:21 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:845c0f7689ed0d6a10361ac0d938bfeb3edd2e48cf759761c09e999f7ea71d2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24399574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c768c303941977047a1895a4231fb9f9f18bfd186d7a24babc2a85c91d9aed85`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:08:25 GMT
ENV HAPROXY_VERSION=1.8.20
# Wed, 08 May 2019 13:08:25 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Wed, 08 May 2019 13:08:26 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Fri, 24 May 2019 22:02:28 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:02:29 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:02:29 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:02:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:02:30 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4add82d33faaa91ce061025b1794e1be5b8820429df4f10bfb78dd65b281d15`  
		Last Modified: Fri, 24 May 2019 22:06:25 GMT  
		Size: 5.1 MB (5122978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ae4c42662850901fe26c8690e267c8766deb4931c05243b9ab6a216a4ea24b`  
		Last Modified: Fri, 24 May 2019 22:06:23 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:304a74a72388d0035b12d106b07656b2527e77797f779ce43545313782c113ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25556674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b46ed2f68a1eede2182a8968bcd29ab95765ff10f8a6abaabd36db2c4c5bb97d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:52:56 GMT
ENV HAPROXY_VERSION=1.8.20
# Tue, 11 Jun 2019 00:52:56 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Tue, 11 Jun 2019 00:52:57 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Tue, 11 Jun 2019 00:53:38 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:53:38 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:53:39 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:53:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:53:40 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30eb02cd7ebc4f0ea00ad991f84ccf544f424acc2b44afaeec5e5989f8a5284`  
		Last Modified: Tue, 11 Jun 2019 00:57:17 GMT  
		Size: 5.2 MB (5222504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ef3a816cea338b6f601d21df5af7d44c9e0443899282d9fa81caa85d37efed`  
		Last Modified: Tue, 11 Jun 2019 00:57:16 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; 386

```console
$ docker pull haproxy@sha256:c108947a461e0a758a36dd714e312a80790bfdd0dd408170ee898268556f3212
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.7 MB (28666281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68779309bbad2692a1d87b99f5832c12e818e271b8908caaca84af0eab739b63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:16:37 GMT
ENV HAPROXY_VERSION=1.8.20
# Wed, 08 May 2019 19:16:38 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Wed, 08 May 2019 19:16:38 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Fri, 24 May 2019 22:51:33 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:51:33 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:51:33 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:51:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:51:34 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d9f963b4eca902ca1523197c855337f13cab53010edd5ec06d8f8dfc972969`  
		Last Modified: Fri, 24 May 2019 22:59:01 GMT  
		Size: 5.5 MB (5545057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b471adfebc16034660a81b1fcfd8dd01531e33d87cd09a295667cb585d6f28`  
		Last Modified: Fri, 24 May 2019 22:59:00 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; ppc64le

```console
$ docker pull haproxy@sha256:2f0f005878a1918fddb4a85974084b4b0b05c6e9ea311b5bfb9980b92e96a6e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (28018823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77dd9d93547e1ad9432cac1c761deec5fc1f3ea603f5f9a171bd1dc63984c7c7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Thu, 30 May 2019 18:01:49 GMT
ENV HAPROXY_VERSION=1.8.20
# Thu, 30 May 2019 18:01:50 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Thu, 30 May 2019 18:01:52 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Thu, 30 May 2019 18:04:38 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 30 May 2019 18:04:43 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:04:46 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Thu, 30 May 2019 18:04:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:04:53 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a860c2e08b489ee0ab3110208939a57e2170c3a9ec08a6314f31e262a07785ff`  
		Last Modified: Thu, 30 May 2019 18:21:49 GMT  
		Size: 5.3 MB (5273529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeba7b786ce96cd6839df7325f87bccf86a1df0e2c582db0ac8d2d4bc8b07dd0`  
		Last Modified: Thu, 30 May 2019 18:21:41 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; s390x

```console
$ docker pull haproxy@sha256:a765095d0fb5d5860d1e59b495a5e9bcb731afb763fe8754e084bc41e9fd64c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27769466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bdc90be8ad2d944997c851908638ce6fc473ff69b62ff9202b2cb08b8e6ed82`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:54 GMT
ADD file:e253b6e8cd43e8026b8cd0ba0bbe34460e255b131bdb2f50d5b8a2cfd5c9495b in / 
# Mon, 10 Jun 2019 23:43:55 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:08:27 GMT
ENV HAPROXY_VERSION=1.8.20
# Tue, 11 Jun 2019 00:08:27 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Tue, 11 Jun 2019 00:08:27 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Tue, 11 Jun 2019 00:09:13 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:09:13 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:09:13 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:09:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:09:14 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:7ffdabbd82ddae873be4d1eeb64de2e4b43db4450b465d53b47f3b46eb55bd53`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 22.3 MB (22338852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9157e469027b5ae60401d25a7219951044a85e8072b95a2cd08d90194cfa00aa`  
		Last Modified: Tue, 11 Jun 2019 00:13:14 GMT  
		Size: 5.4 MB (5430234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9520ea22896978cc1c56bde762653ca4a4e8194c71c34f3f8bc9de4afb803fba`  
		Last Modified: Tue, 11 Jun 2019 00:13:11 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8.20`

```console
$ docker pull haproxy@sha256:7dfb94a7af866f4b4c5a24e8aae6db82bfbe8569ee829f2928a9da90bae75fdd
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

### `haproxy:1.8.20` - linux; amd64

```console
$ docker pull haproxy@sha256:50c21839b28cdbb16c6e6f69168eb9ce85af717dfc9229207d39e92095dcf69b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28099713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98a14376a24ab471a3467689cb2bf3c584bd8626e02d514b703fe66e94d7199`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:23:42 GMT
ENV HAPROXY_VERSION=1.8.20
# Tue, 11 Jun 2019 00:23:43 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Tue, 11 Jun 2019 00:23:43 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Tue, 11 Jun 2019 00:25:25 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:25:25 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:25:25 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:25:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:25:26 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d06163b24489212aaa4121220b8e859154d944a89ed9b0121441b88c64ffad7`  
		Last Modified: Tue, 11 Jun 2019 00:30:54 GMT  
		Size: 5.6 MB (5610030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10869b79eb234714840514d35d8926bbab60df51290929727f9bb620761bc5d`  
		Last Modified: Tue, 11 Jun 2019 00:30:53 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.20` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:1a7b36b05e6d63d3c4069bfc281e359249132fc69772ae622c9b89fcc5f34ad5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26414375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b7ae885feed40dab4d1918560c31749714702b783e8d6765198c932edb3c226`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:43:52 GMT
ENV HAPROXY_VERSION=1.8.20
# Wed, 08 May 2019 09:43:52 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Wed, 08 May 2019 09:43:53 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Fri, 24 May 2019 22:51:08 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:51:08 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:51:09 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:51:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:51:10 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dccbdd421ba75772563db905e2e144384b94ef0d43a1350fde070600eb64a0d`  
		Last Modified: Fri, 24 May 2019 22:54:22 GMT  
		Size: 5.3 MB (5258132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7107e067ffb71953aead6ad3c776715b9d5b3cd1633360938204c857dd552e8`  
		Last Modified: Fri, 24 May 2019 22:54:21 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.20` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:845c0f7689ed0d6a10361ac0d938bfeb3edd2e48cf759761c09e999f7ea71d2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24399574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c768c303941977047a1895a4231fb9f9f18bfd186d7a24babc2a85c91d9aed85`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:08:25 GMT
ENV HAPROXY_VERSION=1.8.20
# Wed, 08 May 2019 13:08:25 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Wed, 08 May 2019 13:08:26 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Fri, 24 May 2019 22:02:28 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:02:29 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:02:29 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:02:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:02:30 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4add82d33faaa91ce061025b1794e1be5b8820429df4f10bfb78dd65b281d15`  
		Last Modified: Fri, 24 May 2019 22:06:25 GMT  
		Size: 5.1 MB (5122978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ae4c42662850901fe26c8690e267c8766deb4931c05243b9ab6a216a4ea24b`  
		Last Modified: Fri, 24 May 2019 22:06:23 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.20` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:304a74a72388d0035b12d106b07656b2527e77797f779ce43545313782c113ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25556674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b46ed2f68a1eede2182a8968bcd29ab95765ff10f8a6abaabd36db2c4c5bb97d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:52:56 GMT
ENV HAPROXY_VERSION=1.8.20
# Tue, 11 Jun 2019 00:52:56 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Tue, 11 Jun 2019 00:52:57 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Tue, 11 Jun 2019 00:53:38 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:53:38 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:53:39 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:53:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:53:40 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30eb02cd7ebc4f0ea00ad991f84ccf544f424acc2b44afaeec5e5989f8a5284`  
		Last Modified: Tue, 11 Jun 2019 00:57:17 GMT  
		Size: 5.2 MB (5222504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ef3a816cea338b6f601d21df5af7d44c9e0443899282d9fa81caa85d37efed`  
		Last Modified: Tue, 11 Jun 2019 00:57:16 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.20` - linux; 386

```console
$ docker pull haproxy@sha256:c108947a461e0a758a36dd714e312a80790bfdd0dd408170ee898268556f3212
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.7 MB (28666281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68779309bbad2692a1d87b99f5832c12e818e271b8908caaca84af0eab739b63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:16:37 GMT
ENV HAPROXY_VERSION=1.8.20
# Wed, 08 May 2019 19:16:38 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Wed, 08 May 2019 19:16:38 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Fri, 24 May 2019 22:51:33 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:51:33 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:51:33 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:51:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:51:34 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d9f963b4eca902ca1523197c855337f13cab53010edd5ec06d8f8dfc972969`  
		Last Modified: Fri, 24 May 2019 22:59:01 GMT  
		Size: 5.5 MB (5545057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b471adfebc16034660a81b1fcfd8dd01531e33d87cd09a295667cb585d6f28`  
		Last Modified: Fri, 24 May 2019 22:59:00 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.20` - linux; ppc64le

```console
$ docker pull haproxy@sha256:2f0f005878a1918fddb4a85974084b4b0b05c6e9ea311b5bfb9980b92e96a6e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (28018823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77dd9d93547e1ad9432cac1c761deec5fc1f3ea603f5f9a171bd1dc63984c7c7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Thu, 30 May 2019 18:01:49 GMT
ENV HAPROXY_VERSION=1.8.20
# Thu, 30 May 2019 18:01:50 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Thu, 30 May 2019 18:01:52 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Thu, 30 May 2019 18:04:38 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 30 May 2019 18:04:43 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:04:46 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Thu, 30 May 2019 18:04:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:04:53 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a860c2e08b489ee0ab3110208939a57e2170c3a9ec08a6314f31e262a07785ff`  
		Last Modified: Thu, 30 May 2019 18:21:49 GMT  
		Size: 5.3 MB (5273529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeba7b786ce96cd6839df7325f87bccf86a1df0e2c582db0ac8d2d4bc8b07dd0`  
		Last Modified: Thu, 30 May 2019 18:21:41 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.20` - linux; s390x

```console
$ docker pull haproxy@sha256:a765095d0fb5d5860d1e59b495a5e9bcb731afb763fe8754e084bc41e9fd64c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27769466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bdc90be8ad2d944997c851908638ce6fc473ff69b62ff9202b2cb08b8e6ed82`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:54 GMT
ADD file:e253b6e8cd43e8026b8cd0ba0bbe34460e255b131bdb2f50d5b8a2cfd5c9495b in / 
# Mon, 10 Jun 2019 23:43:55 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:08:27 GMT
ENV HAPROXY_VERSION=1.8.20
# Tue, 11 Jun 2019 00:08:27 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Tue, 11 Jun 2019 00:08:27 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Tue, 11 Jun 2019 00:09:13 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:09:13 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:09:13 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:09:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:09:14 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:7ffdabbd82ddae873be4d1eeb64de2e4b43db4450b465d53b47f3b46eb55bd53`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 22.3 MB (22338852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9157e469027b5ae60401d25a7219951044a85e8072b95a2cd08d90194cfa00aa`  
		Last Modified: Tue, 11 Jun 2019 00:13:14 GMT  
		Size: 5.4 MB (5430234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9520ea22896978cc1c56bde762653ca4a4e8194c71c34f3f8bc9de4afb803fba`  
		Last Modified: Tue, 11 Jun 2019 00:13:11 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8.20-alpine`

```console
$ docker pull haproxy@sha256:681fb4d1f33dd11d0670704a44e1ff3c2c8efab0ccbf97b8dc877a59725a491f
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

### `haproxy:1.8.20-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:36e01acff3dcfccf7e5bde86b9d88a5fadb84ea07e211beba7445e0fb2402fa2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8284610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de59be802bb5b3a438795ac415ccbcd7fe5c7f55988e7051f8cadd2d24515689`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 02:23:38 GMT
ENV HAPROXY_VERSION=1.8.20
# Sat, 11 May 2019 02:23:38 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Sat, 11 May 2019 02:23:38 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Fri, 24 May 2019 22:26:29 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:26:29 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:26:30 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:26:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:26:30 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17e76e1bbcf7fb6a08c0e1418d6807244aa69609e5d9932a89ab9cf7c2d6521`  
		Last Modified: Fri, 24 May 2019 22:31:02 GMT  
		Size: 5.5 MB (5527196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a79a1249cc86fd1e48c72f04466856828325b9a4f0d4c47bbaaadcf436d9f8`  
		Last Modified: Fri, 24 May 2019 22:31:01 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.20-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:4f059dc6311817a284b95afc6ac855591aba97172dd6fa21863a9c2967a4e87c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7898862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37d8165de1c24c393f9c48c23c62476c524e8bc87bf6bcc6da8a3e65f345c8eb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:29:07 GMT
ENV HAPROXY_VERSION=1.8.20
# Sat, 11 May 2019 09:29:07 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Sat, 11 May 2019 09:29:07 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Fri, 24 May 2019 22:50:42 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:50:43 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:50:44 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:50:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:50:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f96694525520283efeab29f66fb48e6436bdaff92b952a046629639ce1fc591`  
		Last Modified: Fri, 24 May 2019 22:52:31 GMT  
		Size: 5.4 MB (5355054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0861408c18f2455097545901202632fecf047b1fafcba3c2ae2eac56d13eef`  
		Last Modified: Fri, 24 May 2019 22:52:27 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.20-alpine` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:ad20ff283e9dea4766f37840221b5222eada3e3d09c87b406d812386398dfb99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7654763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95e40f4700534c0c8b5af707312aecfb10b30cbc4cad8718efd9ee877beb4aa4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:13:53 GMT
ENV HAPROXY_VERSION=1.8.20
# Sat, 11 May 2019 12:13:54 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Sat, 11 May 2019 12:13:54 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Fri, 24 May 2019 22:03:06 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:03:06 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:03:07 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:03:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:03:08 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b74cfa9313b9357499adb5cac32f2dd9041a1fbc0ec58c65ab6a6b135cca3ef`  
		Last Modified: Fri, 24 May 2019 22:06:34 GMT  
		Size: 5.3 MB (5303719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bee6b5ec51003bc172955499e09c21f29990102b293b24cb81242fd36ea3f3d`  
		Last Modified: Fri, 24 May 2019 22:06:34 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.20-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:9c3523a6dab72c93e0fb51111b54d24c43d2647208473f22c356a358720dbd35
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8112381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70c4c8330acc061d992bb8ad5c11a9c8b5253abaa0a2adb0932851c5d499d7ec`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:43:03 GMT
ENV HAPROXY_VERSION=1.8.20
# Thu, 16 May 2019 00:43:03 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Thu, 16 May 2019 00:43:04 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Fri, 24 May 2019 22:47:20 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:47:21 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:47:21 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:47:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:47:22 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0eae913c52efdbe724fbf25067fd05963570d4b1a245a5b6fcf66dbf455a0ac`  
		Last Modified: Fri, 24 May 2019 22:52:22 GMT  
		Size: 5.4 MB (5423222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae5bb4d6c89ea7876130f05708b3265364dd08eec0798044093e638399c97b5`  
		Last Modified: Fri, 24 May 2019 22:52:20 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.20-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:3fd40c08d98696385aa5660e916d7b83b7da4282b75807c4f1581e3d603b5db3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8170760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:981d37ac5e4a95d305da0493c1efbf832d95791f6b4788a0e951bd963d86f773`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 15:25:56 GMT
ENV HAPROXY_VERSION=1.8.20
# Sat, 11 May 2019 15:25:56 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Sat, 11 May 2019 15:25:56 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Fri, 24 May 2019 22:52:41 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:52:41 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:52:41 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:52:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:52:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2f8e39a3c86a7be4fa25a03d7b8d70d6050eb9b069389c2d97f7e3031b86e9`  
		Last Modified: Fri, 24 May 2019 22:59:10 GMT  
		Size: 5.4 MB (5418289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e199e7302dec4d6d7e1e0803f8962b43200228b9f05d206f02fc81190af39a7`  
		Last Modified: Fri, 24 May 2019 22:59:08 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.20-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:f04d76e534d8461253c57f3f38daa15bedd6b5549c66d3198f340ee1f4ef16d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8431493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:646be24bce5b4e6b40bf7aee840af1034a486b590f4815114b62ecdcf24a2e13`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 18:05:01 GMT
ENV HAPROXY_VERSION=1.8.20
# Thu, 30 May 2019 18:05:04 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Thu, 30 May 2019 18:05:06 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Thu, 30 May 2019 18:05:41 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 30 May 2019 18:05:45 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:05:47 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Thu, 30 May 2019 18:05:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:05:53 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457582ab143ba88231f8c5e1ed9eaeafb249fa91aef7421450aa009cce76985a`  
		Last Modified: Thu, 30 May 2019 18:22:06 GMT  
		Size: 5.7 MB (5650094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ccb60856da3b9e34b4d4582fcbdc7326ce1c49a0a633e95d05703be1f979bd`  
		Last Modified: Thu, 30 May 2019 18:22:01 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.20-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:7763dc1f47a53c65ae2c0b2d9a4a7efc1a6c5a71292b923944204fb74018e453
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7923639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:368579b826adef14d5e9fc78b3a443e71279cc8e0b0ed03ea242a7a95ec9d627`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:19:10 GMT
ENV HAPROXY_VERSION=1.8.20
# Sat, 11 May 2019 12:19:11 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Sat, 11 May 2019 12:19:11 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Fri, 24 May 2019 22:45:47 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:45:47 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:45:47 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:45:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:45:47 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aeb0a5eb2e108479d5a512aa04bcc8d2eb2d3300619a77d5ca8bc7bf52c6704`  
		Last Modified: Fri, 24 May 2019 22:49:39 GMT  
		Size: 5.4 MB (5379930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f24df8016d431353a75ae121fe61b1b2cbdf03d74055d1d789799361908f3f6`  
		Last Modified: Fri, 24 May 2019 22:49:38 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8-alpine`

```console
$ docker pull haproxy@sha256:681fb4d1f33dd11d0670704a44e1ff3c2c8efab0ccbf97b8dc877a59725a491f
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

### `haproxy:1.8-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:36e01acff3dcfccf7e5bde86b9d88a5fadb84ea07e211beba7445e0fb2402fa2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8284610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de59be802bb5b3a438795ac415ccbcd7fe5c7f55988e7051f8cadd2d24515689`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 02:23:38 GMT
ENV HAPROXY_VERSION=1.8.20
# Sat, 11 May 2019 02:23:38 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Sat, 11 May 2019 02:23:38 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Fri, 24 May 2019 22:26:29 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:26:29 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:26:30 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:26:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:26:30 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17e76e1bbcf7fb6a08c0e1418d6807244aa69609e5d9932a89ab9cf7c2d6521`  
		Last Modified: Fri, 24 May 2019 22:31:02 GMT  
		Size: 5.5 MB (5527196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a79a1249cc86fd1e48c72f04466856828325b9a4f0d4c47bbaaadcf436d9f8`  
		Last Modified: Fri, 24 May 2019 22:31:01 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:4f059dc6311817a284b95afc6ac855591aba97172dd6fa21863a9c2967a4e87c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7898862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37d8165de1c24c393f9c48c23c62476c524e8bc87bf6bcc6da8a3e65f345c8eb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:29:07 GMT
ENV HAPROXY_VERSION=1.8.20
# Sat, 11 May 2019 09:29:07 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Sat, 11 May 2019 09:29:07 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Fri, 24 May 2019 22:50:42 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:50:43 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:50:44 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:50:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:50:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f96694525520283efeab29f66fb48e6436bdaff92b952a046629639ce1fc591`  
		Last Modified: Fri, 24 May 2019 22:52:31 GMT  
		Size: 5.4 MB (5355054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0861408c18f2455097545901202632fecf047b1fafcba3c2ae2eac56d13eef`  
		Last Modified: Fri, 24 May 2019 22:52:27 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:ad20ff283e9dea4766f37840221b5222eada3e3d09c87b406d812386398dfb99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7654763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95e40f4700534c0c8b5af707312aecfb10b30cbc4cad8718efd9ee877beb4aa4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:13:53 GMT
ENV HAPROXY_VERSION=1.8.20
# Sat, 11 May 2019 12:13:54 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Sat, 11 May 2019 12:13:54 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Fri, 24 May 2019 22:03:06 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:03:06 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:03:07 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:03:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:03:08 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b74cfa9313b9357499adb5cac32f2dd9041a1fbc0ec58c65ab6a6b135cca3ef`  
		Last Modified: Fri, 24 May 2019 22:06:34 GMT  
		Size: 5.3 MB (5303719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bee6b5ec51003bc172955499e09c21f29990102b293b24cb81242fd36ea3f3d`  
		Last Modified: Fri, 24 May 2019 22:06:34 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:9c3523a6dab72c93e0fb51111b54d24c43d2647208473f22c356a358720dbd35
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8112381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70c4c8330acc061d992bb8ad5c11a9c8b5253abaa0a2adb0932851c5d499d7ec`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:43:03 GMT
ENV HAPROXY_VERSION=1.8.20
# Thu, 16 May 2019 00:43:03 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Thu, 16 May 2019 00:43:04 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Fri, 24 May 2019 22:47:20 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:47:21 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:47:21 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:47:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:47:22 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0eae913c52efdbe724fbf25067fd05963570d4b1a245a5b6fcf66dbf455a0ac`  
		Last Modified: Fri, 24 May 2019 22:52:22 GMT  
		Size: 5.4 MB (5423222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae5bb4d6c89ea7876130f05708b3265364dd08eec0798044093e638399c97b5`  
		Last Modified: Fri, 24 May 2019 22:52:20 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:3fd40c08d98696385aa5660e916d7b83b7da4282b75807c4f1581e3d603b5db3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8170760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:981d37ac5e4a95d305da0493c1efbf832d95791f6b4788a0e951bd963d86f773`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 15:25:56 GMT
ENV HAPROXY_VERSION=1.8.20
# Sat, 11 May 2019 15:25:56 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Sat, 11 May 2019 15:25:56 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Fri, 24 May 2019 22:52:41 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:52:41 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:52:41 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:52:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:52:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2f8e39a3c86a7be4fa25a03d7b8d70d6050eb9b069389c2d97f7e3031b86e9`  
		Last Modified: Fri, 24 May 2019 22:59:10 GMT  
		Size: 5.4 MB (5418289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e199e7302dec4d6d7e1e0803f8962b43200228b9f05d206f02fc81190af39a7`  
		Last Modified: Fri, 24 May 2019 22:59:08 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:f04d76e534d8461253c57f3f38daa15bedd6b5549c66d3198f340ee1f4ef16d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8431493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:646be24bce5b4e6b40bf7aee840af1034a486b590f4815114b62ecdcf24a2e13`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 18:05:01 GMT
ENV HAPROXY_VERSION=1.8.20
# Thu, 30 May 2019 18:05:04 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Thu, 30 May 2019 18:05:06 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Thu, 30 May 2019 18:05:41 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 30 May 2019 18:05:45 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:05:47 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Thu, 30 May 2019 18:05:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:05:53 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457582ab143ba88231f8c5e1ed9eaeafb249fa91aef7421450aa009cce76985a`  
		Last Modified: Thu, 30 May 2019 18:22:06 GMT  
		Size: 5.7 MB (5650094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ccb60856da3b9e34b4d4582fcbdc7326ce1c49a0a633e95d05703be1f979bd`  
		Last Modified: Thu, 30 May 2019 18:22:01 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:7763dc1f47a53c65ae2c0b2d9a4a7efc1a6c5a71292b923944204fb74018e453
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7923639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:368579b826adef14d5e9fc78b3a443e71279cc8e0b0ed03ea242a7a95ec9d627`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:19:10 GMT
ENV HAPROXY_VERSION=1.8.20
# Sat, 11 May 2019 12:19:11 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.20.tar.gz
# Sat, 11 May 2019 12:19:11 GMT
ENV HAPROXY_SHA256=3228f78d5fe1dfbaccf41bf387e36b08eeef6e16330053cafde5fa303e262b16
# Fri, 24 May 2019 22:45:47 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:45:47 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:45:47 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:45:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:45:47 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aeb0a5eb2e108479d5a512aa04bcc8d2eb2d3300619a77d5ca8bc7bf52c6704`  
		Last Modified: Fri, 24 May 2019 22:49:39 GMT  
		Size: 5.4 MB (5379930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f24df8016d431353a75ae121fe61b1b2cbdf03d74055d1d789799361908f3f6`  
		Last Modified: Fri, 24 May 2019 22:49:38 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.9`

```console
$ docker pull haproxy@sha256:1f40ca332590c6647516a11711b74933ee8a889a9fbb47127a4b8c7e3c4cf651
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

### `haproxy:1.9` - linux; amd64

```console
$ docker pull haproxy@sha256:63f8c142298c5768c06b7b7405a75a18b5785c59967f4b75cdde46bf244f5542
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29131354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c63dfa229dbe96c0b3832dfce273f3733069949d017eb3cf4ccfbe1cd2efdcad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:21:26 GMT
ENV HAPROXY_VERSION=1.9.8
# Tue, 11 Jun 2019 00:21:27 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Tue, 11 Jun 2019 00:21:27 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Tue, 11 Jun 2019 00:23:31 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:23:32 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:23:32 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:23:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:23:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03bf45fcc87a5130f533d242518760ecc198ea4653c5aba4fc023801cb11fb2`  
		Last Modified: Tue, 11 Jun 2019 00:30:42 GMT  
		Size: 6.6 MB (6641672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9197512f12db4d086eac7ba17f4bb082dd5e2fb79ec567d424e53d8a51bf6619`  
		Last Modified: Tue, 11 Jun 2019 00:30:38 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:5841bdd58524f40a4f01dae96cb81f3febb71ad717e158501597d5ab5e5a8479
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27418587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65381bf0d91a4aa23dab87f3913c83e8ebc24de1cd949cae95fd2194a86db3a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 15 May 2019 23:48:27 GMT
ENV HAPROXY_VERSION=1.9.8
# Wed, 15 May 2019 23:48:28 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Wed, 15 May 2019 23:48:28 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:50:12 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:50:13 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:50:13 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:50:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:50:15 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bffc056707e011397b8d5c78f20c2771be114c1158a277132cd8936ba15172d`  
		Last Modified: Fri, 24 May 2019 22:54:13 GMT  
		Size: 6.3 MB (6262344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b06e538d41f4618a712a6cecd2d24f5cb7e2ed241e0ee7a4d476c8de8f776b`  
		Last Modified: Fri, 24 May 2019 22:52:11 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:6496026df28c95f85255a9638a1526ac90b97d9b6e961f1c43161eb05ac5ee68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25451994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3dfc856cd1118f4fd1d697c39a63bf9a1d314a37eac176901a5dc3452e5b94b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:07:28 GMT
ENV HAPROXY_VERSION=1.9.7
# Wed, 08 May 2019 13:07:28 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.7.tar.gz
# Wed, 08 May 2019 13:07:29 GMT
ENV HAPROXY_SHA256=5e59466728cc3ec0bcdd0271d8a8c5bd07d99a3a9cfa0989583da0ddde099632
# Wed, 08 May 2019 13:08:11 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 13:08:12 GMT
STOPSIGNAL SIGUSR1
# Wed, 08 May 2019 13:08:13 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 08 May 2019 13:08:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 13:08:14 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ad789fafc308c82ea6874c1b9029326845c744c8dee79e2508c5cf331f6d63`  
		Last Modified: Wed, 08 May 2019 13:11:58 GMT  
		Size: 6.2 MB (6175397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61dc2afcbc8c6a28a3738d5f195df588b96f47c58ee8c7fafb245a4673ede2ec`  
		Last Modified: Wed, 08 May 2019 13:11:56 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:983ed763d70e5aede75db79805fdc50cd1f372e7fc5e83915c07ec045ffd1133
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26624033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b8027ee9ddf687d132b8fea5f9e01a19d1ee2186c5f66b525bbfe69c04b4f2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:52:08 GMT
ENV HAPROXY_VERSION=1.9.8
# Tue, 11 Jun 2019 00:52:08 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Tue, 11 Jun 2019 00:52:09 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Tue, 11 Jun 2019 00:52:46 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:52:47 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:52:47 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:52:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:52:48 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e97f95b45cad1e1172b98644d3bb06d95a21a4585c5c94bc80a26b3dcb0a8fe`  
		Last Modified: Tue, 11 Jun 2019 00:57:08 GMT  
		Size: 6.3 MB (6289862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e11476194539001ec7370e03db5779a59cddb510203ebf75d5916687a84b3ed`  
		Last Modified: Tue, 11 Jun 2019 00:57:06 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9` - linux; 386

```console
$ docker pull haproxy@sha256:1be321c365e3ab74aae1e63d6f444c8ea2043080366cbef1de8be4cf2a686817
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.6 MB (29633016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cea5d4d5bb215b11485dd10f934cbe5c5452d4098865c237b73c4ca76dbe95ea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Thu, 16 May 2019 01:38:11 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 16 May 2019 01:38:12 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 16 May 2019 01:38:12 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:48:42 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:48:42 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:48:42 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:48:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:48:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df336c664dc9d236456024fde0feaedaa0db7abd40d9c44ad59e30ba50dfedee`  
		Last Modified: Fri, 24 May 2019 22:58:46 GMT  
		Size: 6.5 MB (6511793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbbda2095f418c27f64c41515280c5d0d76ec828f892e9f55dc2e42e70114e15`  
		Last Modified: Fri, 24 May 2019 22:58:46 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9` - linux; ppc64le

```console
$ docker pull haproxy@sha256:23a3816076c6bcd5ca554df34f2be3d94bbedfc338930634a646cf3c934f000b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29026923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07e019bb03b4f30235870f786645e8d05b883095d578a10d655adabfb2a682da`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Thu, 30 May 2019 17:56:07 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 30 May 2019 17:56:09 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 30 May 2019 17:56:12 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Thu, 30 May 2019 18:00:05 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 30 May 2019 18:00:10 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:00:15 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Thu, 30 May 2019 18:00:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:00:22 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047da7677fc1c1bb4bab9a7e00c19c6c308718d09e89c7c9fd70adc600d5caf3`  
		Last Modified: Thu, 30 May 2019 18:21:01 GMT  
		Size: 6.3 MB (6281629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c35c511fbdb3b22a3fbe621f8dec8bdaa45accbd77fe052c1df72fcce4a164c`  
		Last Modified: Thu, 30 May 2019 18:20:57 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9` - linux; s390x

```console
$ docker pull haproxy@sha256:82eff554be9e8cf7bfc3c84e01a93cc8a3148bbedceceaf3646cd40fb7c22e23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.8 MB (28838330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:260c21251833bf69a6e822c53730b2e23aca603545cd2319710488a3659605ab`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:54 GMT
ADD file:e253b6e8cd43e8026b8cd0ba0bbe34460e255b131bdb2f50d5b8a2cfd5c9495b in / 
# Mon, 10 Jun 2019 23:43:55 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:07:32 GMT
ENV HAPROXY_VERSION=1.9.8
# Tue, 11 Jun 2019 00:07:32 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Tue, 11 Jun 2019 00:07:33 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Tue, 11 Jun 2019 00:08:18 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:08:18 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:08:19 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:08:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:08:19 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:7ffdabbd82ddae873be4d1eeb64de2e4b43db4450b465d53b47f3b46eb55bd53`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 22.3 MB (22338852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ed8ce291fc45577a3cb3de5c1bf30896c3a3f94e00074a17bb057fbf4892f3`  
		Last Modified: Tue, 11 Jun 2019 00:13:01 GMT  
		Size: 6.5 MB (6499098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390f08fd73af606358e9d2e624465a3e243c145246c37b7f9ca8a5f3b897322b`  
		Last Modified: Tue, 11 Jun 2019 00:13:00 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.9.8`

```console
$ docker pull haproxy@sha256:bceb25d96db8de250e2b048790e7b0cf51e08771d9ed60e58b715c3ad44e2e5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:1.9.8` - linux; amd64

```console
$ docker pull haproxy@sha256:63f8c142298c5768c06b7b7405a75a18b5785c59967f4b75cdde46bf244f5542
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29131354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c63dfa229dbe96c0b3832dfce273f3733069949d017eb3cf4ccfbe1cd2efdcad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:21:26 GMT
ENV HAPROXY_VERSION=1.9.8
# Tue, 11 Jun 2019 00:21:27 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Tue, 11 Jun 2019 00:21:27 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Tue, 11 Jun 2019 00:23:31 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:23:32 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:23:32 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:23:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:23:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03bf45fcc87a5130f533d242518760ecc198ea4653c5aba4fc023801cb11fb2`  
		Last Modified: Tue, 11 Jun 2019 00:30:42 GMT  
		Size: 6.6 MB (6641672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9197512f12db4d086eac7ba17f4bb082dd5e2fb79ec567d424e53d8a51bf6619`  
		Last Modified: Tue, 11 Jun 2019 00:30:38 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9.8` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:5841bdd58524f40a4f01dae96cb81f3febb71ad717e158501597d5ab5e5a8479
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27418587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65381bf0d91a4aa23dab87f3913c83e8ebc24de1cd949cae95fd2194a86db3a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 15 May 2019 23:48:27 GMT
ENV HAPROXY_VERSION=1.9.8
# Wed, 15 May 2019 23:48:28 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Wed, 15 May 2019 23:48:28 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:50:12 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:50:13 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:50:13 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:50:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:50:15 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bffc056707e011397b8d5c78f20c2771be114c1158a277132cd8936ba15172d`  
		Last Modified: Fri, 24 May 2019 22:54:13 GMT  
		Size: 6.3 MB (6262344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b06e538d41f4618a712a6cecd2d24f5cb7e2ed241e0ee7a4d476c8de8f776b`  
		Last Modified: Fri, 24 May 2019 22:52:11 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9.8` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:983ed763d70e5aede75db79805fdc50cd1f372e7fc5e83915c07ec045ffd1133
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26624033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b8027ee9ddf687d132b8fea5f9e01a19d1ee2186c5f66b525bbfe69c04b4f2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:52:08 GMT
ENV HAPROXY_VERSION=1.9.8
# Tue, 11 Jun 2019 00:52:08 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Tue, 11 Jun 2019 00:52:09 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Tue, 11 Jun 2019 00:52:46 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:52:47 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:52:47 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:52:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:52:48 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e97f95b45cad1e1172b98644d3bb06d95a21a4585c5c94bc80a26b3dcb0a8fe`  
		Last Modified: Tue, 11 Jun 2019 00:57:08 GMT  
		Size: 6.3 MB (6289862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e11476194539001ec7370e03db5779a59cddb510203ebf75d5916687a84b3ed`  
		Last Modified: Tue, 11 Jun 2019 00:57:06 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9.8` - linux; 386

```console
$ docker pull haproxy@sha256:1be321c365e3ab74aae1e63d6f444c8ea2043080366cbef1de8be4cf2a686817
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.6 MB (29633016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cea5d4d5bb215b11485dd10f934cbe5c5452d4098865c237b73c4ca76dbe95ea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Thu, 16 May 2019 01:38:11 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 16 May 2019 01:38:12 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 16 May 2019 01:38:12 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:48:42 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:48:42 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:48:42 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:48:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:48:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df336c664dc9d236456024fde0feaedaa0db7abd40d9c44ad59e30ba50dfedee`  
		Last Modified: Fri, 24 May 2019 22:58:46 GMT  
		Size: 6.5 MB (6511793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbbda2095f418c27f64c41515280c5d0d76ec828f892e9f55dc2e42e70114e15`  
		Last Modified: Fri, 24 May 2019 22:58:46 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9.8` - linux; ppc64le

```console
$ docker pull haproxy@sha256:23a3816076c6bcd5ca554df34f2be3d94bbedfc338930634a646cf3c934f000b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29026923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07e019bb03b4f30235870f786645e8d05b883095d578a10d655adabfb2a682da`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Thu, 30 May 2019 17:56:07 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 30 May 2019 17:56:09 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 30 May 2019 17:56:12 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Thu, 30 May 2019 18:00:05 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 30 May 2019 18:00:10 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:00:15 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Thu, 30 May 2019 18:00:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:00:22 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047da7677fc1c1bb4bab9a7e00c19c6c308718d09e89c7c9fd70adc600d5caf3`  
		Last Modified: Thu, 30 May 2019 18:21:01 GMT  
		Size: 6.3 MB (6281629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c35c511fbdb3b22a3fbe621f8dec8bdaa45accbd77fe052c1df72fcce4a164c`  
		Last Modified: Thu, 30 May 2019 18:20:57 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9.8` - linux; s390x

```console
$ docker pull haproxy@sha256:82eff554be9e8cf7bfc3c84e01a93cc8a3148bbedceceaf3646cd40fb7c22e23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.8 MB (28838330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:260c21251833bf69a6e822c53730b2e23aca603545cd2319710488a3659605ab`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:54 GMT
ADD file:e253b6e8cd43e8026b8cd0ba0bbe34460e255b131bdb2f50d5b8a2cfd5c9495b in / 
# Mon, 10 Jun 2019 23:43:55 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:07:32 GMT
ENV HAPROXY_VERSION=1.9.8
# Tue, 11 Jun 2019 00:07:32 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Tue, 11 Jun 2019 00:07:33 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Tue, 11 Jun 2019 00:08:18 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:08:18 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:08:19 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:08:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:08:19 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:7ffdabbd82ddae873be4d1eeb64de2e4b43db4450b465d53b47f3b46eb55bd53`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 22.3 MB (22338852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ed8ce291fc45577a3cb3de5c1bf30896c3a3f94e00074a17bb057fbf4892f3`  
		Last Modified: Tue, 11 Jun 2019 00:13:01 GMT  
		Size: 6.5 MB (6499098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390f08fd73af606358e9d2e624465a3e243c145246c37b7f9ca8a5f3b897322b`  
		Last Modified: Tue, 11 Jun 2019 00:13:00 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.9.8-alpine`

```console
$ docker pull haproxy@sha256:070917909f81d8aae77b5ef3e0542c8d6fab38d401a40a1c809c2c35ed1c2533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:1.9.8-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:971a3c6931abc4cf879746196a1203d383b06d1e704bd8b8428f71fe4b7ec895
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 MB (9573959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:508a49880be53126c32c263396210617c5b106e4b710cf18a30f9aa841f880c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:44:36 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 16 May 2019 00:44:36 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 16 May 2019 00:44:36 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:24:55 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:24:55 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:24:56 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:24:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:24:56 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46d24dd7aaf909d50191038627368c0876e8bf25e663766f35561a52813f079`  
		Last Modified: Fri, 24 May 2019 22:30:51 GMT  
		Size: 6.8 MB (6816545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194ddf8813551afc88b4d2b6ccef19134a20003aaf97f865d75b14bbead4560d`  
		Last Modified: Fri, 24 May 2019 22:30:44 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9.8-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:90018f90abfc391d6f05be92ffaaaac51eedc3351fcb5ecee5b86afb80ee8da3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9110196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:484affbf3ad917744bdf274eacb52b1e9f1fdc85b21b89e2d85e51d40b0b0fa0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Wed, 15 May 2019 23:49:25 GMT
ENV HAPROXY_VERSION=1.9.8
# Wed, 15 May 2019 23:49:26 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Wed, 15 May 2019 23:49:26 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:50:15 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:50:15 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:50:16 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:50:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:50:17 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648ba16ade9bb4e2310cc44bfe79742bcfc81370b62af4124c0cea2bebec470f`  
		Last Modified: Fri, 24 May 2019 22:52:20 GMT  
		Size: 6.6 MB (6566389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529ffee4d0622af507fe477be1bf792bd5228e87c8cf08602018f03e5fefc5ee`  
		Last Modified: Fri, 24 May 2019 22:52:18 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9.8-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:52575a319912a66b17740d8df2ff55856dbe7c0a272dc6ce2c557a4c49e22b47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9410131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6fe17d505844cf10bf9c00e165d48243fb35844d710b6fb6ccc9df5c06e051`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:41:43 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 16 May 2019 00:41:44 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 16 May 2019 00:41:44 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:46:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:46:09 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:46:09 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:46:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:46:10 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c589c39e69467449d03817b2725760877be17e0b54117c06c71c3f9e7bb826fd`  
		Last Modified: Fri, 24 May 2019 22:52:01 GMT  
		Size: 6.7 MB (6720972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1cea3e11f054990a291e1af3bc0465a9bb473ff5781c12e2f34e3f8e6160232`  
		Last Modified: Fri, 24 May 2019 22:51:59 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9.8-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:8ef5cb7e53663d43e1adf0e1400c4990edffef0e40d2976834bf1927ca9ace79
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9351574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de4eea2a0e23c03f4837604a555aab38f3f408124ae1487724a70310fa544d95`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 01:39:55 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 16 May 2019 01:39:55 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 16 May 2019 01:39:55 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:50:18 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:50:18 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:50:18 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:50:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:50:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459c7a8600419307c070ae30e1081fb518498be7a4ae26fd6eaaf2b168e6eae3`  
		Last Modified: Fri, 24 May 2019 22:58:52 GMT  
		Size: 6.6 MB (6599103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e746fe14172f39e208a271af4db7118ea4fd4d355488dca5d2206ed2b4cb4326`  
		Last Modified: Fri, 24 May 2019 22:58:51 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9.8-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:18697e2f8cb5e76ac27db2b14a321529b897ddc24ed3748c61200577fd702238
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9687527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c03e230e7748e392702081153b2b0a2cb4b72795bd94d8abc6d6d9c9cdcf02bd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 18:00:36 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 30 May 2019 18:00:39 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 30 May 2019 18:00:44 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Thu, 30 May 2019 18:01:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 30 May 2019 18:01:31 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:01:33 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Thu, 30 May 2019 18:01:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:01:36 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8bc03868135b2384401b8ade2864979c62098bbbea705a8f1b0fddf8b445215`  
		Last Modified: Thu, 30 May 2019 18:21:23 GMT  
		Size: 6.9 MB (6906128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb0bd87e740e21ac979a6409e81686e0cecd9a4b56eec81c3eb7b034e84998a4`  
		Last Modified: Thu, 30 May 2019 18:21:20 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9.8-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:40cd0b02ad4e6a82b5d7673c3c72daa507cadd9e0553076578478ea8e64f60bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9195086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6750c54b7b3607dabe8fd5d137a8c9f9c7f2a3b2dd34e4eb5d38c33095dda98`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:52:32 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 16 May 2019 00:52:32 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 16 May 2019 00:52:33 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:44:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:44:28 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:44:28 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:44:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:44:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f04ec47fa7ae476dbd345033d3b773e47b97ffbcfa9f2d7bf8995b3588a782`  
		Last Modified: Fri, 24 May 2019 22:49:27 GMT  
		Size: 6.7 MB (6651374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51543109e36ea26b3f74e14a956fd75978c1a5e618e9fa04236dcfdbc54df537`  
		Last Modified: Fri, 24 May 2019 22:49:27 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.9-alpine`

```console
$ docker pull haproxy@sha256:5b60cd5d657433ebb8794790ce64dbf37fc497b60a618a479da50e8349b7774d
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

### `haproxy:1.9-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:971a3c6931abc4cf879746196a1203d383b06d1e704bd8b8428f71fe4b7ec895
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 MB (9573959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:508a49880be53126c32c263396210617c5b106e4b710cf18a30f9aa841f880c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:44:36 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 16 May 2019 00:44:36 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 16 May 2019 00:44:36 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:24:55 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:24:55 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:24:56 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:24:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:24:56 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46d24dd7aaf909d50191038627368c0876e8bf25e663766f35561a52813f079`  
		Last Modified: Fri, 24 May 2019 22:30:51 GMT  
		Size: 6.8 MB (6816545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194ddf8813551afc88b4d2b6ccef19134a20003aaf97f865d75b14bbead4560d`  
		Last Modified: Fri, 24 May 2019 22:30:44 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:90018f90abfc391d6f05be92ffaaaac51eedc3351fcb5ecee5b86afb80ee8da3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9110196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:484affbf3ad917744bdf274eacb52b1e9f1fdc85b21b89e2d85e51d40b0b0fa0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Wed, 15 May 2019 23:49:25 GMT
ENV HAPROXY_VERSION=1.9.8
# Wed, 15 May 2019 23:49:26 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Wed, 15 May 2019 23:49:26 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:50:15 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:50:15 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:50:16 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:50:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:50:17 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648ba16ade9bb4e2310cc44bfe79742bcfc81370b62af4124c0cea2bebec470f`  
		Last Modified: Fri, 24 May 2019 22:52:20 GMT  
		Size: 6.6 MB (6566389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529ffee4d0622af507fe477be1bf792bd5228e87c8cf08602018f03e5fefc5ee`  
		Last Modified: Fri, 24 May 2019 22:52:18 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9-alpine` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:6e68c2d2775994e4313ad1353c8e22d5605160c31ebdddd093911a6f278c0700
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8920608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28e8936bdee81b94fe26f57a79407c4b8f0abda85106fb3d8a882d978b698268`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:13:25 GMT
ENV HAPROXY_VERSION=1.9.7
# Sat, 11 May 2019 12:13:26 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.7.tar.gz
# Sat, 11 May 2019 12:13:26 GMT
ENV HAPROXY_SHA256=5e59466728cc3ec0bcdd0271d8a8c5bd07d99a3a9cfa0989583da0ddde099632
# Sat, 11 May 2019 12:13:44 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 11 May 2019 12:13:44 GMT
STOPSIGNAL SIGUSR1
# Sat, 11 May 2019 12:13:45 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 11 May 2019 12:13:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 11 May 2019 12:13:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f117a0d7efd6c4426b1719a4eb123cbc28ad2100bf52960307b15f2164e3990`  
		Last Modified: Sat, 11 May 2019 12:15:23 GMT  
		Size: 6.6 MB (6569561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6541b75a09247857ddfa476d43aa29e2be20584d058b2310431022f3bb6534b6`  
		Last Modified: Sat, 11 May 2019 12:15:21 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:52575a319912a66b17740d8df2ff55856dbe7c0a272dc6ce2c557a4c49e22b47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9410131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6fe17d505844cf10bf9c00e165d48243fb35844d710b6fb6ccc9df5c06e051`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:41:43 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 16 May 2019 00:41:44 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 16 May 2019 00:41:44 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:46:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:46:09 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:46:09 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:46:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:46:10 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c589c39e69467449d03817b2725760877be17e0b54117c06c71c3f9e7bb826fd`  
		Last Modified: Fri, 24 May 2019 22:52:01 GMT  
		Size: 6.7 MB (6720972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1cea3e11f054990a291e1af3bc0465a9bb473ff5781c12e2f34e3f8e6160232`  
		Last Modified: Fri, 24 May 2019 22:51:59 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:8ef5cb7e53663d43e1adf0e1400c4990edffef0e40d2976834bf1927ca9ace79
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9351574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de4eea2a0e23c03f4837604a555aab38f3f408124ae1487724a70310fa544d95`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 01:39:55 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 16 May 2019 01:39:55 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 16 May 2019 01:39:55 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:50:18 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:50:18 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:50:18 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:50:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:50:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459c7a8600419307c070ae30e1081fb518498be7a4ae26fd6eaaf2b168e6eae3`  
		Last Modified: Fri, 24 May 2019 22:58:52 GMT  
		Size: 6.6 MB (6599103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e746fe14172f39e208a271af4db7118ea4fd4d355488dca5d2206ed2b4cb4326`  
		Last Modified: Fri, 24 May 2019 22:58:51 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:18697e2f8cb5e76ac27db2b14a321529b897ddc24ed3748c61200577fd702238
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9687527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c03e230e7748e392702081153b2b0a2cb4b72795bd94d8abc6d6d9c9cdcf02bd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 18:00:36 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 30 May 2019 18:00:39 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 30 May 2019 18:00:44 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Thu, 30 May 2019 18:01:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 30 May 2019 18:01:31 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:01:33 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Thu, 30 May 2019 18:01:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:01:36 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8bc03868135b2384401b8ade2864979c62098bbbea705a8f1b0fddf8b445215`  
		Last Modified: Thu, 30 May 2019 18:21:23 GMT  
		Size: 6.9 MB (6906128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb0bd87e740e21ac979a6409e81686e0cecd9a4b56eec81c3eb7b034e84998a4`  
		Last Modified: Thu, 30 May 2019 18:21:20 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:40cd0b02ad4e6a82b5d7673c3c72daa507cadd9e0553076578478ea8e64f60bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9195086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6750c54b7b3607dabe8fd5d137a8c9f9c7f2a3b2dd34e4eb5d38c33095dda98`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:52:32 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 16 May 2019 00:52:32 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 16 May 2019 00:52:33 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:44:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:44:28 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:44:28 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:44:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:44:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f04ec47fa7ae476dbd345033d3b773e47b97ffbcfa9f2d7bf8995b3588a782`  
		Last Modified: Fri, 24 May 2019 22:49:27 GMT  
		Size: 6.7 MB (6651374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51543109e36ea26b3f74e14a956fd75978c1a5e618e9fa04236dcfdbc54df537`  
		Last Modified: Fri, 24 May 2019 22:49:27 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1-alpine`

```console
$ docker pull haproxy@sha256:5b60cd5d657433ebb8794790ce64dbf37fc497b60a618a479da50e8349b7774d
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

### `haproxy:1-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:971a3c6931abc4cf879746196a1203d383b06d1e704bd8b8428f71fe4b7ec895
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 MB (9573959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:508a49880be53126c32c263396210617c5b106e4b710cf18a30f9aa841f880c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:44:36 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 16 May 2019 00:44:36 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 16 May 2019 00:44:36 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:24:55 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:24:55 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:24:56 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:24:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:24:56 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46d24dd7aaf909d50191038627368c0876e8bf25e663766f35561a52813f079`  
		Last Modified: Fri, 24 May 2019 22:30:51 GMT  
		Size: 6.8 MB (6816545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194ddf8813551afc88b4d2b6ccef19134a20003aaf97f865d75b14bbead4560d`  
		Last Modified: Fri, 24 May 2019 22:30:44 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:90018f90abfc391d6f05be92ffaaaac51eedc3351fcb5ecee5b86afb80ee8da3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9110196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:484affbf3ad917744bdf274eacb52b1e9f1fdc85b21b89e2d85e51d40b0b0fa0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Wed, 15 May 2019 23:49:25 GMT
ENV HAPROXY_VERSION=1.9.8
# Wed, 15 May 2019 23:49:26 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Wed, 15 May 2019 23:49:26 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:50:15 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:50:15 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:50:16 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:50:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:50:17 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648ba16ade9bb4e2310cc44bfe79742bcfc81370b62af4124c0cea2bebec470f`  
		Last Modified: Fri, 24 May 2019 22:52:20 GMT  
		Size: 6.6 MB (6566389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529ffee4d0622af507fe477be1bf792bd5228e87c8cf08602018f03e5fefc5ee`  
		Last Modified: Fri, 24 May 2019 22:52:18 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:6e68c2d2775994e4313ad1353c8e22d5605160c31ebdddd093911a6f278c0700
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8920608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28e8936bdee81b94fe26f57a79407c4b8f0abda85106fb3d8a882d978b698268`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:13:25 GMT
ENV HAPROXY_VERSION=1.9.7
# Sat, 11 May 2019 12:13:26 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.7.tar.gz
# Sat, 11 May 2019 12:13:26 GMT
ENV HAPROXY_SHA256=5e59466728cc3ec0bcdd0271d8a8c5bd07d99a3a9cfa0989583da0ddde099632
# Sat, 11 May 2019 12:13:44 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 11 May 2019 12:13:44 GMT
STOPSIGNAL SIGUSR1
# Sat, 11 May 2019 12:13:45 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 11 May 2019 12:13:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 11 May 2019 12:13:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f117a0d7efd6c4426b1719a4eb123cbc28ad2100bf52960307b15f2164e3990`  
		Last Modified: Sat, 11 May 2019 12:15:23 GMT  
		Size: 6.6 MB (6569561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6541b75a09247857ddfa476d43aa29e2be20584d058b2310431022f3bb6534b6`  
		Last Modified: Sat, 11 May 2019 12:15:21 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:52575a319912a66b17740d8df2ff55856dbe7c0a272dc6ce2c557a4c49e22b47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9410131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6fe17d505844cf10bf9c00e165d48243fb35844d710b6fb6ccc9df5c06e051`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:41:43 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 16 May 2019 00:41:44 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 16 May 2019 00:41:44 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:46:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:46:09 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:46:09 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:46:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:46:10 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c589c39e69467449d03817b2725760877be17e0b54117c06c71c3f9e7bb826fd`  
		Last Modified: Fri, 24 May 2019 22:52:01 GMT  
		Size: 6.7 MB (6720972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1cea3e11f054990a291e1af3bc0465a9bb473ff5781c12e2f34e3f8e6160232`  
		Last Modified: Fri, 24 May 2019 22:51:59 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:8ef5cb7e53663d43e1adf0e1400c4990edffef0e40d2976834bf1927ca9ace79
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9351574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de4eea2a0e23c03f4837604a555aab38f3f408124ae1487724a70310fa544d95`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 01:39:55 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 16 May 2019 01:39:55 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 16 May 2019 01:39:55 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:50:18 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:50:18 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:50:18 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:50:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:50:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459c7a8600419307c070ae30e1081fb518498be7a4ae26fd6eaaf2b168e6eae3`  
		Last Modified: Fri, 24 May 2019 22:58:52 GMT  
		Size: 6.6 MB (6599103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e746fe14172f39e208a271af4db7118ea4fd4d355488dca5d2206ed2b4cb4326`  
		Last Modified: Fri, 24 May 2019 22:58:51 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:18697e2f8cb5e76ac27db2b14a321529b897ddc24ed3748c61200577fd702238
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9687527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c03e230e7748e392702081153b2b0a2cb4b72795bd94d8abc6d6d9c9cdcf02bd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 18:00:36 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 30 May 2019 18:00:39 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 30 May 2019 18:00:44 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Thu, 30 May 2019 18:01:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 30 May 2019 18:01:31 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:01:33 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Thu, 30 May 2019 18:01:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:01:36 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8bc03868135b2384401b8ade2864979c62098bbbea705a8f1b0fddf8b445215`  
		Last Modified: Thu, 30 May 2019 18:21:23 GMT  
		Size: 6.9 MB (6906128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb0bd87e740e21ac979a6409e81686e0cecd9a4b56eec81c3eb7b034e84998a4`  
		Last Modified: Thu, 30 May 2019 18:21:20 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:40cd0b02ad4e6a82b5d7673c3c72daa507cadd9e0553076578478ea8e64f60bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9195086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6750c54b7b3607dabe8fd5d137a8c9f9c7f2a3b2dd34e4eb5d38c33095dda98`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:52:32 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 16 May 2019 00:52:32 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 16 May 2019 00:52:33 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:44:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:44:28 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:44:28 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:44:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:44:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f04ec47fa7ae476dbd345033d3b773e47b97ffbcfa9f2d7bf8995b3588a782`  
		Last Modified: Fri, 24 May 2019 22:49:27 GMT  
		Size: 6.7 MB (6651374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51543109e36ea26b3f74e14a956fd75978c1a5e618e9fa04236dcfdbc54df537`  
		Last Modified: Fri, 24 May 2019 22:49:27 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:2.0-dev6`

```console
$ docker pull haproxy@sha256:8045e868797d79cad29d23c10658d0b16b3cc48a3a3ac004a56a1a9efa76f9b4
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

### `haproxy:2.0-dev6` - linux; amd64

```console
$ docker pull haproxy@sha256:91521e82a033cee154c3ee1082d4d62aaf455eb5eeae0ee2eb8c77b48f68bf04
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29650054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9e75d283927e60cc0fc8655059cbbdfc616be0e8a417445f12f9e39599c4636`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:19:55 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Tue, 11 Jun 2019 00:19:55 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Tue, 11 Jun 2019 00:19:56 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Tue, 11 Jun 2019 00:21:16 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:21:16 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:21:16 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:21:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:21:17 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edba9ea33ab7dc50ff6fcf750b24b4cb4af59e3d4d13f5510bf12e922fc5e149`  
		Last Modified: Tue, 11 Jun 2019 00:30:30 GMT  
		Size: 7.2 MB (7160372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01836204d2ac93dd8abfb34fb1dbe1c9bfcadd93ffdfaf157cb41dfa82e877`  
		Last Modified: Tue, 11 Jun 2019 00:30:28 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-dev6` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:a79420724b4a23299e9121d418f2c88f0551f789b243b604d654522a1f8ea8ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27924854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3347dd7fa5e4456af1041a823aa8b4848fc5472131ea9b9d12245dd4687ac0db`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 21:48:20 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Fri, 07 Jun 2019 21:48:21 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Fri, 07 Jun 2019 21:48:21 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Fri, 07 Jun 2019 21:49:07 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 07 Jun 2019 21:49:07 GMT
STOPSIGNAL SIGUSR1
# Fri, 07 Jun 2019 21:49:08 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 07 Jun 2019 21:49:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Jun 2019 21:49:08 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981524f9c926a97f0ee4f80fd58c1cd6718cf2e3433d4bd0603fa5d3416941ea`  
		Last Modified: Fri, 07 Jun 2019 21:49:43 GMT  
		Size: 6.8 MB (6768610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d65283c25338b9ffed10486ecf607475a069513a91feb187f7e241e50ee5c7e`  
		Last Modified: Fri, 07 Jun 2019 21:49:41 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-dev6` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:a0805a505309d7c56b1c113e93d3bb57cc5c02d533adec9f20cd0c9c01140688
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.0 MB (25954618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d99c18ce521c6f02d2a0f4f1c1c4b9a03a8d8d1d80463a639484282fa8c9f1c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 21:57:30 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Fri, 07 Jun 2019 21:57:30 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Fri, 07 Jun 2019 21:57:31 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Fri, 07 Jun 2019 21:58:12 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 07 Jun 2019 21:58:12 GMT
STOPSIGNAL SIGUSR1
# Fri, 07 Jun 2019 21:58:13 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 07 Jun 2019 21:58:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Jun 2019 21:58:14 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9f481586e09b3c38c7ae6793fd220c02e54e09a6002119c63f3dc2b7f717cd`  
		Last Modified: Fri, 07 Jun 2019 22:02:21 GMT  
		Size: 6.7 MB (6678022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a1573ab9ed1f17b5cf6ec0dd55782c2e62e5310a83b696dd2d8f5a95a8ce39`  
		Last Modified: Fri, 07 Jun 2019 22:02:20 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-dev6` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:6da4c0240c6db69707196a98ecbbb4903157479487dec1f5419f6fe9d64c156b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27130501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be8e47159a9c3159e78f79b0c7fc4ff39f82a68bf52f99c47b9cbb2d459482a1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:51:11 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Tue, 11 Jun 2019 00:51:12 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Tue, 11 Jun 2019 00:51:12 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Tue, 11 Jun 2019 00:51:52 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:51:53 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:51:53 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:51:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:51:55 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00edc23873ae9af91879868044e8c87e660f5222a4ceddf86425678135adbe65`  
		Last Modified: Tue, 11 Jun 2019 00:56:56 GMT  
		Size: 6.8 MB (6796331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817300257a3827da60ffce71ca5b11c83e1cefc826366cf0d7bfeddd2d3ad17a`  
		Last Modified: Tue, 11 Jun 2019 00:56:52 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-dev6` - linux; 386

```console
$ docker pull haproxy@sha256:af90560c64572ba2c8b4a4728e77b0970df4e87fc049fcde4db42daeb706202c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30134302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b36387efd84e0120538e5ca5c124c30bc4fe81c880577a18b556949dcaa5ab31`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 21:42:35 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Fri, 07 Jun 2019 21:42:35 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Fri, 07 Jun 2019 21:42:35 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Fri, 07 Jun 2019 21:43:48 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 07 Jun 2019 21:43:48 GMT
STOPSIGNAL SIGUSR1
# Fri, 07 Jun 2019 21:43:48 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 07 Jun 2019 21:43:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Jun 2019 21:43:48 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cd8115efb7855954add33694249af41514adf88c08d0db5e1103c554400ff2`  
		Last Modified: Fri, 07 Jun 2019 21:45:54 GMT  
		Size: 7.0 MB (7013079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd2e3ae10641d3670962e6b286004e251536fc32bf96d5cbfecb4adc845019c`  
		Last Modified: Fri, 07 Jun 2019 21:45:52 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-dev6` - linux; ppc64le

```console
$ docker pull haproxy@sha256:43637666ada28bfda9786839205894fc2230e26a427b1aee609bb2561b2056bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29528566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caf24615dd65ea515717f9548e53f64b96936fd5e88ecdd44eb146717a8fa15f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 21:16:41 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Fri, 07 Jun 2019 21:16:49 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Fri, 07 Jun 2019 21:16:54 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Fri, 07 Jun 2019 21:20:38 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 07 Jun 2019 21:20:41 GMT
STOPSIGNAL SIGUSR1
# Fri, 07 Jun 2019 21:20:43 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 07 Jun 2019 21:20:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Jun 2019 21:20:48 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82421209c1d3c4c23046fdcce2bdad24fbbbdcecff158b3e4e23c1e7ef074a82`  
		Last Modified: Fri, 07 Jun 2019 21:23:06 GMT  
		Size: 6.8 MB (6783271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95314976086a7c13c179ce2dd372a2d06b5327817ea3f50aa5f32c881dbe4a7`  
		Last Modified: Fri, 07 Jun 2019 21:23:04 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-dev6` - linux; s390x

```console
$ docker pull haproxy@sha256:7e32e98dbb7225dd98c899586ee77f6c97240b22feafc50503bdc0e70d9346d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29348411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fb4798943343447e69efb0e5c4e243d46d6e4f9b7addcbc1455b643298bfe63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:54 GMT
ADD file:e253b6e8cd43e8026b8cd0ba0bbe34460e255b131bdb2f50d5b8a2cfd5c9495b in / 
# Mon, 10 Jun 2019 23:43:55 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:06:23 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Tue, 11 Jun 2019 00:06:23 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Tue, 11 Jun 2019 00:06:23 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Tue, 11 Jun 2019 00:07:11 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:07:12 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:07:12 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:07:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:07:13 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:7ffdabbd82ddae873be4d1eeb64de2e4b43db4450b465d53b47f3b46eb55bd53`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 22.3 MB (22338852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a977aa3fb02e7cbc48a8276770ceb408ebf25f1d827eb8114108f7fa2ccc16f5`  
		Last Modified: Tue, 11 Jun 2019 00:12:55 GMT  
		Size: 7.0 MB (7009180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d57a14e2efc9065bc12f2db25408c1811a4e8b0ca2297cc79bc9e62c00c95ca`  
		Last Modified: Tue, 11 Jun 2019 00:12:53 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:2.0-dev6-alpine`

```console
$ docker pull haproxy@sha256:1c76d850c9bcf70b2567a73735a26aa8f80b2366ec9e16fd90e47a4ce1247e3f
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

### `haproxy:2.0-dev6-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:c06ac57c53cb3133147c102037f3af872dce4c53dd9088266591113a7d5b63eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.1 MB (10116388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de893e91a2b1fdc9ba32894fcd3e0bcc3f23c4854d2fb728f7a27bec04097d59`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Fri, 07 Jun 2019 21:21:06 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Fri, 07 Jun 2019 21:21:06 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Fri, 07 Jun 2019 21:21:06 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Fri, 07 Jun 2019 21:22:16 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 07 Jun 2019 21:22:16 GMT
STOPSIGNAL SIGUSR1
# Fri, 07 Jun 2019 21:22:16 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 07 Jun 2019 21:22:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Jun 2019 21:22:17 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b644165271e5136333301e7f8c33288c29c17219779d69b8c1c729814d4ef1b3`  
		Last Modified: Fri, 07 Jun 2019 21:23:00 GMT  
		Size: 7.4 MB (7358974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b902c77218c1cf473cedf63294e015c55ec0295321559400da820b8a359c41a`  
		Last Modified: Fri, 07 Jun 2019 21:22:58 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-dev6-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:b6a6b190c78ec376f3b1b119d9d61f71fe3b1027039d8ce58dab8c2d13df9d00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9653700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f9256c1940d8948c0c5cbb79ad3ac19b9b0d657125eababb91152bcf590be0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Fri, 07 Jun 2019 21:49:30 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Fri, 07 Jun 2019 21:49:30 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Fri, 07 Jun 2019 21:49:31 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Fri, 07 Jun 2019 21:49:56 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 07 Jun 2019 21:49:56 GMT
STOPSIGNAL SIGUSR1
# Fri, 07 Jun 2019 21:49:57 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 07 Jun 2019 21:49:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Jun 2019 21:49:58 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a71679669c7531dbf57054e9846058b1101454e6f69413d797b70168007dcf`  
		Last Modified: Fri, 07 Jun 2019 21:50:33 GMT  
		Size: 7.1 MB (7109893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e853b0593a29395182baed73326abeee8fe2ee19fe3e5ce07c030dd9dc363846`  
		Last Modified: Fri, 07 Jun 2019 21:50:31 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-dev6-alpine` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:39d589550ee5f81a9e04dabf5dcb086ee5577e584b1cc60a2be8d0646e8c53a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 MB (9485992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d99f333d8d1c15ed4b9e627e9f37a6ba95c9ebcaf6972c86934714f3e47e8d35`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Fri, 07 Jun 2019 21:58:22 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Fri, 07 Jun 2019 21:58:22 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Fri, 07 Jun 2019 21:58:23 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Fri, 07 Jun 2019 21:58:46 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 07 Jun 2019 21:58:47 GMT
STOPSIGNAL SIGUSR1
# Fri, 07 Jun 2019 21:58:47 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 07 Jun 2019 21:58:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Jun 2019 21:58:48 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba9c47061e0401697c1f5fae723cb22b9ec4a74c4ed8c2300aab171a24b399d`  
		Last Modified: Fri, 07 Jun 2019 22:02:29 GMT  
		Size: 7.1 MB (7134947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a547f4fb8e1b734d653779cc48997cd96451ab13ab6d5413f1a3e3890a01f82`  
		Last Modified: Fri, 07 Jun 2019 22:02:27 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-dev6-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:d4c6bda3c9fea256348eb85b64e4c0f8ba386c087dfd202e698872458ff9f80d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.0 MB (9974902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33bbe762aa0f7f53c2daa52e3d048b0c6ab396beafdf6e8b1c9e866c4c82d7a0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Fri, 07 Jun 2019 21:40:26 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Fri, 07 Jun 2019 21:40:27 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Fri, 07 Jun 2019 21:40:30 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Fri, 07 Jun 2019 21:40:53 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 07 Jun 2019 21:40:54 GMT
STOPSIGNAL SIGUSR1
# Fri, 07 Jun 2019 21:40:54 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 07 Jun 2019 21:40:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Jun 2019 21:40:55 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1166b105e3d612db90ac3ecf1175692a97775f6704a51350a6d616e4f069933`  
		Last Modified: Fri, 07 Jun 2019 21:41:57 GMT  
		Size: 7.3 MB (7285742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fb32b81b33179a77cb98701c76ea608698a2ba6276d19f5982eefb086249ea`  
		Last Modified: Fri, 07 Jun 2019 21:41:56 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-dev6-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:4655b240c26af602a5121b47848de23a5331e93ae0781e8d42719cf32a386ea8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.9 MB (9883657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ff7349f92a751d6b7937c87505d029f240555322891fd4e2e5a6afb77292e00`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Fri, 07 Jun 2019 21:44:02 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Fri, 07 Jun 2019 21:44:03 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Fri, 07 Jun 2019 21:44:03 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Fri, 07 Jun 2019 21:45:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 07 Jun 2019 21:45:08 GMT
STOPSIGNAL SIGUSR1
# Fri, 07 Jun 2019 21:45:08 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 07 Jun 2019 21:45:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Jun 2019 21:45:09 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f625212a9822b89f6363ff0b264f2c809ebfbb0f26fa632ffebcdf5cf86906`  
		Last Modified: Fri, 07 Jun 2019 21:45:59 GMT  
		Size: 7.1 MB (7131185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41110def61586aa054c02d7f7e23e4e2bc4977602a45064654e5a5f173350a4`  
		Last Modified: Fri, 07 Jun 2019 21:45:58 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-dev6-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:4a8f265e7611de8da8e02ced18f1c607ddf7c3d1558b1761604f6043c6ac1922
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10242119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c826a3dbe50e32295888b6f5be23642558a81108b6fe5e40771da7b1c06ac53`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Fri, 07 Jun 2019 21:21:05 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Fri, 07 Jun 2019 21:21:09 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Fri, 07 Jun 2019 21:21:12 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Fri, 07 Jun 2019 21:21:50 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 07 Jun 2019 21:21:53 GMT
STOPSIGNAL SIGUSR1
# Fri, 07 Jun 2019 21:21:56 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 07 Jun 2019 21:22:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Jun 2019 21:22:02 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32bfb31cbb903da89d72ba8c590d3e5f40f171da2d74152d73eb7c1940b9b216`  
		Last Modified: Fri, 07 Jun 2019 21:23:18 GMT  
		Size: 7.5 MB (7460720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7d0a4d2449d5bc9e494df388289cc3d77f758bd1ca9bb581058684fad3cfb3`  
		Last Modified: Fri, 07 Jun 2019 21:23:17 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-dev6-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:21dac68bd7f6d48f8921d1222fc641def2065795f44f6a447f3a7f10cf281274
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9740646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d4443b9680af23ebe063211da3c216528eeb08349f2f54b9de0c39d0a4b3d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Fri, 07 Jun 2019 21:43:58 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Fri, 07 Jun 2019 21:44:02 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Fri, 07 Jun 2019 21:44:05 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Fri, 07 Jun 2019 21:44:52 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 07 Jun 2019 21:44:52 GMT
STOPSIGNAL SIGUSR1
# Fri, 07 Jun 2019 21:44:52 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 07 Jun 2019 21:44:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Jun 2019 21:44:53 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726b47a83313024a3f1e17f38c57b6366badb2e5219f4173523729398e3a141f`  
		Last Modified: Fri, 07 Jun 2019 21:46:21 GMT  
		Size: 7.2 MB (7196934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb13ae6da51fcf52990649eb8c899c4cb830af9ed1ee5c98ee0b3d86f6f7701`  
		Last Modified: Fri, 07 Jun 2019 21:46:20 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:2.0-rc`

```console
$ docker pull haproxy@sha256:8045e868797d79cad29d23c10658d0b16b3cc48a3a3ac004a56a1a9efa76f9b4
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

### `haproxy:2.0-rc` - linux; amd64

```console
$ docker pull haproxy@sha256:91521e82a033cee154c3ee1082d4d62aaf455eb5eeae0ee2eb8c77b48f68bf04
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29650054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9e75d283927e60cc0fc8655059cbbdfc616be0e8a417445f12f9e39599c4636`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:19:55 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Tue, 11 Jun 2019 00:19:55 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Tue, 11 Jun 2019 00:19:56 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Tue, 11 Jun 2019 00:21:16 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:21:16 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:21:16 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:21:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:21:17 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edba9ea33ab7dc50ff6fcf750b24b4cb4af59e3d4d13f5510bf12e922fc5e149`  
		Last Modified: Tue, 11 Jun 2019 00:30:30 GMT  
		Size: 7.2 MB (7160372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01836204d2ac93dd8abfb34fb1dbe1c9bfcadd93ffdfaf157cb41dfa82e877`  
		Last Modified: Tue, 11 Jun 2019 00:30:28 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-rc` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:a79420724b4a23299e9121d418f2c88f0551f789b243b604d654522a1f8ea8ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27924854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3347dd7fa5e4456af1041a823aa8b4848fc5472131ea9b9d12245dd4687ac0db`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 21:48:20 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Fri, 07 Jun 2019 21:48:21 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Fri, 07 Jun 2019 21:48:21 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Fri, 07 Jun 2019 21:49:07 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 07 Jun 2019 21:49:07 GMT
STOPSIGNAL SIGUSR1
# Fri, 07 Jun 2019 21:49:08 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 07 Jun 2019 21:49:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Jun 2019 21:49:08 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981524f9c926a97f0ee4f80fd58c1cd6718cf2e3433d4bd0603fa5d3416941ea`  
		Last Modified: Fri, 07 Jun 2019 21:49:43 GMT  
		Size: 6.8 MB (6768610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d65283c25338b9ffed10486ecf607475a069513a91feb187f7e241e50ee5c7e`  
		Last Modified: Fri, 07 Jun 2019 21:49:41 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-rc` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:a0805a505309d7c56b1c113e93d3bb57cc5c02d533adec9f20cd0c9c01140688
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.0 MB (25954618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d99c18ce521c6f02d2a0f4f1c1c4b9a03a8d8d1d80463a639484282fa8c9f1c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 21:57:30 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Fri, 07 Jun 2019 21:57:30 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Fri, 07 Jun 2019 21:57:31 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Fri, 07 Jun 2019 21:58:12 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 07 Jun 2019 21:58:12 GMT
STOPSIGNAL SIGUSR1
# Fri, 07 Jun 2019 21:58:13 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 07 Jun 2019 21:58:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Jun 2019 21:58:14 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9f481586e09b3c38c7ae6793fd220c02e54e09a6002119c63f3dc2b7f717cd`  
		Last Modified: Fri, 07 Jun 2019 22:02:21 GMT  
		Size: 6.7 MB (6678022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a1573ab9ed1f17b5cf6ec0dd55782c2e62e5310a83b696dd2d8f5a95a8ce39`  
		Last Modified: Fri, 07 Jun 2019 22:02:20 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-rc` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:6da4c0240c6db69707196a98ecbbb4903157479487dec1f5419f6fe9d64c156b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27130501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be8e47159a9c3159e78f79b0c7fc4ff39f82a68bf52f99c47b9cbb2d459482a1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:51:11 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Tue, 11 Jun 2019 00:51:12 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Tue, 11 Jun 2019 00:51:12 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Tue, 11 Jun 2019 00:51:52 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:51:53 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:51:53 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:51:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:51:55 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00edc23873ae9af91879868044e8c87e660f5222a4ceddf86425678135adbe65`  
		Last Modified: Tue, 11 Jun 2019 00:56:56 GMT  
		Size: 6.8 MB (6796331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817300257a3827da60ffce71ca5b11c83e1cefc826366cf0d7bfeddd2d3ad17a`  
		Last Modified: Tue, 11 Jun 2019 00:56:52 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-rc` - linux; 386

```console
$ docker pull haproxy@sha256:af90560c64572ba2c8b4a4728e77b0970df4e87fc049fcde4db42daeb706202c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30134302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b36387efd84e0120538e5ca5c124c30bc4fe81c880577a18b556949dcaa5ab31`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 21:42:35 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Fri, 07 Jun 2019 21:42:35 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Fri, 07 Jun 2019 21:42:35 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Fri, 07 Jun 2019 21:43:48 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 07 Jun 2019 21:43:48 GMT
STOPSIGNAL SIGUSR1
# Fri, 07 Jun 2019 21:43:48 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 07 Jun 2019 21:43:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Jun 2019 21:43:48 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cd8115efb7855954add33694249af41514adf88c08d0db5e1103c554400ff2`  
		Last Modified: Fri, 07 Jun 2019 21:45:54 GMT  
		Size: 7.0 MB (7013079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd2e3ae10641d3670962e6b286004e251536fc32bf96d5cbfecb4adc845019c`  
		Last Modified: Fri, 07 Jun 2019 21:45:52 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-rc` - linux; ppc64le

```console
$ docker pull haproxy@sha256:43637666ada28bfda9786839205894fc2230e26a427b1aee609bb2561b2056bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29528566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caf24615dd65ea515717f9548e53f64b96936fd5e88ecdd44eb146717a8fa15f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 21:16:41 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Fri, 07 Jun 2019 21:16:49 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Fri, 07 Jun 2019 21:16:54 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Fri, 07 Jun 2019 21:20:38 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 07 Jun 2019 21:20:41 GMT
STOPSIGNAL SIGUSR1
# Fri, 07 Jun 2019 21:20:43 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 07 Jun 2019 21:20:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Jun 2019 21:20:48 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82421209c1d3c4c23046fdcce2bdad24fbbbdcecff158b3e4e23c1e7ef074a82`  
		Last Modified: Fri, 07 Jun 2019 21:23:06 GMT  
		Size: 6.8 MB (6783271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95314976086a7c13c179ce2dd372a2d06b5327817ea3f50aa5f32c881dbe4a7`  
		Last Modified: Fri, 07 Jun 2019 21:23:04 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-rc` - linux; s390x

```console
$ docker pull haproxy@sha256:7e32e98dbb7225dd98c899586ee77f6c97240b22feafc50503bdc0e70d9346d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29348411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fb4798943343447e69efb0e5c4e243d46d6e4f9b7addcbc1455b643298bfe63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:54 GMT
ADD file:e253b6e8cd43e8026b8cd0ba0bbe34460e255b131bdb2f50d5b8a2cfd5c9495b in / 
# Mon, 10 Jun 2019 23:43:55 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:06:23 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Tue, 11 Jun 2019 00:06:23 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Tue, 11 Jun 2019 00:06:23 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Tue, 11 Jun 2019 00:07:11 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:07:12 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:07:12 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:07:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:07:13 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:7ffdabbd82ddae873be4d1eeb64de2e4b43db4450b465d53b47f3b46eb55bd53`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 22.3 MB (22338852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a977aa3fb02e7cbc48a8276770ceb408ebf25f1d827eb8114108f7fa2ccc16f5`  
		Last Modified: Tue, 11 Jun 2019 00:12:55 GMT  
		Size: 7.0 MB (7009180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d57a14e2efc9065bc12f2db25408c1811a4e8b0ca2297cc79bc9e62c00c95ca`  
		Last Modified: Tue, 11 Jun 2019 00:12:53 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:2.0-rc-alpine`

```console
$ docker pull haproxy@sha256:1c76d850c9bcf70b2567a73735a26aa8f80b2366ec9e16fd90e47a4ce1247e3f
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

### `haproxy:2.0-rc-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:c06ac57c53cb3133147c102037f3af872dce4c53dd9088266591113a7d5b63eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.1 MB (10116388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de893e91a2b1fdc9ba32894fcd3e0bcc3f23c4854d2fb728f7a27bec04097d59`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Fri, 07 Jun 2019 21:21:06 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Fri, 07 Jun 2019 21:21:06 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Fri, 07 Jun 2019 21:21:06 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Fri, 07 Jun 2019 21:22:16 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 07 Jun 2019 21:22:16 GMT
STOPSIGNAL SIGUSR1
# Fri, 07 Jun 2019 21:22:16 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 07 Jun 2019 21:22:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Jun 2019 21:22:17 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b644165271e5136333301e7f8c33288c29c17219779d69b8c1c729814d4ef1b3`  
		Last Modified: Fri, 07 Jun 2019 21:23:00 GMT  
		Size: 7.4 MB (7358974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b902c77218c1cf473cedf63294e015c55ec0295321559400da820b8a359c41a`  
		Last Modified: Fri, 07 Jun 2019 21:22:58 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-rc-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:b6a6b190c78ec376f3b1b119d9d61f71fe3b1027039d8ce58dab8c2d13df9d00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9653700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f9256c1940d8948c0c5cbb79ad3ac19b9b0d657125eababb91152bcf590be0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Fri, 07 Jun 2019 21:49:30 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Fri, 07 Jun 2019 21:49:30 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Fri, 07 Jun 2019 21:49:31 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Fri, 07 Jun 2019 21:49:56 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 07 Jun 2019 21:49:56 GMT
STOPSIGNAL SIGUSR1
# Fri, 07 Jun 2019 21:49:57 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 07 Jun 2019 21:49:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Jun 2019 21:49:58 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a71679669c7531dbf57054e9846058b1101454e6f69413d797b70168007dcf`  
		Last Modified: Fri, 07 Jun 2019 21:50:33 GMT  
		Size: 7.1 MB (7109893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e853b0593a29395182baed73326abeee8fe2ee19fe3e5ce07c030dd9dc363846`  
		Last Modified: Fri, 07 Jun 2019 21:50:31 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-rc-alpine` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:39d589550ee5f81a9e04dabf5dcb086ee5577e584b1cc60a2be8d0646e8c53a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 MB (9485992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d99f333d8d1c15ed4b9e627e9f37a6ba95c9ebcaf6972c86934714f3e47e8d35`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Fri, 07 Jun 2019 21:58:22 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Fri, 07 Jun 2019 21:58:22 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Fri, 07 Jun 2019 21:58:23 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Fri, 07 Jun 2019 21:58:46 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 07 Jun 2019 21:58:47 GMT
STOPSIGNAL SIGUSR1
# Fri, 07 Jun 2019 21:58:47 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 07 Jun 2019 21:58:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Jun 2019 21:58:48 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba9c47061e0401697c1f5fae723cb22b9ec4a74c4ed8c2300aab171a24b399d`  
		Last Modified: Fri, 07 Jun 2019 22:02:29 GMT  
		Size: 7.1 MB (7134947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a547f4fb8e1b734d653779cc48997cd96451ab13ab6d5413f1a3e3890a01f82`  
		Last Modified: Fri, 07 Jun 2019 22:02:27 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-rc-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:d4c6bda3c9fea256348eb85b64e4c0f8ba386c087dfd202e698872458ff9f80d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.0 MB (9974902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33bbe762aa0f7f53c2daa52e3d048b0c6ab396beafdf6e8b1c9e866c4c82d7a0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Fri, 07 Jun 2019 21:40:26 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Fri, 07 Jun 2019 21:40:27 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Fri, 07 Jun 2019 21:40:30 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Fri, 07 Jun 2019 21:40:53 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 07 Jun 2019 21:40:54 GMT
STOPSIGNAL SIGUSR1
# Fri, 07 Jun 2019 21:40:54 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 07 Jun 2019 21:40:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Jun 2019 21:40:55 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1166b105e3d612db90ac3ecf1175692a97775f6704a51350a6d616e4f069933`  
		Last Modified: Fri, 07 Jun 2019 21:41:57 GMT  
		Size: 7.3 MB (7285742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fb32b81b33179a77cb98701c76ea608698a2ba6276d19f5982eefb086249ea`  
		Last Modified: Fri, 07 Jun 2019 21:41:56 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-rc-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:4655b240c26af602a5121b47848de23a5331e93ae0781e8d42719cf32a386ea8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.9 MB (9883657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ff7349f92a751d6b7937c87505d029f240555322891fd4e2e5a6afb77292e00`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Fri, 07 Jun 2019 21:44:02 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Fri, 07 Jun 2019 21:44:03 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Fri, 07 Jun 2019 21:44:03 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Fri, 07 Jun 2019 21:45:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 07 Jun 2019 21:45:08 GMT
STOPSIGNAL SIGUSR1
# Fri, 07 Jun 2019 21:45:08 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 07 Jun 2019 21:45:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Jun 2019 21:45:09 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f625212a9822b89f6363ff0b264f2c809ebfbb0f26fa632ffebcdf5cf86906`  
		Last Modified: Fri, 07 Jun 2019 21:45:59 GMT  
		Size: 7.1 MB (7131185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41110def61586aa054c02d7f7e23e4e2bc4977602a45064654e5a5f173350a4`  
		Last Modified: Fri, 07 Jun 2019 21:45:58 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-rc-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:4a8f265e7611de8da8e02ced18f1c607ddf7c3d1558b1761604f6043c6ac1922
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10242119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c826a3dbe50e32295888b6f5be23642558a81108b6fe5e40771da7b1c06ac53`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Fri, 07 Jun 2019 21:21:05 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Fri, 07 Jun 2019 21:21:09 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Fri, 07 Jun 2019 21:21:12 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Fri, 07 Jun 2019 21:21:50 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 07 Jun 2019 21:21:53 GMT
STOPSIGNAL SIGUSR1
# Fri, 07 Jun 2019 21:21:56 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 07 Jun 2019 21:22:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Jun 2019 21:22:02 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32bfb31cbb903da89d72ba8c590d3e5f40f171da2d74152d73eb7c1940b9b216`  
		Last Modified: Fri, 07 Jun 2019 21:23:18 GMT  
		Size: 7.5 MB (7460720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7d0a4d2449d5bc9e494df388289cc3d77f758bd1ca9bb581058684fad3cfb3`  
		Last Modified: Fri, 07 Jun 2019 21:23:17 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:2.0-rc-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:21dac68bd7f6d48f8921d1222fc641def2065795f44f6a447f3a7f10cf281274
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9740646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d4443b9680af23ebe063211da3c216528eeb08349f2f54b9de0c39d0a4b3d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Fri, 07 Jun 2019 21:43:58 GMT
ENV HAPROXY_VERSION=2.0-dev6
# Fri, 07 Jun 2019 21:44:02 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/2.0/src/devel/haproxy-2.0-dev6.tar.gz
# Fri, 07 Jun 2019 21:44:05 GMT
ENV HAPROXY_SHA256=aeffa7408481921bf85a014c420c047e8aab97a9ad5d75a157deebd9a3eae840
# Fri, 07 Jun 2019 21:44:52 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 07 Jun 2019 21:44:52 GMT
STOPSIGNAL SIGUSR1
# Fri, 07 Jun 2019 21:44:52 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 07 Jun 2019 21:44:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Jun 2019 21:44:53 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726b47a83313024a3f1e17f38c57b6366badb2e5219f4173523729398e3a141f`  
		Last Modified: Fri, 07 Jun 2019 21:46:21 GMT  
		Size: 7.2 MB (7196934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb13ae6da51fcf52990649eb8c899c4cb830af9ed1ee5c98ee0b3d86f6f7701`  
		Last Modified: Fri, 07 Jun 2019 21:46:20 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:alpine`

```console
$ docker pull haproxy@sha256:5b60cd5d657433ebb8794790ce64dbf37fc497b60a618a479da50e8349b7774d
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

### `haproxy:alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:971a3c6931abc4cf879746196a1203d383b06d1e704bd8b8428f71fe4b7ec895
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 MB (9573959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:508a49880be53126c32c263396210617c5b106e4b710cf18a30f9aa841f880c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:44:36 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 16 May 2019 00:44:36 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 16 May 2019 00:44:36 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:24:55 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:24:55 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:24:56 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:24:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:24:56 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46d24dd7aaf909d50191038627368c0876e8bf25e663766f35561a52813f079`  
		Last Modified: Fri, 24 May 2019 22:30:51 GMT  
		Size: 6.8 MB (6816545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194ddf8813551afc88b4d2b6ccef19134a20003aaf97f865d75b14bbead4560d`  
		Last Modified: Fri, 24 May 2019 22:30:44 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:90018f90abfc391d6f05be92ffaaaac51eedc3351fcb5ecee5b86afb80ee8da3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9110196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:484affbf3ad917744bdf274eacb52b1e9f1fdc85b21b89e2d85e51d40b0b0fa0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Wed, 15 May 2019 23:49:25 GMT
ENV HAPROXY_VERSION=1.9.8
# Wed, 15 May 2019 23:49:26 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Wed, 15 May 2019 23:49:26 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:50:15 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:50:15 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:50:16 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:50:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:50:17 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648ba16ade9bb4e2310cc44bfe79742bcfc81370b62af4124c0cea2bebec470f`  
		Last Modified: Fri, 24 May 2019 22:52:20 GMT  
		Size: 6.6 MB (6566389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529ffee4d0622af507fe477be1bf792bd5228e87c8cf08602018f03e5fefc5ee`  
		Last Modified: Fri, 24 May 2019 22:52:18 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:6e68c2d2775994e4313ad1353c8e22d5605160c31ebdddd093911a6f278c0700
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8920608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28e8936bdee81b94fe26f57a79407c4b8f0abda85106fb3d8a882d978b698268`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:13:25 GMT
ENV HAPROXY_VERSION=1.9.7
# Sat, 11 May 2019 12:13:26 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.7.tar.gz
# Sat, 11 May 2019 12:13:26 GMT
ENV HAPROXY_SHA256=5e59466728cc3ec0bcdd0271d8a8c5bd07d99a3a9cfa0989583da0ddde099632
# Sat, 11 May 2019 12:13:44 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 11 May 2019 12:13:44 GMT
STOPSIGNAL SIGUSR1
# Sat, 11 May 2019 12:13:45 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 11 May 2019 12:13:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 11 May 2019 12:13:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f117a0d7efd6c4426b1719a4eb123cbc28ad2100bf52960307b15f2164e3990`  
		Last Modified: Sat, 11 May 2019 12:15:23 GMT  
		Size: 6.6 MB (6569561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6541b75a09247857ddfa476d43aa29e2be20584d058b2310431022f3bb6534b6`  
		Last Modified: Sat, 11 May 2019 12:15:21 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:52575a319912a66b17740d8df2ff55856dbe7c0a272dc6ce2c557a4c49e22b47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9410131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6fe17d505844cf10bf9c00e165d48243fb35844d710b6fb6ccc9df5c06e051`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:41:43 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 16 May 2019 00:41:44 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 16 May 2019 00:41:44 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:46:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:46:09 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:46:09 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:46:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:46:10 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c589c39e69467449d03817b2725760877be17e0b54117c06c71c3f9e7bb826fd`  
		Last Modified: Fri, 24 May 2019 22:52:01 GMT  
		Size: 6.7 MB (6720972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1cea3e11f054990a291e1af3bc0465a9bb473ff5781c12e2f34e3f8e6160232`  
		Last Modified: Fri, 24 May 2019 22:51:59 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; 386

```console
$ docker pull haproxy@sha256:8ef5cb7e53663d43e1adf0e1400c4990edffef0e40d2976834bf1927ca9ace79
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9351574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de4eea2a0e23c03f4837604a555aab38f3f408124ae1487724a70310fa544d95`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 01:39:55 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 16 May 2019 01:39:55 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 16 May 2019 01:39:55 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:50:18 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:50:18 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:50:18 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:50:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:50:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459c7a8600419307c070ae30e1081fb518498be7a4ae26fd6eaaf2b168e6eae3`  
		Last Modified: Fri, 24 May 2019 22:58:52 GMT  
		Size: 6.6 MB (6599103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e746fe14172f39e208a271af4db7118ea4fd4d355488dca5d2206ed2b4cb4326`  
		Last Modified: Fri, 24 May 2019 22:58:51 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:18697e2f8cb5e76ac27db2b14a321529b897ddc24ed3748c61200577fd702238
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9687527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c03e230e7748e392702081153b2b0a2cb4b72795bd94d8abc6d6d9c9cdcf02bd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 18:00:36 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 30 May 2019 18:00:39 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 30 May 2019 18:00:44 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Thu, 30 May 2019 18:01:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 30 May 2019 18:01:31 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:01:33 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Thu, 30 May 2019 18:01:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:01:36 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8bc03868135b2384401b8ade2864979c62098bbbea705a8f1b0fddf8b445215`  
		Last Modified: Thu, 30 May 2019 18:21:23 GMT  
		Size: 6.9 MB (6906128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb0bd87e740e21ac979a6409e81686e0cecd9a4b56eec81c3eb7b034e84998a4`  
		Last Modified: Thu, 30 May 2019 18:21:20 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:40cd0b02ad4e6a82b5d7673c3c72daa507cadd9e0553076578478ea8e64f60bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9195086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6750c54b7b3607dabe8fd5d137a8c9f9c7f2a3b2dd34e4eb5d38c33095dda98`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:52:32 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 16 May 2019 00:52:32 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 16 May 2019 00:52:33 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:44:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 24 May 2019 22:44:28 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:44:28 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:44:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:44:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f04ec47fa7ae476dbd345033d3b773e47b97ffbcfa9f2d7bf8995b3588a782`  
		Last Modified: Fri, 24 May 2019 22:49:27 GMT  
		Size: 6.7 MB (6651374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51543109e36ea26b3f74e14a956fd75978c1a5e618e9fa04236dcfdbc54df537`  
		Last Modified: Fri, 24 May 2019 22:49:27 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:latest`

```console
$ docker pull haproxy@sha256:1f40ca332590c6647516a11711b74933ee8a889a9fbb47127a4b8c7e3c4cf651
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
$ docker pull haproxy@sha256:63f8c142298c5768c06b7b7405a75a18b5785c59967f4b75cdde46bf244f5542
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29131354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c63dfa229dbe96c0b3832dfce273f3733069949d017eb3cf4ccfbe1cd2efdcad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:21:26 GMT
ENV HAPROXY_VERSION=1.9.8
# Tue, 11 Jun 2019 00:21:27 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Tue, 11 Jun 2019 00:21:27 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Tue, 11 Jun 2019 00:23:31 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:23:32 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:23:32 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:23:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:23:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03bf45fcc87a5130f533d242518760ecc198ea4653c5aba4fc023801cb11fb2`  
		Last Modified: Tue, 11 Jun 2019 00:30:42 GMT  
		Size: 6.6 MB (6641672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9197512f12db4d086eac7ba17f4bb082dd5e2fb79ec567d424e53d8a51bf6619`  
		Last Modified: Tue, 11 Jun 2019 00:30:38 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:5841bdd58524f40a4f01dae96cb81f3febb71ad717e158501597d5ab5e5a8479
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27418587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65381bf0d91a4aa23dab87f3913c83e8ebc24de1cd949cae95fd2194a86db3a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 15 May 2019 23:48:27 GMT
ENV HAPROXY_VERSION=1.9.8
# Wed, 15 May 2019 23:48:28 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Wed, 15 May 2019 23:48:28 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:50:12 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:50:13 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:50:13 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:50:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:50:15 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bffc056707e011397b8d5c78f20c2771be114c1158a277132cd8936ba15172d`  
		Last Modified: Fri, 24 May 2019 22:54:13 GMT  
		Size: 6.3 MB (6262344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b06e538d41f4618a712a6cecd2d24f5cb7e2ed241e0ee7a4d476c8de8f776b`  
		Last Modified: Fri, 24 May 2019 22:52:11 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:6496026df28c95f85255a9638a1526ac90b97d9b6e961f1c43161eb05ac5ee68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25451994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3dfc856cd1118f4fd1d697c39a63bf9a1d314a37eac176901a5dc3452e5b94b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:07:28 GMT
ENV HAPROXY_VERSION=1.9.7
# Wed, 08 May 2019 13:07:28 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.7.tar.gz
# Wed, 08 May 2019 13:07:29 GMT
ENV HAPROXY_SHA256=5e59466728cc3ec0bcdd0271d8a8c5bd07d99a3a9cfa0989583da0ddde099632
# Wed, 08 May 2019 13:08:11 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 13:08:12 GMT
STOPSIGNAL SIGUSR1
# Wed, 08 May 2019 13:08:13 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 08 May 2019 13:08:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 13:08:14 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ad789fafc308c82ea6874c1b9029326845c744c8dee79e2508c5cf331f6d63`  
		Last Modified: Wed, 08 May 2019 13:11:58 GMT  
		Size: 6.2 MB (6175397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61dc2afcbc8c6a28a3738d5f195df588b96f47c58ee8c7fafb245a4673ede2ec`  
		Last Modified: Wed, 08 May 2019 13:11:56 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:983ed763d70e5aede75db79805fdc50cd1f372e7fc5e83915c07ec045ffd1133
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26624033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b8027ee9ddf687d132b8fea5f9e01a19d1ee2186c5f66b525bbfe69c04b4f2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:52:08 GMT
ENV HAPROXY_VERSION=1.9.8
# Tue, 11 Jun 2019 00:52:08 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Tue, 11 Jun 2019 00:52:09 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Tue, 11 Jun 2019 00:52:46 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:52:47 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:52:47 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:52:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:52:48 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e97f95b45cad1e1172b98644d3bb06d95a21a4585c5c94bc80a26b3dcb0a8fe`  
		Last Modified: Tue, 11 Jun 2019 00:57:08 GMT  
		Size: 6.3 MB (6289862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e11476194539001ec7370e03db5779a59cddb510203ebf75d5916687a84b3ed`  
		Last Modified: Tue, 11 Jun 2019 00:57:06 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; 386

```console
$ docker pull haproxy@sha256:1be321c365e3ab74aae1e63d6f444c8ea2043080366cbef1de8be4cf2a686817
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.6 MB (29633016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cea5d4d5bb215b11485dd10f934cbe5c5452d4098865c237b73c4ca76dbe95ea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Thu, 16 May 2019 01:38:11 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 16 May 2019 01:38:12 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 16 May 2019 01:38:12 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Fri, 24 May 2019 22:48:42 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 24 May 2019 22:48:42 GMT
STOPSIGNAL SIGUSR1
# Fri, 24 May 2019 22:48:42 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 24 May 2019 22:48:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 May 2019 22:48:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df336c664dc9d236456024fde0feaedaa0db7abd40d9c44ad59e30ba50dfedee`  
		Last Modified: Fri, 24 May 2019 22:58:46 GMT  
		Size: 6.5 MB (6511793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbbda2095f418c27f64c41515280c5d0d76ec828f892e9f55dc2e42e70114e15`  
		Last Modified: Fri, 24 May 2019 22:58:46 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; ppc64le

```console
$ docker pull haproxy@sha256:23a3816076c6bcd5ca554df34f2be3d94bbedfc338930634a646cf3c934f000b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29026923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07e019bb03b4f30235870f786645e8d05b883095d578a10d655adabfb2a682da`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Thu, 30 May 2019 17:56:07 GMT
ENV HAPROXY_VERSION=1.9.8
# Thu, 30 May 2019 17:56:09 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Thu, 30 May 2019 17:56:12 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Thu, 30 May 2019 18:00:05 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 30 May 2019 18:00:10 GMT
STOPSIGNAL SIGUSR1
# Thu, 30 May 2019 18:00:15 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Thu, 30 May 2019 18:00:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 May 2019 18:00:22 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047da7677fc1c1bb4bab9a7e00c19c6c308718d09e89c7c9fd70adc600d5caf3`  
		Last Modified: Thu, 30 May 2019 18:21:01 GMT  
		Size: 6.3 MB (6281629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c35c511fbdb3b22a3fbe621f8dec8bdaa45accbd77fe052c1df72fcce4a164c`  
		Last Modified: Thu, 30 May 2019 18:20:57 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; s390x

```console
$ docker pull haproxy@sha256:82eff554be9e8cf7bfc3c84e01a93cc8a3148bbedceceaf3646cd40fb7c22e23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.8 MB (28838330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:260c21251833bf69a6e822c53730b2e23aca603545cd2319710488a3659605ab`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:54 GMT
ADD file:e253b6e8cd43e8026b8cd0ba0bbe34460e255b131bdb2f50d5b8a2cfd5c9495b in / 
# Mon, 10 Jun 2019 23:43:55 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:07:32 GMT
ENV HAPROXY_VERSION=1.9.8
# Tue, 11 Jun 2019 00:07:32 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.8.tar.gz
# Tue, 11 Jun 2019 00:07:33 GMT
ENV HAPROXY_SHA256=2d9a3300dbd871bc35b743a83caaf50fecfbf06290610231ca2d334fd04c2aee
# Tue, 11 Jun 2019 00:08:18 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_GETADDRINFO=1 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 00:08:18 GMT
STOPSIGNAL SIGUSR1
# Tue, 11 Jun 2019 00:08:19 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 11 Jun 2019 00:08:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:08:19 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:7ffdabbd82ddae873be4d1eeb64de2e4b43db4450b465d53b47f3b46eb55bd53`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 22.3 MB (22338852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ed8ce291fc45577a3cb3de5c1bf30896c3a3f94e00074a17bb057fbf4892f3`  
		Last Modified: Tue, 11 Jun 2019 00:13:01 GMT  
		Size: 6.5 MB (6499098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390f08fd73af606358e9d2e624465a3e243c145246c37b7f9ca8a5f3b897322b`  
		Last Modified: Tue, 11 Jun 2019 00:13:00 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
