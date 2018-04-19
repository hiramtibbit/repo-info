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
-	[`haproxy:1.7.10`](#haproxy1710)
-	[`haproxy:1.7.10-alpine`](#haproxy1710-alpine)
-	[`haproxy:1.7-alpine`](#haproxy17-alpine)
-	[`haproxy:1.8`](#haproxy18)
-	[`haproxy:1.8.8`](#haproxy188)
-	[`haproxy:1.8.8-alpine`](#haproxy188-alpine)
-	[`haproxy:1.8-alpine`](#haproxy18-alpine)
-	[`haproxy:1-alpine`](#haproxy1-alpine)
-	[`haproxy:alpine`](#haproxyalpine)
-	[`haproxy:latest`](#haproxylatest)

## `haproxy:1`

```console
$ docker pull haproxy@sha256:1e8698b596a864c6cd77dd5a902b6f2bc11972425db0a5e02791312859f1e88b
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
$ docker pull haproxy@sha256:360a9ba56b8d9953a1101c525bb85e53d43fa58930efb305d6d2e62abcd565f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.9 MB (29906136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07d3f0c0a87e992591d0879c98c2115ae28d7a5f67cefb5b17a10d079e669238`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 04:30:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 04:30:06 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 11 Apr 2018 17:47:48 GMT
ENV HAPROXY_VERSION=1.8.7
# Wed, 11 Apr 2018 17:47:48 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Wed, 11 Apr 2018 17:48:29 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Apr 2018 17:48:30 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 11 Apr 2018 17:48:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Apr 2018 17:48:30 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10509741f554be5ba8d20c7d22b2697b120297215f8f366fd55310633f6103f6`  
		Last Modified: Wed, 14 Mar 2018 04:33:03 GMT  
		Size: 2.1 MB (2102272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c720f57289b4202cee7028a0f003b5ec9972159f400a9b205eb820895e7fe202`  
		Last Modified: Wed, 11 Apr 2018 18:02:33 GMT  
		Size: 5.3 MB (5314505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c648f65fffba5929ba238977e4652d1914e4996e90976f6b5edfc71e1edf502`  
		Last Modified: Wed, 11 Apr 2018 18:02:32 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:17401486778462e8be8a7b167c4dd4c9b7315be76ddc60c95f78d8753875e8ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (27971948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef508ef56ff5f0a90287424db64db519ee20f99356ca3470001d104eedd67269`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:39 GMT
ADD file:c472062baa8d8c35c7642162b18516ecdc2e143d0e5c147b472312cfc532efe9 in / 
# Wed, 14 Mar 2018 20:01:40 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:39:52 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:39:52 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 08:50:03 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 08:50:03 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 08:50:48 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 08:50:49 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 08:50:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:50:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8efba53ec4136476603e9856d8bb17541faa0f33abada48ac4d2d7efe61ff43f`  
		Last Modified: Wed, 14 Mar 2018 20:13:21 GMT  
		Size: 21.2 MB (21164955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2d00ffeb3fb72f3c6af23135d6b073f597c098d187573334840879e637aa91`  
		Last Modified: Wed, 14 Mar 2018 20:42:02 GMT  
		Size: 1.8 MB (1815998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f145467617ab2e025a9e53df48bb7bdfd67ff66fe08e3ec9b7f9896d1e67f976`  
		Last Modified: Thu, 12 Apr 2018 08:51:08 GMT  
		Size: 5.0 MB (4990615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf024f958b4401fd5a89a1cd53ad0980ce21c7c73939de506dd5fb8793828919`  
		Last Modified: Thu, 12 Apr 2018 08:51:06 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:872cac1a269685c5ee667d78bf724253c2429f11ce429f58ceb9e658465aac2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25895549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:652b1f5e82613f3f7c74100b9b6394ac31e22a5c5a8b2ce377fdab9f30c07096`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:12:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:12:42 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 11:57:42 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 11:57:42 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 11:58:11 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 11:58:11 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 11:58:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 11:58:12 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96606b0f6d499753094a4c20eb1a0acb0dfc4c89b5fd5a0d69ab586d31ca6a66`  
		Last Modified: Wed, 14 Mar 2018 13:15:06 GMT  
		Size: 1.7 MB (1736085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39dd5444826edcd33e38e120fd9957b79acaacd79b5d24c2aa8a3aa51f4beeb`  
		Last Modified: Thu, 12 Apr 2018 11:58:30 GMT  
		Size: 4.9 MB (4881473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a37c20df811efe830d9b5e2ae69e7b4557949f6fd72b03eb2a2f5a4bf700188`  
		Last Modified: Thu, 12 Apr 2018 11:58:28 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:bef9d4ca333928b039896c959d100d046f894ef9e3b6ce9440f359387a54ddb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27106403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2851e5306fc4d27dae62fdc6fd97398637fe0283e87f66e0ab757aaf7207d1bd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:38:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:38:45 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 08:53:09 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 08:53:10 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 08:55:21 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 08:55:22 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 08:55:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:55:25 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9af08040303732667a8238ca0b78c3d697239646e233ad777b50fdfb525fbb`  
		Last Modified: Wed, 14 Mar 2018 18:44:06 GMT  
		Size: 1.8 MB (1818804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce63a1fcb025d549a52793631082ae6bfddce8ce7cd74e7f4accad40e22fbd6b`  
		Last Modified: Thu, 12 Apr 2018 08:57:47 GMT  
		Size: 5.0 MB (4950016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f9711915e58e5347501cb7a8cd50b185a7a24172611dc0bb7ed0fb34af9154`  
		Last Modified: Thu, 12 Apr 2018 08:57:44 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; 386

```console
$ docker pull haproxy@sha256:a9bc7925e2e9e5bed7bd1417c332b429611df9e4385fac70f440e4cce4404538
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29039034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeabbfab23fb135a5a825e3f38cd427994851d03a1e7eb568fdedc89f2df1abd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 20:21:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 20:21:37 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 13 Apr 2018 20:21:38 GMT
ENV HAPROXY_VERSION=1.8.7
# Fri, 13 Apr 2018 20:21:38 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Fri, 13 Apr 2018 20:22:27 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Apr 2018 20:22:27 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 13 Apr 2018 20:22:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Apr 2018 20:22:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f8b9836e250477426792f889ab65514d09dc59b9faf734aea5d26f6e4961a`  
		Last Modified: Fri, 13 Apr 2018 20:24:13 GMT  
		Size: 2.1 MB (2128621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67832dadac613168d9179c41adf148c7d7dce813477548f62aa72df90d5d2bdb`  
		Last Modified: Fri, 13 Apr 2018 20:24:13 GMT  
		Size: 3.8 MB (3781252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9354cdbddb7b07881333c5d5e483da3201f6ba04a0b20088e7cbea3533f155`  
		Last Modified: Fri, 13 Apr 2018 20:24:14 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; ppc64le

```console
$ docker pull haproxy@sha256:c041352bb9663f62f4cb5d3b9c35e521adf385d5943ef61ebb76f407c1ad5543
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29496042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff11645b58d96caafe012d3553b5890e5458ba5f523b9872ada16e7cd24a194`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:52:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:53:01 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 08:24:50 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 08:24:51 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 08:26:41 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 08:26:42 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 08:26:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:26:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265290b6ce5d5fe3c9ae283e89440a59af9afc2403dc4a1f2bc49c4c77f437d7`  
		Last Modified: Thu, 15 Mar 2018 03:58:47 GMT  
		Size: 1.8 MB (1781195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b692339bdedad7474f7859f40a1d401b5b0a2d8453daa0f3d2220f82e91fd0`  
		Last Modified: Thu, 12 Apr 2018 08:29:13 GMT  
		Size: 5.0 MB (4968325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3f3979a284645e7a0a6fa6839630194b1f8d519a2325818f00995d25d686cf`  
		Last Modified: Thu, 12 Apr 2018 08:29:12 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; s390x

```console
$ docker pull haproxy@sha256:f67d0abd71eb08024389e4568f9a1fbfe54cac0204aa7b9cf4a6b65e655c73db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29311634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:763e4079957fc0a071504123f3aa4f154c117c7f882dff7c82b0738aaf6e4916`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:06:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:06:52 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 11:56:10 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 11:56:11 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 11:56:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 11:56:39 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 11:56:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 11:56:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee25063e6e60f2ec3ab43fe975d1c233d716c537e927c70f817a6b78f5c4f824`  
		Last Modified: Wed, 14 Mar 2018 06:08:26 GMT  
		Size: 1.8 MB (1841056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d63f871bac177818139e8143d60739713d33e415fc2a7e8d7bbdb94502f11c4`  
		Last Modified: Thu, 12 Apr 2018 11:57:29 GMT  
		Size: 5.1 MB (5129719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04324401243a81a67e35bec429959f4359d9dc07c9ea2b301e051d266235b2ea`  
		Last Modified: Thu, 12 Apr 2018 11:57:27 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5`

```console
$ docker pull haproxy@sha256:df4ac36378b8659d7b54645e0d68ede569aea2c7c5d726cb68fdc667a4109b4e
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
$ docker pull haproxy@sha256:8c2980dfb43d69bf4d8859bce62995f8f6f8ac6b17bdd966ea5fa3d44b551414
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.9 MB (58909387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:561d3c6aa9df2c32dbdc1284464c22688449e0111cdb92d3365267677ceee544`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 04:25:43 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 04:25:43 GMT
ENV HAPROXY_MAJOR=1.5
# Wed, 14 Mar 2018 04:25:44 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 14 Mar 2018 04:25:44 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Wed, 14 Mar 2018 04:26:40 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 04:26:40 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 04:26:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 04:26:41 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737ca65b4c7da8e45aa59066170de026a4c79409eb6507588f65c43ff28e7b36`  
		Last Modified: Wed, 14 Mar 2018 04:31:11 GMT  
		Size: 1.8 MB (1799755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40d81c848bcc590329d083b0bb74b2362ebf32c1d0b3d33668448c5fc90ed67`  
		Last Modified: Wed, 14 Mar 2018 04:31:11 GMT  
		Size: 4.5 MB (4500711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56366f94559b496c5f8df35b68b6199d9bc0b5432e35a1aad7365f1ace73da11`  
		Last Modified: Wed, 14 Mar 2018 04:31:10 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:cba7d8c29c1a4036e8e0057442e5c27b15d568528f9282c03103591e8ba6e4c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.9 MB (56941099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:508698671ea27e232cb7be24bdd293f328bd9d2d6002a4cef44b7568d4519f13`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:34:21 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:34:21 GMT
ENV HAPROXY_MAJOR=1.5
# Wed, 14 Mar 2018 20:34:21 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 14 Mar 2018 20:34:22 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Wed, 14 Mar 2018 20:36:03 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 20:36:03 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 20:36:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 20:36:04 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4136c94720250ceb2e790e7a43ef2355d105068c8458f4975897f824e7a6c48d`  
		Last Modified: Wed, 14 Mar 2018 20:40:58 GMT  
		Size: 1.6 MB (1594804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6a8aba661b342fc27a29fca2ccc1b34de621ec643f8f213a95e91d579768f8`  
		Last Modified: Wed, 14 Mar 2018 20:40:58 GMT  
		Size: 4.5 MB (4455882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c72290193afb747fb276d86f36a877563ab3159e1fbbbdf61535405b1abe5b`  
		Last Modified: Wed, 14 Mar 2018 20:40:57 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:9ae075723f889d63aa0bd6f17f3ec251cf294527550ea2d40ce0d3baf420bc1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54565889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef711c9d3cc82f6901273fe9cfb7230f057d199d78996be9a7b0f13c19bd90d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:06:56 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:06:59 GMT
ENV HAPROXY_MAJOR=1.5
# Wed, 14 Mar 2018 13:06:59 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 14 Mar 2018 13:07:00 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Wed, 14 Mar 2018 13:08:41 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 13:08:41 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 13:08:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 13:08:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6381f81e92de308efb130dc4af26e299e6bac9560e97f94b3f1d52877ddf0d7a`  
		Last Modified: Wed, 14 Mar 2018 13:13:36 GMT  
		Size: 1.5 MB (1535396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ec806d953d9e10a31b6fdd6da6f5711959bcfe22323b04d901fc524b493b6e`  
		Last Modified: Wed, 14 Mar 2018 13:13:36 GMT  
		Size: 4.3 MB (4328018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb0a02eafecdac62865fcf887d5f2c7b5477fbf57820d893f6df5d104d663e9`  
		Last Modified: Wed, 14 Mar 2018 13:13:35 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:d92102a1c68c0585cc099b787a0ba6ea58a2e01cedc9a5cc9f649510fcf04ab8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.0 MB (55962088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63a310741f11e8a0210808c2387735cccf2bd4d197517f65e1efea66dd2cd6c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:25:31 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:25:32 GMT
ENV HAPROXY_MAJOR=1.5
# Wed, 14 Mar 2018 18:25:33 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 14 Mar 2018 18:25:34 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Wed, 14 Mar 2018 18:28:41 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 18:28:42 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 18:28:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 18:28:44 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ef19f843dd03fba9a8115b07ef4dbf228e99a9cdcb893ff7800a0f16a91c91`  
		Last Modified: Wed, 14 Mar 2018 18:42:08 GMT  
		Size: 1.6 MB (1606506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c066fac7551bb36c3d0467b1dd061ddc3bea0210961d65458c32738c67548cb`  
		Last Modified: Wed, 14 Mar 2018 18:42:10 GMT  
		Size: 4.4 MB (4421716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9507f3743a7dae53334945cda5b83934ed6c22ca7d1d328fb6c9d072c9d9f30a`  
		Last Modified: Wed, 14 Mar 2018 18:42:09 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; 386

```console
$ docker pull haproxy@sha256:86847d825c396d3e9a4a19b62cb6ee8fb4bc22f2a9d477b604a675de09d41b8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61140510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b78cadb664af964cfa2257c3429808d76ca149550f9de7c932f7a46f415ffa6c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 20:16:48 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 20:16:48 GMT
ENV HAPROXY_MAJOR=1.5
# Fri, 13 Apr 2018 20:16:48 GMT
ENV HAPROXY_VERSION=1.5.19
# Fri, 13 Apr 2018 20:16:48 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Fri, 13 Apr 2018 20:18:01 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Apr 2018 20:18:02 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 13 Apr 2018 20:18:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Apr 2018 20:18:02 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989db342f9d9adb62bbe3ed452e742e4e23d84cd575d3698beaf3f1e51b6f39d`  
		Last Modified: Fri, 13 Apr 2018 20:23:42 GMT  
		Size: 3.8 MB (3849850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab47f75fe2065eb519bbfaa5c0f32b9e33592d3cb4cc1a2e3383dc1084f6b4d0`  
		Last Modified: Fri, 13 Apr 2018 20:23:43 GMT  
		Size: 4.5 MB (4502635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde35e97eb89db1384a8e5ec094bde08e93117bffc3e548d8007dfc58c639f67`  
		Last Modified: Fri, 13 Apr 2018 20:23:41 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; ppc64le

```console
$ docker pull haproxy@sha256:7e99d4a6b41317620da8c62bdef31cf6fa13fbde113061a03ec406e282857325
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.1 MB (58085826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:941203889e7bd783590171a73ac71b6abecb2aa3a8cd4debfb84aac2fbd4e550`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:31:58 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:31:59 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 15 Mar 2018 03:32:01 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 15 Mar 2018 03:32:02 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Thu, 15 Mar 2018 03:37:17 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 03:37:27 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Mar 2018 03:37:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 03:37:31 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81167febff878046ac214cd603444a91f39276b8e424c9e7179af97a7d1eae66`  
		Last Modified: Thu, 15 Mar 2018 03:57:55 GMT  
		Size: 1.7 MB (1699270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfca95da59d330fb7ff2db7d7e28407c2b61f09bdae1cee0f6aa28f4c002e3eb`  
		Last Modified: Thu, 15 Mar 2018 03:57:55 GMT  
		Size: 4.6 MB (4568988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89f993205d071104b88882a6b034eb119c239379e1318e16c65d7cd2ee55c60`  
		Last Modified: Thu, 15 Mar 2018 03:57:54 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; s390x

```console
$ docker pull haproxy@sha256:51ee75d0f561da309389e164d2b1aea5b7a94dbd18cfb7b25554867ecd30761b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59256319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18a35c12f290d06ba891ee702178a34dd06488502bf2ddcedb9c151e3e7a2c4d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:03:52 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:03:52 GMT
ENV HAPROXY_MAJOR=1.5
# Wed, 14 Mar 2018 06:03:52 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 14 Mar 2018 06:03:53 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Wed, 14 Mar 2018 06:04:43 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 06:04:43 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 06:04:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:04:44 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b134605ab0b1997d3111658354ac0eb720dacc4a8d3f1e84eb23e13f9a89f0ce`  
		Last Modified: Wed, 14 Mar 2018 06:07:53 GMT  
		Size: 1.8 MB (1779957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd168782e853d89acd5500940e99ccc129504bc37a05c740fca2414714648f4e`  
		Last Modified: Wed, 14 Mar 2018 06:07:52 GMT  
		Size: 4.7 MB (4680488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1650d66f6a0227e9640a592f603a92a264f61a0db07daedffe2b813f2e46a52d`  
		Last Modified: Wed, 14 Mar 2018 06:07:51 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5.19`

```console
$ docker pull haproxy@sha256:df4ac36378b8659d7b54645e0d68ede569aea2c7c5d726cb68fdc667a4109b4e
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
$ docker pull haproxy@sha256:8c2980dfb43d69bf4d8859bce62995f8f6f8ac6b17bdd966ea5fa3d44b551414
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.9 MB (58909387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:561d3c6aa9df2c32dbdc1284464c22688449e0111cdb92d3365267677ceee544`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 04:25:43 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 04:25:43 GMT
ENV HAPROXY_MAJOR=1.5
# Wed, 14 Mar 2018 04:25:44 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 14 Mar 2018 04:25:44 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Wed, 14 Mar 2018 04:26:40 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 04:26:40 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 04:26:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 04:26:41 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737ca65b4c7da8e45aa59066170de026a4c79409eb6507588f65c43ff28e7b36`  
		Last Modified: Wed, 14 Mar 2018 04:31:11 GMT  
		Size: 1.8 MB (1799755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40d81c848bcc590329d083b0bb74b2362ebf32c1d0b3d33668448c5fc90ed67`  
		Last Modified: Wed, 14 Mar 2018 04:31:11 GMT  
		Size: 4.5 MB (4500711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56366f94559b496c5f8df35b68b6199d9bc0b5432e35a1aad7365f1ace73da11`  
		Last Modified: Wed, 14 Mar 2018 04:31:10 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:cba7d8c29c1a4036e8e0057442e5c27b15d568528f9282c03103591e8ba6e4c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.9 MB (56941099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:508698671ea27e232cb7be24bdd293f328bd9d2d6002a4cef44b7568d4519f13`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:34:21 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:34:21 GMT
ENV HAPROXY_MAJOR=1.5
# Wed, 14 Mar 2018 20:34:21 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 14 Mar 2018 20:34:22 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Wed, 14 Mar 2018 20:36:03 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 20:36:03 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 20:36:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 20:36:04 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4136c94720250ceb2e790e7a43ef2355d105068c8458f4975897f824e7a6c48d`  
		Last Modified: Wed, 14 Mar 2018 20:40:58 GMT  
		Size: 1.6 MB (1594804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6a8aba661b342fc27a29fca2ccc1b34de621ec643f8f213a95e91d579768f8`  
		Last Modified: Wed, 14 Mar 2018 20:40:58 GMT  
		Size: 4.5 MB (4455882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c72290193afb747fb276d86f36a877563ab3159e1fbbbdf61535405b1abe5b`  
		Last Modified: Wed, 14 Mar 2018 20:40:57 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:9ae075723f889d63aa0bd6f17f3ec251cf294527550ea2d40ce0d3baf420bc1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54565889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef711c9d3cc82f6901273fe9cfb7230f057d199d78996be9a7b0f13c19bd90d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:06:56 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:06:59 GMT
ENV HAPROXY_MAJOR=1.5
# Wed, 14 Mar 2018 13:06:59 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 14 Mar 2018 13:07:00 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Wed, 14 Mar 2018 13:08:41 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 13:08:41 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 13:08:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 13:08:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6381f81e92de308efb130dc4af26e299e6bac9560e97f94b3f1d52877ddf0d7a`  
		Last Modified: Wed, 14 Mar 2018 13:13:36 GMT  
		Size: 1.5 MB (1535396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ec806d953d9e10a31b6fdd6da6f5711959bcfe22323b04d901fc524b493b6e`  
		Last Modified: Wed, 14 Mar 2018 13:13:36 GMT  
		Size: 4.3 MB (4328018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb0a02eafecdac62865fcf887d5f2c7b5477fbf57820d893f6df5d104d663e9`  
		Last Modified: Wed, 14 Mar 2018 13:13:35 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:d92102a1c68c0585cc099b787a0ba6ea58a2e01cedc9a5cc9f649510fcf04ab8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.0 MB (55962088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63a310741f11e8a0210808c2387735cccf2bd4d197517f65e1efea66dd2cd6c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:25:31 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:25:32 GMT
ENV HAPROXY_MAJOR=1.5
# Wed, 14 Mar 2018 18:25:33 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 14 Mar 2018 18:25:34 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Wed, 14 Mar 2018 18:28:41 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 18:28:42 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 18:28:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 18:28:44 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ef19f843dd03fba9a8115b07ef4dbf228e99a9cdcb893ff7800a0f16a91c91`  
		Last Modified: Wed, 14 Mar 2018 18:42:08 GMT  
		Size: 1.6 MB (1606506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c066fac7551bb36c3d0467b1dd061ddc3bea0210961d65458c32738c67548cb`  
		Last Modified: Wed, 14 Mar 2018 18:42:10 GMT  
		Size: 4.4 MB (4421716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9507f3743a7dae53334945cda5b83934ed6c22ca7d1d328fb6c9d072c9d9f30a`  
		Last Modified: Wed, 14 Mar 2018 18:42:09 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; 386

```console
$ docker pull haproxy@sha256:86847d825c396d3e9a4a19b62cb6ee8fb4bc22f2a9d477b604a675de09d41b8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61140510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b78cadb664af964cfa2257c3429808d76ca149550f9de7c932f7a46f415ffa6c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 20:16:48 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 20:16:48 GMT
ENV HAPROXY_MAJOR=1.5
# Fri, 13 Apr 2018 20:16:48 GMT
ENV HAPROXY_VERSION=1.5.19
# Fri, 13 Apr 2018 20:16:48 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Fri, 13 Apr 2018 20:18:01 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Apr 2018 20:18:02 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 13 Apr 2018 20:18:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Apr 2018 20:18:02 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989db342f9d9adb62bbe3ed452e742e4e23d84cd575d3698beaf3f1e51b6f39d`  
		Last Modified: Fri, 13 Apr 2018 20:23:42 GMT  
		Size: 3.8 MB (3849850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab47f75fe2065eb519bbfaa5c0f32b9e33592d3cb4cc1a2e3383dc1084f6b4d0`  
		Last Modified: Fri, 13 Apr 2018 20:23:43 GMT  
		Size: 4.5 MB (4502635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde35e97eb89db1384a8e5ec094bde08e93117bffc3e548d8007dfc58c639f67`  
		Last Modified: Fri, 13 Apr 2018 20:23:41 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; ppc64le

```console
$ docker pull haproxy@sha256:7e99d4a6b41317620da8c62bdef31cf6fa13fbde113061a03ec406e282857325
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.1 MB (58085826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:941203889e7bd783590171a73ac71b6abecb2aa3a8cd4debfb84aac2fbd4e550`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:31:58 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:31:59 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 15 Mar 2018 03:32:01 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 15 Mar 2018 03:32:02 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Thu, 15 Mar 2018 03:37:17 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 03:37:27 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Mar 2018 03:37:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 03:37:31 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81167febff878046ac214cd603444a91f39276b8e424c9e7179af97a7d1eae66`  
		Last Modified: Thu, 15 Mar 2018 03:57:55 GMT  
		Size: 1.7 MB (1699270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfca95da59d330fb7ff2db7d7e28407c2b61f09bdae1cee0f6aa28f4c002e3eb`  
		Last Modified: Thu, 15 Mar 2018 03:57:55 GMT  
		Size: 4.6 MB (4568988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89f993205d071104b88882a6b034eb119c239379e1318e16c65d7cd2ee55c60`  
		Last Modified: Thu, 15 Mar 2018 03:57:54 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; s390x

```console
$ docker pull haproxy@sha256:51ee75d0f561da309389e164d2b1aea5b7a94dbd18cfb7b25554867ecd30761b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59256319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18a35c12f290d06ba891ee702178a34dd06488502bf2ddcedb9c151e3e7a2c4d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:03:52 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:03:52 GMT
ENV HAPROXY_MAJOR=1.5
# Wed, 14 Mar 2018 06:03:52 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 14 Mar 2018 06:03:53 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Wed, 14 Mar 2018 06:04:43 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 06:04:43 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 06:04:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:04:44 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b134605ab0b1997d3111658354ac0eb720dacc4a8d3f1e84eb23e13f9a89f0ce`  
		Last Modified: Wed, 14 Mar 2018 06:07:53 GMT  
		Size: 1.8 MB (1779957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd168782e853d89acd5500940e99ccc129504bc37a05c740fca2414714648f4e`  
		Last Modified: Wed, 14 Mar 2018 06:07:52 GMT  
		Size: 4.7 MB (4680488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1650d66f6a0227e9640a592f603a92a264f61a0db07daedffe2b813f2e46a52d`  
		Last Modified: Wed, 14 Mar 2018 06:07:51 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5.19-alpine`

```console
$ docker pull haproxy@sha256:24c12d9226c75d3d745c2b3d7568c37070be3ea60342bd8c728932fe6f38523c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.5.19-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:9d20d4e5951f35e732ef20d573014b051744b41bd8f81f183651dba00dd6ec6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5577263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b1a9ecb9921707b941a3609e3ad5dfd0920521d3f50a063ffae7c831d8c4ab`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:03:17 GMT
ENV HAPROXY_MAJOR=1.5
# Tue, 09 Jan 2018 22:03:17 GMT
ENV HAPROXY_VERSION=1.5.19
# Tue, 09 Jan 2018 22:03:17 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Wed, 24 Jan 2018 00:11:36 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 24 Jan 2018 00:14:06 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 24 Jan 2018 00:14:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 00:14:06 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438e26e4f5b1420e2bf013de8bbdd634b61efcd10093195e4dd565731800398a`  
		Last Modified: Wed, 24 Jan 2018 00:45:09 GMT  
		Size: 3.6 MB (3606720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59acee1cbe7aac265eb1d7198ec8464bf25ca1f2408b3fd7b0db4df183b91904`  
		Last Modified: Wed, 24 Jan 2018 00:45:08 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5-alpine`

```console
$ docker pull haproxy@sha256:24c12d9226c75d3d745c2b3d7568c37070be3ea60342bd8c728932fe6f38523c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.5-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:9d20d4e5951f35e732ef20d573014b051744b41bd8f81f183651dba00dd6ec6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5577263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b1a9ecb9921707b941a3609e3ad5dfd0920521d3f50a063ffae7c831d8c4ab`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:03:17 GMT
ENV HAPROXY_MAJOR=1.5
# Tue, 09 Jan 2018 22:03:17 GMT
ENV HAPROXY_VERSION=1.5.19
# Tue, 09 Jan 2018 22:03:17 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Wed, 24 Jan 2018 00:11:36 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 24 Jan 2018 00:14:06 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 24 Jan 2018 00:14:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 00:14:06 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438e26e4f5b1420e2bf013de8bbdd634b61efcd10093195e4dd565731800398a`  
		Last Modified: Wed, 24 Jan 2018 00:45:09 GMT  
		Size: 3.6 MB (3606720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59acee1cbe7aac265eb1d7198ec8464bf25ca1f2408b3fd7b0db4df183b91904`  
		Last Modified: Wed, 24 Jan 2018 00:45:08 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6`

```console
$ docker pull haproxy@sha256:d03b39d69d65d9e9e19cb695c355d217819faf8b729807a0381fdda12aad22bf
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
$ docker pull haproxy@sha256:aa97e622af3eec751a6dc102df5b677e80d7a93627e8e13a732ec5b10a58dea4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 MB (57549464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31ca8a8368b31a2260626aca39021deb4a28ade045e00d27c3539d25346f3589`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 21:57:40 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 04:27:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 04:27:27 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 14 Mar 2018 04:27:27 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 14 Mar 2018 04:27:28 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Wed, 14 Mar 2018 04:28:18 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 04:28:18 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 04:28:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 04:28:19 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b58fe2a5c9f1c2efb33bd7bf3983887f36d666824be7da83233248b00c02ba10`  
		Last Modified: Tue, 13 Mar 2018 22:44:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c06fcb15f609828ffe9c18aafb5d67a156437a512ddebe3f3731494c38a1d5b`  
		Last Modified: Wed, 14 Mar 2018 04:31:48 GMT  
		Size: 2.0 MB (2022770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da30756921236ea60ac6eff65a91cc78f9548071efe0d0723addc9154cef5ba0`  
		Last Modified: Wed, 14 Mar 2018 04:31:48 GMT  
		Size: 2.9 MB (2917550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00ad7bc4018d42a8b8b417ee32a9399595f0f3bfc4f310f100ddc27e7d51284`  
		Last Modified: Wed, 14 Mar 2018 04:31:47 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:239ad4981844408ed37f29fc4bc8baefe0f92ac351809d0259081d893e3a18bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55709168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cdb78782da6d3eca4986555a2f4a3967fed78b128ed548ab0de25bac722c2eb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:55:52 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 20:36:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:36:50 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 14 Mar 2018 20:36:50 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 14 Mar 2018 20:36:50 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Wed, 14 Mar 2018 20:37:51 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 20:37:52 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 20:37:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 20:37:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a4cf63e34d53b93f2206aed038aacdb54166e333dc1cf4adc2c385c75baccf`  
		Last Modified: Wed, 14 Mar 2018 20:07:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67acd70a30560aaca7e8d6532e7c9d32fd50fe43259db3351e128c2eb72dbc15`  
		Last Modified: Wed, 14 Mar 2018 20:41:19 GMT  
		Size: 1.8 MB (1788431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a63ad88dfe391d29663306eafdfffc7472428d1598a09aaa989b37fdbbdbf88`  
		Last Modified: Wed, 14 Mar 2018 20:41:19 GMT  
		Size: 3.0 MB (3030101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2563f45076a14677971e7e1165c7afa3848aaacddc49d745c4003020daa184f`  
		Last Modified: Wed, 14 Mar 2018 20:41:18 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:56c6f393f54d6d992a704219b7086d0d0dac6ba34b880be185155c158c31df67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.4 MB (53396563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2635957a15a9ab444301dac213719ab63ac93adbc219859f205d941dfa42d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 12:27:02 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 13:09:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:09:29 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 14 Mar 2018 13:09:29 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 14 Mar 2018 13:09:30 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Wed, 14 Mar 2018 13:10:24 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 13:10:25 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 13:10:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 13:10:25 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450a754d4944c700009fa831088f50087066aacbb1a38f630274185252c1a059`  
		Last Modified: Wed, 14 Mar 2018 12:39:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed1fc6be4ae422a34d037f08eb09cb66cafe62c13e1b72fceed712c50cb02a5`  
		Last Modified: Wed, 14 Mar 2018 13:14:08 GMT  
		Size: 1.7 MB (1710778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6c6853538878541ef208bf584aa8b673ca88df94e3118893df44fcace6fa25`  
		Last Modified: Wed, 14 Mar 2018 13:14:09 GMT  
		Size: 3.0 MB (2983084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7746dd78942957f57da30f957d08561b6e3d6991dedb7867dae6438b3e0cba`  
		Last Modified: Wed, 14 Mar 2018 13:14:10 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:35f9dd1c78e6c2ef86c9f1abc27f95c02fd8349463e20a7c03f3c9bec58d2a3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54805319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d87e5299c948867bde5d619c07525cbeac9a81a2bd17e48032cfea1f51c1c7b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:24:47 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 18:29:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:29:52 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 14 Mar 2018 18:29:55 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 14 Mar 2018 18:29:58 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Wed, 14 Mar 2018 18:35:05 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 18:35:06 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 18:35:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 18:35:09 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3f585de56cd1b7204cbc75aada9dbdbd61416fc9bd49f74bf38b2809b5b6ce`  
		Last Modified: Wed, 14 Mar 2018 17:39:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe6e6f29a52b0614e9df3f2a45d81ed9e9f2eb1922bbb6d9e8bab14d51ae30d`  
		Last Modified: Wed, 14 Mar 2018 18:42:47 GMT  
		Size: 1.8 MB (1814046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6b0996a1d8c8073d76ba495fce39ece865ca477fc5c22b1071f29eaf97e608`  
		Last Modified: Wed, 14 Mar 2018 18:42:48 GMT  
		Size: 3.1 MB (3057182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59dc1202777adeec4b659ef49050609c9bde623119932d980b07d1dd777c02dd`  
		Last Modified: Wed, 14 Mar 2018 18:42:48 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; 386

```console
$ docker pull haproxy@sha256:785f3d6258ffc02725c7036779a6413ceb2cbc431d033a4886c9eac7570aa186
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59725426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fda8557d6f5b9bc516debccc99d631d46f23a40bc9391f39ee21f6b1919fb1f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Tue, 27 Mar 2018 14:16:25 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 13 Apr 2018 20:18:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 20:18:44 GMT
ENV HAPROXY_MAJOR=1.6
# Fri, 13 Apr 2018 20:18:44 GMT
ENV HAPROXY_VERSION=1.6.14
# Fri, 13 Apr 2018 20:18:44 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Fri, 13 Apr 2018 20:19:51 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Apr 2018 20:19:51 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 13 Apr 2018 20:19:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Apr 2018 20:19:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc02e0013321e0f4481d0dce20beaa20b0895e140f544ef52fdab895b921435a`  
		Last Modified: Tue, 27 Mar 2018 17:29:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e608d1c79ffd23a498f819cf7045cae270202bd9d87f13ab39e16c7879661fd`  
		Last Modified: Fri, 13 Apr 2018 20:23:53 GMT  
		Size: 4.1 MB (4106982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115c96c35235b143459cac2c9560ae0b7cf73c6e8107afa3cb8c40c930f8ac6e`  
		Last Modified: Fri, 13 Apr 2018 20:23:53 GMT  
		Size: 2.8 MB (2830195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe313eb3384f28b3ccf5b916780f57d05f9f09d690f06f8aaab735df9b2547`  
		Last Modified: Fri, 13 Apr 2018 20:23:52 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; ppc64le

```console
$ docker pull haproxy@sha256:36d9f264d1e75684e129073e1d9e5b691bf85eeceecce665cd2e715782bda9e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.9 MB (56857049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37c8e2300f7655dd355396353681478186dfbb748b4c01404fa2cf832d8dc50a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 00:32:30 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Mar 2018 03:39:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:39:14 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 15 Mar 2018 03:39:17 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 15 Mar 2018 03:39:19 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Thu, 15 Mar 2018 03:45:30 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 03:45:33 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Mar 2018 03:45:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 03:45:36 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dd20db7848a79adbe015b69b7593b6077d1bb200849365bd91e36783af9e76`  
		Last Modified: Wed, 14 Mar 2018 00:39:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eea278b1e65950fe921874b616f23bdfcb7381b87aa17996c8c6e58cc43dcac`  
		Last Modified: Thu, 15 Mar 2018 03:58:11 GMT  
		Size: 1.9 MB (1930093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc9d5c61717b7e169704f662019040fc4546c88e1fa8677ccd13d11a6301b12`  
		Last Modified: Thu, 15 Mar 2018 03:58:13 GMT  
		Size: 3.1 MB (3109163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91dd80faca75b72e510979b1d41632134cbda4c5625f55d786f7f208004e3ec2`  
		Last Modified: Thu, 15 Mar 2018 03:58:12 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; s390x

```console
$ docker pull haproxy@sha256:2e4b20e0c1dbe23d0eaac94c6f28522828941a30f611a2578d755806a84ce6b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.0 MB (57961148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e024945033e19e32a4ad60cd0c816ba367807e790b6af710f0c47ee8e6620d8e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:00 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 06:05:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:05:03 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 14 Mar 2018 06:05:03 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 14 Mar 2018 06:05:03 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Wed, 14 Mar 2018 06:05:43 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 06:05:44 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 06:05:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:05:44 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65daa0ca97d5522eba7f7937c275c7f242dcb27a201cb339bae195d73374c9cd`  
		Last Modified: Wed, 14 Mar 2018 05:26:30 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c5dbadd291de5a1176ef521630b40c78d1ec56ff5ef40ce85f09806f36237da`  
		Last Modified: Wed, 14 Mar 2018 06:08:04 GMT  
		Size: 2.0 MB (2008802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa57da42c176ad18daed2e20e9bec6cd0584dc02707d47b7e40b63010a5f5d6`  
		Last Modified: Wed, 14 Mar 2018 06:08:05 GMT  
		Size: 3.2 MB (3156249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e257a800432041b18d77930d5c2b91478335b80db7a348067699ccc9f1cd2c4`  
		Last Modified: Wed, 14 Mar 2018 06:08:04 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6.14`

```console
$ docker pull haproxy@sha256:d03b39d69d65d9e9e19cb695c355d217819faf8b729807a0381fdda12aad22bf
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
$ docker pull haproxy@sha256:aa97e622af3eec751a6dc102df5b677e80d7a93627e8e13a732ec5b10a58dea4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 MB (57549464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31ca8a8368b31a2260626aca39021deb4a28ade045e00d27c3539d25346f3589`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 21:57:40 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 04:27:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 04:27:27 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 14 Mar 2018 04:27:27 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 14 Mar 2018 04:27:28 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Wed, 14 Mar 2018 04:28:18 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 04:28:18 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 04:28:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 04:28:19 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b58fe2a5c9f1c2efb33bd7bf3983887f36d666824be7da83233248b00c02ba10`  
		Last Modified: Tue, 13 Mar 2018 22:44:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c06fcb15f609828ffe9c18aafb5d67a156437a512ddebe3f3731494c38a1d5b`  
		Last Modified: Wed, 14 Mar 2018 04:31:48 GMT  
		Size: 2.0 MB (2022770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da30756921236ea60ac6eff65a91cc78f9548071efe0d0723addc9154cef5ba0`  
		Last Modified: Wed, 14 Mar 2018 04:31:48 GMT  
		Size: 2.9 MB (2917550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00ad7bc4018d42a8b8b417ee32a9399595f0f3bfc4f310f100ddc27e7d51284`  
		Last Modified: Wed, 14 Mar 2018 04:31:47 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:239ad4981844408ed37f29fc4bc8baefe0f92ac351809d0259081d893e3a18bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55709168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cdb78782da6d3eca4986555a2f4a3967fed78b128ed548ab0de25bac722c2eb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:55:52 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 20:36:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:36:50 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 14 Mar 2018 20:36:50 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 14 Mar 2018 20:36:50 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Wed, 14 Mar 2018 20:37:51 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 20:37:52 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 20:37:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 20:37:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a4cf63e34d53b93f2206aed038aacdb54166e333dc1cf4adc2c385c75baccf`  
		Last Modified: Wed, 14 Mar 2018 20:07:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67acd70a30560aaca7e8d6532e7c9d32fd50fe43259db3351e128c2eb72dbc15`  
		Last Modified: Wed, 14 Mar 2018 20:41:19 GMT  
		Size: 1.8 MB (1788431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a63ad88dfe391d29663306eafdfffc7472428d1598a09aaa989b37fdbbdbf88`  
		Last Modified: Wed, 14 Mar 2018 20:41:19 GMT  
		Size: 3.0 MB (3030101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2563f45076a14677971e7e1165c7afa3848aaacddc49d745c4003020daa184f`  
		Last Modified: Wed, 14 Mar 2018 20:41:18 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:56c6f393f54d6d992a704219b7086d0d0dac6ba34b880be185155c158c31df67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.4 MB (53396563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2635957a15a9ab444301dac213719ab63ac93adbc219859f205d941dfa42d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 12:27:02 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 13:09:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:09:29 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 14 Mar 2018 13:09:29 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 14 Mar 2018 13:09:30 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Wed, 14 Mar 2018 13:10:24 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 13:10:25 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 13:10:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 13:10:25 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450a754d4944c700009fa831088f50087066aacbb1a38f630274185252c1a059`  
		Last Modified: Wed, 14 Mar 2018 12:39:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed1fc6be4ae422a34d037f08eb09cb66cafe62c13e1b72fceed712c50cb02a5`  
		Last Modified: Wed, 14 Mar 2018 13:14:08 GMT  
		Size: 1.7 MB (1710778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6c6853538878541ef208bf584aa8b673ca88df94e3118893df44fcace6fa25`  
		Last Modified: Wed, 14 Mar 2018 13:14:09 GMT  
		Size: 3.0 MB (2983084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7746dd78942957f57da30f957d08561b6e3d6991dedb7867dae6438b3e0cba`  
		Last Modified: Wed, 14 Mar 2018 13:14:10 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:35f9dd1c78e6c2ef86c9f1abc27f95c02fd8349463e20a7c03f3c9bec58d2a3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54805319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d87e5299c948867bde5d619c07525cbeac9a81a2bd17e48032cfea1f51c1c7b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:24:47 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 18:29:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:29:52 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 14 Mar 2018 18:29:55 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 14 Mar 2018 18:29:58 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Wed, 14 Mar 2018 18:35:05 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 18:35:06 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 18:35:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 18:35:09 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3f585de56cd1b7204cbc75aada9dbdbd61416fc9bd49f74bf38b2809b5b6ce`  
		Last Modified: Wed, 14 Mar 2018 17:39:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe6e6f29a52b0614e9df3f2a45d81ed9e9f2eb1922bbb6d9e8bab14d51ae30d`  
		Last Modified: Wed, 14 Mar 2018 18:42:47 GMT  
		Size: 1.8 MB (1814046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6b0996a1d8c8073d76ba495fce39ece865ca477fc5c22b1071f29eaf97e608`  
		Last Modified: Wed, 14 Mar 2018 18:42:48 GMT  
		Size: 3.1 MB (3057182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59dc1202777adeec4b659ef49050609c9bde623119932d980b07d1dd777c02dd`  
		Last Modified: Wed, 14 Mar 2018 18:42:48 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; 386

```console
$ docker pull haproxy@sha256:785f3d6258ffc02725c7036779a6413ceb2cbc431d033a4886c9eac7570aa186
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59725426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fda8557d6f5b9bc516debccc99d631d46f23a40bc9391f39ee21f6b1919fb1f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Tue, 27 Mar 2018 14:16:25 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 13 Apr 2018 20:18:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 20:18:44 GMT
ENV HAPROXY_MAJOR=1.6
# Fri, 13 Apr 2018 20:18:44 GMT
ENV HAPROXY_VERSION=1.6.14
# Fri, 13 Apr 2018 20:18:44 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Fri, 13 Apr 2018 20:19:51 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Apr 2018 20:19:51 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 13 Apr 2018 20:19:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Apr 2018 20:19:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc02e0013321e0f4481d0dce20beaa20b0895e140f544ef52fdab895b921435a`  
		Last Modified: Tue, 27 Mar 2018 17:29:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e608d1c79ffd23a498f819cf7045cae270202bd9d87f13ab39e16c7879661fd`  
		Last Modified: Fri, 13 Apr 2018 20:23:53 GMT  
		Size: 4.1 MB (4106982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115c96c35235b143459cac2c9560ae0b7cf73c6e8107afa3cb8c40c930f8ac6e`  
		Last Modified: Fri, 13 Apr 2018 20:23:53 GMT  
		Size: 2.8 MB (2830195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe313eb3384f28b3ccf5b916780f57d05f9f09d690f06f8aaab735df9b2547`  
		Last Modified: Fri, 13 Apr 2018 20:23:52 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; ppc64le

```console
$ docker pull haproxy@sha256:36d9f264d1e75684e129073e1d9e5b691bf85eeceecce665cd2e715782bda9e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.9 MB (56857049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37c8e2300f7655dd355396353681478186dfbb748b4c01404fa2cf832d8dc50a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 00:32:30 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Mar 2018 03:39:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:39:14 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 15 Mar 2018 03:39:17 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 15 Mar 2018 03:39:19 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Thu, 15 Mar 2018 03:45:30 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 03:45:33 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Mar 2018 03:45:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 03:45:36 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dd20db7848a79adbe015b69b7593b6077d1bb200849365bd91e36783af9e76`  
		Last Modified: Wed, 14 Mar 2018 00:39:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eea278b1e65950fe921874b616f23bdfcb7381b87aa17996c8c6e58cc43dcac`  
		Last Modified: Thu, 15 Mar 2018 03:58:11 GMT  
		Size: 1.9 MB (1930093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc9d5c61717b7e169704f662019040fc4546c88e1fa8677ccd13d11a6301b12`  
		Last Modified: Thu, 15 Mar 2018 03:58:13 GMT  
		Size: 3.1 MB (3109163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91dd80faca75b72e510979b1d41632134cbda4c5625f55d786f7f208004e3ec2`  
		Last Modified: Thu, 15 Mar 2018 03:58:12 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; s390x

```console
$ docker pull haproxy@sha256:2e4b20e0c1dbe23d0eaac94c6f28522828941a30f611a2578d755806a84ce6b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.0 MB (57961148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e024945033e19e32a4ad60cd0c816ba367807e790b6af710f0c47ee8e6620d8e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:00 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 06:05:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:05:03 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 14 Mar 2018 06:05:03 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 14 Mar 2018 06:05:03 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Wed, 14 Mar 2018 06:05:43 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 06:05:44 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 06:05:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:05:44 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65daa0ca97d5522eba7f7937c275c7f242dcb27a201cb339bae195d73374c9cd`  
		Last Modified: Wed, 14 Mar 2018 05:26:30 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c5dbadd291de5a1176ef521630b40c78d1ec56ff5ef40ce85f09806f36237da`  
		Last Modified: Wed, 14 Mar 2018 06:08:04 GMT  
		Size: 2.0 MB (2008802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa57da42c176ad18daed2e20e9bec6cd0584dc02707d47b7e40b63010a5f5d6`  
		Last Modified: Wed, 14 Mar 2018 06:08:05 GMT  
		Size: 3.2 MB (3156249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e257a800432041b18d77930d5c2b91478335b80db7a348067699ccc9f1cd2c4`  
		Last Modified: Wed, 14 Mar 2018 06:08:04 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6.14-alpine`

```console
$ docker pull haproxy@sha256:4bef6617ebc443d3d3d3687d25d486cca5ca453b7043deff7fafcf13145ca7b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.6.14-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:b474789703f3bfb34ce80707c012c5479426a6570bfb53bd4ebbbb1bea4e902b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6279270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72ba87d25349e021acdf0ea6cf217bb6ad4adf301fa2ffe850648362448e7eb5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:04:20 GMT
ENV HAPROXY_MAJOR=1.6
# Tue, 09 Jan 2018 22:04:20 GMT
ENV HAPROXY_VERSION=1.6.14
# Tue, 09 Jan 2018 22:04:21 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Tue, 09 Jan 2018 22:04:21 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Wed, 24 Jan 2018 00:17:45 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 24 Jan 2018 00:17:45 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 24 Jan 2018 00:17:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 00:17:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b664a6caf42f1ca34a318bdadb9c1dd91a6e5297ce26d2e9c74fb2dee04304`  
		Last Modified: Wed, 24 Jan 2018 01:29:18 GMT  
		Size: 4.3 MB (4308728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5143a3e1afd59f55da1daa4d2a509e8927e707f4318137e19d978deca6f7f8c3`  
		Last Modified: Wed, 24 Jan 2018 01:29:16 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6-alpine`

```console
$ docker pull haproxy@sha256:4bef6617ebc443d3d3d3687d25d486cca5ca453b7043deff7fafcf13145ca7b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.6-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:b474789703f3bfb34ce80707c012c5479426a6570bfb53bd4ebbbb1bea4e902b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6279270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72ba87d25349e021acdf0ea6cf217bb6ad4adf301fa2ffe850648362448e7eb5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:04:20 GMT
ENV HAPROXY_MAJOR=1.6
# Tue, 09 Jan 2018 22:04:20 GMT
ENV HAPROXY_VERSION=1.6.14
# Tue, 09 Jan 2018 22:04:21 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Tue, 09 Jan 2018 22:04:21 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Wed, 24 Jan 2018 00:17:45 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 24 Jan 2018 00:17:45 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 24 Jan 2018 00:17:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 00:17:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b664a6caf42f1ca34a318bdadb9c1dd91a6e5297ce26d2e9c74fb2dee04304`  
		Last Modified: Wed, 24 Jan 2018 01:29:18 GMT  
		Size: 4.3 MB (4308728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5143a3e1afd59f55da1daa4d2a509e8927e707f4318137e19d978deca6f7f8c3`  
		Last Modified: Wed, 24 Jan 2018 01:29:16 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7`

```console
$ docker pull haproxy@sha256:5ae431f7612b2f1f6d24d7adbebfa7d7358bfaecf0becc39216899030407b7f9
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
$ docker pull haproxy@sha256:fa936af62455aa3469e417a5ba2101e773edbced32544ac380db45f8e2f26af7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.0 MB (58045511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92990eff37922d5d1c29738a54ea60b27754f06fd4c1e091cc73159fd4083453`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 21:57:40 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 04:27:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 04:28:47 GMT
ENV HAPROXY_MAJOR=1.7
# Wed, 14 Mar 2018 04:28:47 GMT
ENV HAPROXY_VERSION=1.7.10
# Wed, 14 Mar 2018 04:28:47 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Wed, 14 Mar 2018 04:29:40 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 04:29:40 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 04:29:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 04:29:41 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b58fe2a5c9f1c2efb33bd7bf3983887f36d666824be7da83233248b00c02ba10`  
		Last Modified: Tue, 13 Mar 2018 22:44:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c06fcb15f609828ffe9c18aafb5d67a156437a512ddebe3f3731494c38a1d5b`  
		Last Modified: Wed, 14 Mar 2018 04:31:48 GMT  
		Size: 2.0 MB (2022770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:282040cf4f82d54fafc1400d92735ba2fc2b265ebe384dc956269a70f6efec51`  
		Last Modified: Wed, 14 Mar 2018 04:32:25 GMT  
		Size: 3.4 MB (3413598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7a99842c828983e4e52b17b84602cb41bdb812c51bbe699539995940e38fe5`  
		Last Modified: Wed, 14 Mar 2018 04:32:25 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:846355904a9ed8860eb4c76a002906efc0cc2cda83c2b976de30d7d73d5f82e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56204554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c873fe7594174e4fa02b24bd32d46228701c0c7422d4b31a5a6d6fd7ba706d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:55:52 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 20:36:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:38:14 GMT
ENV HAPROXY_MAJOR=1.7
# Wed, 14 Mar 2018 20:38:15 GMT
ENV HAPROXY_VERSION=1.7.10
# Wed, 14 Mar 2018 20:38:15 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Wed, 14 Mar 2018 20:39:18 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 20:39:18 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 20:39:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 20:39:19 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a4cf63e34d53b93f2206aed038aacdb54166e333dc1cf4adc2c385c75baccf`  
		Last Modified: Wed, 14 Mar 2018 20:07:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67acd70a30560aaca7e8d6532e7c9d32fd50fe43259db3351e128c2eb72dbc15`  
		Last Modified: Wed, 14 Mar 2018 20:41:19 GMT  
		Size: 1.8 MB (1788431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f49f5945f2dfc6326dc647ac2cf69313d766cc582f8c987ad63337e092e5b4`  
		Last Modified: Wed, 14 Mar 2018 20:41:40 GMT  
		Size: 3.5 MB (3525486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335878e1527bd9084303dd052614dc0632e8a2a1b77c903eeed3c394f240c6a6`  
		Last Modified: Wed, 14 Mar 2018 20:41:39 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:8077a3a6fa295cc6bc287e03d4d942adb9029599ea30f27733831c4449413016
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53886608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40e253fded4d8b360563dc17bb248a4d0d6fdc42d1329c9cb379fdc800a86ae9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 12:27:02 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 13:09:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:10:51 GMT
ENV HAPROXY_MAJOR=1.7
# Wed, 14 Mar 2018 13:10:51 GMT
ENV HAPROXY_VERSION=1.7.10
# Wed, 14 Mar 2018 13:10:52 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Wed, 14 Mar 2018 13:11:49 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 13:11:58 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 13:11:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 13:11:59 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450a754d4944c700009fa831088f50087066aacbb1a38f630274185252c1a059`  
		Last Modified: Wed, 14 Mar 2018 12:39:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed1fc6be4ae422a34d037f08eb09cb66cafe62c13e1b72fceed712c50cb02a5`  
		Last Modified: Wed, 14 Mar 2018 13:14:08 GMT  
		Size: 1.7 MB (1710778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87702bec1ddf65f7368574dc87a50d8cf545a50b05ed9496774e5a4ed24cfa8`  
		Last Modified: Wed, 14 Mar 2018 13:14:36 GMT  
		Size: 3.5 MB (3473129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3e21704c8b6da3233784074dc9373cf8d72ee372acedaacdc99ba417d630bf`  
		Last Modified: Wed, 14 Mar 2018 13:14:34 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:e09f214c8f984d9313a496a45ef473d821dc6f8e1ac74f3569b4760d31666275
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.3 MB (55296078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f67b7d4b7b235f430879271dd8365947dbce72925275a50419b90c5b9e3d30d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:24:47 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 18:29:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:35:37 GMT
ENV HAPROXY_MAJOR=1.7
# Wed, 14 Mar 2018 18:35:38 GMT
ENV HAPROXY_VERSION=1.7.10
# Wed, 14 Mar 2018 18:35:39 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Wed, 14 Mar 2018 18:37:49 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 18:37:50 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 18:37:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 18:37:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3f585de56cd1b7204cbc75aada9dbdbd61416fc9bd49f74bf38b2809b5b6ce`  
		Last Modified: Wed, 14 Mar 2018 17:39:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe6e6f29a52b0614e9df3f2a45d81ed9e9f2eb1922bbb6d9e8bab14d51ae30d`  
		Last Modified: Wed, 14 Mar 2018 18:42:47 GMT  
		Size: 1.8 MB (1814046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d49cbbf08031119bb9f7f6da526442172906bd9c02b0381695149ff4cb9dbe`  
		Last Modified: Wed, 14 Mar 2018 18:43:26 GMT  
		Size: 3.5 MB (3547942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3e7f09ff7f37136d3f23bdbca4cf9fee8742d7b58d6b6b174a879799ba461e`  
		Last Modified: Wed, 14 Mar 2018 18:43:25 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; 386

```console
$ docker pull haproxy@sha256:04005caa756a9cf36d0222c68f662ec8878c1aae67d5ea8a848b6d3149da6182
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.2 MB (60196628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c17f32b0dc5f5d907585e825d4ae3c7b9bc5f9b0960b310e9b8cbea8369b9331`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Tue, 27 Mar 2018 14:16:25 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 13 Apr 2018 20:18:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 20:20:07 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 13 Apr 2018 20:20:07 GMT
ENV HAPROXY_VERSION=1.7.10
# Fri, 13 Apr 2018 20:20:07 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Fri, 13 Apr 2018 20:21:18 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Apr 2018 20:21:19 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 13 Apr 2018 20:21:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Apr 2018 20:21:19 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc02e0013321e0f4481d0dce20beaa20b0895e140f544ef52fdab895b921435a`  
		Last Modified: Tue, 27 Mar 2018 17:29:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e608d1c79ffd23a498f819cf7045cae270202bd9d87f13ab39e16c7879661fd`  
		Last Modified: Fri, 13 Apr 2018 20:23:53 GMT  
		Size: 4.1 MB (4106982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272e51148ceeafc2ee1ad681cd56434c7ffe0341e0638ae61f712f90daf7286a`  
		Last Modified: Fri, 13 Apr 2018 20:24:03 GMT  
		Size: 3.3 MB (3301394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe989f96d69788eb27e690fbc2c801450e63df9b6982e02011b211b5faaca45`  
		Last Modified: Fri, 13 Apr 2018 20:24:02 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; ppc64le

```console
$ docker pull haproxy@sha256:e5b2da5a06dc59fdf9a06822e60d3513c8e20811d138c842db91db7b6c245d51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57354474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a85a6ab6ca195a93bbc4d3e0f5dd61b8dfc98a03db828fa7970861a81037225`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 00:32:30 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Mar 2018 03:39:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:45:49 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 15 Mar 2018 03:45:52 GMT
ENV HAPROXY_VERSION=1.7.10
# Thu, 15 Mar 2018 03:45:57 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Thu, 15 Mar 2018 03:52:02 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 03:52:06 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Mar 2018 03:52:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 03:52:11 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dd20db7848a79adbe015b69b7593b6077d1bb200849365bd91e36783af9e76`  
		Last Modified: Wed, 14 Mar 2018 00:39:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eea278b1e65950fe921874b616f23bdfcb7381b87aa17996c8c6e58cc43dcac`  
		Last Modified: Thu, 15 Mar 2018 03:58:11 GMT  
		Size: 1.9 MB (1930093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bee1092cf7f6fc00c3622012b579012536edabe7d58f0c9de08a8364dfb6f54`  
		Last Modified: Thu, 15 Mar 2018 03:58:30 GMT  
		Size: 3.6 MB (3606588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2449d8f4807b3e0a13a7be5adc1b7410906bf13efb45861709283b24dc3ef9`  
		Last Modified: Thu, 15 Mar 2018 03:58:28 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; s390x

```console
$ docker pull haproxy@sha256:03a6e7744b9a463a25b28a7e88b0f3591a14bc1ad639995f6dc863be66b14080
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58470469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97dc44f4f465c7859861aff783c63d16f978437a54a0d51b91c850c1c87d3087`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:00 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 06:05:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:05:58 GMT
ENV HAPROXY_MAJOR=1.7
# Wed, 14 Mar 2018 06:05:58 GMT
ENV HAPROXY_VERSION=1.7.10
# Wed, 14 Mar 2018 06:05:58 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Wed, 14 Mar 2018 06:06:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 06:06:39 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 06:06:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:06:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65daa0ca97d5522eba7f7937c275c7f242dcb27a201cb339bae195d73374c9cd`  
		Last Modified: Wed, 14 Mar 2018 05:26:30 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c5dbadd291de5a1176ef521630b40c78d1ec56ff5ef40ce85f09806f36237da`  
		Last Modified: Wed, 14 Mar 2018 06:08:04 GMT  
		Size: 2.0 MB (2008802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a5d7e3a77fabdabed1e9689a406204e6c5f5e2b39fc2b9916049546ac66b3c`  
		Last Modified: Wed, 14 Mar 2018 06:08:15 GMT  
		Size: 3.7 MB (3665570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442a71ae14ccf39574c005eccc3de32292d85ac1cf36dd5dfd676e40c496f3dc`  
		Last Modified: Wed, 14 Mar 2018 06:08:14 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7.10`

```console
$ docker pull haproxy@sha256:5ae431f7612b2f1f6d24d7adbebfa7d7358bfaecf0becc39216899030407b7f9
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

### `haproxy:1.7.10` - linux; amd64

```console
$ docker pull haproxy@sha256:fa936af62455aa3469e417a5ba2101e773edbced32544ac380db45f8e2f26af7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.0 MB (58045511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92990eff37922d5d1c29738a54ea60b27754f06fd4c1e091cc73159fd4083453`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 21:57:40 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 04:27:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 04:28:47 GMT
ENV HAPROXY_MAJOR=1.7
# Wed, 14 Mar 2018 04:28:47 GMT
ENV HAPROXY_VERSION=1.7.10
# Wed, 14 Mar 2018 04:28:47 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Wed, 14 Mar 2018 04:29:40 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 04:29:40 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 04:29:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 04:29:41 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b58fe2a5c9f1c2efb33bd7bf3983887f36d666824be7da83233248b00c02ba10`  
		Last Modified: Tue, 13 Mar 2018 22:44:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c06fcb15f609828ffe9c18aafb5d67a156437a512ddebe3f3731494c38a1d5b`  
		Last Modified: Wed, 14 Mar 2018 04:31:48 GMT  
		Size: 2.0 MB (2022770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:282040cf4f82d54fafc1400d92735ba2fc2b265ebe384dc956269a70f6efec51`  
		Last Modified: Wed, 14 Mar 2018 04:32:25 GMT  
		Size: 3.4 MB (3413598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7a99842c828983e4e52b17b84602cb41bdb812c51bbe699539995940e38fe5`  
		Last Modified: Wed, 14 Mar 2018 04:32:25 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.10` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:846355904a9ed8860eb4c76a002906efc0cc2cda83c2b976de30d7d73d5f82e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56204554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c873fe7594174e4fa02b24bd32d46228701c0c7422d4b31a5a6d6fd7ba706d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:55:52 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 20:36:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:38:14 GMT
ENV HAPROXY_MAJOR=1.7
# Wed, 14 Mar 2018 20:38:15 GMT
ENV HAPROXY_VERSION=1.7.10
# Wed, 14 Mar 2018 20:38:15 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Wed, 14 Mar 2018 20:39:18 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 20:39:18 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 20:39:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 20:39:19 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a4cf63e34d53b93f2206aed038aacdb54166e333dc1cf4adc2c385c75baccf`  
		Last Modified: Wed, 14 Mar 2018 20:07:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67acd70a30560aaca7e8d6532e7c9d32fd50fe43259db3351e128c2eb72dbc15`  
		Last Modified: Wed, 14 Mar 2018 20:41:19 GMT  
		Size: 1.8 MB (1788431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f49f5945f2dfc6326dc647ac2cf69313d766cc582f8c987ad63337e092e5b4`  
		Last Modified: Wed, 14 Mar 2018 20:41:40 GMT  
		Size: 3.5 MB (3525486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335878e1527bd9084303dd052614dc0632e8a2a1b77c903eeed3c394f240c6a6`  
		Last Modified: Wed, 14 Mar 2018 20:41:39 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.10` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:8077a3a6fa295cc6bc287e03d4d942adb9029599ea30f27733831c4449413016
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53886608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40e253fded4d8b360563dc17bb248a4d0d6fdc42d1329c9cb379fdc800a86ae9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 12:27:02 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 13:09:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:10:51 GMT
ENV HAPROXY_MAJOR=1.7
# Wed, 14 Mar 2018 13:10:51 GMT
ENV HAPROXY_VERSION=1.7.10
# Wed, 14 Mar 2018 13:10:52 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Wed, 14 Mar 2018 13:11:49 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 13:11:58 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 13:11:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 13:11:59 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450a754d4944c700009fa831088f50087066aacbb1a38f630274185252c1a059`  
		Last Modified: Wed, 14 Mar 2018 12:39:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed1fc6be4ae422a34d037f08eb09cb66cafe62c13e1b72fceed712c50cb02a5`  
		Last Modified: Wed, 14 Mar 2018 13:14:08 GMT  
		Size: 1.7 MB (1710778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87702bec1ddf65f7368574dc87a50d8cf545a50b05ed9496774e5a4ed24cfa8`  
		Last Modified: Wed, 14 Mar 2018 13:14:36 GMT  
		Size: 3.5 MB (3473129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3e21704c8b6da3233784074dc9373cf8d72ee372acedaacdc99ba417d630bf`  
		Last Modified: Wed, 14 Mar 2018 13:14:34 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.10` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:e09f214c8f984d9313a496a45ef473d821dc6f8e1ac74f3569b4760d31666275
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.3 MB (55296078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f67b7d4b7b235f430879271dd8365947dbce72925275a50419b90c5b9e3d30d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:24:47 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 18:29:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:35:37 GMT
ENV HAPROXY_MAJOR=1.7
# Wed, 14 Mar 2018 18:35:38 GMT
ENV HAPROXY_VERSION=1.7.10
# Wed, 14 Mar 2018 18:35:39 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Wed, 14 Mar 2018 18:37:49 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 18:37:50 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 18:37:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 18:37:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3f585de56cd1b7204cbc75aada9dbdbd61416fc9bd49f74bf38b2809b5b6ce`  
		Last Modified: Wed, 14 Mar 2018 17:39:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe6e6f29a52b0614e9df3f2a45d81ed9e9f2eb1922bbb6d9e8bab14d51ae30d`  
		Last Modified: Wed, 14 Mar 2018 18:42:47 GMT  
		Size: 1.8 MB (1814046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d49cbbf08031119bb9f7f6da526442172906bd9c02b0381695149ff4cb9dbe`  
		Last Modified: Wed, 14 Mar 2018 18:43:26 GMT  
		Size: 3.5 MB (3547942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3e7f09ff7f37136d3f23bdbca4cf9fee8742d7b58d6b6b174a879799ba461e`  
		Last Modified: Wed, 14 Mar 2018 18:43:25 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.10` - linux; 386

```console
$ docker pull haproxy@sha256:04005caa756a9cf36d0222c68f662ec8878c1aae67d5ea8a848b6d3149da6182
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.2 MB (60196628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c17f32b0dc5f5d907585e825d4ae3c7b9bc5f9b0960b310e9b8cbea8369b9331`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Tue, 27 Mar 2018 14:16:25 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 13 Apr 2018 20:18:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 20:20:07 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 13 Apr 2018 20:20:07 GMT
ENV HAPROXY_VERSION=1.7.10
# Fri, 13 Apr 2018 20:20:07 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Fri, 13 Apr 2018 20:21:18 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Apr 2018 20:21:19 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 13 Apr 2018 20:21:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Apr 2018 20:21:19 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc02e0013321e0f4481d0dce20beaa20b0895e140f544ef52fdab895b921435a`  
		Last Modified: Tue, 27 Mar 2018 17:29:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e608d1c79ffd23a498f819cf7045cae270202bd9d87f13ab39e16c7879661fd`  
		Last Modified: Fri, 13 Apr 2018 20:23:53 GMT  
		Size: 4.1 MB (4106982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272e51148ceeafc2ee1ad681cd56434c7ffe0341e0638ae61f712f90daf7286a`  
		Last Modified: Fri, 13 Apr 2018 20:24:03 GMT  
		Size: 3.3 MB (3301394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe989f96d69788eb27e690fbc2c801450e63df9b6982e02011b211b5faaca45`  
		Last Modified: Fri, 13 Apr 2018 20:24:02 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.10` - linux; ppc64le

```console
$ docker pull haproxy@sha256:e5b2da5a06dc59fdf9a06822e60d3513c8e20811d138c842db91db7b6c245d51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57354474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a85a6ab6ca195a93bbc4d3e0f5dd61b8dfc98a03db828fa7970861a81037225`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 00:32:30 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Mar 2018 03:39:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:45:49 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 15 Mar 2018 03:45:52 GMT
ENV HAPROXY_VERSION=1.7.10
# Thu, 15 Mar 2018 03:45:57 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Thu, 15 Mar 2018 03:52:02 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 03:52:06 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Mar 2018 03:52:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 03:52:11 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dd20db7848a79adbe015b69b7593b6077d1bb200849365bd91e36783af9e76`  
		Last Modified: Wed, 14 Mar 2018 00:39:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eea278b1e65950fe921874b616f23bdfcb7381b87aa17996c8c6e58cc43dcac`  
		Last Modified: Thu, 15 Mar 2018 03:58:11 GMT  
		Size: 1.9 MB (1930093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bee1092cf7f6fc00c3622012b579012536edabe7d58f0c9de08a8364dfb6f54`  
		Last Modified: Thu, 15 Mar 2018 03:58:30 GMT  
		Size: 3.6 MB (3606588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2449d8f4807b3e0a13a7be5adc1b7410906bf13efb45861709283b24dc3ef9`  
		Last Modified: Thu, 15 Mar 2018 03:58:28 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.10` - linux; s390x

```console
$ docker pull haproxy@sha256:03a6e7744b9a463a25b28a7e88b0f3591a14bc1ad639995f6dc863be66b14080
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58470469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97dc44f4f465c7859861aff783c63d16f978437a54a0d51b91c850c1c87d3087`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:00 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 06:05:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:05:58 GMT
ENV HAPROXY_MAJOR=1.7
# Wed, 14 Mar 2018 06:05:58 GMT
ENV HAPROXY_VERSION=1.7.10
# Wed, 14 Mar 2018 06:05:58 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Wed, 14 Mar 2018 06:06:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 06:06:39 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 14 Mar 2018 06:06:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:06:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65daa0ca97d5522eba7f7937c275c7f242dcb27a201cb339bae195d73374c9cd`  
		Last Modified: Wed, 14 Mar 2018 05:26:30 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c5dbadd291de5a1176ef521630b40c78d1ec56ff5ef40ce85f09806f36237da`  
		Last Modified: Wed, 14 Mar 2018 06:08:04 GMT  
		Size: 2.0 MB (2008802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a5d7e3a77fabdabed1e9689a406204e6c5f5e2b39fc2b9916049546ac66b3c`  
		Last Modified: Wed, 14 Mar 2018 06:08:15 GMT  
		Size: 3.7 MB (3665570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442a71ae14ccf39574c005eccc3de32292d85ac1cf36dd5dfd676e40c496f3dc`  
		Last Modified: Wed, 14 Mar 2018 06:08:14 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7.10-alpine`

```console
$ docker pull haproxy@sha256:d69fdb7a8008233c3f9566f4b751b2bbe8712b6449f353bbb7f8b9ed0284b1b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.7.10-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:11db6d1cc914dbe4ad4dd5659ee273b8332829ba795044bfca2f3f7c99b6ec5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6750215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d92d1e4c3c9f4b6034a0d0e7d52e62706fa17ded1cc417cdbfd122cb658311`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:05:28 GMT
ENV HAPROXY_MAJOR=1.7
# Tue, 09 Jan 2018 22:05:28 GMT
ENV HAPROXY_VERSION=1.7.10
# Tue, 09 Jan 2018 22:05:29 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Tue, 09 Jan 2018 22:05:29 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Wed, 24 Jan 2018 00:19:47 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 24 Jan 2018 00:19:47 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 24 Jan 2018 00:19:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 00:19:48 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd975ee1d081eb557e005f3b971dce99e9b7cf2b79c484786c75b270ac678618`  
		Last Modified: Wed, 24 Jan 2018 01:30:34 GMT  
		Size: 4.8 MB (4779672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6479acff15e5b4ce7794ce3ba908b019567acbe34efc89584b079b5dd691f42`  
		Last Modified: Wed, 24 Jan 2018 01:30:33 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7-alpine`

```console
$ docker pull haproxy@sha256:d69fdb7a8008233c3f9566f4b751b2bbe8712b6449f353bbb7f8b9ed0284b1b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.7-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:11db6d1cc914dbe4ad4dd5659ee273b8332829ba795044bfca2f3f7c99b6ec5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6750215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d92d1e4c3c9f4b6034a0d0e7d52e62706fa17ded1cc417cdbfd122cb658311`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:05:28 GMT
ENV HAPROXY_MAJOR=1.7
# Tue, 09 Jan 2018 22:05:28 GMT
ENV HAPROXY_VERSION=1.7.10
# Tue, 09 Jan 2018 22:05:29 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Tue, 09 Jan 2018 22:05:29 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Wed, 24 Jan 2018 00:19:47 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 24 Jan 2018 00:19:47 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 24 Jan 2018 00:19:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 00:19:48 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd975ee1d081eb557e005f3b971dce99e9b7cf2b79c484786c75b270ac678618`  
		Last Modified: Wed, 24 Jan 2018 01:30:34 GMT  
		Size: 4.8 MB (4779672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6479acff15e5b4ce7794ce3ba908b019567acbe34efc89584b079b5dd691f42`  
		Last Modified: Wed, 24 Jan 2018 01:30:33 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8`

```console
$ docker pull haproxy@sha256:1e8698b596a864c6cd77dd5a902b6f2bc11972425db0a5e02791312859f1e88b
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
$ docker pull haproxy@sha256:360a9ba56b8d9953a1101c525bb85e53d43fa58930efb305d6d2e62abcd565f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.9 MB (29906136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07d3f0c0a87e992591d0879c98c2115ae28d7a5f67cefb5b17a10d079e669238`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 04:30:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 04:30:06 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 11 Apr 2018 17:47:48 GMT
ENV HAPROXY_VERSION=1.8.7
# Wed, 11 Apr 2018 17:47:48 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Wed, 11 Apr 2018 17:48:29 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Apr 2018 17:48:30 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 11 Apr 2018 17:48:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Apr 2018 17:48:30 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10509741f554be5ba8d20c7d22b2697b120297215f8f366fd55310633f6103f6`  
		Last Modified: Wed, 14 Mar 2018 04:33:03 GMT  
		Size: 2.1 MB (2102272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c720f57289b4202cee7028a0f003b5ec9972159f400a9b205eb820895e7fe202`  
		Last Modified: Wed, 11 Apr 2018 18:02:33 GMT  
		Size: 5.3 MB (5314505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c648f65fffba5929ba238977e4652d1914e4996e90976f6b5edfc71e1edf502`  
		Last Modified: Wed, 11 Apr 2018 18:02:32 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:17401486778462e8be8a7b167c4dd4c9b7315be76ddc60c95f78d8753875e8ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (27971948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef508ef56ff5f0a90287424db64db519ee20f99356ca3470001d104eedd67269`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:39 GMT
ADD file:c472062baa8d8c35c7642162b18516ecdc2e143d0e5c147b472312cfc532efe9 in / 
# Wed, 14 Mar 2018 20:01:40 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:39:52 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:39:52 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 08:50:03 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 08:50:03 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 08:50:48 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 08:50:49 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 08:50:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:50:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8efba53ec4136476603e9856d8bb17541faa0f33abada48ac4d2d7efe61ff43f`  
		Last Modified: Wed, 14 Mar 2018 20:13:21 GMT  
		Size: 21.2 MB (21164955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2d00ffeb3fb72f3c6af23135d6b073f597c098d187573334840879e637aa91`  
		Last Modified: Wed, 14 Mar 2018 20:42:02 GMT  
		Size: 1.8 MB (1815998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f145467617ab2e025a9e53df48bb7bdfd67ff66fe08e3ec9b7f9896d1e67f976`  
		Last Modified: Thu, 12 Apr 2018 08:51:08 GMT  
		Size: 5.0 MB (4990615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf024f958b4401fd5a89a1cd53ad0980ce21c7c73939de506dd5fb8793828919`  
		Last Modified: Thu, 12 Apr 2018 08:51:06 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:872cac1a269685c5ee667d78bf724253c2429f11ce429f58ceb9e658465aac2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25895549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:652b1f5e82613f3f7c74100b9b6394ac31e22a5c5a8b2ce377fdab9f30c07096`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:12:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:12:42 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 11:57:42 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 11:57:42 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 11:58:11 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 11:58:11 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 11:58:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 11:58:12 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96606b0f6d499753094a4c20eb1a0acb0dfc4c89b5fd5a0d69ab586d31ca6a66`  
		Last Modified: Wed, 14 Mar 2018 13:15:06 GMT  
		Size: 1.7 MB (1736085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39dd5444826edcd33e38e120fd9957b79acaacd79b5d24c2aa8a3aa51f4beeb`  
		Last Modified: Thu, 12 Apr 2018 11:58:30 GMT  
		Size: 4.9 MB (4881473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a37c20df811efe830d9b5e2ae69e7b4557949f6fd72b03eb2a2f5a4bf700188`  
		Last Modified: Thu, 12 Apr 2018 11:58:28 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:bef9d4ca333928b039896c959d100d046f894ef9e3b6ce9440f359387a54ddb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27106403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2851e5306fc4d27dae62fdc6fd97398637fe0283e87f66e0ab757aaf7207d1bd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:38:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:38:45 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 08:53:09 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 08:53:10 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 08:55:21 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 08:55:22 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 08:55:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:55:25 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9af08040303732667a8238ca0b78c3d697239646e233ad777b50fdfb525fbb`  
		Last Modified: Wed, 14 Mar 2018 18:44:06 GMT  
		Size: 1.8 MB (1818804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce63a1fcb025d549a52793631082ae6bfddce8ce7cd74e7f4accad40e22fbd6b`  
		Last Modified: Thu, 12 Apr 2018 08:57:47 GMT  
		Size: 5.0 MB (4950016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f9711915e58e5347501cb7a8cd50b185a7a24172611dc0bb7ed0fb34af9154`  
		Last Modified: Thu, 12 Apr 2018 08:57:44 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; 386

```console
$ docker pull haproxy@sha256:a9bc7925e2e9e5bed7bd1417c332b429611df9e4385fac70f440e4cce4404538
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29039034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeabbfab23fb135a5a825e3f38cd427994851d03a1e7eb568fdedc89f2df1abd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 20:21:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 20:21:37 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 13 Apr 2018 20:21:38 GMT
ENV HAPROXY_VERSION=1.8.7
# Fri, 13 Apr 2018 20:21:38 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Fri, 13 Apr 2018 20:22:27 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Apr 2018 20:22:27 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 13 Apr 2018 20:22:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Apr 2018 20:22:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f8b9836e250477426792f889ab65514d09dc59b9faf734aea5d26f6e4961a`  
		Last Modified: Fri, 13 Apr 2018 20:24:13 GMT  
		Size: 2.1 MB (2128621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67832dadac613168d9179c41adf148c7d7dce813477548f62aa72df90d5d2bdb`  
		Last Modified: Fri, 13 Apr 2018 20:24:13 GMT  
		Size: 3.8 MB (3781252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9354cdbddb7b07881333c5d5e483da3201f6ba04a0b20088e7cbea3533f155`  
		Last Modified: Fri, 13 Apr 2018 20:24:14 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; ppc64le

```console
$ docker pull haproxy@sha256:c041352bb9663f62f4cb5d3b9c35e521adf385d5943ef61ebb76f407c1ad5543
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29496042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff11645b58d96caafe012d3553b5890e5458ba5f523b9872ada16e7cd24a194`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:52:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:53:01 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 08:24:50 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 08:24:51 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 08:26:41 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 08:26:42 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 08:26:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:26:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265290b6ce5d5fe3c9ae283e89440a59af9afc2403dc4a1f2bc49c4c77f437d7`  
		Last Modified: Thu, 15 Mar 2018 03:58:47 GMT  
		Size: 1.8 MB (1781195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b692339bdedad7474f7859f40a1d401b5b0a2d8453daa0f3d2220f82e91fd0`  
		Last Modified: Thu, 12 Apr 2018 08:29:13 GMT  
		Size: 5.0 MB (4968325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3f3979a284645e7a0a6fa6839630194b1f8d519a2325818f00995d25d686cf`  
		Last Modified: Thu, 12 Apr 2018 08:29:12 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; s390x

```console
$ docker pull haproxy@sha256:f67d0abd71eb08024389e4568f9a1fbfe54cac0204aa7b9cf4a6b65e655c73db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29311634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:763e4079957fc0a071504123f3aa4f154c117c7f882dff7c82b0738aaf6e4916`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:06:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:06:52 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 11:56:10 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 11:56:11 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 11:56:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 11:56:39 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 11:56:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 11:56:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee25063e6e60f2ec3ab43fe975d1c233d716c537e927c70f817a6b78f5c4f824`  
		Last Modified: Wed, 14 Mar 2018 06:08:26 GMT  
		Size: 1.8 MB (1841056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d63f871bac177818139e8143d60739713d33e415fc2a7e8d7bbdb94502f11c4`  
		Last Modified: Thu, 12 Apr 2018 11:57:29 GMT  
		Size: 5.1 MB (5129719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04324401243a81a67e35bec429959f4359d9dc07c9ea2b301e051d266235b2ea`  
		Last Modified: Thu, 12 Apr 2018 11:57:27 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8.8`

**does not exist** (yet?)

## `haproxy:1.8.8-alpine`

**does not exist** (yet?)

## `haproxy:1.8-alpine`

```console
$ docker pull haproxy@sha256:fa812a6ea8d0b41ae9fb81c7d5531c81498dcaa7dfaf56a58f8fcfddb2cb7ab2
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
$ docker pull haproxy@sha256:a08470687474f037b5f0f337884f4ceda9fb6d48fb90c733b9a340328c249de7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7625397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16784acad9e0ed50652cc545005b3a001b5d4ff11b6be765ccf222436f7e012c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:06:38 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 11 Apr 2018 17:53:22 GMT
ENV HAPROXY_VERSION=1.8.7
# Wed, 11 Apr 2018 17:53:22 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Wed, 11 Apr 2018 17:53:22 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Wed, 11 Apr 2018 17:53:58 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 11 Apr 2018 17:53:59 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 11 Apr 2018 17:53:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Apr 2018 17:53:59 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bb4cdb81314f2d466e0efa0b9c750dd5816ab9db2b5a521258661b019e452f`  
		Last Modified: Wed, 11 Apr 2018 18:06:38 GMT  
		Size: 5.6 MB (5633269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1445995a780833f7d60fcdababadb6474c0e3cb18da9feca00ccd5d70510c29f`  
		Last Modified: Wed, 11 Apr 2018 18:06:37 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:8518f134eff405f64166fc72e62d1cdcfc3696f4e8102aec6283b99881185004
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7479830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39233db3fb89dc1317ecf174459a31235ef571bb6d75e17c613bba4e3505736d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 23 Nov 2017 20:45:53 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 08:56:02 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 08:56:03 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 08:56:04 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Thu, 12 Apr 2018 08:57:04 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 12 Apr 2018 08:57:05 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 08:57:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:57:07 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0e4ef57fc4eeaed2de43664e2d0afa84dd611f88e9e0674287b6a20785b023`  
		Last Modified: Thu, 12 Apr 2018 08:59:21 GMT  
		Size: 5.6 MB (5564526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269c49bcc6db15cdc6f9e97210c4ba6a7c16b9fae7c1e6eac06bf243f7365e84`  
		Last Modified: Thu, 12 Apr 2018 08:59:20 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:d1eca1d153ac7afd261021ce9ba77fd97c6459b51ad68f7f4cc969b592055d81
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7819411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dfa576e0999797a129da8a411a17694180a9d346beec46c4b32c0c5aee3f9d3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Fri, 13 Apr 2018 20:22:38 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 13 Apr 2018 20:22:38 GMT
ENV HAPROXY_VERSION=1.8.7
# Fri, 13 Apr 2018 20:22:38 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Fri, 13 Apr 2018 20:22:39 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 13 Apr 2018 20:23:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 13 Apr 2018 20:23:26 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 13 Apr 2018 20:23:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Apr 2018 20:23:26 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f9e127e71fab16476f43577313beae80c22c352ad22a89a020fcfbdfae1a8f`  
		Last Modified: Fri, 13 Apr 2018 20:24:26 GMT  
		Size: 5.8 MB (5773262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e015e4120f856cfef69bf7e7199f609f232ef3b0bad0a3d779e1c86451cedd`  
		Last Modified: Fri, 13 Apr 2018 20:24:24 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:4d9fb736b66dd8f0348c31632c3deb2f3da870b391a0d3be16eee055641755cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7743691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e749b061a71f09791e5e21cd979444d202c2e8ec1459d32bc41bb1042a929d34`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 23 Nov 2017 03:14:50 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 08:27:17 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 08:27:20 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 08:27:24 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Thu, 12 Apr 2018 08:28:42 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 12 Apr 2018 08:28:43 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 08:28:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:28:44 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995ade2c59fd967ec260587935373b2343cfdb2d5d84d1e9d9c85ba343e8a7d4`  
		Last Modified: Thu, 12 Apr 2018 08:29:56 GMT  
		Size: 5.7 MB (5734557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2550218c130bc121af6d2989046f3d1efa4459f37b014c7016908d839627a9`  
		Last Modified: Thu, 12 Apr 2018 08:29:54 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:1257f50010cce87e4130599abd857794baa98eddc350394077e51921351a00e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7846772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8651a05f9e8d6cd6cea90dfda3cd1fc429f2bae9cdcf8a9e55c043be1513555`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 23 Nov 2017 17:55:20 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 11:56:48 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 11:56:48 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 11:56:48 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Thu, 12 Apr 2018 11:57:13 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 12 Apr 2018 11:57:13 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 11:57:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 11:57:13 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9306a53c8ff28771d080791733121ace1e421678bf320faaf53cacf647f4f7`  
		Last Modified: Thu, 12 Apr 2018 11:57:52 GMT  
		Size: 5.8 MB (5780756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d083742cb71a9e2071458710a7dc2357d402bba43e1121c484df64b057f4d50d`  
		Last Modified: Thu, 12 Apr 2018 11:57:51 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1-alpine`

```console
$ docker pull haproxy@sha256:fa812a6ea8d0b41ae9fb81c7d5531c81498dcaa7dfaf56a58f8fcfddb2cb7ab2
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
$ docker pull haproxy@sha256:a08470687474f037b5f0f337884f4ceda9fb6d48fb90c733b9a340328c249de7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7625397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16784acad9e0ed50652cc545005b3a001b5d4ff11b6be765ccf222436f7e012c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:06:38 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 11 Apr 2018 17:53:22 GMT
ENV HAPROXY_VERSION=1.8.7
# Wed, 11 Apr 2018 17:53:22 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Wed, 11 Apr 2018 17:53:22 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Wed, 11 Apr 2018 17:53:58 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 11 Apr 2018 17:53:59 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 11 Apr 2018 17:53:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Apr 2018 17:53:59 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bb4cdb81314f2d466e0efa0b9c750dd5816ab9db2b5a521258661b019e452f`  
		Last Modified: Wed, 11 Apr 2018 18:06:38 GMT  
		Size: 5.6 MB (5633269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1445995a780833f7d60fcdababadb6474c0e3cb18da9feca00ccd5d70510c29f`  
		Last Modified: Wed, 11 Apr 2018 18:06:37 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:8518f134eff405f64166fc72e62d1cdcfc3696f4e8102aec6283b99881185004
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7479830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39233db3fb89dc1317ecf174459a31235ef571bb6d75e17c613bba4e3505736d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 23 Nov 2017 20:45:53 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 08:56:02 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 08:56:03 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 08:56:04 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Thu, 12 Apr 2018 08:57:04 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 12 Apr 2018 08:57:05 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 08:57:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:57:07 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0e4ef57fc4eeaed2de43664e2d0afa84dd611f88e9e0674287b6a20785b023`  
		Last Modified: Thu, 12 Apr 2018 08:59:21 GMT  
		Size: 5.6 MB (5564526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269c49bcc6db15cdc6f9e97210c4ba6a7c16b9fae7c1e6eac06bf243f7365e84`  
		Last Modified: Thu, 12 Apr 2018 08:59:20 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:d1eca1d153ac7afd261021ce9ba77fd97c6459b51ad68f7f4cc969b592055d81
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7819411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dfa576e0999797a129da8a411a17694180a9d346beec46c4b32c0c5aee3f9d3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Fri, 13 Apr 2018 20:22:38 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 13 Apr 2018 20:22:38 GMT
ENV HAPROXY_VERSION=1.8.7
# Fri, 13 Apr 2018 20:22:38 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Fri, 13 Apr 2018 20:22:39 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 13 Apr 2018 20:23:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 13 Apr 2018 20:23:26 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 13 Apr 2018 20:23:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Apr 2018 20:23:26 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f9e127e71fab16476f43577313beae80c22c352ad22a89a020fcfbdfae1a8f`  
		Last Modified: Fri, 13 Apr 2018 20:24:26 GMT  
		Size: 5.8 MB (5773262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e015e4120f856cfef69bf7e7199f609f232ef3b0bad0a3d779e1c86451cedd`  
		Last Modified: Fri, 13 Apr 2018 20:24:24 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:4d9fb736b66dd8f0348c31632c3deb2f3da870b391a0d3be16eee055641755cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7743691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e749b061a71f09791e5e21cd979444d202c2e8ec1459d32bc41bb1042a929d34`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 23 Nov 2017 03:14:50 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 08:27:17 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 08:27:20 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 08:27:24 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Thu, 12 Apr 2018 08:28:42 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 12 Apr 2018 08:28:43 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 08:28:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:28:44 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995ade2c59fd967ec260587935373b2343cfdb2d5d84d1e9d9c85ba343e8a7d4`  
		Last Modified: Thu, 12 Apr 2018 08:29:56 GMT  
		Size: 5.7 MB (5734557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2550218c130bc121af6d2989046f3d1efa4459f37b014c7016908d839627a9`  
		Last Modified: Thu, 12 Apr 2018 08:29:54 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:1257f50010cce87e4130599abd857794baa98eddc350394077e51921351a00e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7846772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8651a05f9e8d6cd6cea90dfda3cd1fc429f2bae9cdcf8a9e55c043be1513555`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 23 Nov 2017 17:55:20 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 11:56:48 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 11:56:48 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 11:56:48 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Thu, 12 Apr 2018 11:57:13 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 12 Apr 2018 11:57:13 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 11:57:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 11:57:13 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9306a53c8ff28771d080791733121ace1e421678bf320faaf53cacf647f4f7`  
		Last Modified: Thu, 12 Apr 2018 11:57:52 GMT  
		Size: 5.8 MB (5780756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d083742cb71a9e2071458710a7dc2357d402bba43e1121c484df64b057f4d50d`  
		Last Modified: Thu, 12 Apr 2018 11:57:51 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:alpine`

```console
$ docker pull haproxy@sha256:fa812a6ea8d0b41ae9fb81c7d5531c81498dcaa7dfaf56a58f8fcfddb2cb7ab2
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
$ docker pull haproxy@sha256:a08470687474f037b5f0f337884f4ceda9fb6d48fb90c733b9a340328c249de7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7625397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16784acad9e0ed50652cc545005b3a001b5d4ff11b6be765ccf222436f7e012c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:06:38 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 11 Apr 2018 17:53:22 GMT
ENV HAPROXY_VERSION=1.8.7
# Wed, 11 Apr 2018 17:53:22 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Wed, 11 Apr 2018 17:53:22 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Wed, 11 Apr 2018 17:53:58 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 11 Apr 2018 17:53:59 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 11 Apr 2018 17:53:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Apr 2018 17:53:59 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bb4cdb81314f2d466e0efa0b9c750dd5816ab9db2b5a521258661b019e452f`  
		Last Modified: Wed, 11 Apr 2018 18:06:38 GMT  
		Size: 5.6 MB (5633269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1445995a780833f7d60fcdababadb6474c0e3cb18da9feca00ccd5d70510c29f`  
		Last Modified: Wed, 11 Apr 2018 18:06:37 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:8518f134eff405f64166fc72e62d1cdcfc3696f4e8102aec6283b99881185004
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7479830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39233db3fb89dc1317ecf174459a31235ef571bb6d75e17c613bba4e3505736d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 23 Nov 2017 20:45:53 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 08:56:02 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 08:56:03 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 08:56:04 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Thu, 12 Apr 2018 08:57:04 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 12 Apr 2018 08:57:05 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 08:57:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:57:07 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0e4ef57fc4eeaed2de43664e2d0afa84dd611f88e9e0674287b6a20785b023`  
		Last Modified: Thu, 12 Apr 2018 08:59:21 GMT  
		Size: 5.6 MB (5564526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269c49bcc6db15cdc6f9e97210c4ba6a7c16b9fae7c1e6eac06bf243f7365e84`  
		Last Modified: Thu, 12 Apr 2018 08:59:20 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; 386

```console
$ docker pull haproxy@sha256:d1eca1d153ac7afd261021ce9ba77fd97c6459b51ad68f7f4cc969b592055d81
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7819411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dfa576e0999797a129da8a411a17694180a9d346beec46c4b32c0c5aee3f9d3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Fri, 13 Apr 2018 20:22:38 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 13 Apr 2018 20:22:38 GMT
ENV HAPROXY_VERSION=1.8.7
# Fri, 13 Apr 2018 20:22:38 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Fri, 13 Apr 2018 20:22:39 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 13 Apr 2018 20:23:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 13 Apr 2018 20:23:26 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 13 Apr 2018 20:23:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Apr 2018 20:23:26 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f9e127e71fab16476f43577313beae80c22c352ad22a89a020fcfbdfae1a8f`  
		Last Modified: Fri, 13 Apr 2018 20:24:26 GMT  
		Size: 5.8 MB (5773262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e015e4120f856cfef69bf7e7199f609f232ef3b0bad0a3d779e1c86451cedd`  
		Last Modified: Fri, 13 Apr 2018 20:24:24 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:4d9fb736b66dd8f0348c31632c3deb2f3da870b391a0d3be16eee055641755cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7743691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e749b061a71f09791e5e21cd979444d202c2e8ec1459d32bc41bb1042a929d34`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 23 Nov 2017 03:14:50 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 08:27:17 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 08:27:20 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 08:27:24 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Thu, 12 Apr 2018 08:28:42 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 12 Apr 2018 08:28:43 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 08:28:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:28:44 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995ade2c59fd967ec260587935373b2343cfdb2d5d84d1e9d9c85ba343e8a7d4`  
		Last Modified: Thu, 12 Apr 2018 08:29:56 GMT  
		Size: 5.7 MB (5734557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2550218c130bc121af6d2989046f3d1efa4459f37b014c7016908d839627a9`  
		Last Modified: Thu, 12 Apr 2018 08:29:54 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:1257f50010cce87e4130599abd857794baa98eddc350394077e51921351a00e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7846772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8651a05f9e8d6cd6cea90dfda3cd1fc429f2bae9cdcf8a9e55c043be1513555`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 23 Nov 2017 17:55:20 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 11:56:48 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 11:56:48 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 11:56:48 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Thu, 12 Apr 2018 11:57:13 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 12 Apr 2018 11:57:13 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 11:57:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 11:57:13 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9306a53c8ff28771d080791733121ace1e421678bf320faaf53cacf647f4f7`  
		Last Modified: Thu, 12 Apr 2018 11:57:52 GMT  
		Size: 5.8 MB (5780756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d083742cb71a9e2071458710a7dc2357d402bba43e1121c484df64b057f4d50d`  
		Last Modified: Thu, 12 Apr 2018 11:57:51 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:latest`

```console
$ docker pull haproxy@sha256:1e8698b596a864c6cd77dd5a902b6f2bc11972425db0a5e02791312859f1e88b
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
$ docker pull haproxy@sha256:360a9ba56b8d9953a1101c525bb85e53d43fa58930efb305d6d2e62abcd565f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.9 MB (29906136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07d3f0c0a87e992591d0879c98c2115ae28d7a5f67cefb5b17a10d079e669238`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 04:30:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 04:30:06 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 11 Apr 2018 17:47:48 GMT
ENV HAPROXY_VERSION=1.8.7
# Wed, 11 Apr 2018 17:47:48 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Wed, 11 Apr 2018 17:48:29 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Apr 2018 17:48:30 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 11 Apr 2018 17:48:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Apr 2018 17:48:30 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10509741f554be5ba8d20c7d22b2697b120297215f8f366fd55310633f6103f6`  
		Last Modified: Wed, 14 Mar 2018 04:33:03 GMT  
		Size: 2.1 MB (2102272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c720f57289b4202cee7028a0f003b5ec9972159f400a9b205eb820895e7fe202`  
		Last Modified: Wed, 11 Apr 2018 18:02:33 GMT  
		Size: 5.3 MB (5314505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c648f65fffba5929ba238977e4652d1914e4996e90976f6b5edfc71e1edf502`  
		Last Modified: Wed, 11 Apr 2018 18:02:32 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:17401486778462e8be8a7b167c4dd4c9b7315be76ddc60c95f78d8753875e8ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (27971948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef508ef56ff5f0a90287424db64db519ee20f99356ca3470001d104eedd67269`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:39 GMT
ADD file:c472062baa8d8c35c7642162b18516ecdc2e143d0e5c147b472312cfc532efe9 in / 
# Wed, 14 Mar 2018 20:01:40 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:39:52 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:39:52 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 08:50:03 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 08:50:03 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 08:50:48 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 08:50:49 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 08:50:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:50:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8efba53ec4136476603e9856d8bb17541faa0f33abada48ac4d2d7efe61ff43f`  
		Last Modified: Wed, 14 Mar 2018 20:13:21 GMT  
		Size: 21.2 MB (21164955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2d00ffeb3fb72f3c6af23135d6b073f597c098d187573334840879e637aa91`  
		Last Modified: Wed, 14 Mar 2018 20:42:02 GMT  
		Size: 1.8 MB (1815998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f145467617ab2e025a9e53df48bb7bdfd67ff66fe08e3ec9b7f9896d1e67f976`  
		Last Modified: Thu, 12 Apr 2018 08:51:08 GMT  
		Size: 5.0 MB (4990615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf024f958b4401fd5a89a1cd53ad0980ce21c7c73939de506dd5fb8793828919`  
		Last Modified: Thu, 12 Apr 2018 08:51:06 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:872cac1a269685c5ee667d78bf724253c2429f11ce429f58ceb9e658465aac2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25895549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:652b1f5e82613f3f7c74100b9b6394ac31e22a5c5a8b2ce377fdab9f30c07096`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:12:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:12:42 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 11:57:42 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 11:57:42 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 11:58:11 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 11:58:11 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 11:58:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 11:58:12 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96606b0f6d499753094a4c20eb1a0acb0dfc4c89b5fd5a0d69ab586d31ca6a66`  
		Last Modified: Wed, 14 Mar 2018 13:15:06 GMT  
		Size: 1.7 MB (1736085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39dd5444826edcd33e38e120fd9957b79acaacd79b5d24c2aa8a3aa51f4beeb`  
		Last Modified: Thu, 12 Apr 2018 11:58:30 GMT  
		Size: 4.9 MB (4881473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a37c20df811efe830d9b5e2ae69e7b4557949f6fd72b03eb2a2f5a4bf700188`  
		Last Modified: Thu, 12 Apr 2018 11:58:28 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:bef9d4ca333928b039896c959d100d046f894ef9e3b6ce9440f359387a54ddb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27106403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2851e5306fc4d27dae62fdc6fd97398637fe0283e87f66e0ab757aaf7207d1bd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:38:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:38:45 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 08:53:09 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 08:53:10 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 08:55:21 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 08:55:22 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 08:55:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:55:25 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9af08040303732667a8238ca0b78c3d697239646e233ad777b50fdfb525fbb`  
		Last Modified: Wed, 14 Mar 2018 18:44:06 GMT  
		Size: 1.8 MB (1818804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce63a1fcb025d549a52793631082ae6bfddce8ce7cd74e7f4accad40e22fbd6b`  
		Last Modified: Thu, 12 Apr 2018 08:57:47 GMT  
		Size: 5.0 MB (4950016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f9711915e58e5347501cb7a8cd50b185a7a24172611dc0bb7ed0fb34af9154`  
		Last Modified: Thu, 12 Apr 2018 08:57:44 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; 386

```console
$ docker pull haproxy@sha256:a9bc7925e2e9e5bed7bd1417c332b429611df9e4385fac70f440e4cce4404538
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29039034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeabbfab23fb135a5a825e3f38cd427994851d03a1e7eb568fdedc89f2df1abd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 20:21:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 20:21:37 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 13 Apr 2018 20:21:38 GMT
ENV HAPROXY_VERSION=1.8.7
# Fri, 13 Apr 2018 20:21:38 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Fri, 13 Apr 2018 20:22:27 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Apr 2018 20:22:27 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 13 Apr 2018 20:22:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Apr 2018 20:22:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f8b9836e250477426792f889ab65514d09dc59b9faf734aea5d26f6e4961a`  
		Last Modified: Fri, 13 Apr 2018 20:24:13 GMT  
		Size: 2.1 MB (2128621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67832dadac613168d9179c41adf148c7d7dce813477548f62aa72df90d5d2bdb`  
		Last Modified: Fri, 13 Apr 2018 20:24:13 GMT  
		Size: 3.8 MB (3781252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9354cdbddb7b07881333c5d5e483da3201f6ba04a0b20088e7cbea3533f155`  
		Last Modified: Fri, 13 Apr 2018 20:24:14 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; ppc64le

```console
$ docker pull haproxy@sha256:c041352bb9663f62f4cb5d3b9c35e521adf385d5943ef61ebb76f407c1ad5543
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29496042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff11645b58d96caafe012d3553b5890e5458ba5f523b9872ada16e7cd24a194`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:52:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:53:01 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 08:24:50 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 08:24:51 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 08:26:41 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 08:26:42 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 08:26:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:26:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265290b6ce5d5fe3c9ae283e89440a59af9afc2403dc4a1f2bc49c4c77f437d7`  
		Last Modified: Thu, 15 Mar 2018 03:58:47 GMT  
		Size: 1.8 MB (1781195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b692339bdedad7474f7859f40a1d401b5b0a2d8453daa0f3d2220f82e91fd0`  
		Last Modified: Thu, 12 Apr 2018 08:29:13 GMT  
		Size: 5.0 MB (4968325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3f3979a284645e7a0a6fa6839630194b1f8d519a2325818f00995d25d686cf`  
		Last Modified: Thu, 12 Apr 2018 08:29:12 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; s390x

```console
$ docker pull haproxy@sha256:f67d0abd71eb08024389e4568f9a1fbfe54cac0204aa7b9cf4a6b65e655c73db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29311634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:763e4079957fc0a071504123f3aa4f154c117c7f882dff7c82b0738aaf6e4916`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:06:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:06:52 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 12 Apr 2018 11:56:10 GMT
ENV HAPROXY_VERSION=1.8.7
# Thu, 12 Apr 2018 11:56:11 GMT
ENV HAPROXY_MD5=c60f99a989366d14bc370dc7b3b2ff87
# Thu, 12 Apr 2018 11:56:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 11:56:39 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 12 Apr 2018 11:56:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 11:56:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee25063e6e60f2ec3ab43fe975d1c233d716c537e927c70f817a6b78f5c4f824`  
		Last Modified: Wed, 14 Mar 2018 06:08:26 GMT  
		Size: 1.8 MB (1841056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d63f871bac177818139e8143d60739713d33e415fc2a7e8d7bbdb94502f11c4`  
		Last Modified: Thu, 12 Apr 2018 11:57:29 GMT  
		Size: 5.1 MB (5129719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04324401243a81a67e35bec429959f4359d9dc07c9ea2b301e051d266235b2ea`  
		Last Modified: Thu, 12 Apr 2018 11:57:27 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
