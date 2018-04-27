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
$ docker pull haproxy@sha256:36525dd333bad732580c4b208a013bf22c5a0a44609a3c41b7fa25ea21383f11
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
$ docker pull haproxy@sha256:9d06f7530c593cc928aac9ab08965dc9589d0c85e3837bc9c16b6fb14ec4e5cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.9 MB (29913923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f85a9f278dc774e9aa13549988b273a0da79c7d58e1a1c59115af63b07a69b81`
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
# Fri, 20 Apr 2018 08:09:42 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 08:09:42 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Thu, 26 Apr 2018 22:57:25 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Apr 2018 22:57:26 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 26 Apr 2018 22:57:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Apr 2018 22:57:26 GMT
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
	-	`sha256:740484f62bdc91fc3111779fa055c92a60ce935e28382e77e1af540d2955780f`  
		Last Modified: Thu, 26 Apr 2018 23:56:01 GMT  
		Size: 5.3 MB (5322293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbae85cb2bed194887a742e3c696268ae906243101fe1da7a17d404e07249906`  
		Last Modified: Thu, 26 Apr 2018 23:56:00 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:65b1613c2c5365baf77b08edc2888084c553ac3baf895142c897211ed542f970
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (27980044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:291166bc86548af259ecbdb1d6537234de5b4ea54d28ec4882eef86a878862f6`
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
# Fri, 20 Apr 2018 08:49:05 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 08:49:05 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 08:49:52 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Apr 2018 08:49:52 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 08:49:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 08:49:53 GMT
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
	-	`sha256:fc299cb944fda7d10b96b0424107b92ef1e8f7e1ba545407f0f3aa08084a21d5`  
		Last Modified: Fri, 20 Apr 2018 08:50:12 GMT  
		Size: 5.0 MB (4998712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2370e43f35ed349046ad9fb2ad99f0fb7d3a4d784f381801b200afb3a7ea6931`  
		Last Modified: Fri, 20 Apr 2018 08:50:11 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:0bde153d6e4e2fca0c3e9565524d5da51a7c511aa03f36969707fe47458f6758
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25903218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b67b5f701e64c41b5b4b0faf8ddccc64c4b75b78436227520520668a6dea090`
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
# Fri, 20 Apr 2018 11:57:39 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 11:57:39 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 11:58:13 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Apr 2018 11:58:14 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 11:58:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 11:58:14 GMT
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
	-	`sha256:6fdbff27e54e027c4d7901fd310a3943c6131ddb1e61fa683e95548dc515fc4a`  
		Last Modified: Fri, 20 Apr 2018 11:58:33 GMT  
		Size: 4.9 MB (4889142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad3da7db70936f9d0c4723764af2a1b435821cefeda12b5ceededbe73b9a567`  
		Last Modified: Fri, 20 Apr 2018 11:58:32 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:2c5d7f58b3ce8cbe5885b9c4746fa1f2e8c6509821bc996a59354c642509d57d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27112117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9d64389bed064751682b4d319f02c247435c81f5b17f1ef3af9afccb00e9e4c`
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
# Fri, 20 Apr 2018 08:40:07 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 08:40:07 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 08:42:38 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Apr 2018 08:42:39 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 08:42:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 08:42:40 GMT
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
	-	`sha256:8c0eddf6dc034bf96cc4f8df7a05bfc0b2c19877919cdabef849df183cc447f3`  
		Last Modified: Fri, 20 Apr 2018 08:44:56 GMT  
		Size: 5.0 MB (4955729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ede451f0948d431d200a366f802a1fd79888e33a14b0073020f1048ce1795f`  
		Last Modified: Fri, 20 Apr 2018 08:44:54 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; 386

```console
$ docker pull haproxy@sha256:76fddc579fff841cb654a0764e7042fd87aac862bafadac81efc7b817c020ec5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29047229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c3526cd6675fe9e90f92be95e49032c887f24bc8b287d14e396b5ea2dfe7dbc`
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
# Fri, 20 Apr 2018 11:05:50 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 11:05:50 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 11:06:38 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Apr 2018 11:06:38 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 11:06:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 11:06:38 GMT
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
	-	`sha256:1d763bd49dc66590cd44a0e37275768aa4c9712a9062a5c6932aba10a4fd901d`  
		Last Modified: Fri, 20 Apr 2018 11:08:41 GMT  
		Size: 3.8 MB (3789445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8879193aad00dc507ed808e6091c3129d528b6c34bf230798480b6014b6f8c`  
		Last Modified: Fri, 20 Apr 2018 11:08:41 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; ppc64le

```console
$ docker pull haproxy@sha256:276ad33d8d9b8f29afbb79ffc64f903536d88feaf25ae4a7ef5f0cc73ee2c967
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29503244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6da3ea658d7d2bb404fdc4edca61cc2ade2057c24c3836b40b6bd7123696ef15`
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
# Fri, 20 Apr 2018 08:24:08 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 08:24:09 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 27 Apr 2018 08:28:49 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 08:28:51 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 08:28:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:28:53 GMT
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
	-	`sha256:e85e5e57399b7d6e710bc54e35740b6ff68c30b1d823e5c216b1680672260f6b`  
		Last Modified: Fri, 27 Apr 2018 08:31:46 GMT  
		Size: 5.0 MB (4975529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e606916a44a0c6646b639eac468647de8c52eac024c8420f80eeaecb5736b082`  
		Last Modified: Fri, 27 Apr 2018 08:31:45 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; s390x

```console
$ docker pull haproxy@sha256:9f4fef7fc3b575f2c83c2f5cad85466ca20ed6e46fd7d71f88e565b78d200b2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29318358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b36882cf685aac8be29b54618d4c8160c77479967a2ecb0a65f9b26429a0a5`
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
# Fri, 20 Apr 2018 11:41:36 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 11:41:36 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 11:42:11 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Apr 2018 11:42:11 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 11:42:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 11:42:11 GMT
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
	-	`sha256:4a56a91525c770b62b646089a44b3f9a401ed692e3802ac61eed26178c669b97`  
		Last Modified: Fri, 20 Apr 2018 11:43:28 GMT  
		Size: 5.1 MB (5136444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48116a059d1637a86ef2519edc06839b208742b595c852adee42170dca6132c2`  
		Last Modified: Fri, 20 Apr 2018 11:43:26 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5`

```console
$ docker pull haproxy@sha256:d8205d23e221c78f0a305e868276d9af7d512bf4d3d0bd34d23ff48dbb8543c9
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
$ docker pull haproxy@sha256:edf24ffe90cd59ef6f1fac124e6ec7304f4efbcf4d3d004eb075fab82cb8aba3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.8 MB (56803253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3b478075aed6355894f30ed643f506ecd5c01fce2d5318507221b8b758701c9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Thu, 26 Apr 2018 22:50:57 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Apr 2018 22:50:58 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 26 Apr 2018 22:50:58 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 26 Apr 2018 22:50:58 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Thu, 26 Apr 2018 22:51:43 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Apr 2018 22:51:43 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Apr 2018 22:51:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Apr 2018 22:51:44 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73aa48ccd61aa930d28c0c84fcafa065f985f660d953f2e0bfdaec4fcb5e41d`  
		Last Modified: Thu, 26 Apr 2018 22:58:54 GMT  
		Size: 1.8 MB (1799882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0a88c71a317764d0ddd1f0dd705d64e5dee971d9f230babbadbc78e1919fb7`  
		Last Modified: Thu, 26 Apr 2018 22:58:54 GMT  
		Size: 2.4 MB (2394449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ceec5316ff0c1f75de6e1d28f1f755a347244daa419706b74904363a82738f`  
		Last Modified: Thu, 26 Apr 2018 22:58:54 GMT  
		Size: 403.0 B  
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
$ docker pull haproxy@sha256:230fcd824b76c047e757e52b2fbf5a9c629e811abea33af26f07230fd09c9f80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56053435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48c7c1fb565c9bfa4b76dd13e5de2deaa31b1d5efa19820bf09c3d659ff343e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Fri, 27 Apr 2018 08:17:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 08:17:25 GMT
ENV HAPROXY_MAJOR=1.5
# Fri, 27 Apr 2018 08:17:28 GMT
ENV HAPROXY_VERSION=1.5.19
# Fri, 27 Apr 2018 08:17:31 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Fri, 27 Apr 2018 08:19:52 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 08:19:53 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 08:19:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:19:58 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ec1c3050a6525b31a1d8c7072c40a0fe7bbb03815814d47c78a6e336eb8c07`  
		Last Modified: Fri, 27 Apr 2018 08:30:01 GMT  
		Size: 1.7 MB (1699495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16d35fe1e0a8827ccf55b39d61558437aa0c2bf954e731ad42ea9d7fd333d19`  
		Last Modified: Fri, 27 Apr 2018 08:30:01 GMT  
		Size: 2.5 MB (2536374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab07bea65dbefdaa55acbeced728af1722e07152da980fec0209f37a041f0cf`  
		Last Modified: Fri, 27 Apr 2018 08:30:01 GMT  
		Size: 401.0 B  
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
$ docker pull haproxy@sha256:d8205d23e221c78f0a305e868276d9af7d512bf4d3d0bd34d23ff48dbb8543c9
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
$ docker pull haproxy@sha256:edf24ffe90cd59ef6f1fac124e6ec7304f4efbcf4d3d004eb075fab82cb8aba3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.8 MB (56803253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3b478075aed6355894f30ed643f506ecd5c01fce2d5318507221b8b758701c9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Thu, 26 Apr 2018 22:50:57 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Apr 2018 22:50:58 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 26 Apr 2018 22:50:58 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 26 Apr 2018 22:50:58 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Thu, 26 Apr 2018 22:51:43 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Apr 2018 22:51:43 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Apr 2018 22:51:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Apr 2018 22:51:44 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73aa48ccd61aa930d28c0c84fcafa065f985f660d953f2e0bfdaec4fcb5e41d`  
		Last Modified: Thu, 26 Apr 2018 22:58:54 GMT  
		Size: 1.8 MB (1799882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0a88c71a317764d0ddd1f0dd705d64e5dee971d9f230babbadbc78e1919fb7`  
		Last Modified: Thu, 26 Apr 2018 22:58:54 GMT  
		Size: 2.4 MB (2394449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ceec5316ff0c1f75de6e1d28f1f755a347244daa419706b74904363a82738f`  
		Last Modified: Thu, 26 Apr 2018 22:58:54 GMT  
		Size: 403.0 B  
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
$ docker pull haproxy@sha256:230fcd824b76c047e757e52b2fbf5a9c629e811abea33af26f07230fd09c9f80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56053435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48c7c1fb565c9bfa4b76dd13e5de2deaa31b1d5efa19820bf09c3d659ff343e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Fri, 27 Apr 2018 08:17:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 08:17:25 GMT
ENV HAPROXY_MAJOR=1.5
# Fri, 27 Apr 2018 08:17:28 GMT
ENV HAPROXY_VERSION=1.5.19
# Fri, 27 Apr 2018 08:17:31 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Fri, 27 Apr 2018 08:19:52 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 08:19:53 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 08:19:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:19:58 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ec1c3050a6525b31a1d8c7072c40a0fe7bbb03815814d47c78a6e336eb8c07`  
		Last Modified: Fri, 27 Apr 2018 08:30:01 GMT  
		Size: 1.7 MB (1699495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16d35fe1e0a8827ccf55b39d61558437aa0c2bf954e731ad42ea9d7fd333d19`  
		Last Modified: Fri, 27 Apr 2018 08:30:01 GMT  
		Size: 2.5 MB (2536374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab07bea65dbefdaa55acbeced728af1722e07152da980fec0209f37a041f0cf`  
		Last Modified: Fri, 27 Apr 2018 08:30:01 GMT  
		Size: 401.0 B  
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
$ docker pull haproxy@sha256:9e3fb679591539d59705ad18f9138a0fe277e88ae2c457c9fc9a986e8b2fcdca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.5.19-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:92466a968c14215e6285ff8cda57a479328e41a36c358e7b5b75a53ff7ccfb96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5577303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e291d957a76cd7f89d5c605d2d7fe48edec70394a0af9b10564f7a3f44f317c2`
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
# Thu, 26 Apr 2018 22:52:29 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Apr 2018 22:52:30 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Apr 2018 22:52:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Apr 2018 22:52:31 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47df5f9776575c8235031aa7543bfbca261565b3337d39e0432d050505faa6a3`  
		Last Modified: Thu, 26 Apr 2018 22:59:40 GMT  
		Size: 3.6 MB (3606760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9021fe920f2a6b712233eb96feafeac1fadbcee0a691097d81c6a49223d247b`  
		Last Modified: Thu, 26 Apr 2018 22:59:39 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5-alpine`

```console
$ docker pull haproxy@sha256:9e3fb679591539d59705ad18f9138a0fe277e88ae2c457c9fc9a986e8b2fcdca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.5-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:92466a968c14215e6285ff8cda57a479328e41a36c358e7b5b75a53ff7ccfb96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5577303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e291d957a76cd7f89d5c605d2d7fe48edec70394a0af9b10564f7a3f44f317c2`
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
# Thu, 26 Apr 2018 22:52:29 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Apr 2018 22:52:30 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Apr 2018 22:52:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Apr 2018 22:52:31 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47df5f9776575c8235031aa7543bfbca261565b3337d39e0432d050505faa6a3`  
		Last Modified: Thu, 26 Apr 2018 22:59:40 GMT  
		Size: 3.6 MB (3606760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9021fe920f2a6b712233eb96feafeac1fadbcee0a691097d81c6a49223d247b`  
		Last Modified: Thu, 26 Apr 2018 22:59:39 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6`

```console
$ docker pull haproxy@sha256:3b494f580ed157094ba7b35aa7e4aa7b26de391e09f3493c7fcdcf5c960b08a3
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
$ docker pull haproxy@sha256:8d464ae50e4ed241de39d7d16669cbb4a963b3c532dc6510c11f79ed8da0d637
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.9 MB (58869657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e485b0b635ca481fc7ac3fcfa50bb8c3e405e487a526d50c22bc7deb3c824303`
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
# Thu, 26 Apr 2018 22:53:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Apr 2018 22:53:39 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Apr 2018 22:53:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Apr 2018 22:53:40 GMT
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
	-	`sha256:5d49a290848dda42221463294ffd633d1dd8522ae29428a4a0daa021fde38f28`  
		Last Modified: Thu, 26 Apr 2018 23:00:27 GMT  
		Size: 4.2 MB (4237742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c796d17b14227830c963c00e6bb09acf3472812dac5de0e9f73d861c6a08c6`  
		Last Modified: Thu, 26 Apr 2018 23:00:26 GMT  
		Size: 403.0 B  
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
$ docker pull haproxy@sha256:6a27352f0817d90363962beb060b2ffe4f1f1e18a973f167697021cad3f76239
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.1 MB (58073887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a54fcf5ec4b6eb2a97cda44314a278256a25a639b970c0bb04632b3ca7d363`
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
# Fri, 27 Apr 2018 08:22:34 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 08:22:36 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 08:22:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:22:39 GMT
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
	-	`sha256:02a2e031017f49f5c2c67970ac4a1d30f5f645c3ac69dc04efb12bd195a03aac`  
		Last Modified: Fri, 27 Apr 2018 08:30:19 GMT  
		Size: 4.3 MB (4326002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fe7549406da03c70f5e54c64b0c70846aad435f856b86abfcc8adb8a60be25`  
		Last Modified: Fri, 27 Apr 2018 08:30:18 GMT  
		Size: 402.0 B  
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
$ docker pull haproxy@sha256:3b494f580ed157094ba7b35aa7e4aa7b26de391e09f3493c7fcdcf5c960b08a3
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
$ docker pull haproxy@sha256:8d464ae50e4ed241de39d7d16669cbb4a963b3c532dc6510c11f79ed8da0d637
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.9 MB (58869657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e485b0b635ca481fc7ac3fcfa50bb8c3e405e487a526d50c22bc7deb3c824303`
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
# Thu, 26 Apr 2018 22:53:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Apr 2018 22:53:39 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Apr 2018 22:53:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Apr 2018 22:53:40 GMT
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
	-	`sha256:5d49a290848dda42221463294ffd633d1dd8522ae29428a4a0daa021fde38f28`  
		Last Modified: Thu, 26 Apr 2018 23:00:27 GMT  
		Size: 4.2 MB (4237742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c796d17b14227830c963c00e6bb09acf3472812dac5de0e9f73d861c6a08c6`  
		Last Modified: Thu, 26 Apr 2018 23:00:26 GMT  
		Size: 403.0 B  
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
$ docker pull haproxy@sha256:6a27352f0817d90363962beb060b2ffe4f1f1e18a973f167697021cad3f76239
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.1 MB (58073887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a54fcf5ec4b6eb2a97cda44314a278256a25a639b970c0bb04632b3ca7d363`
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
# Fri, 27 Apr 2018 08:22:34 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 08:22:36 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 08:22:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:22:39 GMT
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
	-	`sha256:02a2e031017f49f5c2c67970ac4a1d30f5f645c3ac69dc04efb12bd195a03aac`  
		Last Modified: Fri, 27 Apr 2018 08:30:19 GMT  
		Size: 4.3 MB (4326002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fe7549406da03c70f5e54c64b0c70846aad435f856b86abfcc8adb8a60be25`  
		Last Modified: Fri, 27 Apr 2018 08:30:18 GMT  
		Size: 402.0 B  
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
$ docker pull haproxy@sha256:00d05e53faa0edbbc223b4e1a199e3051e5fbbb717ea4bfdaee6cc291523c174
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `haproxy:1.6.14-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:2c895e641b735e836ba5791d676cf5d57a397b0f3df0a373822a7d9843ded715
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6751013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6ecde39bcb097eed6ff9e4d0b4fab4b8de6803024ff238966529640ac2e3ce8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Thu, 26 Apr 2018 22:54:03 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 26 Apr 2018 22:54:03 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 26 Apr 2018 22:54:03 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Thu, 26 Apr 2018 22:54:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Apr 2018 22:54:27 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Apr 2018 22:54:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Apr 2018 22:54:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63e57bf152812d4f5a95f69c94cab422e35d7af901a01d782543f38479f90e7`  
		Last Modified: Thu, 26 Apr 2018 23:01:16 GMT  
		Size: 4.7 MB (4685073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f763c30f5c629d84fadf137b2e6829af03f6382ea9a69961553c4351bb718603`  
		Last Modified: Thu, 26 Apr 2018 23:01:15 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:f998e15d7e16a4a87578f0c13f66571ba4f59eaf4ccd94df4ba316b540f2277d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6520156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffa12e1fe1ac6023ab4f99c9bb943636b86f2eeb07cd1d7ec4e48e3a339e206`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 08:22:57 GMT
ENV HAPROXY_MAJOR=1.6
# Fri, 27 Apr 2018 08:23:01 GMT
ENV HAPROXY_VERSION=1.6.14
# Fri, 27 Apr 2018 08:23:01 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Fri, 27 Apr 2018 08:23:39 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 08:23:41 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 08:23:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:23:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:040d25ef642c40520cebee33d3ac4f412e51f11886630ff8151d73ad71980bc4`  
		Last Modified: Fri, 27 Apr 2018 08:30:47 GMT  
		Size: 4.4 MB (4438110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb615e26ac8d172b7b1f1e5a3e6b01b32169a3bc166e8f90b3ec17d4fbc7c3d`  
		Last Modified: Fri, 27 Apr 2018 08:30:46 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6-alpine`

```console
$ docker pull haproxy@sha256:00d05e53faa0edbbc223b4e1a199e3051e5fbbb717ea4bfdaee6cc291523c174
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `haproxy:1.6-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:2c895e641b735e836ba5791d676cf5d57a397b0f3df0a373822a7d9843ded715
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6751013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6ecde39bcb097eed6ff9e4d0b4fab4b8de6803024ff238966529640ac2e3ce8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Thu, 26 Apr 2018 22:54:03 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 26 Apr 2018 22:54:03 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 26 Apr 2018 22:54:03 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Thu, 26 Apr 2018 22:54:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Apr 2018 22:54:27 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Apr 2018 22:54:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Apr 2018 22:54:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63e57bf152812d4f5a95f69c94cab422e35d7af901a01d782543f38479f90e7`  
		Last Modified: Thu, 26 Apr 2018 23:01:16 GMT  
		Size: 4.7 MB (4685073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f763c30f5c629d84fadf137b2e6829af03f6382ea9a69961553c4351bb718603`  
		Last Modified: Thu, 26 Apr 2018 23:01:15 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:f998e15d7e16a4a87578f0c13f66571ba4f59eaf4ccd94df4ba316b540f2277d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6520156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffa12e1fe1ac6023ab4f99c9bb943636b86f2eeb07cd1d7ec4e48e3a339e206`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 08:22:57 GMT
ENV HAPROXY_MAJOR=1.6
# Fri, 27 Apr 2018 08:23:01 GMT
ENV HAPROXY_VERSION=1.6.14
# Fri, 27 Apr 2018 08:23:01 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Fri, 27 Apr 2018 08:23:39 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 08:23:41 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 08:23:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:23:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:040d25ef642c40520cebee33d3ac4f412e51f11886630ff8151d73ad71980bc4`  
		Last Modified: Fri, 27 Apr 2018 08:30:47 GMT  
		Size: 4.4 MB (4438110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb615e26ac8d172b7b1f1e5a3e6b01b32169a3bc166e8f90b3ec17d4fbc7c3d`  
		Last Modified: Fri, 27 Apr 2018 08:30:46 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7`

```console
$ docker pull haproxy@sha256:dafae33b6cceb46c2132fa33c05a820ec709a69ce9a34ce96bfad8b870c5e2dc
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
$ docker pull haproxy@sha256:d07b0b31f7d8d0b011474c1cfca79617a498fddf0ffd12fa98d46593f0b7a347
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29124437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f29600ca92ca79de40e1bd000b6ac053acfe40845c5476e94c06a2d253214370`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 04:30:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Apr 2018 22:54:52 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Apr 2018 22:54:52 GMT
ENV HAPROXY_VERSION=1.7.10
# Thu, 26 Apr 2018 22:54:53 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Thu, 26 Apr 2018 22:55:37 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Apr 2018 22:55:38 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Apr 2018 22:55:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Apr 2018 22:55:38 GMT
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
	-	`sha256:1b5a7bc1c11571c2882ea3fc0119b4aead3ffcfdf1d22767416079763c4500a1`  
		Last Modified: Thu, 26 Apr 2018 23:02:02 GMT  
		Size: 4.5 MB (4532785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25c351963679ef7289809aefb57f5818e737e7da382b0685dca2766307c88fa`  
		Last Modified: Thu, 26 Apr 2018 23:02:01 GMT  
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
$ docker pull haproxy@sha256:364600e8fde3aced3deded244f881915d9dc1fc5b42f4fd4c7a5b9c4570f4b53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.8 MB (28759802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06fff8b2255d4c6e5c381133bfb5e3e4890c8e86feb728f70e56a615d5af55d9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:52:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 08:23:58 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 27 Apr 2018 08:23:59 GMT
ENV HAPROXY_VERSION=1.7.10
# Fri, 27 Apr 2018 08:24:00 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Fri, 27 Apr 2018 08:26:07 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 08:26:09 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 08:26:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:26:11 GMT
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
	-	`sha256:1ae99073cef48c4777f252757a4db426d4c9830c0d51b20789337bcbf940b72f`  
		Last Modified: Fri, 27 Apr 2018 08:31:09 GMT  
		Size: 4.2 MB (4232064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deadba9bf93f96f704dacadc64c3fc3d6a0c4439f9b187f242d1803ec1950d04`  
		Last Modified: Fri, 27 Apr 2018 08:31:08 GMT  
		Size: 401.0 B  
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
$ docker pull haproxy@sha256:dafae33b6cceb46c2132fa33c05a820ec709a69ce9a34ce96bfad8b870c5e2dc
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
$ docker pull haproxy@sha256:d07b0b31f7d8d0b011474c1cfca79617a498fddf0ffd12fa98d46593f0b7a347
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29124437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f29600ca92ca79de40e1bd000b6ac053acfe40845c5476e94c06a2d253214370`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 04:30:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Apr 2018 22:54:52 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Apr 2018 22:54:52 GMT
ENV HAPROXY_VERSION=1.7.10
# Thu, 26 Apr 2018 22:54:53 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Thu, 26 Apr 2018 22:55:37 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Apr 2018 22:55:38 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Apr 2018 22:55:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Apr 2018 22:55:38 GMT
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
	-	`sha256:1b5a7bc1c11571c2882ea3fc0119b4aead3ffcfdf1d22767416079763c4500a1`  
		Last Modified: Thu, 26 Apr 2018 23:02:02 GMT  
		Size: 4.5 MB (4532785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25c351963679ef7289809aefb57f5818e737e7da382b0685dca2766307c88fa`  
		Last Modified: Thu, 26 Apr 2018 23:02:01 GMT  
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
$ docker pull haproxy@sha256:364600e8fde3aced3deded244f881915d9dc1fc5b42f4fd4c7a5b9c4570f4b53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.8 MB (28759802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06fff8b2255d4c6e5c381133bfb5e3e4890c8e86feb728f70e56a615d5af55d9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:52:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 08:23:58 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 27 Apr 2018 08:23:59 GMT
ENV HAPROXY_VERSION=1.7.10
# Fri, 27 Apr 2018 08:24:00 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Fri, 27 Apr 2018 08:26:07 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 08:26:09 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 08:26:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:26:11 GMT
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
	-	`sha256:1ae99073cef48c4777f252757a4db426d4c9830c0d51b20789337bcbf940b72f`  
		Last Modified: Fri, 27 Apr 2018 08:31:09 GMT  
		Size: 4.2 MB (4232064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deadba9bf93f96f704dacadc64c3fc3d6a0c4439f9b187f242d1803ec1950d04`  
		Last Modified: Fri, 27 Apr 2018 08:31:08 GMT  
		Size: 401.0 B  
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
$ docker pull haproxy@sha256:938a20f92f42efdecbadf19b6202a33665e6ab5c4894abfe6aad7e9d077e4eb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `haproxy:1.7.10-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:df0639753257fb8cb918653336e2b662c6f0cbc13a9603edc5fa054f5d5be9b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7227448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d6170cfd8f811f366805028bb0826527fb1c2683727be1b3ee94812ebb211b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Thu, 26 Apr 2018 22:56:01 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Apr 2018 22:56:01 GMT
ENV HAPROXY_VERSION=1.7.10
# Thu, 26 Apr 2018 22:56:01 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Thu, 26 Apr 2018 22:56:25 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Apr 2018 22:56:26 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Apr 2018 22:56:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Apr 2018 22:56:26 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a0d0fdfb6db35b442fddac78345bacb14494e1d8e21b5dc8e0a21cca46b32b`  
		Last Modified: Thu, 26 Apr 2018 23:31:09 GMT  
		Size: 5.2 MB (5161509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be834fd3eedb62899c7f262ab18c47e3dbf7ca755089246e9487ee3470c1cc96`  
		Last Modified: Thu, 26 Apr 2018 23:31:08 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.10-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:1296b10ffd946de190c16b5840466b8f1130e57015ec64f5f36f94f967e549d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6995710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9548d99672ee86680000e21ea27b12a1a955f87afb7ae396a2076ebf6776a9ee`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 08:26:27 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 27 Apr 2018 08:26:28 GMT
ENV HAPROXY_VERSION=1.7.10
# Fri, 27 Apr 2018 08:26:29 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Fri, 27 Apr 2018 08:26:46 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 08:26:48 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 08:26:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:26:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:68f9a35d534b35c0042d925c7884b4dd6fc55d65884b09165fa952159f6d002f`  
		Last Modified: Fri, 27 Apr 2018 08:31:28 GMT  
		Size: 4.9 MB (4913665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc289a315e8265a21fdfb6185b0dcab0bfac09126b5fac3b70bf996c599cdbf`  
		Last Modified: Fri, 27 Apr 2018 08:31:26 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7-alpine`

```console
$ docker pull haproxy@sha256:938a20f92f42efdecbadf19b6202a33665e6ab5c4894abfe6aad7e9d077e4eb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `haproxy:1.7-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:df0639753257fb8cb918653336e2b662c6f0cbc13a9603edc5fa054f5d5be9b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7227448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d6170cfd8f811f366805028bb0826527fb1c2683727be1b3ee94812ebb211b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Thu, 26 Apr 2018 22:56:01 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 26 Apr 2018 22:56:01 GMT
ENV HAPROXY_VERSION=1.7.10
# Thu, 26 Apr 2018 22:56:01 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Thu, 26 Apr 2018 22:56:25 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Apr 2018 22:56:26 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 26 Apr 2018 22:56:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Apr 2018 22:56:26 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a0d0fdfb6db35b442fddac78345bacb14494e1d8e21b5dc8e0a21cca46b32b`  
		Last Modified: Thu, 26 Apr 2018 23:31:09 GMT  
		Size: 5.2 MB (5161509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be834fd3eedb62899c7f262ab18c47e3dbf7ca755089246e9487ee3470c1cc96`  
		Last Modified: Thu, 26 Apr 2018 23:31:08 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:1296b10ffd946de190c16b5840466b8f1130e57015ec64f5f36f94f967e549d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6995710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9548d99672ee86680000e21ea27b12a1a955f87afb7ae396a2076ebf6776a9ee`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 08:26:27 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 27 Apr 2018 08:26:28 GMT
ENV HAPROXY_VERSION=1.7.10
# Fri, 27 Apr 2018 08:26:29 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Fri, 27 Apr 2018 08:26:46 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 08:26:48 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 08:26:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:26:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:68f9a35d534b35c0042d925c7884b4dd6fc55d65884b09165fa952159f6d002f`  
		Last Modified: Fri, 27 Apr 2018 08:31:28 GMT  
		Size: 4.9 MB (4913665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc289a315e8265a21fdfb6185b0dcab0bfac09126b5fac3b70bf996c599cdbf`  
		Last Modified: Fri, 27 Apr 2018 08:31:26 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8`

```console
$ docker pull haproxy@sha256:36525dd333bad732580c4b208a013bf22c5a0a44609a3c41b7fa25ea21383f11
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
$ docker pull haproxy@sha256:9d06f7530c593cc928aac9ab08965dc9589d0c85e3837bc9c16b6fb14ec4e5cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.9 MB (29913923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f85a9f278dc774e9aa13549988b273a0da79c7d58e1a1c59115af63b07a69b81`
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
# Fri, 20 Apr 2018 08:09:42 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 08:09:42 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Thu, 26 Apr 2018 22:57:25 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Apr 2018 22:57:26 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 26 Apr 2018 22:57:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Apr 2018 22:57:26 GMT
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
	-	`sha256:740484f62bdc91fc3111779fa055c92a60ce935e28382e77e1af540d2955780f`  
		Last Modified: Thu, 26 Apr 2018 23:56:01 GMT  
		Size: 5.3 MB (5322293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbae85cb2bed194887a742e3c696268ae906243101fe1da7a17d404e07249906`  
		Last Modified: Thu, 26 Apr 2018 23:56:00 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:65b1613c2c5365baf77b08edc2888084c553ac3baf895142c897211ed542f970
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (27980044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:291166bc86548af259ecbdb1d6537234de5b4ea54d28ec4882eef86a878862f6`
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
# Fri, 20 Apr 2018 08:49:05 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 08:49:05 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 08:49:52 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Apr 2018 08:49:52 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 08:49:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 08:49:53 GMT
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
	-	`sha256:fc299cb944fda7d10b96b0424107b92ef1e8f7e1ba545407f0f3aa08084a21d5`  
		Last Modified: Fri, 20 Apr 2018 08:50:12 GMT  
		Size: 5.0 MB (4998712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2370e43f35ed349046ad9fb2ad99f0fb7d3a4d784f381801b200afb3a7ea6931`  
		Last Modified: Fri, 20 Apr 2018 08:50:11 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:0bde153d6e4e2fca0c3e9565524d5da51a7c511aa03f36969707fe47458f6758
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25903218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b67b5f701e64c41b5b4b0faf8ddccc64c4b75b78436227520520668a6dea090`
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
# Fri, 20 Apr 2018 11:57:39 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 11:57:39 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 11:58:13 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Apr 2018 11:58:14 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 11:58:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 11:58:14 GMT
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
	-	`sha256:6fdbff27e54e027c4d7901fd310a3943c6131ddb1e61fa683e95548dc515fc4a`  
		Last Modified: Fri, 20 Apr 2018 11:58:33 GMT  
		Size: 4.9 MB (4889142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad3da7db70936f9d0c4723764af2a1b435821cefeda12b5ceededbe73b9a567`  
		Last Modified: Fri, 20 Apr 2018 11:58:32 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:2c5d7f58b3ce8cbe5885b9c4746fa1f2e8c6509821bc996a59354c642509d57d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27112117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9d64389bed064751682b4d319f02c247435c81f5b17f1ef3af9afccb00e9e4c`
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
# Fri, 20 Apr 2018 08:40:07 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 08:40:07 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 08:42:38 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Apr 2018 08:42:39 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 08:42:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 08:42:40 GMT
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
	-	`sha256:8c0eddf6dc034bf96cc4f8df7a05bfc0b2c19877919cdabef849df183cc447f3`  
		Last Modified: Fri, 20 Apr 2018 08:44:56 GMT  
		Size: 5.0 MB (4955729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ede451f0948d431d200a366f802a1fd79888e33a14b0073020f1048ce1795f`  
		Last Modified: Fri, 20 Apr 2018 08:44:54 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; 386

```console
$ docker pull haproxy@sha256:76fddc579fff841cb654a0764e7042fd87aac862bafadac81efc7b817c020ec5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29047229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c3526cd6675fe9e90f92be95e49032c887f24bc8b287d14e396b5ea2dfe7dbc`
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
# Fri, 20 Apr 2018 11:05:50 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 11:05:50 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 11:06:38 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Apr 2018 11:06:38 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 11:06:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 11:06:38 GMT
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
	-	`sha256:1d763bd49dc66590cd44a0e37275768aa4c9712a9062a5c6932aba10a4fd901d`  
		Last Modified: Fri, 20 Apr 2018 11:08:41 GMT  
		Size: 3.8 MB (3789445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8879193aad00dc507ed808e6091c3129d528b6c34bf230798480b6014b6f8c`  
		Last Modified: Fri, 20 Apr 2018 11:08:41 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; ppc64le

```console
$ docker pull haproxy@sha256:276ad33d8d9b8f29afbb79ffc64f903536d88feaf25ae4a7ef5f0cc73ee2c967
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29503244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6da3ea658d7d2bb404fdc4edca61cc2ade2057c24c3836b40b6bd7123696ef15`
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
# Fri, 20 Apr 2018 08:24:08 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 08:24:09 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 27 Apr 2018 08:28:49 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 08:28:51 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 08:28:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:28:53 GMT
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
	-	`sha256:e85e5e57399b7d6e710bc54e35740b6ff68c30b1d823e5c216b1680672260f6b`  
		Last Modified: Fri, 27 Apr 2018 08:31:46 GMT  
		Size: 5.0 MB (4975529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e606916a44a0c6646b639eac468647de8c52eac024c8420f80eeaecb5736b082`  
		Last Modified: Fri, 27 Apr 2018 08:31:45 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; s390x

```console
$ docker pull haproxy@sha256:9f4fef7fc3b575f2c83c2f5cad85466ca20ed6e46fd7d71f88e565b78d200b2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29318358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b36882cf685aac8be29b54618d4c8160c77479967a2ecb0a65f9b26429a0a5`
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
# Fri, 20 Apr 2018 11:41:36 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 11:41:36 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 11:42:11 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Apr 2018 11:42:11 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 11:42:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 11:42:11 GMT
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
	-	`sha256:4a56a91525c770b62b646089a44b3f9a401ed692e3802ac61eed26178c669b97`  
		Last Modified: Fri, 20 Apr 2018 11:43:28 GMT  
		Size: 5.1 MB (5136444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48116a059d1637a86ef2519edc06839b208742b595c852adee42170dca6132c2`  
		Last Modified: Fri, 20 Apr 2018 11:43:26 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8.8`

```console
$ docker pull haproxy@sha256:36525dd333bad732580c4b208a013bf22c5a0a44609a3c41b7fa25ea21383f11
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

### `haproxy:1.8.8` - linux; amd64

```console
$ docker pull haproxy@sha256:9d06f7530c593cc928aac9ab08965dc9589d0c85e3837bc9c16b6fb14ec4e5cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.9 MB (29913923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f85a9f278dc774e9aa13549988b273a0da79c7d58e1a1c59115af63b07a69b81`
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
# Fri, 20 Apr 2018 08:09:42 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 08:09:42 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Thu, 26 Apr 2018 22:57:25 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Apr 2018 22:57:26 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 26 Apr 2018 22:57:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Apr 2018 22:57:26 GMT
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
	-	`sha256:740484f62bdc91fc3111779fa055c92a60ce935e28382e77e1af540d2955780f`  
		Last Modified: Thu, 26 Apr 2018 23:56:01 GMT  
		Size: 5.3 MB (5322293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbae85cb2bed194887a742e3c696268ae906243101fe1da7a17d404e07249906`  
		Last Modified: Thu, 26 Apr 2018 23:56:00 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.8` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:65b1613c2c5365baf77b08edc2888084c553ac3baf895142c897211ed542f970
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (27980044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:291166bc86548af259ecbdb1d6537234de5b4ea54d28ec4882eef86a878862f6`
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
# Fri, 20 Apr 2018 08:49:05 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 08:49:05 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 08:49:52 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Apr 2018 08:49:52 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 08:49:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 08:49:53 GMT
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
	-	`sha256:fc299cb944fda7d10b96b0424107b92ef1e8f7e1ba545407f0f3aa08084a21d5`  
		Last Modified: Fri, 20 Apr 2018 08:50:12 GMT  
		Size: 5.0 MB (4998712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2370e43f35ed349046ad9fb2ad99f0fb7d3a4d784f381801b200afb3a7ea6931`  
		Last Modified: Fri, 20 Apr 2018 08:50:11 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.8` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:0bde153d6e4e2fca0c3e9565524d5da51a7c511aa03f36969707fe47458f6758
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25903218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b67b5f701e64c41b5b4b0faf8ddccc64c4b75b78436227520520668a6dea090`
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
# Fri, 20 Apr 2018 11:57:39 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 11:57:39 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 11:58:13 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Apr 2018 11:58:14 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 11:58:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 11:58:14 GMT
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
	-	`sha256:6fdbff27e54e027c4d7901fd310a3943c6131ddb1e61fa683e95548dc515fc4a`  
		Last Modified: Fri, 20 Apr 2018 11:58:33 GMT  
		Size: 4.9 MB (4889142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad3da7db70936f9d0c4723764af2a1b435821cefeda12b5ceededbe73b9a567`  
		Last Modified: Fri, 20 Apr 2018 11:58:32 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.8` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:2c5d7f58b3ce8cbe5885b9c4746fa1f2e8c6509821bc996a59354c642509d57d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27112117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9d64389bed064751682b4d319f02c247435c81f5b17f1ef3af9afccb00e9e4c`
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
# Fri, 20 Apr 2018 08:40:07 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 08:40:07 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 08:42:38 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Apr 2018 08:42:39 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 08:42:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 08:42:40 GMT
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
	-	`sha256:8c0eddf6dc034bf96cc4f8df7a05bfc0b2c19877919cdabef849df183cc447f3`  
		Last Modified: Fri, 20 Apr 2018 08:44:56 GMT  
		Size: 5.0 MB (4955729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ede451f0948d431d200a366f802a1fd79888e33a14b0073020f1048ce1795f`  
		Last Modified: Fri, 20 Apr 2018 08:44:54 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.8` - linux; 386

```console
$ docker pull haproxy@sha256:76fddc579fff841cb654a0764e7042fd87aac862bafadac81efc7b817c020ec5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29047229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c3526cd6675fe9e90f92be95e49032c887f24bc8b287d14e396b5ea2dfe7dbc`
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
# Fri, 20 Apr 2018 11:05:50 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 11:05:50 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 11:06:38 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Apr 2018 11:06:38 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 11:06:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 11:06:38 GMT
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
	-	`sha256:1d763bd49dc66590cd44a0e37275768aa4c9712a9062a5c6932aba10a4fd901d`  
		Last Modified: Fri, 20 Apr 2018 11:08:41 GMT  
		Size: 3.8 MB (3789445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8879193aad00dc507ed808e6091c3129d528b6c34bf230798480b6014b6f8c`  
		Last Modified: Fri, 20 Apr 2018 11:08:41 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.8` - linux; ppc64le

```console
$ docker pull haproxy@sha256:276ad33d8d9b8f29afbb79ffc64f903536d88feaf25ae4a7ef5f0cc73ee2c967
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29503244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6da3ea658d7d2bb404fdc4edca61cc2ade2057c24c3836b40b6bd7123696ef15`
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
# Fri, 20 Apr 2018 08:24:08 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 08:24:09 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 27 Apr 2018 08:28:49 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 08:28:51 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 08:28:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:28:53 GMT
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
	-	`sha256:e85e5e57399b7d6e710bc54e35740b6ff68c30b1d823e5c216b1680672260f6b`  
		Last Modified: Fri, 27 Apr 2018 08:31:46 GMT  
		Size: 5.0 MB (4975529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e606916a44a0c6646b639eac468647de8c52eac024c8420f80eeaecb5736b082`  
		Last Modified: Fri, 27 Apr 2018 08:31:45 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.8` - linux; s390x

```console
$ docker pull haproxy@sha256:9f4fef7fc3b575f2c83c2f5cad85466ca20ed6e46fd7d71f88e565b78d200b2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29318358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b36882cf685aac8be29b54618d4c8160c77479967a2ecb0a65f9b26429a0a5`
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
# Fri, 20 Apr 2018 11:41:36 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 11:41:36 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 11:42:11 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Apr 2018 11:42:11 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 11:42:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 11:42:11 GMT
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
	-	`sha256:4a56a91525c770b62b646089a44b3f9a401ed692e3802ac61eed26178c669b97`  
		Last Modified: Fri, 20 Apr 2018 11:43:28 GMT  
		Size: 5.1 MB (5136444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48116a059d1637a86ef2519edc06839b208742b595c852adee42170dca6132c2`  
		Last Modified: Fri, 20 Apr 2018 11:43:26 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8.8-alpine`

```console
$ docker pull haproxy@sha256:b03c89bb0a3eb9e4660738f5bacfcf4c4da7c711a79203a6bc29ddc30b7a6c0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:1.8.8-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:5da96afa94aecefe69c170259c42911adbd9687c213772213542115d037b0529
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8083365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd69e4a8e4f8af788ee3bd637d69e3d3634b9a3717b865208a0de12bf46112a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Thu, 26 Apr 2018 22:57:51 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 26 Apr 2018 22:57:52 GMT
ENV HAPROXY_VERSION=1.8.8
# Thu, 26 Apr 2018 22:57:52 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Thu, 26 Apr 2018 22:58:20 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Apr 2018 22:58:20 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 26 Apr 2018 22:58:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Apr 2018 22:58:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f2cb899cb8cacec5cdd38acf4c0451d04c62774b8032440051f5ab3785d7ef`  
		Last Modified: Thu, 26 Apr 2018 23:57:29 GMT  
		Size: 6.0 MB (6017448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c3c1b19af2f8f9342ceda4957525402de9ac22febd2957b4a9ef776a020833`  
		Last Modified: Thu, 26 Apr 2018 23:57:27 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.8-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:abe6da15f54f43b41a0e94ee1135e96389f2ba040b27d983d0dbb62c93587df7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7487395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8165c56b5ed6ae70e7ea8630d64f02ebd321bc7971f92fbce5f538a7f7e2052`
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
# Fri, 20 Apr 2018 08:43:10 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 08:43:11 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 08:43:12 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 20 Apr 2018 08:44:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 20 Apr 2018 08:44:09 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 08:44:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 08:44:11 GMT
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
	-	`sha256:03e7d8985af800c969018cb70ee7d8cf708291e2e550bbea9152bee26187a6e5`  
		Last Modified: Fri, 20 Apr 2018 08:46:31 GMT  
		Size: 5.6 MB (5572090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62aeb7b8a5530e661754463ef54c6ae6cebc6ddc9738ced08f32b91f2f25886`  
		Last Modified: Fri, 20 Apr 2018 08:46:29 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.8-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:12c860eaefdd17a3e56f690cf9ee10536b8e5f4f9fc1c843a133447cdcd95d74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7824793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:046ec114a0472d5e50358fa638aafd904df57f011fcb1d99fe511b1209df9c21`
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
# Fri, 20 Apr 2018 11:07:32 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 11:07:32 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 11:07:32 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 20 Apr 2018 11:08:31 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 20 Apr 2018 11:08:31 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 11:08:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 11:08:32 GMT
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
	-	`sha256:1ded9158bd44c24ecd2f89eceaba39fe1d4ca864062e626ded4f2fccde040ac3`  
		Last Modified: Fri, 20 Apr 2018 11:08:59 GMT  
		Size: 5.8 MB (5778643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009c8934b563dcf7efaab92cd1687558621f25961f75dfac4619ebbaf08849bd`  
		Last Modified: Fri, 20 Apr 2018 11:08:57 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.8-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:e13b3138b38c617d50c788972daf39bd961da75813cb79bee6a532d7aadbf748
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7809387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34fddac803fdc3458a21e35905f1f680c2a34abed989714e442a90bd62f939f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 08:29:10 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 27 Apr 2018 08:29:11 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 27 Apr 2018 08:29:11 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 27 Apr 2018 08:29:31 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 08:29:32 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 08:29:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:29:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:9d2d01e6421e5e3ee3f2c6a4ec20758cb0b206841c01b78a15b7192575d6d67f`  
		Last Modified: Fri, 27 Apr 2018 08:32:16 GMT  
		Size: 5.7 MB (5727362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96558af73b0585306f2622d1a6c6cabe2a30e74ae3b885d41400522a58ee3937`  
		Last Modified: Fri, 27 Apr 2018 08:32:14 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.8-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:742aba091789cf27a7daef3d8d71075c515e75d68e8fcdf1118065c8fdd5a158
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7852692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2690fa10f3bd65c513e9f437367c83de13e099ca05690eb7c82fadb24f2d53a`
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
# Fri, 20 Apr 2018 11:42:20 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 11:42:22 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 11:42:25 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 20 Apr 2018 11:43:04 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 20 Apr 2018 11:43:04 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 11:43:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 11:43:04 GMT
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
	-	`sha256:4ef26f8f699046308dce20467ff9715d3b95e400d65beec03f51529e3241fc0b`  
		Last Modified: Fri, 20 Apr 2018 11:43:53 GMT  
		Size: 5.8 MB (5786676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325bef6daee6ac15cc2a87ee858f5e9b976a8a581693917ca68a1763e110d839`  
		Last Modified: Fri, 20 Apr 2018 11:43:52 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8-alpine`

```console
$ docker pull haproxy@sha256:b03c89bb0a3eb9e4660738f5bacfcf4c4da7c711a79203a6bc29ddc30b7a6c0a
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
$ docker pull haproxy@sha256:5da96afa94aecefe69c170259c42911adbd9687c213772213542115d037b0529
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8083365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd69e4a8e4f8af788ee3bd637d69e3d3634b9a3717b865208a0de12bf46112a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Thu, 26 Apr 2018 22:57:51 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 26 Apr 2018 22:57:52 GMT
ENV HAPROXY_VERSION=1.8.8
# Thu, 26 Apr 2018 22:57:52 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Thu, 26 Apr 2018 22:58:20 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Apr 2018 22:58:20 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 26 Apr 2018 22:58:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Apr 2018 22:58:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f2cb899cb8cacec5cdd38acf4c0451d04c62774b8032440051f5ab3785d7ef`  
		Last Modified: Thu, 26 Apr 2018 23:57:29 GMT  
		Size: 6.0 MB (6017448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c3c1b19af2f8f9342ceda4957525402de9ac22febd2957b4a9ef776a020833`  
		Last Modified: Thu, 26 Apr 2018 23:57:27 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:abe6da15f54f43b41a0e94ee1135e96389f2ba040b27d983d0dbb62c93587df7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7487395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8165c56b5ed6ae70e7ea8630d64f02ebd321bc7971f92fbce5f538a7f7e2052`
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
# Fri, 20 Apr 2018 08:43:10 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 08:43:11 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 08:43:12 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 20 Apr 2018 08:44:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 20 Apr 2018 08:44:09 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 08:44:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 08:44:11 GMT
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
	-	`sha256:03e7d8985af800c969018cb70ee7d8cf708291e2e550bbea9152bee26187a6e5`  
		Last Modified: Fri, 20 Apr 2018 08:46:31 GMT  
		Size: 5.6 MB (5572090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62aeb7b8a5530e661754463ef54c6ae6cebc6ddc9738ced08f32b91f2f25886`  
		Last Modified: Fri, 20 Apr 2018 08:46:29 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:12c860eaefdd17a3e56f690cf9ee10536b8e5f4f9fc1c843a133447cdcd95d74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7824793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:046ec114a0472d5e50358fa638aafd904df57f011fcb1d99fe511b1209df9c21`
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
# Fri, 20 Apr 2018 11:07:32 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 11:07:32 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 11:07:32 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 20 Apr 2018 11:08:31 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 20 Apr 2018 11:08:31 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 11:08:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 11:08:32 GMT
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
	-	`sha256:1ded9158bd44c24ecd2f89eceaba39fe1d4ca864062e626ded4f2fccde040ac3`  
		Last Modified: Fri, 20 Apr 2018 11:08:59 GMT  
		Size: 5.8 MB (5778643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009c8934b563dcf7efaab92cd1687558621f25961f75dfac4619ebbaf08849bd`  
		Last Modified: Fri, 20 Apr 2018 11:08:57 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:e13b3138b38c617d50c788972daf39bd961da75813cb79bee6a532d7aadbf748
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7809387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34fddac803fdc3458a21e35905f1f680c2a34abed989714e442a90bd62f939f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 08:29:10 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 27 Apr 2018 08:29:11 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 27 Apr 2018 08:29:11 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 27 Apr 2018 08:29:31 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 08:29:32 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 08:29:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:29:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:9d2d01e6421e5e3ee3f2c6a4ec20758cb0b206841c01b78a15b7192575d6d67f`  
		Last Modified: Fri, 27 Apr 2018 08:32:16 GMT  
		Size: 5.7 MB (5727362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96558af73b0585306f2622d1a6c6cabe2a30e74ae3b885d41400522a58ee3937`  
		Last Modified: Fri, 27 Apr 2018 08:32:14 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:742aba091789cf27a7daef3d8d71075c515e75d68e8fcdf1118065c8fdd5a158
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7852692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2690fa10f3bd65c513e9f437367c83de13e099ca05690eb7c82fadb24f2d53a`
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
# Fri, 20 Apr 2018 11:42:20 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 11:42:22 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 11:42:25 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 20 Apr 2018 11:43:04 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 20 Apr 2018 11:43:04 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 11:43:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 11:43:04 GMT
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
	-	`sha256:4ef26f8f699046308dce20467ff9715d3b95e400d65beec03f51529e3241fc0b`  
		Last Modified: Fri, 20 Apr 2018 11:43:53 GMT  
		Size: 5.8 MB (5786676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325bef6daee6ac15cc2a87ee858f5e9b976a8a581693917ca68a1763e110d839`  
		Last Modified: Fri, 20 Apr 2018 11:43:52 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1-alpine`

```console
$ docker pull haproxy@sha256:b03c89bb0a3eb9e4660738f5bacfcf4c4da7c711a79203a6bc29ddc30b7a6c0a
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
$ docker pull haproxy@sha256:5da96afa94aecefe69c170259c42911adbd9687c213772213542115d037b0529
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8083365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd69e4a8e4f8af788ee3bd637d69e3d3634b9a3717b865208a0de12bf46112a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Thu, 26 Apr 2018 22:57:51 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 26 Apr 2018 22:57:52 GMT
ENV HAPROXY_VERSION=1.8.8
# Thu, 26 Apr 2018 22:57:52 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Thu, 26 Apr 2018 22:58:20 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Apr 2018 22:58:20 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 26 Apr 2018 22:58:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Apr 2018 22:58:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f2cb899cb8cacec5cdd38acf4c0451d04c62774b8032440051f5ab3785d7ef`  
		Last Modified: Thu, 26 Apr 2018 23:57:29 GMT  
		Size: 6.0 MB (6017448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c3c1b19af2f8f9342ceda4957525402de9ac22febd2957b4a9ef776a020833`  
		Last Modified: Thu, 26 Apr 2018 23:57:27 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:abe6da15f54f43b41a0e94ee1135e96389f2ba040b27d983d0dbb62c93587df7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7487395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8165c56b5ed6ae70e7ea8630d64f02ebd321bc7971f92fbce5f538a7f7e2052`
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
# Fri, 20 Apr 2018 08:43:10 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 08:43:11 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 08:43:12 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 20 Apr 2018 08:44:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 20 Apr 2018 08:44:09 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 08:44:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 08:44:11 GMT
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
	-	`sha256:03e7d8985af800c969018cb70ee7d8cf708291e2e550bbea9152bee26187a6e5`  
		Last Modified: Fri, 20 Apr 2018 08:46:31 GMT  
		Size: 5.6 MB (5572090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62aeb7b8a5530e661754463ef54c6ae6cebc6ddc9738ced08f32b91f2f25886`  
		Last Modified: Fri, 20 Apr 2018 08:46:29 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:12c860eaefdd17a3e56f690cf9ee10536b8e5f4f9fc1c843a133447cdcd95d74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7824793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:046ec114a0472d5e50358fa638aafd904df57f011fcb1d99fe511b1209df9c21`
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
# Fri, 20 Apr 2018 11:07:32 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 11:07:32 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 11:07:32 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 20 Apr 2018 11:08:31 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 20 Apr 2018 11:08:31 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 11:08:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 11:08:32 GMT
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
	-	`sha256:1ded9158bd44c24ecd2f89eceaba39fe1d4ca864062e626ded4f2fccde040ac3`  
		Last Modified: Fri, 20 Apr 2018 11:08:59 GMT  
		Size: 5.8 MB (5778643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009c8934b563dcf7efaab92cd1687558621f25961f75dfac4619ebbaf08849bd`  
		Last Modified: Fri, 20 Apr 2018 11:08:57 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:e13b3138b38c617d50c788972daf39bd961da75813cb79bee6a532d7aadbf748
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7809387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34fddac803fdc3458a21e35905f1f680c2a34abed989714e442a90bd62f939f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 08:29:10 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 27 Apr 2018 08:29:11 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 27 Apr 2018 08:29:11 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 27 Apr 2018 08:29:31 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 08:29:32 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 08:29:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:29:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:9d2d01e6421e5e3ee3f2c6a4ec20758cb0b206841c01b78a15b7192575d6d67f`  
		Last Modified: Fri, 27 Apr 2018 08:32:16 GMT  
		Size: 5.7 MB (5727362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96558af73b0585306f2622d1a6c6cabe2a30e74ae3b885d41400522a58ee3937`  
		Last Modified: Fri, 27 Apr 2018 08:32:14 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:742aba091789cf27a7daef3d8d71075c515e75d68e8fcdf1118065c8fdd5a158
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7852692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2690fa10f3bd65c513e9f437367c83de13e099ca05690eb7c82fadb24f2d53a`
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
# Fri, 20 Apr 2018 11:42:20 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 11:42:22 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 11:42:25 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 20 Apr 2018 11:43:04 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 20 Apr 2018 11:43:04 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 11:43:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 11:43:04 GMT
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
	-	`sha256:4ef26f8f699046308dce20467ff9715d3b95e400d65beec03f51529e3241fc0b`  
		Last Modified: Fri, 20 Apr 2018 11:43:53 GMT  
		Size: 5.8 MB (5786676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325bef6daee6ac15cc2a87ee858f5e9b976a8a581693917ca68a1763e110d839`  
		Last Modified: Fri, 20 Apr 2018 11:43:52 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:alpine`

```console
$ docker pull haproxy@sha256:b03c89bb0a3eb9e4660738f5bacfcf4c4da7c711a79203a6bc29ddc30b7a6c0a
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
$ docker pull haproxy@sha256:5da96afa94aecefe69c170259c42911adbd9687c213772213542115d037b0529
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8083365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd69e4a8e4f8af788ee3bd637d69e3d3634b9a3717b865208a0de12bf46112a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Thu, 26 Apr 2018 22:57:51 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 26 Apr 2018 22:57:52 GMT
ENV HAPROXY_VERSION=1.8.8
# Thu, 26 Apr 2018 22:57:52 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Thu, 26 Apr 2018 22:58:20 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 26 Apr 2018 22:58:20 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 26 Apr 2018 22:58:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Apr 2018 22:58:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f2cb899cb8cacec5cdd38acf4c0451d04c62774b8032440051f5ab3785d7ef`  
		Last Modified: Thu, 26 Apr 2018 23:57:29 GMT  
		Size: 6.0 MB (6017448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c3c1b19af2f8f9342ceda4957525402de9ac22febd2957b4a9ef776a020833`  
		Last Modified: Thu, 26 Apr 2018 23:57:27 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:abe6da15f54f43b41a0e94ee1135e96389f2ba040b27d983d0dbb62c93587df7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7487395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8165c56b5ed6ae70e7ea8630d64f02ebd321bc7971f92fbce5f538a7f7e2052`
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
# Fri, 20 Apr 2018 08:43:10 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 08:43:11 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 08:43:12 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 20 Apr 2018 08:44:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 20 Apr 2018 08:44:09 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 08:44:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 08:44:11 GMT
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
	-	`sha256:03e7d8985af800c969018cb70ee7d8cf708291e2e550bbea9152bee26187a6e5`  
		Last Modified: Fri, 20 Apr 2018 08:46:31 GMT  
		Size: 5.6 MB (5572090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62aeb7b8a5530e661754463ef54c6ae6cebc6ddc9738ced08f32b91f2f25886`  
		Last Modified: Fri, 20 Apr 2018 08:46:29 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; 386

```console
$ docker pull haproxy@sha256:12c860eaefdd17a3e56f690cf9ee10536b8e5f4f9fc1c843a133447cdcd95d74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7824793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:046ec114a0472d5e50358fa638aafd904df57f011fcb1d99fe511b1209df9c21`
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
# Fri, 20 Apr 2018 11:07:32 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 11:07:32 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 11:07:32 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 20 Apr 2018 11:08:31 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 20 Apr 2018 11:08:31 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 11:08:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 11:08:32 GMT
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
	-	`sha256:1ded9158bd44c24ecd2f89eceaba39fe1d4ca864062e626ded4f2fccde040ac3`  
		Last Modified: Fri, 20 Apr 2018 11:08:59 GMT  
		Size: 5.8 MB (5778643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009c8934b563dcf7efaab92cd1687558621f25961f75dfac4619ebbaf08849bd`  
		Last Modified: Fri, 20 Apr 2018 11:08:57 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:e13b3138b38c617d50c788972daf39bd961da75813cb79bee6a532d7aadbf748
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7809387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34fddac803fdc3458a21e35905f1f680c2a34abed989714e442a90bd62f939f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 08:29:10 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 27 Apr 2018 08:29:11 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 27 Apr 2018 08:29:11 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 27 Apr 2018 08:29:31 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 08:29:32 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 08:29:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:29:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:9d2d01e6421e5e3ee3f2c6a4ec20758cb0b206841c01b78a15b7192575d6d67f`  
		Last Modified: Fri, 27 Apr 2018 08:32:16 GMT  
		Size: 5.7 MB (5727362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96558af73b0585306f2622d1a6c6cabe2a30e74ae3b885d41400522a58ee3937`  
		Last Modified: Fri, 27 Apr 2018 08:32:14 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:742aba091789cf27a7daef3d8d71075c515e75d68e8fcdf1118065c8fdd5a158
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7852692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2690fa10f3bd65c513e9f437367c83de13e099ca05690eb7c82fadb24f2d53a`
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
# Fri, 20 Apr 2018 11:42:20 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 11:42:22 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 11:42:25 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 20 Apr 2018 11:43:04 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 20 Apr 2018 11:43:04 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 11:43:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 11:43:04 GMT
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
	-	`sha256:4ef26f8f699046308dce20467ff9715d3b95e400d65beec03f51529e3241fc0b`  
		Last Modified: Fri, 20 Apr 2018 11:43:53 GMT  
		Size: 5.8 MB (5786676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325bef6daee6ac15cc2a87ee858f5e9b976a8a581693917ca68a1763e110d839`  
		Last Modified: Fri, 20 Apr 2018 11:43:52 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:latest`

```console
$ docker pull haproxy@sha256:36525dd333bad732580c4b208a013bf22c5a0a44609a3c41b7fa25ea21383f11
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
$ docker pull haproxy@sha256:9d06f7530c593cc928aac9ab08965dc9589d0c85e3837bc9c16b6fb14ec4e5cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.9 MB (29913923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f85a9f278dc774e9aa13549988b273a0da79c7d58e1a1c59115af63b07a69b81`
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
# Fri, 20 Apr 2018 08:09:42 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 08:09:42 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Thu, 26 Apr 2018 22:57:25 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 26 Apr 2018 22:57:26 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 26 Apr 2018 22:57:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Apr 2018 22:57:26 GMT
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
	-	`sha256:740484f62bdc91fc3111779fa055c92a60ce935e28382e77e1af540d2955780f`  
		Last Modified: Thu, 26 Apr 2018 23:56:01 GMT  
		Size: 5.3 MB (5322293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbae85cb2bed194887a742e3c696268ae906243101fe1da7a17d404e07249906`  
		Last Modified: Thu, 26 Apr 2018 23:56:00 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:65b1613c2c5365baf77b08edc2888084c553ac3baf895142c897211ed542f970
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (27980044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:291166bc86548af259ecbdb1d6537234de5b4ea54d28ec4882eef86a878862f6`
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
# Fri, 20 Apr 2018 08:49:05 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 08:49:05 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 08:49:52 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Apr 2018 08:49:52 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 08:49:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 08:49:53 GMT
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
	-	`sha256:fc299cb944fda7d10b96b0424107b92ef1e8f7e1ba545407f0f3aa08084a21d5`  
		Last Modified: Fri, 20 Apr 2018 08:50:12 GMT  
		Size: 5.0 MB (4998712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2370e43f35ed349046ad9fb2ad99f0fb7d3a4d784f381801b200afb3a7ea6931`  
		Last Modified: Fri, 20 Apr 2018 08:50:11 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:0bde153d6e4e2fca0c3e9565524d5da51a7c511aa03f36969707fe47458f6758
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25903218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b67b5f701e64c41b5b4b0faf8ddccc64c4b75b78436227520520668a6dea090`
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
# Fri, 20 Apr 2018 11:57:39 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 11:57:39 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 11:58:13 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Apr 2018 11:58:14 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 11:58:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 11:58:14 GMT
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
	-	`sha256:6fdbff27e54e027c4d7901fd310a3943c6131ddb1e61fa683e95548dc515fc4a`  
		Last Modified: Fri, 20 Apr 2018 11:58:33 GMT  
		Size: 4.9 MB (4889142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad3da7db70936f9d0c4723764af2a1b435821cefeda12b5ceededbe73b9a567`  
		Last Modified: Fri, 20 Apr 2018 11:58:32 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:2c5d7f58b3ce8cbe5885b9c4746fa1f2e8c6509821bc996a59354c642509d57d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27112117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9d64389bed064751682b4d319f02c247435c81f5b17f1ef3af9afccb00e9e4c`
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
# Fri, 20 Apr 2018 08:40:07 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 08:40:07 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 08:42:38 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Apr 2018 08:42:39 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 08:42:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 08:42:40 GMT
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
	-	`sha256:8c0eddf6dc034bf96cc4f8df7a05bfc0b2c19877919cdabef849df183cc447f3`  
		Last Modified: Fri, 20 Apr 2018 08:44:56 GMT  
		Size: 5.0 MB (4955729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ede451f0948d431d200a366f802a1fd79888e33a14b0073020f1048ce1795f`  
		Last Modified: Fri, 20 Apr 2018 08:44:54 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; 386

```console
$ docker pull haproxy@sha256:76fddc579fff841cb654a0764e7042fd87aac862bafadac81efc7b817c020ec5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29047229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c3526cd6675fe9e90f92be95e49032c887f24bc8b287d14e396b5ea2dfe7dbc`
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
# Fri, 20 Apr 2018 11:05:50 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 11:05:50 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 11:06:38 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Apr 2018 11:06:38 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 11:06:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 11:06:38 GMT
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
	-	`sha256:1d763bd49dc66590cd44a0e37275768aa4c9712a9062a5c6932aba10a4fd901d`  
		Last Modified: Fri, 20 Apr 2018 11:08:41 GMT  
		Size: 3.8 MB (3789445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8879193aad00dc507ed808e6091c3129d528b6c34bf230798480b6014b6f8c`  
		Last Modified: Fri, 20 Apr 2018 11:08:41 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; ppc64le

```console
$ docker pull haproxy@sha256:276ad33d8d9b8f29afbb79ffc64f903536d88feaf25ae4a7ef5f0cc73ee2c967
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29503244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6da3ea658d7d2bb404fdc4edca61cc2ade2057c24c3836b40b6bd7123696ef15`
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
# Fri, 20 Apr 2018 08:24:08 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 08:24:09 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 27 Apr 2018 08:28:49 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 08:28:51 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 08:28:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:28:53 GMT
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
	-	`sha256:e85e5e57399b7d6e710bc54e35740b6ff68c30b1d823e5c216b1680672260f6b`  
		Last Modified: Fri, 27 Apr 2018 08:31:46 GMT  
		Size: 5.0 MB (4975529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e606916a44a0c6646b639eac468647de8c52eac024c8420f80eeaecb5736b082`  
		Last Modified: Fri, 27 Apr 2018 08:31:45 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; s390x

```console
$ docker pull haproxy@sha256:9f4fef7fc3b575f2c83c2f5cad85466ca20ed6e46fd7d71f88e565b78d200b2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29318358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b36882cf685aac8be29b54618d4c8160c77479967a2ecb0a65f9b26429a0a5`
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
# Fri, 20 Apr 2018 11:41:36 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 20 Apr 2018 11:41:36 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 20 Apr 2018 11:42:11 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Apr 2018 11:42:11 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 20 Apr 2018 11:42:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Apr 2018 11:42:11 GMT
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
	-	`sha256:4a56a91525c770b62b646089a44b3f9a401ed692e3802ac61eed26178c669b97`  
		Last Modified: Fri, 20 Apr 2018 11:43:28 GMT  
		Size: 5.1 MB (5136444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48116a059d1637a86ef2519edc06839b208742b595c852adee42170dca6132c2`  
		Last Modified: Fri, 20 Apr 2018 11:43:26 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
