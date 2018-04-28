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
$ docker pull haproxy@sha256:8fc234fbbf52c2909e505bb2951b5befe00c213be316c46417a55c06f3af6e47
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
$ docker pull haproxy@sha256:5ca6aaf9c1e2763cff434833e97b8c9e7a76acb376d833e148844d3c9148f3f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 MB (26806218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf5b4de2f786b3f7a290018c53ec37e2874cdb807cac3479d53ca281019c1e80`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:29 GMT
ADD file:ca564f3cd7bd0fee7f6e56d1a55f5f92da6d4bf55ce3bf20ca398e9e95cdf8df in / 
# Sat, 28 Apr 2018 08:53:30 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:32:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:32:53 GMT
ENV HAPROXY_MAJOR=1.8
# Sat, 28 Apr 2018 09:32:53 GMT
ENV HAPROXY_VERSION=1.8.8
# Sat, 28 Apr 2018 09:32:53 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Sat, 28 Apr 2018 09:33:26 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 09:33:26 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Sat, 28 Apr 2018 09:33:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 09:33:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b2a4458ef3b9777a47503028af324e4890546ca8e24a86697b3219a6e3069450`  
		Last Modified: Sat, 28 Apr 2018 09:02:15 GMT  
		Size: 21.2 MB (21175666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e0050017a27fa6b8e3fa0859e382d3625040711c349522c63988b020aaf8d3`  
		Last Modified: Sat, 28 Apr 2018 09:34:19 GMT  
		Size: 1.8 MB (1816196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a891210b6fac5ed463c03457d04d620cb93f2c7e8f13248c7cebfa82e99a157`  
		Last Modified: Sat, 28 Apr 2018 09:34:36 GMT  
		Size: 3.8 MB (3813978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d930aed94b3faa7437a2dcf9886d7348f5afd7585e0f10469147a51cb9e2b5`  
		Last Modified: Sat, 28 Apr 2018 09:34:35 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:46a7d10d490ed022fba7b2c3ed7b649b02218ca1d12d55a1168cf21177a6d3eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25903186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415e5938566f3e7406587e569007d7d5b580021ac8e8b20c867937feeee340a6`
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
# Fri, 27 Apr 2018 12:01:52 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 12:01:53 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 12:01:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 12:01:53 GMT
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
	-	`sha256:ae44b36b980f6354b9ce205a0fa890c7a86be9490163df47fb69c0c4edd634b2`  
		Last Modified: Fri, 27 Apr 2018 12:03:02 GMT  
		Size: 4.9 MB (4889111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ec7989050335836b14446d7604e4becb65dd802709cec9468bb93f9241e9ce`  
		Last Modified: Fri, 27 Apr 2018 12:03:01 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:5ccf732c75ca2682d005910dbed58fb35bde105d0191e1f95113c6c269d34076
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27111963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:925b05249ee53898c41b404d000649ecfe537201751c3f3fae2a7693eb1be19d`
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
# Fri, 27 Apr 2018 09:01:12 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 09:01:17 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 09:01:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 09:01:19 GMT
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
	-	`sha256:1b0af405f71fc97c5e4386d203432f3bbd5a5e6f8c0cbc12f813de62eba877f2`  
		Last Modified: Fri, 27 Apr 2018 09:09:02 GMT  
		Size: 5.0 MB (4955577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66313fc565e6635475625a9e9cca5e7e99a0ec3c6a254b7ccb5f9946b55a2006`  
		Last Modified: Fri, 27 Apr 2018 09:09:01 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; 386

```console
$ docker pull haproxy@sha256:7117e5b224c9444bf69513dbd4af68a9c4e6c467640aecaf7875cae53124a4a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29047216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f792326ec910135587107a836d003c5d02686d333efa42fb050e56a97c34b6`
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
# Fri, 27 Apr 2018 11:07:52 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 11:07:52 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 11:07:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:07:52 GMT
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
	-	`sha256:aae96bfaa08dd2a72eb62bf59bd523b9e85afa9f5812c7c32338685246c64c2e`  
		Last Modified: Fri, 27 Apr 2018 11:10:00 GMT  
		Size: 3.8 MB (3789432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1df6a1ac3dae9a1e6add0c3c6c7bafc9826149e953a2bd1f5059807e612ef3b`  
		Last Modified: Fri, 27 Apr 2018 11:09:59 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; ppc64le

```console
$ docker pull haproxy@sha256:3a72c5d15d2b43ff978e05529abc403a9d5c39fa3a9f74b6ffe24300422f3599
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28394467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cecebf2fb06179e6b4476040329cf2b08cad607729b4f5613ae92af3fd192d5d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:54 GMT
ADD file:c561a92d41ab01d60c88efa7b21fd9b48e6c0c96fb8d2552f4cebbed3df42bca in / 
# Sat, 28 Apr 2018 08:20:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:11:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:13:22 GMT
ENV HAPROXY_MAJOR=1.8
# Sat, 28 Apr 2018 09:13:23 GMT
ENV HAPROXY_VERSION=1.8.8
# Sat, 28 Apr 2018 09:13:24 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Sat, 28 Apr 2018 09:15:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 09:15:34 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Sat, 28 Apr 2018 09:15:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 09:15:36 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:39214b2a7dd7dd2d1069dd155ce8ab2206bb1fda22be8136b88451c8be20e82f`  
		Last Modified: Sat, 28 Apr 2018 08:30:28 GMT  
		Size: 22.8 MB (22753096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0892a9635c660b2edfa136690cdf748cbaae06d6db67168117f5aaf71c03ea`  
		Last Modified: Sat, 28 Apr 2018 09:16:46 GMT  
		Size: 1.8 MB (1781315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74832ab8b0d657996621c8c52e9af4616a7f978239fb353592e13499cb32acc`  
		Last Modified: Sat, 28 Apr 2018 09:17:06 GMT  
		Size: 3.9 MB (3859679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3a77e1d488ac10c1518a58841cf2210d815c07b9103fa2814ef907c88610dd`  
		Last Modified: Sat, 28 Apr 2018 09:17:05 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; s390x

```console
$ docker pull haproxy@sha256:584f4549bc5dc73def800861f8fab280c555cdf89adc059c0e003dc9b5e29f7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 MB (28150233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4afa74614b03bfffeda4fcda48cd4460643db37671db4b2ce4622432e3c91119`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:29 GMT
ADD file:89223bc6886b09479a52e6d05479980ad8e46c8c707ac40cd81b664fe9827428 in / 
# Sat, 28 Apr 2018 11:45:29 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:57:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:58:17 GMT
ENV HAPROXY_MAJOR=1.8
# Sat, 28 Apr 2018 12:58:18 GMT
ENV HAPROXY_VERSION=1.8.8
# Sat, 28 Apr 2018 12:58:18 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Sat, 28 Apr 2018 12:59:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:59:40 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Sat, 28 Apr 2018 12:59:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:59:41 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:39cbaa616b05fb96ca4be9aac8b4d99ba8bf573e07a754a8c43dbec7ff518bbb`  
		Last Modified: Sat, 28 Apr 2018 11:51:43 GMT  
		Size: 22.3 MB (22349898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405179f954c52d80e6d4a0c1495c28fd4d2af3c72bf8456e7cd8ec7844919b79`  
		Last Modified: Sat, 28 Apr 2018 13:00:57 GMT  
		Size: 1.8 MB (1841227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bed5c454f35505623e6ebb9c4637f5dcaf15bb6e35b032371603eb26717a7d`  
		Last Modified: Sat, 28 Apr 2018 13:01:13 GMT  
		Size: 4.0 MB (3958728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5e9047095190c6648c7d96ff17217a4984bd69da428d07ac6a10a0794734b9`  
		Last Modified: Sat, 28 Apr 2018 13:01:11 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5`

```console
$ docker pull haproxy@sha256:89e6f7d962853fbc82e23ccab0842909141f3c06fa978ffc778eed1028d3402b
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
$ docker pull haproxy@sha256:5cb1bade05250c9c588f6fa431dfa893ee8792a2fe7c17262e75d932b206be64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.5 MB (56529828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8358df488f19e30ca7897c2cf7ac5dcb388ed6226e00503cf6ebe7742d77da9f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:23 GMT
ADD file:2d2cd360e66aeff5557c7e7117985a00d109278c3f456ee970afcc9a46483264 in / 
# Sat, 28 Apr 2018 08:49:23 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:28:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:28:58 GMT
ENV HAPROXY_MAJOR=1.5
# Sat, 28 Apr 2018 09:28:59 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 28 Apr 2018 09:28:59 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Sat, 28 Apr 2018 09:29:51 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 09:29:51 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 28 Apr 2018 09:29:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 09:29:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:81fc0826192f72abe617753d378af4047dbce89faf17cdab9166877006a25d8e`  
		Last Modified: Sat, 28 Apr 2018 08:57:10 GMT  
		Size: 52.5 MB (52456037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0611bac1338f15f7f6fc24ae00a3b30ae3542742ebbf1c1ed9d9638e13663318`  
		Last Modified: Sat, 28 Apr 2018 09:33:44 GMT  
		Size: 1.6 MB (1599626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6390a909d4e948c0ac42dfc4724197b0233cad7352114d22a80c314cc8e92818`  
		Last Modified: Sat, 28 Apr 2018 09:33:45 GMT  
		Size: 2.5 MB (2473763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9ef1a53f3f606359a3de2242e7b4513ed7b3452344c84d3f6b9ed1de3aa0ef`  
		Last Modified: Sat, 28 Apr 2018 09:33:44 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:4a97bf469029ad95549f6216de156d1a6a76dfa1fe1239ed80b33498dc2a3904
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52678711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45fa1d9f56556a7c83a07f4bc0804c403a696cf73e686ea363c545297ae7e79e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Fri, 27 Apr 2018 11:58:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 11:58:01 GMT
ENV HAPROXY_MAJOR=1.5
# Fri, 27 Apr 2018 11:58:01 GMT
ENV HAPROXY_VERSION=1.5.19
# Fri, 27 Apr 2018 11:58:01 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Fri, 27 Apr 2018 11:59:05 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 11:59:11 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 11:59:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:59:11 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638f5ce23e68c4be60d4b2fc97e822157bd8fe61236a5bbf858991261c17e273`  
		Last Modified: Fri, 27 Apr 2018 12:02:07 GMT  
		Size: 1.5 MB (1535597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93be99fdadf3dead04264ee5ff43a757bcda89b35ed71336cf9f551eb832ebc7`  
		Last Modified: Fri, 27 Apr 2018 12:02:07 GMT  
		Size: 2.4 MB (2440638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c38d07588ae20b827df7b7d7ac182920230e7c143a8d8f3ddf0811e9a814fa3`  
		Last Modified: Fri, 27 Apr 2018 12:02:06 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:8cd30358ebc77be62326515272a7ef82eabf049cceae488e7730d409f64b5683
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54039556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f27ee4708833e922dded849b85a69aae4f32f907bd9f4127648f1d805840dc2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Fri, 27 Apr 2018 08:46:22 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 08:46:31 GMT
ENV HAPROXY_MAJOR=1.5
# Fri, 27 Apr 2018 08:46:32 GMT
ENV HAPROXY_VERSION=1.5.19
# Fri, 27 Apr 2018 08:46:33 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Fri, 27 Apr 2018 08:48:15 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 08:48:19 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 08:48:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:48:20 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be14b2a7c15a0f030f0c789a8160389c131788c2a86e38b683044e3e6c7df0c3`  
		Last Modified: Fri, 27 Apr 2018 09:03:39 GMT  
		Size: 1.6 MB (1606863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c8fcab9a1af023eb06af25172bf6eaa96d373c14565d5755c3742c406f9e5dd`  
		Last Modified: Fri, 27 Apr 2018 09:03:40 GMT  
		Size: 2.5 MB (2498829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c124276445a2bca703dec117901d993dcc1ed84f91c69493f379a5fbe76dce`  
		Last Modified: Fri, 27 Apr 2018 09:03:40 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; 386

```console
$ docker pull haproxy@sha256:b0129ddc05c48eed8f7f784671e8b2d0d7c4d5a7d57e7419e930b60a9d522371
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.0 MB (58977682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaa2bb71eb90d84f8da0419e90cb03ee6bc8403b39d639daf22e8e91e7b65c7f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Fri, 27 Apr 2018 11:02:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 11:02:58 GMT
ENV HAPROXY_MAJOR=1.5
# Fri, 27 Apr 2018 11:02:58 GMT
ENV HAPROXY_VERSION=1.5.19
# Fri, 27 Apr 2018 11:02:58 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Fri, 27 Apr 2018 11:03:54 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 11:03:55 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 11:03:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:03:55 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ba3229827fda1b93357145544f0818e35e863c5b4991cc88ee266c6688ee80`  
		Last Modified: Fri, 27 Apr 2018 11:08:51 GMT  
		Size: 3.8 MB (3849867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262cf6d9baf064b5c8416f7a74d3c6d47b543abd16e79547c109247da0df9247`  
		Last Modified: Fri, 27 Apr 2018 11:08:50 GMT  
		Size: 2.3 MB (2339787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca06b838edff0e31958063597518ff6811f98bd616ea70aa538b91c486252f52`  
		Last Modified: Fri, 27 Apr 2018 11:08:50 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; ppc64le

```console
$ docker pull haproxy@sha256:4f51a0b48a049e78b094d5e7b19a6a64e6e2fa4970fdc8e784f9a511bf953d21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57637539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38fb3f9d5ffa22658a82d77e09aa388fc9ec2c6c24c0f19ce49a74cbb1a84021`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:01:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:01:11 GMT
ENV HAPROXY_MAJOR=1.5
# Sat, 28 Apr 2018 09:01:13 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 28 Apr 2018 09:01:14 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Sat, 28 Apr 2018 09:06:32 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 09:06:36 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 28 Apr 2018 09:06:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 09:06:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e96bd8611a74f578b8f4e0f2ecc1600e375d98abaacffc9edd5d87e14502c7`  
		Last Modified: Sat, 28 Apr 2018 09:16:06 GMT  
		Size: 1.7 MB (1704017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e25ea5892c51d74929f4ccb4170601bd7fe2e065f993ef40b12c2aa48eb756c`  
		Last Modified: Sat, 28 Apr 2018 09:16:07 GMT  
		Size: 2.5 MB (2540308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c90e2217d33e172bf4818d0b52584836be3a05b7d41d462ea82797650ecd731`  
		Last Modified: Sat, 28 Apr 2018 09:16:04 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; s390x

```console
$ docker pull haproxy@sha256:d7319322ce7c8395d4cd43a261b96d9b1a451204487f858da02fce2257d8d00e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.8 MB (58816248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44894c0d1e134af0d6d0a980170558622ffb9b1b0bd7d4ddc89ce8bab4d466b2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:54:38 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:54:38 GMT
ENV HAPROXY_MAJOR=1.5
# Sat, 28 Apr 2018 12:54:39 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 28 Apr 2018 12:54:39 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Sat, 28 Apr 2018 12:55:34 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:55:34 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 28 Apr 2018 12:55:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:55:35 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8ea47cdeb2913f291184b262c4eb6da47e681a2f03cf25d217834fcd40052a`  
		Last Modified: Sat, 28 Apr 2018 13:00:17 GMT  
		Size: 1.8 MB (1785165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c78cef8a513efb9c78a82cc35a7992fddedd85dff87ff0bdb2d15fd3d5d142`  
		Last Modified: Sat, 28 Apr 2018 13:00:17 GMT  
		Size: 2.6 MB (2564822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a110b3559e594ab0ffa4b85f1e98f14ff15b6141236b1476592f0bd52de09e`  
		Last Modified: Sat, 28 Apr 2018 13:00:15 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5.19`

```console
$ docker pull haproxy@sha256:89e6f7d962853fbc82e23ccab0842909141f3c06fa978ffc778eed1028d3402b
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
$ docker pull haproxy@sha256:5cb1bade05250c9c588f6fa431dfa893ee8792a2fe7c17262e75d932b206be64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.5 MB (56529828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8358df488f19e30ca7897c2cf7ac5dcb388ed6226e00503cf6ebe7742d77da9f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:23 GMT
ADD file:2d2cd360e66aeff5557c7e7117985a00d109278c3f456ee970afcc9a46483264 in / 
# Sat, 28 Apr 2018 08:49:23 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:28:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:28:58 GMT
ENV HAPROXY_MAJOR=1.5
# Sat, 28 Apr 2018 09:28:59 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 28 Apr 2018 09:28:59 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Sat, 28 Apr 2018 09:29:51 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 09:29:51 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 28 Apr 2018 09:29:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 09:29:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:81fc0826192f72abe617753d378af4047dbce89faf17cdab9166877006a25d8e`  
		Last Modified: Sat, 28 Apr 2018 08:57:10 GMT  
		Size: 52.5 MB (52456037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0611bac1338f15f7f6fc24ae00a3b30ae3542742ebbf1c1ed9d9638e13663318`  
		Last Modified: Sat, 28 Apr 2018 09:33:44 GMT  
		Size: 1.6 MB (1599626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6390a909d4e948c0ac42dfc4724197b0233cad7352114d22a80c314cc8e92818`  
		Last Modified: Sat, 28 Apr 2018 09:33:45 GMT  
		Size: 2.5 MB (2473763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9ef1a53f3f606359a3de2242e7b4513ed7b3452344c84d3f6b9ed1de3aa0ef`  
		Last Modified: Sat, 28 Apr 2018 09:33:44 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:4a97bf469029ad95549f6216de156d1a6a76dfa1fe1239ed80b33498dc2a3904
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52678711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45fa1d9f56556a7c83a07f4bc0804c403a696cf73e686ea363c545297ae7e79e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Fri, 27 Apr 2018 11:58:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 11:58:01 GMT
ENV HAPROXY_MAJOR=1.5
# Fri, 27 Apr 2018 11:58:01 GMT
ENV HAPROXY_VERSION=1.5.19
# Fri, 27 Apr 2018 11:58:01 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Fri, 27 Apr 2018 11:59:05 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 11:59:11 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 11:59:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:59:11 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638f5ce23e68c4be60d4b2fc97e822157bd8fe61236a5bbf858991261c17e273`  
		Last Modified: Fri, 27 Apr 2018 12:02:07 GMT  
		Size: 1.5 MB (1535597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93be99fdadf3dead04264ee5ff43a757bcda89b35ed71336cf9f551eb832ebc7`  
		Last Modified: Fri, 27 Apr 2018 12:02:07 GMT  
		Size: 2.4 MB (2440638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c38d07588ae20b827df7b7d7ac182920230e7c143a8d8f3ddf0811e9a814fa3`  
		Last Modified: Fri, 27 Apr 2018 12:02:06 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:8cd30358ebc77be62326515272a7ef82eabf049cceae488e7730d409f64b5683
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54039556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f27ee4708833e922dded849b85a69aae4f32f907bd9f4127648f1d805840dc2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Fri, 27 Apr 2018 08:46:22 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 08:46:31 GMT
ENV HAPROXY_MAJOR=1.5
# Fri, 27 Apr 2018 08:46:32 GMT
ENV HAPROXY_VERSION=1.5.19
# Fri, 27 Apr 2018 08:46:33 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Fri, 27 Apr 2018 08:48:15 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 08:48:19 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 08:48:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:48:20 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be14b2a7c15a0f030f0c789a8160389c131788c2a86e38b683044e3e6c7df0c3`  
		Last Modified: Fri, 27 Apr 2018 09:03:39 GMT  
		Size: 1.6 MB (1606863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c8fcab9a1af023eb06af25172bf6eaa96d373c14565d5755c3742c406f9e5dd`  
		Last Modified: Fri, 27 Apr 2018 09:03:40 GMT  
		Size: 2.5 MB (2498829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c124276445a2bca703dec117901d993dcc1ed84f91c69493f379a5fbe76dce`  
		Last Modified: Fri, 27 Apr 2018 09:03:40 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; 386

```console
$ docker pull haproxy@sha256:b0129ddc05c48eed8f7f784671e8b2d0d7c4d5a7d57e7419e930b60a9d522371
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.0 MB (58977682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaa2bb71eb90d84f8da0419e90cb03ee6bc8403b39d639daf22e8e91e7b65c7f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Fri, 27 Apr 2018 11:02:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 11:02:58 GMT
ENV HAPROXY_MAJOR=1.5
# Fri, 27 Apr 2018 11:02:58 GMT
ENV HAPROXY_VERSION=1.5.19
# Fri, 27 Apr 2018 11:02:58 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Fri, 27 Apr 2018 11:03:54 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 11:03:55 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 11:03:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:03:55 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ba3229827fda1b93357145544f0818e35e863c5b4991cc88ee266c6688ee80`  
		Last Modified: Fri, 27 Apr 2018 11:08:51 GMT  
		Size: 3.8 MB (3849867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262cf6d9baf064b5c8416f7a74d3c6d47b543abd16e79547c109247da0df9247`  
		Last Modified: Fri, 27 Apr 2018 11:08:50 GMT  
		Size: 2.3 MB (2339787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca06b838edff0e31958063597518ff6811f98bd616ea70aa538b91c486252f52`  
		Last Modified: Fri, 27 Apr 2018 11:08:50 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; ppc64le

```console
$ docker pull haproxy@sha256:4f51a0b48a049e78b094d5e7b19a6a64e6e2fa4970fdc8e784f9a511bf953d21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57637539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38fb3f9d5ffa22658a82d77e09aa388fc9ec2c6c24c0f19ce49a74cbb1a84021`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:01:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:01:11 GMT
ENV HAPROXY_MAJOR=1.5
# Sat, 28 Apr 2018 09:01:13 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 28 Apr 2018 09:01:14 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Sat, 28 Apr 2018 09:06:32 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 09:06:36 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 28 Apr 2018 09:06:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 09:06:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e96bd8611a74f578b8f4e0f2ecc1600e375d98abaacffc9edd5d87e14502c7`  
		Last Modified: Sat, 28 Apr 2018 09:16:06 GMT  
		Size: 1.7 MB (1704017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e25ea5892c51d74929f4ccb4170601bd7fe2e065f993ef40b12c2aa48eb756c`  
		Last Modified: Sat, 28 Apr 2018 09:16:07 GMT  
		Size: 2.5 MB (2540308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c90e2217d33e172bf4818d0b52584836be3a05b7d41d462ea82797650ecd731`  
		Last Modified: Sat, 28 Apr 2018 09:16:04 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; s390x

```console
$ docker pull haproxy@sha256:d7319322ce7c8395d4cd43a261b96d9b1a451204487f858da02fce2257d8d00e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.8 MB (58816248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44894c0d1e134af0d6d0a980170558622ffb9b1b0bd7d4ddc89ce8bab4d466b2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:54:38 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:54:38 GMT
ENV HAPROXY_MAJOR=1.5
# Sat, 28 Apr 2018 12:54:39 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 28 Apr 2018 12:54:39 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Sat, 28 Apr 2018 12:55:34 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:55:34 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 28 Apr 2018 12:55:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:55:35 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8ea47cdeb2913f291184b262c4eb6da47e681a2f03cf25d217834fcd40052a`  
		Last Modified: Sat, 28 Apr 2018 13:00:17 GMT  
		Size: 1.8 MB (1785165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c78cef8a513efb9c78a82cc35a7992fddedd85dff87ff0bdb2d15fd3d5d142`  
		Last Modified: Sat, 28 Apr 2018 13:00:17 GMT  
		Size: 2.6 MB (2564822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a110b3559e594ab0ffa4b85f1e98f14ff15b6141236b1476592f0bd52de09e`  
		Last Modified: Sat, 28 Apr 2018 13:00:15 GMT  
		Size: 404.0 B  
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
$ docker pull haproxy@sha256:6761faaa2128e9a81d3dfdcbcaedb6bdc9eb9f9c9fc93f350e4bb5b1babd2377
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
$ docker pull haproxy@sha256:984cb92baf2e35eb264fde0fc74a60d5c89127fa791900cee92cd6d287e8e1ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57283680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3ff301794a828b50bf6be1edc3c06a6c0ce005a80f044d24f4e6c5bb96b5147`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:23 GMT
ADD file:2d2cd360e66aeff5557c7e7117985a00d109278c3f456ee970afcc9a46483264 in / 
# Sat, 28 Apr 2018 08:49:23 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 08:49:32 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 28 Apr 2018 09:30:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:30:39 GMT
ENV HAPROXY_MAJOR=1.6
# Sat, 28 Apr 2018 09:30:39 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 28 Apr 2018 09:30:40 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Sat, 28 Apr 2018 09:31:35 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 09:31:35 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 28 Apr 2018 09:31:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 09:31:36 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:81fc0826192f72abe617753d378af4047dbce89faf17cdab9166877006a25d8e`  
		Last Modified: Sat, 28 Apr 2018 08:57:10 GMT  
		Size: 52.5 MB (52456037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528aed7c1cb82fc550b37d86117dace843e743b131a41fbac4c109125ef2d81b`  
		Last Modified: Sat, 28 Apr 2018 08:57:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afeb2a110ea914ed205833518c22abca7810890891625c6aa190db41ff8e54c2`  
		Last Modified: Sat, 28 Apr 2018 09:34:02 GMT  
		Size: 1.8 MB (1793302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:477c1ac3bc9e6b95c0eb89ab670b597487ac341028d763739c60727806d6c282`  
		Last Modified: Sat, 28 Apr 2018 09:34:03 GMT  
		Size: 3.0 MB (3033715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1fd06d0cfd77efde7160827cccfc98e24de6e282ca323f22f5c7011103996d`  
		Last Modified: Sat, 28 Apr 2018 09:34:02 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:e692738e6553d1fd613784dbeef1dfb8ce263d0f2bea36e20bc4f692efab126e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.4 MB (54449196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb831cbc1a3ce122f1149aa7eca25e45bb72801ea2009e69488e156f3429d705`
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
# Fri, 27 Apr 2018 12:00:22 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 12:00:23 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 12:00:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 12:00:23 GMT
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
	-	`sha256:dffa52a1708f10e59a55fccc3ea3bad34ba9fe5d71333b9d444f41f37228ba4a`  
		Last Modified: Fri, 27 Apr 2018 12:02:25 GMT  
		Size: 4.0 MB (4035717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fdbfcb67b4b9402e898f4a80bb3b75f686cabea81ff81dfbe668d87dae1183a`  
		Last Modified: Fri, 27 Apr 2018 12:02:24 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:037cc71b20c3f8666ebcc4f3842aad904d865d81924782cb9f0bac2c03520caa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.9 MB (55930351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c87108a522a940ff5e21df76941b6c55c1b91d7aee3e5c6b2eeb968fe8bdb61`
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
# Fri, 27 Apr 2018 08:51:18 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 08:51:18 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 08:51:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:51:20 GMT
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
	-	`sha256:dd0ffcf4736e7729d2b69ebfa475f1763e0ce9d0870a6e209442e1d600c886d5`  
		Last Modified: Fri, 27 Apr 2018 09:04:52 GMT  
		Size: 4.2 MB (4182215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ccd7f6c6bd5b44a875c00ecd58d545469ef474e93da2255c69cfdedd73a9a13`  
		Last Modified: Fri, 27 Apr 2018 09:04:51 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; 386

```console
$ docker pull haproxy@sha256:7c12f56f41810e615b526b3c7463663da3d71ff461f8724bc542824ee2c0d8b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59725449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f8333ce685103d10bbdf5162cbeb77caef2c1de28b6f432d0bd9b3eeff8c52d`
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
# Fri, 27 Apr 2018 11:05:14 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 11:05:14 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 11:05:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:05:15 GMT
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
	-	`sha256:7b9b723c4fbd4991a8dc739bbc8c502f2d044a2ef18bccdf21985b16bafabbd8`  
		Last Modified: Fri, 27 Apr 2018 11:09:05 GMT  
		Size: 2.8 MB (2830219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd873d82149bba8607273f7a8cd8958c1cc0d3e7be894511329ffc10056edd64`  
		Last Modified: Fri, 27 Apr 2018 11:09:04 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; ppc64le

```console
$ docker pull haproxy@sha256:359ab79f93c1d2eb4130e1582a2df759cff0651884c2af4855430eb10539245e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58440635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62dac85c9fc1bb190d4d1393836b107bdbe480dcee76bc96866a89718494a2f6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 08:17:55 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 28 Apr 2018 09:08:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:08:14 GMT
ENV HAPROXY_MAJOR=1.6
# Sat, 28 Apr 2018 09:08:18 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 28 Apr 2018 09:08:23 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Sat, 28 Apr 2018 09:10:57 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 09:10:58 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 28 Apr 2018 09:10:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 09:10:59 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:c0c32afd0e17b63e7d5d074bc540e3bb4eb25349d966755c59f1e5c6ca68c61c`  
		Last Modified: Sat, 28 Apr 2018 09:16:28 GMT  
		Size: 1.9 MB (1934799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd709cdde4d564e8f681cfb4adeb0049db24bb2bfccb67ae83fc52532828231`  
		Last Modified: Sat, 28 Apr 2018 09:16:27 GMT  
		Size: 3.1 MB (3112399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d09d1e1dfdf75f08fda13ebf6098171a66c6e7bf684cba17a179537386f7b98`  
		Last Modified: Sat, 28 Apr 2018 09:16:26 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; s390x

```console
$ docker pull haproxy@sha256:02788ceda51b82f8536bf26247d9933a098750f03d06617be7b140aea9a240a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.6 MB (59640374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c5cb432af1787169c1095877cc72c35d5efd797fa07770a47797859ac6ad69a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:42:39 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 28 Apr 2018 12:56:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:56:01 GMT
ENV HAPROXY_MAJOR=1.6
# Sat, 28 Apr 2018 12:56:02 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 28 Apr 2018 12:56:02 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Sat, 28 Apr 2018 12:56:48 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:56:49 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 28 Apr 2018 12:56:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:56:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:eb3ab7d96899775fe53a1a8f69738b633255cff94903432253cf303827737799`  
		Last Modified: Sat, 28 Apr 2018 13:00:38 GMT  
		Size: 2.0 MB (2013789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e1258d22daa1333d3d2a6624fec11b2fde8c79232abdf465a8c9683750e7db`  
		Last Modified: Sat, 28 Apr 2018 13:00:38 GMT  
		Size: 3.2 MB (3160106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73920d2e1024d61163b1a23eaf773967ab147060e3ed2a1ad71347a5e39b296b`  
		Last Modified: Sat, 28 Apr 2018 13:00:37 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6.14`

```console
$ docker pull haproxy@sha256:6761faaa2128e9a81d3dfdcbcaedb6bdc9eb9f9c9fc93f350e4bb5b1babd2377
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
$ docker pull haproxy@sha256:984cb92baf2e35eb264fde0fc74a60d5c89127fa791900cee92cd6d287e8e1ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57283680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3ff301794a828b50bf6be1edc3c06a6c0ce005a80f044d24f4e6c5bb96b5147`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:23 GMT
ADD file:2d2cd360e66aeff5557c7e7117985a00d109278c3f456ee970afcc9a46483264 in / 
# Sat, 28 Apr 2018 08:49:23 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 08:49:32 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 28 Apr 2018 09:30:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:30:39 GMT
ENV HAPROXY_MAJOR=1.6
# Sat, 28 Apr 2018 09:30:39 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 28 Apr 2018 09:30:40 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Sat, 28 Apr 2018 09:31:35 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 09:31:35 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 28 Apr 2018 09:31:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 09:31:36 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:81fc0826192f72abe617753d378af4047dbce89faf17cdab9166877006a25d8e`  
		Last Modified: Sat, 28 Apr 2018 08:57:10 GMT  
		Size: 52.5 MB (52456037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528aed7c1cb82fc550b37d86117dace843e743b131a41fbac4c109125ef2d81b`  
		Last Modified: Sat, 28 Apr 2018 08:57:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afeb2a110ea914ed205833518c22abca7810890891625c6aa190db41ff8e54c2`  
		Last Modified: Sat, 28 Apr 2018 09:34:02 GMT  
		Size: 1.8 MB (1793302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:477c1ac3bc9e6b95c0eb89ab670b597487ac341028d763739c60727806d6c282`  
		Last Modified: Sat, 28 Apr 2018 09:34:03 GMT  
		Size: 3.0 MB (3033715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1fd06d0cfd77efde7160827cccfc98e24de6e282ca323f22f5c7011103996d`  
		Last Modified: Sat, 28 Apr 2018 09:34:02 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:e692738e6553d1fd613784dbeef1dfb8ce263d0f2bea36e20bc4f692efab126e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.4 MB (54449196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb831cbc1a3ce122f1149aa7eca25e45bb72801ea2009e69488e156f3429d705`
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
# Fri, 27 Apr 2018 12:00:22 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 12:00:23 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 12:00:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 12:00:23 GMT
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
	-	`sha256:dffa52a1708f10e59a55fccc3ea3bad34ba9fe5d71333b9d444f41f37228ba4a`  
		Last Modified: Fri, 27 Apr 2018 12:02:25 GMT  
		Size: 4.0 MB (4035717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fdbfcb67b4b9402e898f4a80bb3b75f686cabea81ff81dfbe668d87dae1183a`  
		Last Modified: Fri, 27 Apr 2018 12:02:24 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:037cc71b20c3f8666ebcc4f3842aad904d865d81924782cb9f0bac2c03520caa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.9 MB (55930351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c87108a522a940ff5e21df76941b6c55c1b91d7aee3e5c6b2eeb968fe8bdb61`
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
# Fri, 27 Apr 2018 08:51:18 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 08:51:18 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 08:51:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:51:20 GMT
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
	-	`sha256:dd0ffcf4736e7729d2b69ebfa475f1763e0ce9d0870a6e209442e1d600c886d5`  
		Last Modified: Fri, 27 Apr 2018 09:04:52 GMT  
		Size: 4.2 MB (4182215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ccd7f6c6bd5b44a875c00ecd58d545469ef474e93da2255c69cfdedd73a9a13`  
		Last Modified: Fri, 27 Apr 2018 09:04:51 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; 386

```console
$ docker pull haproxy@sha256:7c12f56f41810e615b526b3c7463663da3d71ff461f8724bc542824ee2c0d8b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59725449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f8333ce685103d10bbdf5162cbeb77caef2c1de28b6f432d0bd9b3eeff8c52d`
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
# Fri, 27 Apr 2018 11:05:14 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 11:05:14 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 11:05:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:05:15 GMT
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
	-	`sha256:7b9b723c4fbd4991a8dc739bbc8c502f2d044a2ef18bccdf21985b16bafabbd8`  
		Last Modified: Fri, 27 Apr 2018 11:09:05 GMT  
		Size: 2.8 MB (2830219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd873d82149bba8607273f7a8cd8958c1cc0d3e7be894511329ffc10056edd64`  
		Last Modified: Fri, 27 Apr 2018 11:09:04 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; ppc64le

```console
$ docker pull haproxy@sha256:359ab79f93c1d2eb4130e1582a2df759cff0651884c2af4855430eb10539245e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58440635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62dac85c9fc1bb190d4d1393836b107bdbe480dcee76bc96866a89718494a2f6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 08:17:55 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 28 Apr 2018 09:08:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:08:14 GMT
ENV HAPROXY_MAJOR=1.6
# Sat, 28 Apr 2018 09:08:18 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 28 Apr 2018 09:08:23 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Sat, 28 Apr 2018 09:10:57 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 09:10:58 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 28 Apr 2018 09:10:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 09:10:59 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:c0c32afd0e17b63e7d5d074bc540e3bb4eb25349d966755c59f1e5c6ca68c61c`  
		Last Modified: Sat, 28 Apr 2018 09:16:28 GMT  
		Size: 1.9 MB (1934799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd709cdde4d564e8f681cfb4adeb0049db24bb2bfccb67ae83fc52532828231`  
		Last Modified: Sat, 28 Apr 2018 09:16:27 GMT  
		Size: 3.1 MB (3112399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d09d1e1dfdf75f08fda13ebf6098171a66c6e7bf684cba17a179537386f7b98`  
		Last Modified: Sat, 28 Apr 2018 09:16:26 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; s390x

```console
$ docker pull haproxy@sha256:02788ceda51b82f8536bf26247d9933a098750f03d06617be7b140aea9a240a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.6 MB (59640374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c5cb432af1787169c1095877cc72c35d5efd797fa07770a47797859ac6ad69a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:42:39 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 28 Apr 2018 12:56:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:56:01 GMT
ENV HAPROXY_MAJOR=1.6
# Sat, 28 Apr 2018 12:56:02 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 28 Apr 2018 12:56:02 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Sat, 28 Apr 2018 12:56:48 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:56:49 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 28 Apr 2018 12:56:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:56:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:eb3ab7d96899775fe53a1a8f69738b633255cff94903432253cf303827737799`  
		Last Modified: Sat, 28 Apr 2018 13:00:38 GMT  
		Size: 2.0 MB (2013789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e1258d22daa1333d3d2a6624fec11b2fde8c79232abdf465a8c9683750e7db`  
		Last Modified: Sat, 28 Apr 2018 13:00:38 GMT  
		Size: 3.2 MB (3160106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73920d2e1024d61163b1a23eaf773967ab147060e3ed2a1ad71347a5e39b296b`  
		Last Modified: Sat, 28 Apr 2018 13:00:37 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6.14-alpine`

```console
$ docker pull haproxy@sha256:698d61216f7dac82205314419fb1f1a63931f4557b62dcaaa1ce65c197d4b4d7
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

### `haproxy:1.6.14-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:30592aef4040c4774512d653635e57e6c0a18916765f420379c52e8bf30bf595
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6284395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e17807fa26919c72053128b01564dd03c63068f37d845c34856327627a75030f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 08:52:27 GMT
ENV HAPROXY_MAJOR=1.6
# Fri, 27 Apr 2018 08:52:27 GMT
ENV HAPROXY_VERSION=1.6.14
# Fri, 27 Apr 2018 08:52:28 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Fri, 27 Apr 2018 08:53:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 08:53:18 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 08:53:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:53:20 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:86ed14b1f7b934a9c7e465fab637306e19c1b474a3edfdc8694f5828daadf11a`  
		Last Modified: Fri, 27 Apr 2018 09:06:05 GMT  
		Size: 4.3 MB (4294962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e5cff85640f838eb85a90a6e902c506a9943ffe409118a0352658c7948852d`  
		Last Modified: Fri, 27 Apr 2018 09:06:03 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:5430c0b62646cbe3fa8d6649c66183a9b2826f90ff52d732ed01181aaa1cbac5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6577179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f579162e931cafe2582ea4294dad5df454f32f47a00552b506d89a20d9c328c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 11:05:20 GMT
ENV HAPROXY_MAJOR=1.6
# Fri, 27 Apr 2018 11:05:21 GMT
ENV HAPROXY_VERSION=1.6.14
# Fri, 27 Apr 2018 11:05:21 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Fri, 27 Apr 2018 11:05:51 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 11:05:52 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 11:05:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:05:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d836b18e30793de3f686df9d6ec5257aad2445a3e29245394411cffb86867a1e`  
		Last Modified: Fri, 27 Apr 2018 11:09:21 GMT  
		Size: 4.5 MB (4450388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4526d6c7ff185296e2d75335f318002c83cab8bc7226bffa153e20ec5b41b2f5`  
		Last Modified: Fri, 27 Apr 2018 11:09:20 GMT  
		Size: 399.0 B  
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

### `haproxy:1.6.14-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:8d6f751820195687d8dce0ae242bed071006064691fd75cf12188d6b07e84854
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6657050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5246da70257924b5f4cf325db3de32d46ebc90fe53b37bc0303563786b25036`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 11:51:01 GMT
ENV HAPROXY_MAJOR=1.6
# Fri, 27 Apr 2018 11:51:01 GMT
ENV HAPROXY_VERSION=1.6.14
# Fri, 27 Apr 2018 11:51:01 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Fri, 27 Apr 2018 11:51:25 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 11:51:25 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 11:51:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:51:25 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:4e9115ea0f076fdffd59abcb06f8ae8c23bc1bb8fabd408d00cfef7f75e6d0ba`  
		Last Modified: Fri, 27 Apr 2018 11:55:34 GMT  
		Size: 4.5 MB (4471244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b8ceb8b4d7e08461a077e35d558d11812843d1dfee2bca7e4aab44de59f447`  
		Last Modified: Fri, 27 Apr 2018 11:55:32 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6-alpine`

```console
$ docker pull haproxy@sha256:698d61216f7dac82205314419fb1f1a63931f4557b62dcaaa1ce65c197d4b4d7
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

### `haproxy:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:30592aef4040c4774512d653635e57e6c0a18916765f420379c52e8bf30bf595
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6284395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e17807fa26919c72053128b01564dd03c63068f37d845c34856327627a75030f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 08:52:27 GMT
ENV HAPROXY_MAJOR=1.6
# Fri, 27 Apr 2018 08:52:27 GMT
ENV HAPROXY_VERSION=1.6.14
# Fri, 27 Apr 2018 08:52:28 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Fri, 27 Apr 2018 08:53:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 08:53:18 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 08:53:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:53:20 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:86ed14b1f7b934a9c7e465fab637306e19c1b474a3edfdc8694f5828daadf11a`  
		Last Modified: Fri, 27 Apr 2018 09:06:05 GMT  
		Size: 4.3 MB (4294962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e5cff85640f838eb85a90a6e902c506a9943ffe409118a0352658c7948852d`  
		Last Modified: Fri, 27 Apr 2018 09:06:03 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:5430c0b62646cbe3fa8d6649c66183a9b2826f90ff52d732ed01181aaa1cbac5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6577179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f579162e931cafe2582ea4294dad5df454f32f47a00552b506d89a20d9c328c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 11:05:20 GMT
ENV HAPROXY_MAJOR=1.6
# Fri, 27 Apr 2018 11:05:21 GMT
ENV HAPROXY_VERSION=1.6.14
# Fri, 27 Apr 2018 11:05:21 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Fri, 27 Apr 2018 11:05:51 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 11:05:52 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 11:05:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:05:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d836b18e30793de3f686df9d6ec5257aad2445a3e29245394411cffb86867a1e`  
		Last Modified: Fri, 27 Apr 2018 11:09:21 GMT  
		Size: 4.5 MB (4450388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4526d6c7ff185296e2d75335f318002c83cab8bc7226bffa153e20ec5b41b2f5`  
		Last Modified: Fri, 27 Apr 2018 11:09:20 GMT  
		Size: 399.0 B  
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

### `haproxy:1.6-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:8d6f751820195687d8dce0ae242bed071006064691fd75cf12188d6b07e84854
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6657050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5246da70257924b5f4cf325db3de32d46ebc90fe53b37bc0303563786b25036`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 11:51:01 GMT
ENV HAPROXY_MAJOR=1.6
# Fri, 27 Apr 2018 11:51:01 GMT
ENV HAPROXY_VERSION=1.6.14
# Fri, 27 Apr 2018 11:51:01 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Fri, 27 Apr 2018 11:51:25 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 11:51:25 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 11:51:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:51:25 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:4e9115ea0f076fdffd59abcb06f8ae8c23bc1bb8fabd408d00cfef7f75e6d0ba`  
		Last Modified: Fri, 27 Apr 2018 11:55:34 GMT  
		Size: 4.5 MB (4471244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b8ceb8b4d7e08461a077e35d558d11812843d1dfee2bca7e4aab44de59f447`  
		Last Modified: Fri, 27 Apr 2018 11:55:32 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7`

```console
$ docker pull haproxy@sha256:c4394d9e7eded986091e241f96cf9ba07ea7f25db66a878fa8d199a2a86d6ac5
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
$ docker pull haproxy@sha256:b42e25ffcb65cf5f26ad24bf08b6bdff5bfa44f218c9a1818bf6ed7c1c89f45f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.1 MB (26053405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b424db117e5a78b8faaebf46341ab19d017695c5f49eba50889f1ce371194884`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:29 GMT
ADD file:ca564f3cd7bd0fee7f6e56d1a55f5f92da6d4bf55ce3bf20ca398e9e95cdf8df in / 
# Sat, 28 Apr 2018 08:53:30 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:32:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:32:07 GMT
ENV HAPROXY_MAJOR=1.7
# Sat, 28 Apr 2018 09:32:08 GMT
ENV HAPROXY_VERSION=1.7.10
# Sat, 28 Apr 2018 09:32:08 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Sat, 28 Apr 2018 09:32:44 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 09:32:44 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 28 Apr 2018 09:32:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 09:32:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b2a4458ef3b9777a47503028af324e4890546ca8e24a86697b3219a6e3069450`  
		Last Modified: Sat, 28 Apr 2018 09:02:15 GMT  
		Size: 21.2 MB (21175666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e0050017a27fa6b8e3fa0859e382d3625040711c349522c63988b020aaf8d3`  
		Last Modified: Sat, 28 Apr 2018 09:34:19 GMT  
		Size: 1.8 MB (1816196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36bae7e100c849e799dbd59f7eed2da7496faa0b4d524ec978571cb1bd72788`  
		Last Modified: Sat, 28 Apr 2018 09:34:20 GMT  
		Size: 3.1 MB (3061143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5447ebf8e77c1446c608e831c7f6a0a22fe740702ec0974e594f16c6b01d9a05`  
		Last Modified: Sat, 28 Apr 2018 09:34:20 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:c7d23537f9fbe498e5c2d8b487ca4b2614443bc2d38d58d5a90105f4fd04f9c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.2 MB (25160053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bf7559c443fac5de0adad0fb34131fae955bf384eff949c67e506bfed314323`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:12:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 12:00:40 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 27 Apr 2018 12:00:41 GMT
ENV HAPROXY_VERSION=1.7.10
# Fri, 27 Apr 2018 12:00:41 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Fri, 27 Apr 2018 12:01:13 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 12:01:13 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 12:01:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 12:01:14 GMT
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
	-	`sha256:37e4f9fa91272d9b6b51edff36aa008561d0a8a743fa1a45bb92c03eee5a39a8`  
		Last Modified: Fri, 27 Apr 2018 12:02:45 GMT  
		Size: 4.1 MB (4145956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760239363994b4eecdf27622e6c9db3e0e281a9a72691b1e826a1fef0d9ba25c`  
		Last Modified: Fri, 27 Apr 2018 12:02:44 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:a4e64ccf2a95c19b16ed28ea23efdb684775ff935071749d2a55ba657abbbda3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26393600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98aa37049c7e8fb79eb10672dfd152fdcb72636dc18d1bab691a732f183f0185`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:38:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 08:54:39 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 27 Apr 2018 08:54:39 GMT
ENV HAPROXY_VERSION=1.7.10
# Fri, 27 Apr 2018 08:54:40 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Fri, 27 Apr 2018 08:56:27 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 08:56:31 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 08:56:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:56:32 GMT
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
	-	`sha256:f408efc88bdd50488e4702684d2106411af8bf303e32e10f0923599cd325f61f`  
		Last Modified: Fri, 27 Apr 2018 09:06:57 GMT  
		Size: 4.2 MB (4237192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301e83a3fe23998147b955acfbe709b3b5fb13bafff23f91c0138b72ef9e30ea`  
		Last Modified: Fri, 27 Apr 2018 09:06:56 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; 386

```console
$ docker pull haproxy@sha256:be1c9b202da95ce1446aae83fe6aea81172ace0aa052c2d867332e419535ae04
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28274527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6632a7bd7c651c5cc01df45998bac1a4556a326eeff80937af56a26d5b093407`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 20:21:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 11:05:55 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 27 Apr 2018 11:05:55 GMT
ENV HAPROXY_VERSION=1.7.10
# Fri, 27 Apr 2018 11:05:55 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Fri, 27 Apr 2018 11:06:38 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 11:06:38 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 11:06:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:06:39 GMT
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
	-	`sha256:67cd02e1faaa82730db992a48fc6badb557d626918616c3303d254975ade8626`  
		Last Modified: Fri, 27 Apr 2018 11:09:35 GMT  
		Size: 3.0 MB (3016721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8824ef6cae00aca71a5568842e6f63466073026af8ffd8866d033b10a2d2ea1`  
		Last Modified: Fri, 27 Apr 2018 11:09:33 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; ppc64le

```console
$ docker pull haproxy@sha256:d36e61a33cb10deafdb9428ef0f8c433bae4f1750dc118316feb73a147e513d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27650787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3effbda6a16ec57c4b039cd450911e7edf16a4e1287c3f33eeef6ff865abb72`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:54 GMT
ADD file:c561a92d41ab01d60c88efa7b21fd9b48e6c0c96fb8d2552f4cebbed3df42bca in / 
# Sat, 28 Apr 2018 08:20:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:11:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:11:16 GMT
ENV HAPROXY_MAJOR=1.7
# Sat, 28 Apr 2018 09:11:17 GMT
ENV HAPROXY_VERSION=1.7.10
# Sat, 28 Apr 2018 09:11:18 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Sat, 28 Apr 2018 09:12:57 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 09:12:58 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 28 Apr 2018 09:13:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 09:13:01 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:39214b2a7dd7dd2d1069dd155ce8ab2206bb1fda22be8136b88451c8be20e82f`  
		Last Modified: Sat, 28 Apr 2018 08:30:28 GMT  
		Size: 22.8 MB (22753096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0892a9635c660b2edfa136690cdf748cbaae06d6db67168117f5aaf71c03ea`  
		Last Modified: Sat, 28 Apr 2018 09:16:46 GMT  
		Size: 1.8 MB (1781315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bca71ecbc76de848bbc3381325ca5730b6a509b9ff8d2a98719d0c31eb11cc`  
		Last Modified: Sat, 28 Apr 2018 09:16:48 GMT  
		Size: 3.1 MB (3115974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cbcfe028dc2d90bd6da1c1ed38fb495661bf3afcf499897d033496440cce3f`  
		Last Modified: Sat, 28 Apr 2018 09:16:46 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; s390x

```console
$ docker pull haproxy@sha256:239df8743110db3fc652305902fbf0aa01abeb4bcce31f6c6925219c4a0b0512
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27375825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92e4da8097a3081126147359180a380a571cc8df9bc3682d0ce1b6c53a5a4ee7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:29 GMT
ADD file:89223bc6886b09479a52e6d05479980ad8e46c8c707ac40cd81b664fe9827428 in / 
# Sat, 28 Apr 2018 11:45:29 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:57:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:57:07 GMT
ENV HAPROXY_MAJOR=1.7
# Sat, 28 Apr 2018 12:57:07 GMT
ENV HAPROXY_VERSION=1.7.10
# Sat, 28 Apr 2018 12:57:07 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Sat, 28 Apr 2018 12:57:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:57:55 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 28 Apr 2018 12:57:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:57:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:39cbaa616b05fb96ca4be9aac8b4d99ba8bf573e07a754a8c43dbec7ff518bbb`  
		Last Modified: Sat, 28 Apr 2018 11:51:43 GMT  
		Size: 22.3 MB (22349898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405179f954c52d80e6d4a0c1495c28fd4d2af3c72bf8456e7cd8ec7844919b79`  
		Last Modified: Sat, 28 Apr 2018 13:00:57 GMT  
		Size: 1.8 MB (1841227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d53bdb6a8e318eaa91f15010f7cd7abef7b609d8270658c25d255f1f2567e2`  
		Last Modified: Sat, 28 Apr 2018 13:00:57 GMT  
		Size: 3.2 MB (3184298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34dd3ae08da2a36eec8c65dd196e8f1d9b626b17302737a374a3f91e13e99e4f`  
		Last Modified: Sat, 28 Apr 2018 13:00:56 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7.10`

```console
$ docker pull haproxy@sha256:c4394d9e7eded986091e241f96cf9ba07ea7f25db66a878fa8d199a2a86d6ac5
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
$ docker pull haproxy@sha256:b42e25ffcb65cf5f26ad24bf08b6bdff5bfa44f218c9a1818bf6ed7c1c89f45f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.1 MB (26053405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b424db117e5a78b8faaebf46341ab19d017695c5f49eba50889f1ce371194884`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:29 GMT
ADD file:ca564f3cd7bd0fee7f6e56d1a55f5f92da6d4bf55ce3bf20ca398e9e95cdf8df in / 
# Sat, 28 Apr 2018 08:53:30 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:32:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:32:07 GMT
ENV HAPROXY_MAJOR=1.7
# Sat, 28 Apr 2018 09:32:08 GMT
ENV HAPROXY_VERSION=1.7.10
# Sat, 28 Apr 2018 09:32:08 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Sat, 28 Apr 2018 09:32:44 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 09:32:44 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 28 Apr 2018 09:32:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 09:32:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b2a4458ef3b9777a47503028af324e4890546ca8e24a86697b3219a6e3069450`  
		Last Modified: Sat, 28 Apr 2018 09:02:15 GMT  
		Size: 21.2 MB (21175666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e0050017a27fa6b8e3fa0859e382d3625040711c349522c63988b020aaf8d3`  
		Last Modified: Sat, 28 Apr 2018 09:34:19 GMT  
		Size: 1.8 MB (1816196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36bae7e100c849e799dbd59f7eed2da7496faa0b4d524ec978571cb1bd72788`  
		Last Modified: Sat, 28 Apr 2018 09:34:20 GMT  
		Size: 3.1 MB (3061143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5447ebf8e77c1446c608e831c7f6a0a22fe740702ec0974e594f16c6b01d9a05`  
		Last Modified: Sat, 28 Apr 2018 09:34:20 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.10` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:c7d23537f9fbe498e5c2d8b487ca4b2614443bc2d38d58d5a90105f4fd04f9c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.2 MB (25160053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bf7559c443fac5de0adad0fb34131fae955bf384eff949c67e506bfed314323`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:12:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 12:00:40 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 27 Apr 2018 12:00:41 GMT
ENV HAPROXY_VERSION=1.7.10
# Fri, 27 Apr 2018 12:00:41 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Fri, 27 Apr 2018 12:01:13 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 12:01:13 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 12:01:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 12:01:14 GMT
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
	-	`sha256:37e4f9fa91272d9b6b51edff36aa008561d0a8a743fa1a45bb92c03eee5a39a8`  
		Last Modified: Fri, 27 Apr 2018 12:02:45 GMT  
		Size: 4.1 MB (4145956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760239363994b4eecdf27622e6c9db3e0e281a9a72691b1e826a1fef0d9ba25c`  
		Last Modified: Fri, 27 Apr 2018 12:02:44 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.10` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:a4e64ccf2a95c19b16ed28ea23efdb684775ff935071749d2a55ba657abbbda3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26393600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98aa37049c7e8fb79eb10672dfd152fdcb72636dc18d1bab691a732f183f0185`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:38:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 08:54:39 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 27 Apr 2018 08:54:39 GMT
ENV HAPROXY_VERSION=1.7.10
# Fri, 27 Apr 2018 08:54:40 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Fri, 27 Apr 2018 08:56:27 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 08:56:31 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 08:56:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:56:32 GMT
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
	-	`sha256:f408efc88bdd50488e4702684d2106411af8bf303e32e10f0923599cd325f61f`  
		Last Modified: Fri, 27 Apr 2018 09:06:57 GMT  
		Size: 4.2 MB (4237192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301e83a3fe23998147b955acfbe709b3b5fb13bafff23f91c0138b72ef9e30ea`  
		Last Modified: Fri, 27 Apr 2018 09:06:56 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.10` - linux; 386

```console
$ docker pull haproxy@sha256:be1c9b202da95ce1446aae83fe6aea81172ace0aa052c2d867332e419535ae04
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28274527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6632a7bd7c651c5cc01df45998bac1a4556a326eeff80937af56a26d5b093407`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 20:21:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 11:05:55 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 27 Apr 2018 11:05:55 GMT
ENV HAPROXY_VERSION=1.7.10
# Fri, 27 Apr 2018 11:05:55 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Fri, 27 Apr 2018 11:06:38 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 11:06:38 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 11:06:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:06:39 GMT
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
	-	`sha256:67cd02e1faaa82730db992a48fc6badb557d626918616c3303d254975ade8626`  
		Last Modified: Fri, 27 Apr 2018 11:09:35 GMT  
		Size: 3.0 MB (3016721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8824ef6cae00aca71a5568842e6f63466073026af8ffd8866d033b10a2d2ea1`  
		Last Modified: Fri, 27 Apr 2018 11:09:33 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.10` - linux; ppc64le

```console
$ docker pull haproxy@sha256:d36e61a33cb10deafdb9428ef0f8c433bae4f1750dc118316feb73a147e513d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27650787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3effbda6a16ec57c4b039cd450911e7edf16a4e1287c3f33eeef6ff865abb72`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:54 GMT
ADD file:c561a92d41ab01d60c88efa7b21fd9b48e6c0c96fb8d2552f4cebbed3df42bca in / 
# Sat, 28 Apr 2018 08:20:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:11:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:11:16 GMT
ENV HAPROXY_MAJOR=1.7
# Sat, 28 Apr 2018 09:11:17 GMT
ENV HAPROXY_VERSION=1.7.10
# Sat, 28 Apr 2018 09:11:18 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Sat, 28 Apr 2018 09:12:57 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 09:12:58 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 28 Apr 2018 09:13:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 09:13:01 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:39214b2a7dd7dd2d1069dd155ce8ab2206bb1fda22be8136b88451c8be20e82f`  
		Last Modified: Sat, 28 Apr 2018 08:30:28 GMT  
		Size: 22.8 MB (22753096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0892a9635c660b2edfa136690cdf748cbaae06d6db67168117f5aaf71c03ea`  
		Last Modified: Sat, 28 Apr 2018 09:16:46 GMT  
		Size: 1.8 MB (1781315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bca71ecbc76de848bbc3381325ca5730b6a509b9ff8d2a98719d0c31eb11cc`  
		Last Modified: Sat, 28 Apr 2018 09:16:48 GMT  
		Size: 3.1 MB (3115974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cbcfe028dc2d90bd6da1c1ed38fb495661bf3afcf499897d033496440cce3f`  
		Last Modified: Sat, 28 Apr 2018 09:16:46 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.10` - linux; s390x

```console
$ docker pull haproxy@sha256:239df8743110db3fc652305902fbf0aa01abeb4bcce31f6c6925219c4a0b0512
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27375825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92e4da8097a3081126147359180a380a571cc8df9bc3682d0ce1b6c53a5a4ee7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:29 GMT
ADD file:89223bc6886b09479a52e6d05479980ad8e46c8c707ac40cd81b664fe9827428 in / 
# Sat, 28 Apr 2018 11:45:29 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:57:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:57:07 GMT
ENV HAPROXY_MAJOR=1.7
# Sat, 28 Apr 2018 12:57:07 GMT
ENV HAPROXY_VERSION=1.7.10
# Sat, 28 Apr 2018 12:57:07 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Sat, 28 Apr 2018 12:57:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:57:55 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 28 Apr 2018 12:57:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:57:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:39cbaa616b05fb96ca4be9aac8b4d99ba8bf573e07a754a8c43dbec7ff518bbb`  
		Last Modified: Sat, 28 Apr 2018 11:51:43 GMT  
		Size: 22.3 MB (22349898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405179f954c52d80e6d4a0c1495c28fd4d2af3c72bf8456e7cd8ec7844919b79`  
		Last Modified: Sat, 28 Apr 2018 13:00:57 GMT  
		Size: 1.8 MB (1841227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d53bdb6a8e318eaa91f15010f7cd7abef7b609d8270658c25d255f1f2567e2`  
		Last Modified: Sat, 28 Apr 2018 13:00:57 GMT  
		Size: 3.2 MB (3184298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34dd3ae08da2a36eec8c65dd196e8f1d9b626b17302737a374a3f91e13e99e4f`  
		Last Modified: Sat, 28 Apr 2018 13:00:56 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7.10-alpine`

```console
$ docker pull haproxy@sha256:23f8324af708e305ccc6d78402607bf83cff107731b76af8cea3ab4545d8da7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `haproxy:1.7.10-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:5bf294f30460928290985654fab1c8fd546efbea5ddff0f6dd39addd96d9f8a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6753831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b3f1e9fd274ef7563b5e4792e90190936afd15e9b3e2b4261500259a95d76b6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 08:57:39 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 27 Apr 2018 08:57:40 GMT
ENV HAPROXY_VERSION=1.7.10
# Fri, 27 Apr 2018 08:57:40 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Fri, 27 Apr 2018 08:58:14 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 08:58:20 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 08:58:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:58:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:9c03575917e25b6dfa35c608f8691c754b2f21d314543503b3a4f0d7763a0147`  
		Last Modified: Fri, 27 Apr 2018 09:08:10 GMT  
		Size: 4.8 MB (4764396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78f0ad6748f08f58dbdbfe8c3410e487b25c59d4d1aca3d29bcb026c5ab55f6`  
		Last Modified: Fri, 27 Apr 2018 09:08:07 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.10-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:d6128f93f0b5a60cd78551595378035f2915a54379a5ff5f874d05b703146128
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7045505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb2768a8fa1e3695e18d620f04e1c9ca7eca6731d01e2f6a60aa61b761b29255`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 11:06:44 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 27 Apr 2018 11:06:44 GMT
ENV HAPROXY_VERSION=1.7.10
# Fri, 27 Apr 2018 11:06:44 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Fri, 27 Apr 2018 11:07:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 11:07:10 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 11:07:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:07:10 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6373c487deddf74e1380583d333af6866026486b45407ef9ebf34a99f8cba209`  
		Last Modified: Fri, 27 Apr 2018 11:09:47 GMT  
		Size: 4.9 MB (4918710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b80aad340641400af2471fea6e6093ab473eed3f3534860a40d77df45375e26`  
		Last Modified: Fri, 27 Apr 2018 11:09:45 GMT  
		Size: 403.0 B  
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

### `haproxy:1.7.10-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:7caf79c5f15da5365b76a9a5dc8db57b6e06efe26ec791a8355962f5778180ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7144720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d1fd3ffd79eed6881f46e85b42d7f73bc39175897e5169777d2391eec63317e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 11:52:28 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 27 Apr 2018 11:52:29 GMT
ENV HAPROXY_VERSION=1.7.10
# Fri, 27 Apr 2018 11:52:29 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Fri, 27 Apr 2018 11:52:50 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 11:52:51 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 11:52:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:52:51 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:2b9a5a0bf040709a6747d948e1da2b143fc2d6a7245a7b7de8a3f38cf867ca65`  
		Last Modified: Fri, 27 Apr 2018 11:56:05 GMT  
		Size: 5.0 MB (4958914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ca34129f9ebe71e2a5a066de04056bae7370bd3ba849cc63dc48fc8a1e2c44`  
		Last Modified: Fri, 27 Apr 2018 11:56:05 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7-alpine`

```console
$ docker pull haproxy@sha256:23f8324af708e305ccc6d78402607bf83cff107731b76af8cea3ab4545d8da7d
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

### `haproxy:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:5bf294f30460928290985654fab1c8fd546efbea5ddff0f6dd39addd96d9f8a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6753831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b3f1e9fd274ef7563b5e4792e90190936afd15e9b3e2b4261500259a95d76b6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 08:57:39 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 27 Apr 2018 08:57:40 GMT
ENV HAPROXY_VERSION=1.7.10
# Fri, 27 Apr 2018 08:57:40 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Fri, 27 Apr 2018 08:58:14 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 08:58:20 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 08:58:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:58:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:9c03575917e25b6dfa35c608f8691c754b2f21d314543503b3a4f0d7763a0147`  
		Last Modified: Fri, 27 Apr 2018 09:08:10 GMT  
		Size: 4.8 MB (4764396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78f0ad6748f08f58dbdbfe8c3410e487b25c59d4d1aca3d29bcb026c5ab55f6`  
		Last Modified: Fri, 27 Apr 2018 09:08:07 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:d6128f93f0b5a60cd78551595378035f2915a54379a5ff5f874d05b703146128
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7045505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb2768a8fa1e3695e18d620f04e1c9ca7eca6731d01e2f6a60aa61b761b29255`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 11:06:44 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 27 Apr 2018 11:06:44 GMT
ENV HAPROXY_VERSION=1.7.10
# Fri, 27 Apr 2018 11:06:44 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Fri, 27 Apr 2018 11:07:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 11:07:10 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 11:07:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:07:10 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6373c487deddf74e1380583d333af6866026486b45407ef9ebf34a99f8cba209`  
		Last Modified: Fri, 27 Apr 2018 11:09:47 GMT  
		Size: 4.9 MB (4918710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b80aad340641400af2471fea6e6093ab473eed3f3534860a40d77df45375e26`  
		Last Modified: Fri, 27 Apr 2018 11:09:45 GMT  
		Size: 403.0 B  
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

### `haproxy:1.7-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:7caf79c5f15da5365b76a9a5dc8db57b6e06efe26ec791a8355962f5778180ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7144720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d1fd3ffd79eed6881f46e85b42d7f73bc39175897e5169777d2391eec63317e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 11:52:28 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 27 Apr 2018 11:52:29 GMT
ENV HAPROXY_VERSION=1.7.10
# Fri, 27 Apr 2018 11:52:29 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Fri, 27 Apr 2018 11:52:50 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 11:52:51 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 27 Apr 2018 11:52:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:52:51 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:2b9a5a0bf040709a6747d948e1da2b143fc2d6a7245a7b7de8a3f38cf867ca65`  
		Last Modified: Fri, 27 Apr 2018 11:56:05 GMT  
		Size: 5.0 MB (4958914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ca34129f9ebe71e2a5a066de04056bae7370bd3ba849cc63dc48fc8a1e2c44`  
		Last Modified: Fri, 27 Apr 2018 11:56:05 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8`

```console
$ docker pull haproxy@sha256:8fc234fbbf52c2909e505bb2951b5befe00c213be316c46417a55c06f3af6e47
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
$ docker pull haproxy@sha256:5ca6aaf9c1e2763cff434833e97b8c9e7a76acb376d833e148844d3c9148f3f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 MB (26806218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf5b4de2f786b3f7a290018c53ec37e2874cdb807cac3479d53ca281019c1e80`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:29 GMT
ADD file:ca564f3cd7bd0fee7f6e56d1a55f5f92da6d4bf55ce3bf20ca398e9e95cdf8df in / 
# Sat, 28 Apr 2018 08:53:30 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:32:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:32:53 GMT
ENV HAPROXY_MAJOR=1.8
# Sat, 28 Apr 2018 09:32:53 GMT
ENV HAPROXY_VERSION=1.8.8
# Sat, 28 Apr 2018 09:32:53 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Sat, 28 Apr 2018 09:33:26 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 09:33:26 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Sat, 28 Apr 2018 09:33:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 09:33:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b2a4458ef3b9777a47503028af324e4890546ca8e24a86697b3219a6e3069450`  
		Last Modified: Sat, 28 Apr 2018 09:02:15 GMT  
		Size: 21.2 MB (21175666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e0050017a27fa6b8e3fa0859e382d3625040711c349522c63988b020aaf8d3`  
		Last Modified: Sat, 28 Apr 2018 09:34:19 GMT  
		Size: 1.8 MB (1816196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a891210b6fac5ed463c03457d04d620cb93f2c7e8f13248c7cebfa82e99a157`  
		Last Modified: Sat, 28 Apr 2018 09:34:36 GMT  
		Size: 3.8 MB (3813978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d930aed94b3faa7437a2dcf9886d7348f5afd7585e0f10469147a51cb9e2b5`  
		Last Modified: Sat, 28 Apr 2018 09:34:35 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:46a7d10d490ed022fba7b2c3ed7b649b02218ca1d12d55a1168cf21177a6d3eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25903186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415e5938566f3e7406587e569007d7d5b580021ac8e8b20c867937feeee340a6`
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
# Fri, 27 Apr 2018 12:01:52 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 12:01:53 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 12:01:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 12:01:53 GMT
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
	-	`sha256:ae44b36b980f6354b9ce205a0fa890c7a86be9490163df47fb69c0c4edd634b2`  
		Last Modified: Fri, 27 Apr 2018 12:03:02 GMT  
		Size: 4.9 MB (4889111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ec7989050335836b14446d7604e4becb65dd802709cec9468bb93f9241e9ce`  
		Last Modified: Fri, 27 Apr 2018 12:03:01 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:5ccf732c75ca2682d005910dbed58fb35bde105d0191e1f95113c6c269d34076
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27111963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:925b05249ee53898c41b404d000649ecfe537201751c3f3fae2a7693eb1be19d`
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
# Fri, 27 Apr 2018 09:01:12 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 09:01:17 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 09:01:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 09:01:19 GMT
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
	-	`sha256:1b0af405f71fc97c5e4386d203432f3bbd5a5e6f8c0cbc12f813de62eba877f2`  
		Last Modified: Fri, 27 Apr 2018 09:09:02 GMT  
		Size: 5.0 MB (4955577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66313fc565e6635475625a9e9cca5e7e99a0ec3c6a254b7ccb5f9946b55a2006`  
		Last Modified: Fri, 27 Apr 2018 09:09:01 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; 386

```console
$ docker pull haproxy@sha256:7117e5b224c9444bf69513dbd4af68a9c4e6c467640aecaf7875cae53124a4a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29047216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f792326ec910135587107a836d003c5d02686d333efa42fb050e56a97c34b6`
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
# Fri, 27 Apr 2018 11:07:52 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 11:07:52 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 11:07:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:07:52 GMT
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
	-	`sha256:aae96bfaa08dd2a72eb62bf59bd523b9e85afa9f5812c7c32338685246c64c2e`  
		Last Modified: Fri, 27 Apr 2018 11:10:00 GMT  
		Size: 3.8 MB (3789432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1df6a1ac3dae9a1e6add0c3c6c7bafc9826149e953a2bd1f5059807e612ef3b`  
		Last Modified: Fri, 27 Apr 2018 11:09:59 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; ppc64le

```console
$ docker pull haproxy@sha256:3a72c5d15d2b43ff978e05529abc403a9d5c39fa3a9f74b6ffe24300422f3599
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28394467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cecebf2fb06179e6b4476040329cf2b08cad607729b4f5613ae92af3fd192d5d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:54 GMT
ADD file:c561a92d41ab01d60c88efa7b21fd9b48e6c0c96fb8d2552f4cebbed3df42bca in / 
# Sat, 28 Apr 2018 08:20:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:11:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:13:22 GMT
ENV HAPROXY_MAJOR=1.8
# Sat, 28 Apr 2018 09:13:23 GMT
ENV HAPROXY_VERSION=1.8.8
# Sat, 28 Apr 2018 09:13:24 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Sat, 28 Apr 2018 09:15:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 09:15:34 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Sat, 28 Apr 2018 09:15:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 09:15:36 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:39214b2a7dd7dd2d1069dd155ce8ab2206bb1fda22be8136b88451c8be20e82f`  
		Last Modified: Sat, 28 Apr 2018 08:30:28 GMT  
		Size: 22.8 MB (22753096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0892a9635c660b2edfa136690cdf748cbaae06d6db67168117f5aaf71c03ea`  
		Last Modified: Sat, 28 Apr 2018 09:16:46 GMT  
		Size: 1.8 MB (1781315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74832ab8b0d657996621c8c52e9af4616a7f978239fb353592e13499cb32acc`  
		Last Modified: Sat, 28 Apr 2018 09:17:06 GMT  
		Size: 3.9 MB (3859679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3a77e1d488ac10c1518a58841cf2210d815c07b9103fa2814ef907c88610dd`  
		Last Modified: Sat, 28 Apr 2018 09:17:05 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; s390x

```console
$ docker pull haproxy@sha256:584f4549bc5dc73def800861f8fab280c555cdf89adc059c0e003dc9b5e29f7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 MB (28150233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4afa74614b03bfffeda4fcda48cd4460643db37671db4b2ce4622432e3c91119`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:29 GMT
ADD file:89223bc6886b09479a52e6d05479980ad8e46c8c707ac40cd81b664fe9827428 in / 
# Sat, 28 Apr 2018 11:45:29 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:57:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:58:17 GMT
ENV HAPROXY_MAJOR=1.8
# Sat, 28 Apr 2018 12:58:18 GMT
ENV HAPROXY_VERSION=1.8.8
# Sat, 28 Apr 2018 12:58:18 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Sat, 28 Apr 2018 12:59:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:59:40 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Sat, 28 Apr 2018 12:59:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:59:41 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:39cbaa616b05fb96ca4be9aac8b4d99ba8bf573e07a754a8c43dbec7ff518bbb`  
		Last Modified: Sat, 28 Apr 2018 11:51:43 GMT  
		Size: 22.3 MB (22349898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405179f954c52d80e6d4a0c1495c28fd4d2af3c72bf8456e7cd8ec7844919b79`  
		Last Modified: Sat, 28 Apr 2018 13:00:57 GMT  
		Size: 1.8 MB (1841227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bed5c454f35505623e6ebb9c4637f5dcaf15bb6e35b032371603eb26717a7d`  
		Last Modified: Sat, 28 Apr 2018 13:01:13 GMT  
		Size: 4.0 MB (3958728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5e9047095190c6648c7d96ff17217a4984bd69da428d07ac6a10a0794734b9`  
		Last Modified: Sat, 28 Apr 2018 13:01:11 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8.8`

```console
$ docker pull haproxy@sha256:8fc234fbbf52c2909e505bb2951b5befe00c213be316c46417a55c06f3af6e47
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
$ docker pull haproxy@sha256:5ca6aaf9c1e2763cff434833e97b8c9e7a76acb376d833e148844d3c9148f3f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 MB (26806218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf5b4de2f786b3f7a290018c53ec37e2874cdb807cac3479d53ca281019c1e80`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:29 GMT
ADD file:ca564f3cd7bd0fee7f6e56d1a55f5f92da6d4bf55ce3bf20ca398e9e95cdf8df in / 
# Sat, 28 Apr 2018 08:53:30 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:32:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:32:53 GMT
ENV HAPROXY_MAJOR=1.8
# Sat, 28 Apr 2018 09:32:53 GMT
ENV HAPROXY_VERSION=1.8.8
# Sat, 28 Apr 2018 09:32:53 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Sat, 28 Apr 2018 09:33:26 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 09:33:26 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Sat, 28 Apr 2018 09:33:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 09:33:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b2a4458ef3b9777a47503028af324e4890546ca8e24a86697b3219a6e3069450`  
		Last Modified: Sat, 28 Apr 2018 09:02:15 GMT  
		Size: 21.2 MB (21175666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e0050017a27fa6b8e3fa0859e382d3625040711c349522c63988b020aaf8d3`  
		Last Modified: Sat, 28 Apr 2018 09:34:19 GMT  
		Size: 1.8 MB (1816196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a891210b6fac5ed463c03457d04d620cb93f2c7e8f13248c7cebfa82e99a157`  
		Last Modified: Sat, 28 Apr 2018 09:34:36 GMT  
		Size: 3.8 MB (3813978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d930aed94b3faa7437a2dcf9886d7348f5afd7585e0f10469147a51cb9e2b5`  
		Last Modified: Sat, 28 Apr 2018 09:34:35 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.8` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:46a7d10d490ed022fba7b2c3ed7b649b02218ca1d12d55a1168cf21177a6d3eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25903186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415e5938566f3e7406587e569007d7d5b580021ac8e8b20c867937feeee340a6`
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
# Fri, 27 Apr 2018 12:01:52 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 12:01:53 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 12:01:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 12:01:53 GMT
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
	-	`sha256:ae44b36b980f6354b9ce205a0fa890c7a86be9490163df47fb69c0c4edd634b2`  
		Last Modified: Fri, 27 Apr 2018 12:03:02 GMT  
		Size: 4.9 MB (4889111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ec7989050335836b14446d7604e4becb65dd802709cec9468bb93f9241e9ce`  
		Last Modified: Fri, 27 Apr 2018 12:03:01 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.8` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:5ccf732c75ca2682d005910dbed58fb35bde105d0191e1f95113c6c269d34076
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27111963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:925b05249ee53898c41b404d000649ecfe537201751c3f3fae2a7693eb1be19d`
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
# Fri, 27 Apr 2018 09:01:12 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 09:01:17 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 09:01:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 09:01:19 GMT
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
	-	`sha256:1b0af405f71fc97c5e4386d203432f3bbd5a5e6f8c0cbc12f813de62eba877f2`  
		Last Modified: Fri, 27 Apr 2018 09:09:02 GMT  
		Size: 5.0 MB (4955577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66313fc565e6635475625a9e9cca5e7e99a0ec3c6a254b7ccb5f9946b55a2006`  
		Last Modified: Fri, 27 Apr 2018 09:09:01 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.8` - linux; 386

```console
$ docker pull haproxy@sha256:7117e5b224c9444bf69513dbd4af68a9c4e6c467640aecaf7875cae53124a4a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29047216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f792326ec910135587107a836d003c5d02686d333efa42fb050e56a97c34b6`
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
# Fri, 27 Apr 2018 11:07:52 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 11:07:52 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 11:07:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:07:52 GMT
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
	-	`sha256:aae96bfaa08dd2a72eb62bf59bd523b9e85afa9f5812c7c32338685246c64c2e`  
		Last Modified: Fri, 27 Apr 2018 11:10:00 GMT  
		Size: 3.8 MB (3789432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1df6a1ac3dae9a1e6add0c3c6c7bafc9826149e953a2bd1f5059807e612ef3b`  
		Last Modified: Fri, 27 Apr 2018 11:09:59 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.8` - linux; ppc64le

```console
$ docker pull haproxy@sha256:3a72c5d15d2b43ff978e05529abc403a9d5c39fa3a9f74b6ffe24300422f3599
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28394467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cecebf2fb06179e6b4476040329cf2b08cad607729b4f5613ae92af3fd192d5d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:54 GMT
ADD file:c561a92d41ab01d60c88efa7b21fd9b48e6c0c96fb8d2552f4cebbed3df42bca in / 
# Sat, 28 Apr 2018 08:20:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:11:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:13:22 GMT
ENV HAPROXY_MAJOR=1.8
# Sat, 28 Apr 2018 09:13:23 GMT
ENV HAPROXY_VERSION=1.8.8
# Sat, 28 Apr 2018 09:13:24 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Sat, 28 Apr 2018 09:15:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 09:15:34 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Sat, 28 Apr 2018 09:15:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 09:15:36 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:39214b2a7dd7dd2d1069dd155ce8ab2206bb1fda22be8136b88451c8be20e82f`  
		Last Modified: Sat, 28 Apr 2018 08:30:28 GMT  
		Size: 22.8 MB (22753096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0892a9635c660b2edfa136690cdf748cbaae06d6db67168117f5aaf71c03ea`  
		Last Modified: Sat, 28 Apr 2018 09:16:46 GMT  
		Size: 1.8 MB (1781315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74832ab8b0d657996621c8c52e9af4616a7f978239fb353592e13499cb32acc`  
		Last Modified: Sat, 28 Apr 2018 09:17:06 GMT  
		Size: 3.9 MB (3859679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3a77e1d488ac10c1518a58841cf2210d815c07b9103fa2814ef907c88610dd`  
		Last Modified: Sat, 28 Apr 2018 09:17:05 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.8` - linux; s390x

```console
$ docker pull haproxy@sha256:584f4549bc5dc73def800861f8fab280c555cdf89adc059c0e003dc9b5e29f7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 MB (28150233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4afa74614b03bfffeda4fcda48cd4460643db37671db4b2ce4622432e3c91119`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:29 GMT
ADD file:89223bc6886b09479a52e6d05479980ad8e46c8c707ac40cd81b664fe9827428 in / 
# Sat, 28 Apr 2018 11:45:29 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:57:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:58:17 GMT
ENV HAPROXY_MAJOR=1.8
# Sat, 28 Apr 2018 12:58:18 GMT
ENV HAPROXY_VERSION=1.8.8
# Sat, 28 Apr 2018 12:58:18 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Sat, 28 Apr 2018 12:59:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:59:40 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Sat, 28 Apr 2018 12:59:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:59:41 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:39cbaa616b05fb96ca4be9aac8b4d99ba8bf573e07a754a8c43dbec7ff518bbb`  
		Last Modified: Sat, 28 Apr 2018 11:51:43 GMT  
		Size: 22.3 MB (22349898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405179f954c52d80e6d4a0c1495c28fd4d2af3c72bf8456e7cd8ec7844919b79`  
		Last Modified: Sat, 28 Apr 2018 13:00:57 GMT  
		Size: 1.8 MB (1841227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bed5c454f35505623e6ebb9c4637f5dcaf15bb6e35b032371603eb26717a7d`  
		Last Modified: Sat, 28 Apr 2018 13:01:13 GMT  
		Size: 4.0 MB (3958728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5e9047095190c6648c7d96ff17217a4984bd69da428d07ac6a10a0794734b9`  
		Last Modified: Sat, 28 Apr 2018 13:01:11 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8.8-alpine`

```console
$ docker pull haproxy@sha256:11614e54f3a339861ae1bb68f966775427c46fb0e7c34ec5903996c12518415c
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
$ docker pull haproxy@sha256:dc5240e7feaefc79ad1982009738b8ab6ded21a8a779111810078b10a623a288
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7547637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:121d26e8bfcaf14e8ef28c8e570d0c3d82f114a8d8e8810aa66a5a1c69c40d63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 09:02:11 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 27 Apr 2018 09:02:12 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 27 Apr 2018 09:02:13 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 27 Apr 2018 09:02:56 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 09:02:58 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 09:02:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 09:03:01 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:3704aacc8f0920ee321fcdd59a617599ebf2feb25b0f805497e87f2b95ceb6eb`  
		Last Modified: Fri, 27 Apr 2018 09:10:59 GMT  
		Size: 5.6 MB (5558225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc674041ddd5838c817f46e2b9bdfeeebf69fe061b8dfa6127cf754315669b8`  
		Last Modified: Fri, 27 Apr 2018 09:10:56 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.8-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:cf7601d21def156e46832a09152ddcf9c1f7501a1cabf52a43aebea94d68dd1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7892398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6e18422557b12997b01935d6bdf23058a4e0c6ad58328be73ec9cc9cc6a7ff`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 11:08:02 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 27 Apr 2018 11:08:03 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 27 Apr 2018 11:08:03 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 27 Apr 2018 11:08:35 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 11:08:35 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 11:08:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:08:36 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51a55086eebb26912977a91f96118248b3b362e27e1a62e0d99f0f780e36062`  
		Last Modified: Fri, 27 Apr 2018 11:10:19 GMT  
		Size: 5.8 MB (5765626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa23283110f72bcca8a1463bd241793daa73b0e6f9e9fe40336593deab5b9760`  
		Last Modified: Fri, 27 Apr 2018 11:10:18 GMT  
		Size: 380.0 B  
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
$ docker pull haproxy@sha256:b3ddfef24cd607876abc483e5e493421195c63696a03aeb20655663c6e30d287
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7963268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d02b47b7938966103943027378e7e05538e59d4967f0fe5cf6b1a1f33ccbaf87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 11:54:00 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 27 Apr 2018 11:54:00 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 27 Apr 2018 11:54:00 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 27 Apr 2018 11:54:35 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 11:54:38 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 11:54:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:54:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:db65cedc36e82528432244269bf9f14c20d8fc50ce34b4f0034224bd05f1bf88`  
		Last Modified: Fri, 27 Apr 2018 11:56:48 GMT  
		Size: 5.8 MB (5777483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9ea01af55f765432174f398e7d9d132c66da79d6bbd044fd271171fbd90bcb`  
		Last Modified: Fri, 27 Apr 2018 11:56:46 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8-alpine`

```console
$ docker pull haproxy@sha256:11614e54f3a339861ae1bb68f966775427c46fb0e7c34ec5903996c12518415c
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
$ docker pull haproxy@sha256:dc5240e7feaefc79ad1982009738b8ab6ded21a8a779111810078b10a623a288
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7547637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:121d26e8bfcaf14e8ef28c8e570d0c3d82f114a8d8e8810aa66a5a1c69c40d63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 09:02:11 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 27 Apr 2018 09:02:12 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 27 Apr 2018 09:02:13 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 27 Apr 2018 09:02:56 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 09:02:58 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 09:02:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 09:03:01 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:3704aacc8f0920ee321fcdd59a617599ebf2feb25b0f805497e87f2b95ceb6eb`  
		Last Modified: Fri, 27 Apr 2018 09:10:59 GMT  
		Size: 5.6 MB (5558225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc674041ddd5838c817f46e2b9bdfeeebf69fe061b8dfa6127cf754315669b8`  
		Last Modified: Fri, 27 Apr 2018 09:10:56 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:cf7601d21def156e46832a09152ddcf9c1f7501a1cabf52a43aebea94d68dd1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7892398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6e18422557b12997b01935d6bdf23058a4e0c6ad58328be73ec9cc9cc6a7ff`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 11:08:02 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 27 Apr 2018 11:08:03 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 27 Apr 2018 11:08:03 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 27 Apr 2018 11:08:35 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 11:08:35 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 11:08:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:08:36 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51a55086eebb26912977a91f96118248b3b362e27e1a62e0d99f0f780e36062`  
		Last Modified: Fri, 27 Apr 2018 11:10:19 GMT  
		Size: 5.8 MB (5765626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa23283110f72bcca8a1463bd241793daa73b0e6f9e9fe40336593deab5b9760`  
		Last Modified: Fri, 27 Apr 2018 11:10:18 GMT  
		Size: 380.0 B  
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
$ docker pull haproxy@sha256:b3ddfef24cd607876abc483e5e493421195c63696a03aeb20655663c6e30d287
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7963268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d02b47b7938966103943027378e7e05538e59d4967f0fe5cf6b1a1f33ccbaf87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 11:54:00 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 27 Apr 2018 11:54:00 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 27 Apr 2018 11:54:00 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 27 Apr 2018 11:54:35 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 11:54:38 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 11:54:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:54:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:db65cedc36e82528432244269bf9f14c20d8fc50ce34b4f0034224bd05f1bf88`  
		Last Modified: Fri, 27 Apr 2018 11:56:48 GMT  
		Size: 5.8 MB (5777483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9ea01af55f765432174f398e7d9d132c66da79d6bbd044fd271171fbd90bcb`  
		Last Modified: Fri, 27 Apr 2018 11:56:46 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1-alpine`

```console
$ docker pull haproxy@sha256:11614e54f3a339861ae1bb68f966775427c46fb0e7c34ec5903996c12518415c
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
$ docker pull haproxy@sha256:dc5240e7feaefc79ad1982009738b8ab6ded21a8a779111810078b10a623a288
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7547637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:121d26e8bfcaf14e8ef28c8e570d0c3d82f114a8d8e8810aa66a5a1c69c40d63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 09:02:11 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 27 Apr 2018 09:02:12 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 27 Apr 2018 09:02:13 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 27 Apr 2018 09:02:56 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 09:02:58 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 09:02:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 09:03:01 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:3704aacc8f0920ee321fcdd59a617599ebf2feb25b0f805497e87f2b95ceb6eb`  
		Last Modified: Fri, 27 Apr 2018 09:10:59 GMT  
		Size: 5.6 MB (5558225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc674041ddd5838c817f46e2b9bdfeeebf69fe061b8dfa6127cf754315669b8`  
		Last Modified: Fri, 27 Apr 2018 09:10:56 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:cf7601d21def156e46832a09152ddcf9c1f7501a1cabf52a43aebea94d68dd1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7892398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6e18422557b12997b01935d6bdf23058a4e0c6ad58328be73ec9cc9cc6a7ff`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 11:08:02 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 27 Apr 2018 11:08:03 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 27 Apr 2018 11:08:03 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 27 Apr 2018 11:08:35 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 11:08:35 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 11:08:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:08:36 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51a55086eebb26912977a91f96118248b3b362e27e1a62e0d99f0f780e36062`  
		Last Modified: Fri, 27 Apr 2018 11:10:19 GMT  
		Size: 5.8 MB (5765626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa23283110f72bcca8a1463bd241793daa73b0e6f9e9fe40336593deab5b9760`  
		Last Modified: Fri, 27 Apr 2018 11:10:18 GMT  
		Size: 380.0 B  
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
$ docker pull haproxy@sha256:b3ddfef24cd607876abc483e5e493421195c63696a03aeb20655663c6e30d287
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7963268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d02b47b7938966103943027378e7e05538e59d4967f0fe5cf6b1a1f33ccbaf87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 11:54:00 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 27 Apr 2018 11:54:00 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 27 Apr 2018 11:54:00 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 27 Apr 2018 11:54:35 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 11:54:38 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 11:54:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:54:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:db65cedc36e82528432244269bf9f14c20d8fc50ce34b4f0034224bd05f1bf88`  
		Last Modified: Fri, 27 Apr 2018 11:56:48 GMT  
		Size: 5.8 MB (5777483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9ea01af55f765432174f398e7d9d132c66da79d6bbd044fd271171fbd90bcb`  
		Last Modified: Fri, 27 Apr 2018 11:56:46 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:alpine`

```console
$ docker pull haproxy@sha256:11614e54f3a339861ae1bb68f966775427c46fb0e7c34ec5903996c12518415c
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
$ docker pull haproxy@sha256:dc5240e7feaefc79ad1982009738b8ab6ded21a8a779111810078b10a623a288
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7547637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:121d26e8bfcaf14e8ef28c8e570d0c3d82f114a8d8e8810aa66a5a1c69c40d63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 09:02:11 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 27 Apr 2018 09:02:12 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 27 Apr 2018 09:02:13 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 27 Apr 2018 09:02:56 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 09:02:58 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 09:02:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 09:03:01 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:3704aacc8f0920ee321fcdd59a617599ebf2feb25b0f805497e87f2b95ceb6eb`  
		Last Modified: Fri, 27 Apr 2018 09:10:59 GMT  
		Size: 5.6 MB (5558225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc674041ddd5838c817f46e2b9bdfeeebf69fe061b8dfa6127cf754315669b8`  
		Last Modified: Fri, 27 Apr 2018 09:10:56 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; 386

```console
$ docker pull haproxy@sha256:cf7601d21def156e46832a09152ddcf9c1f7501a1cabf52a43aebea94d68dd1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7892398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6e18422557b12997b01935d6bdf23058a4e0c6ad58328be73ec9cc9cc6a7ff`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 11:08:02 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 27 Apr 2018 11:08:03 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 27 Apr 2018 11:08:03 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 27 Apr 2018 11:08:35 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 11:08:35 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 11:08:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:08:36 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51a55086eebb26912977a91f96118248b3b362e27e1a62e0d99f0f780e36062`  
		Last Modified: Fri, 27 Apr 2018 11:10:19 GMT  
		Size: 5.8 MB (5765626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa23283110f72bcca8a1463bd241793daa73b0e6f9e9fe40336593deab5b9760`  
		Last Modified: Fri, 27 Apr 2018 11:10:18 GMT  
		Size: 380.0 B  
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
$ docker pull haproxy@sha256:b3ddfef24cd607876abc483e5e493421195c63696a03aeb20655663c6e30d287
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7963268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d02b47b7938966103943027378e7e05538e59d4967f0fe5cf6b1a1f33ccbaf87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 11:54:00 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 27 Apr 2018 11:54:00 GMT
ENV HAPROXY_VERSION=1.8.8
# Fri, 27 Apr 2018 11:54:00 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Fri, 27 Apr 2018 11:54:35 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 27 Apr 2018 11:54:38 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 11:54:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:54:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
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
	-	`sha256:db65cedc36e82528432244269bf9f14c20d8fc50ce34b4f0034224bd05f1bf88`  
		Last Modified: Fri, 27 Apr 2018 11:56:48 GMT  
		Size: 5.8 MB (5777483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9ea01af55f765432174f398e7d9d132c66da79d6bbd044fd271171fbd90bcb`  
		Last Modified: Fri, 27 Apr 2018 11:56:46 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:latest`

```console
$ docker pull haproxy@sha256:8fc234fbbf52c2909e505bb2951b5befe00c213be316c46417a55c06f3af6e47
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
$ docker pull haproxy@sha256:5ca6aaf9c1e2763cff434833e97b8c9e7a76acb376d833e148844d3c9148f3f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 MB (26806218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf5b4de2f786b3f7a290018c53ec37e2874cdb807cac3479d53ca281019c1e80`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:29 GMT
ADD file:ca564f3cd7bd0fee7f6e56d1a55f5f92da6d4bf55ce3bf20ca398e9e95cdf8df in / 
# Sat, 28 Apr 2018 08:53:30 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:32:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:32:53 GMT
ENV HAPROXY_MAJOR=1.8
# Sat, 28 Apr 2018 09:32:53 GMT
ENV HAPROXY_VERSION=1.8.8
# Sat, 28 Apr 2018 09:32:53 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Sat, 28 Apr 2018 09:33:26 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 09:33:26 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Sat, 28 Apr 2018 09:33:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 09:33:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b2a4458ef3b9777a47503028af324e4890546ca8e24a86697b3219a6e3069450`  
		Last Modified: Sat, 28 Apr 2018 09:02:15 GMT  
		Size: 21.2 MB (21175666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e0050017a27fa6b8e3fa0859e382d3625040711c349522c63988b020aaf8d3`  
		Last Modified: Sat, 28 Apr 2018 09:34:19 GMT  
		Size: 1.8 MB (1816196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a891210b6fac5ed463c03457d04d620cb93f2c7e8f13248c7cebfa82e99a157`  
		Last Modified: Sat, 28 Apr 2018 09:34:36 GMT  
		Size: 3.8 MB (3813978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d930aed94b3faa7437a2dcf9886d7348f5afd7585e0f10469147a51cb9e2b5`  
		Last Modified: Sat, 28 Apr 2018 09:34:35 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:46a7d10d490ed022fba7b2c3ed7b649b02218ca1d12d55a1168cf21177a6d3eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25903186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415e5938566f3e7406587e569007d7d5b580021ac8e8b20c867937feeee340a6`
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
# Fri, 27 Apr 2018 12:01:52 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 12:01:53 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 12:01:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 12:01:53 GMT
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
	-	`sha256:ae44b36b980f6354b9ce205a0fa890c7a86be9490163df47fb69c0c4edd634b2`  
		Last Modified: Fri, 27 Apr 2018 12:03:02 GMT  
		Size: 4.9 MB (4889111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ec7989050335836b14446d7604e4becb65dd802709cec9468bb93f9241e9ce`  
		Last Modified: Fri, 27 Apr 2018 12:03:01 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:5ccf732c75ca2682d005910dbed58fb35bde105d0191e1f95113c6c269d34076
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27111963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:925b05249ee53898c41b404d000649ecfe537201751c3f3fae2a7693eb1be19d`
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
# Fri, 27 Apr 2018 09:01:12 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 09:01:17 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 09:01:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 09:01:19 GMT
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
	-	`sha256:1b0af405f71fc97c5e4386d203432f3bbd5a5e6f8c0cbc12f813de62eba877f2`  
		Last Modified: Fri, 27 Apr 2018 09:09:02 GMT  
		Size: 5.0 MB (4955577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66313fc565e6635475625a9e9cca5e7e99a0ec3c6a254b7ccb5f9946b55a2006`  
		Last Modified: Fri, 27 Apr 2018 09:09:01 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; 386

```console
$ docker pull haproxy@sha256:7117e5b224c9444bf69513dbd4af68a9c4e6c467640aecaf7875cae53124a4a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29047216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f792326ec910135587107a836d003c5d02686d333efa42fb050e56a97c34b6`
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
# Fri, 27 Apr 2018 11:07:52 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 27 Apr 2018 11:07:52 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 27 Apr 2018 11:07:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:07:52 GMT
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
	-	`sha256:aae96bfaa08dd2a72eb62bf59bd523b9e85afa9f5812c7c32338685246c64c2e`  
		Last Modified: Fri, 27 Apr 2018 11:10:00 GMT  
		Size: 3.8 MB (3789432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1df6a1ac3dae9a1e6add0c3c6c7bafc9826149e953a2bd1f5059807e612ef3b`  
		Last Modified: Fri, 27 Apr 2018 11:09:59 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; ppc64le

```console
$ docker pull haproxy@sha256:3a72c5d15d2b43ff978e05529abc403a9d5c39fa3a9f74b6ffe24300422f3599
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28394467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cecebf2fb06179e6b4476040329cf2b08cad607729b4f5613ae92af3fd192d5d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:54 GMT
ADD file:c561a92d41ab01d60c88efa7b21fd9b48e6c0c96fb8d2552f4cebbed3df42bca in / 
# Sat, 28 Apr 2018 08:20:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:11:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:13:22 GMT
ENV HAPROXY_MAJOR=1.8
# Sat, 28 Apr 2018 09:13:23 GMT
ENV HAPROXY_VERSION=1.8.8
# Sat, 28 Apr 2018 09:13:24 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Sat, 28 Apr 2018 09:15:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 09:15:34 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Sat, 28 Apr 2018 09:15:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 09:15:36 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:39214b2a7dd7dd2d1069dd155ce8ab2206bb1fda22be8136b88451c8be20e82f`  
		Last Modified: Sat, 28 Apr 2018 08:30:28 GMT  
		Size: 22.8 MB (22753096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0892a9635c660b2edfa136690cdf748cbaae06d6db67168117f5aaf71c03ea`  
		Last Modified: Sat, 28 Apr 2018 09:16:46 GMT  
		Size: 1.8 MB (1781315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74832ab8b0d657996621c8c52e9af4616a7f978239fb353592e13499cb32acc`  
		Last Modified: Sat, 28 Apr 2018 09:17:06 GMT  
		Size: 3.9 MB (3859679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3a77e1d488ac10c1518a58841cf2210d815c07b9103fa2814ef907c88610dd`  
		Last Modified: Sat, 28 Apr 2018 09:17:05 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; s390x

```console
$ docker pull haproxy@sha256:584f4549bc5dc73def800861f8fab280c555cdf89adc059c0e003dc9b5e29f7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 MB (28150233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4afa74614b03bfffeda4fcda48cd4460643db37671db4b2ce4622432e3c91119`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:29 GMT
ADD file:89223bc6886b09479a52e6d05479980ad8e46c8c707ac40cd81b664fe9827428 in / 
# Sat, 28 Apr 2018 11:45:29 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:57:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:58:17 GMT
ENV HAPROXY_MAJOR=1.8
# Sat, 28 Apr 2018 12:58:18 GMT
ENV HAPROXY_VERSION=1.8.8
# Sat, 28 Apr 2018 12:58:18 GMT
ENV HAPROXY_MD5=8633b6e661169d2fc6a44d82a3aceae5
# Sat, 28 Apr 2018 12:59:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:59:40 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Sat, 28 Apr 2018 12:59:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:59:41 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:39cbaa616b05fb96ca4be9aac8b4d99ba8bf573e07a754a8c43dbec7ff518bbb`  
		Last Modified: Sat, 28 Apr 2018 11:51:43 GMT  
		Size: 22.3 MB (22349898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405179f954c52d80e6d4a0c1495c28fd4d2af3c72bf8456e7cd8ec7844919b79`  
		Last Modified: Sat, 28 Apr 2018 13:00:57 GMT  
		Size: 1.8 MB (1841227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bed5c454f35505623e6ebb9c4637f5dcaf15bb6e35b032371603eb26717a7d`  
		Last Modified: Sat, 28 Apr 2018 13:01:13 GMT  
		Size: 4.0 MB (3958728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5e9047095190c6648c7d96ff17217a4984bd69da428d07ac6a10a0794734b9`  
		Last Modified: Sat, 28 Apr 2018 13:01:11 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
