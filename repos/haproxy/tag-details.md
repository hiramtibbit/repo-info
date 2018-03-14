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
-	[`haproxy:1.8.4`](#haproxy184)
-	[`haproxy:1.8.4-alpine`](#haproxy184-alpine)
-	[`haproxy:1.8-alpine`](#haproxy18-alpine)
-	[`haproxy:1-alpine`](#haproxy1-alpine)
-	[`haproxy:alpine`](#haproxyalpine)
-	[`haproxy:latest`](#haproxylatest)

## `haproxy:1`

```console
$ docker pull haproxy@sha256:c2c5cc79d225b0c85314000423676ad9ea499d717dd3b922d7edd65c6105e0be
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
$ docker pull haproxy@sha256:d60696f649bd2835d9003aeb3332b56f1019159c8fce25465a84a8643c2a1531
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28454402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547018c815911bc330536521be4a1cd0a98f5f83e5e1109db199e4ea1f5195d2`
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
# Wed, 14 Mar 2018 04:30:07 GMT
ENV HAPROXY_VERSION=1.8.4
# Wed, 14 Mar 2018 04:30:07 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Wed, 14 Mar 2018 04:30:45 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 04:30:45 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 14 Mar 2018 04:30:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 04:30:45 GMT
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
	-	`sha256:8779f9b34e0a23ef0a32212c889375f08182702395008768797847dd0ac2fe77`  
		Last Modified: Wed, 14 Mar 2018 04:33:03 GMT  
		Size: 3.9 MB (3862771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfeb8bbf40aef8cf074771e9d6a9f3f99b2a1343ffe01a4de39e346f32329971`  
		Last Modified: Wed, 14 Mar 2018 04:33:02 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:cdcf0c307f1d48cdaa5e76519c50b05f960a7656df89ef1243be06333b44dcda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 MB (26791102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c963a468dac802e986a98257a41867ac5bf21b6fffd4f211528661072d22f1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:31 GMT
ADD file:a4ff4a71be86566d946378fcdcdf8a581533429c77852d0a52919a736ec535bc in / 
# Thu, 15 Feb 2018 21:00:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:21:25 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:21:25 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 15 Feb 2018 22:21:25 GMT
ENV HAPROXY_VERSION=1.8.4
# Thu, 15 Feb 2018 22:21:26 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Thu, 15 Feb 2018 22:22:17 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 22:22:17 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 15 Feb 2018 22:22:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:22:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d4fd25f13e1d4f6be6bd3e1a90bebc4f1ba9d950a6a33b46c42850a4c1d2d1b2`  
		Last Modified: Thu, 15 Feb 2018 21:11:11 GMT  
		Size: 21.2 MB (21175030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7245785f1eea7d2cc552c92c1ba14284178a037a9ac56ddb4a0be8f54a0746ea`  
		Last Modified: Thu, 15 Feb 2018 22:23:41 GMT  
		Size: 1.8 MB (1815984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f4a81a5a36ed46d50e5df2908bb65b869f9e491f611188114a48a9ba3a54e2`  
		Last Modified: Thu, 15 Feb 2018 22:23:42 GMT  
		Size: 3.8 MB (3799708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e703e186f0e844f94a107c04876233e660bd787bbeae14a89eaf5cab2e0da3e`  
		Last Modified: Thu, 15 Feb 2018 22:23:40 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:a0a549d5d0de0064bcb2c5055b7f31242e5a48ccdd6218fb1d0b2a37b1804840
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24770244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6816c0bbef7978b28f153aa6351db2f1d6d72d0e5ba562bb9a2d7fb7e83df17a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:08:22 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:08:22 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 15 Feb 2018 14:08:23 GMT
ENV HAPROXY_VERSION=1.8.4
# Thu, 15 Feb 2018 14:08:23 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Thu, 15 Feb 2018 14:08:51 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 14:08:52 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 15 Feb 2018 14:08:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 14:08:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:235baf89a76b73bd04542508f7769803ecd00e0b8c71046ada69fb9d17f02496`  
		Last Modified: Thu, 15 Feb 2018 13:41:58 GMT  
		Size: 19.3 MB (19286085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be916701862cdf44cf90478cfbb93f27b96252db66e4f8a77619f1ff173450c6`  
		Last Modified: Thu, 15 Feb 2018 14:10:18 GMT  
		Size: 1.7 MB (1736043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20503b8fc138cc401ff57c961ffe85e2a85c79955b77d826b545a1c41176f8b`  
		Last Modified: Thu, 15 Feb 2018 14:10:19 GMT  
		Size: 3.7 MB (3747736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ca163eb1cf6addcf35d78b82803708f490ceb97de7ece3f7188cc0edaf3375`  
		Last Modified: Thu, 15 Feb 2018 14:10:18 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:0eef514bdbae5b59dd456cbd945d86158a642c3056d66caf108eb91f61c73ae8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25929561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59fd8afcdf7880c5003c7ff93195020595e3a2b7675fc2169e326d7a9155eefe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 20:39:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 20:39:50 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 15 Feb 2018 20:39:51 GMT
ENV HAPROXY_VERSION=1.8.4
# Thu, 15 Feb 2018 20:39:51 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Thu, 15 Feb 2018 20:41:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 20:41:58 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 15 Feb 2018 20:42:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 20:42:04 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abce8de73dd9c8c294cb189734d4f9c94b97eb01f3ad59eb85fce5f7585ece51`  
		Last Modified: Thu, 15 Feb 2018 20:44:12 GMT  
		Size: 1.8 MB (1818761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81fb94e56b663468768872125d1842a46656cae3be55db5cd5844cb8cd119b9c`  
		Last Modified: Thu, 15 Feb 2018 20:44:13 GMT  
		Size: 3.8 MB (3762994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dfd1bc4500215e436c4dac08d35d7be2ba46035a09327fe81c8c7370e151a6`  
		Last Modified: Thu, 15 Feb 2018 20:44:11 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; 386

```console
$ docker pull haproxy@sha256:15768a8ba09dd1c2f47e1625be839bd321c5ff012adc7a4f39dea8397cd0c666
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29040524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e945d095bf3490ae71e7c1a03798865cbc841ed61012ff71dd51fcf586114e71`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 18:56:40 GMT
ADD file:46f3ea038ddbb2713695c8891a22675f7355211fecac25807c95590f5a5d4bfa in / 
# Thu, 15 Feb 2018 19:04:20 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 09:11:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 09:11:51 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 21 Feb 2018 09:11:51 GMT
ENV HAPROXY_VERSION=1.8.4
# Wed, 21 Feb 2018 09:11:51 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Wed, 21 Feb 2018 09:12:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Feb 2018 09:12:40 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 21 Feb 2018 09:12:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 21 Feb 2018 09:12:41 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5a3bef8a5a8dcf8e6b5914993862777a98536514aedf43f0a604d87764970d8a`  
		Last Modified: Thu, 15 Feb 2018 01:16:16 GMT  
		Size: 23.1 MB (23135027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc0c16f494d4e869b5a8dd5d17b8d594612060af03f5b9483760466d740b1e6`  
		Last Modified: Wed, 21 Feb 2018 09:23:02 GMT  
		Size: 2.1 MB (2128543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065da3d24013025eb59c73a4c42c0932b131fdeb7b6832179420e9b0cf078853`  
		Last Modified: Wed, 21 Feb 2018 09:23:02 GMT  
		Size: 3.8 MB (3776572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ebf900b197c37c0c94d964c961b3bd2e155dedbd0e80965d9ee497b550658d`  
		Last Modified: Wed, 21 Feb 2018 09:23:01 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; ppc64le

```console
$ docker pull haproxy@sha256:0e1e68a587ccff2ea28ab3cc974d9f95b74010396d61aee31d47c1a396c4ff77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28384883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45dd348690f8ab8132fc395f7f704ad80ee130f9cf2c582872dde3fd06711ca3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 02:20:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 02:20:56 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 15 Feb 2018 02:20:57 GMT
ENV HAPROXY_VERSION=1.8.4
# Thu, 15 Feb 2018 02:20:59 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Thu, 15 Feb 2018 02:25:12 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 02:25:15 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 15 Feb 2018 02:25:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 02:25:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95352ce84115d15969ea892a3e8b67728460d2fa0afaed6b0736434f28ebe1c`  
		Last Modified: Thu, 15 Feb 2018 02:26:53 GMT  
		Size: 1.8 MB (1781206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed8d33f108893a76412a8f17eeb8357b952a9eed2d7222c1833b19db4212a4d`  
		Last Modified: Thu, 15 Feb 2018 02:26:53 GMT  
		Size: 3.9 MB (3850198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378ba875b8ed65c8d8ad8d4355a4b70621a912b6fe96e895567bd9fd9f91ac7a`  
		Last Modified: Thu, 15 Feb 2018 02:26:52 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; s390x

```console
$ docker pull haproxy@sha256:6df9780cf3da886c96900b5bc36a679bfa0dbd883dc4fb825a28944338e32289
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28127811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a365dedcbf05760db9b77782eceb3d901e3782c17a73895213401a9a0bcda18`
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
# Wed, 14 Mar 2018 06:06:52 GMT
ENV HAPROXY_VERSION=1.8.4
# Wed, 14 Mar 2018 06:06:52 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Wed, 14 Mar 2018 06:07:30 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 06:07:30 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 14 Mar 2018 06:07:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:07:30 GMT
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
	-	`sha256:763dd9c6011b0720aa66adf87a12585d1ccc530385b37a47e12adacca52c5906`  
		Last Modified: Wed, 14 Mar 2018 06:08:26 GMT  
		Size: 3.9 MB (3945897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c82d60bab548d121093fb244ed345fa7b9b6b3400ee60c185b042972a39a8a7`  
		Last Modified: Wed, 14 Mar 2018 06:08:25 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5`

```console
$ docker pull haproxy@sha256:351ab7c3c32f6edbe56547617478619d1e002ddb74e633af388c614f7209cbf1
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
$ docker pull haproxy@sha256:d7c0f0a756bd9acbdae135ef24b95eb0b1ad4d6a6447a173c6822aba3bf98066
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.9 MB (56940635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07844f2f265aa0f1ba4768bca378d3babd146e6cf2d2b564102a368ddd965904`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:15:25 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:15:26 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 15 Feb 2018 22:15:26 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 15 Feb 2018 22:15:26 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Thu, 15 Feb 2018 22:17:07 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 22:17:08 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 22:17:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:17:08 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3e23c0e81bb70201b80ea039d22e4ae7e1094f169be02c482a2cce14101886`  
		Last Modified: Thu, 15 Feb 2018 22:22:41 GMT  
		Size: 1.6 MB (1594767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e42e801d90c1b13cd2d145d3b669aeec0ca0559bc3579fb9fd287ece8fac5ff`  
		Last Modified: Thu, 15 Feb 2018 22:22:41 GMT  
		Size: 4.5 MB (4455842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38785817e875a232b9a4dbcce058361084ebd5902b47a8512ab820b695b33adf`  
		Last Modified: Thu, 15 Feb 2018 22:22:41 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:5fb8f13250316613f7cc16bfa429e9f2bf7afe76961e528a58b3ec538131a9f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54565221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9378dbf1194e05837bce5247a58d2a049252f7a92d8f3e5cb2b24bae02ab7e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:02:51 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:02:51 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 15 Feb 2018 14:02:52 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 15 Feb 2018 14:02:52 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Thu, 15 Feb 2018 14:04:32 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 14:04:33 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 14:04:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 14:04:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b95ce5e0bdfedce9469e92569b4f3e696868629e019a841f583af0f74cb55e`  
		Last Modified: Thu, 15 Feb 2018 14:09:12 GMT  
		Size: 1.5 MB (1535440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778443b21ec9f0faad6949d13d2b5911470d1da5fa6f6a1c2dab08ae3feafc5c`  
		Last Modified: Thu, 15 Feb 2018 14:09:12 GMT  
		Size: 4.3 MB (4327979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1bc286cd8abaee4ce373e7eb5bfc0e7b9e6f2af5f75f735a733ce51a214b927`  
		Last Modified: Thu, 15 Feb 2018 14:09:13 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:89d372210d597af814777dae62561fc632ae647a0fdb9bb91dce187c5e63adf6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.0 MB (55962313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67038d86ecd33316d0b18f772e9ce00bdfa5e1204208a2c42b565c8b75a3d955`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 20:29:07 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 20:29:08 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 15 Feb 2018 20:29:09 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 15 Feb 2018 20:29:09 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Thu, 15 Feb 2018 20:32:25 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 20:32:26 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 20:32:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 20:32:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9944c0dc7781a8011f867e579d001a3b041535452e8aff57a05a447c429343a0`  
		Last Modified: Thu, 15 Feb 2018 20:42:43 GMT  
		Size: 1.6 MB (1606489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de184ed086165096c9f379a7658f3422f7bbb04c29796b8a90d9c586972b3f22`  
		Last Modified: Thu, 15 Feb 2018 20:42:45 GMT  
		Size: 4.4 MB (4421575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a172491c5ac55ea852df027085f1f276fdcec0eeb8c06f81c62350404331f0a`  
		Last Modified: Thu, 15 Feb 2018 20:42:42 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; 386

```console
$ docker pull haproxy@sha256:64495108064d8b44eea65fc11a64801f4968d98aa4d1a4d19292f1e05b779320
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61731003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d3029b65ada0810edeaeed67e087f0d5784a15ff709c4df25a70340ea37cbfe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 09:00:20 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 09:00:21 GMT
ENV HAPROXY_MAJOR=1.5
# Wed, 21 Feb 2018 09:00:21 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 21 Feb 2018 09:00:21 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Wed, 21 Feb 2018 09:01:52 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Feb 2018 09:01:53 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 21 Feb 2018 09:01:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 21 Feb 2018 09:01:53 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f1b1e41008194e287ccc9dbe368b3420276f3e902a293b6fe7429517002366`  
		Last Modified: Wed, 21 Feb 2018 09:21:15 GMT  
		Size: 3.8 MB (3849219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49949098e8e9f1244eb7e0d1d2a5504937e47ae4bfec439eb5a4d21fb194eb48`  
		Last Modified: Wed, 21 Feb 2018 09:21:16 GMT  
		Size: 5.1 MB (5093670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955f3df123a52f317893573c58a49eaa649cfe641c7f609c8dd065df6638bef5`  
		Last Modified: Wed, 21 Feb 2018 09:21:16 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; ppc64le

```console
$ docker pull haproxy@sha256:3eb552860470cf394e33eef0022ceddca946f021e3d8304806c8fd30be14e7fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.1 MB (58085830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:113df826e8e74e8cdf9b2e9a0185c645d8c50f8ac2d7a9a15d3c8c76c143265c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 02:05:01 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 02:05:02 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 15 Feb 2018 02:05:03 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 15 Feb 2018 02:05:04 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Thu, 15 Feb 2018 02:10:15 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 02:10:17 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 02:10:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 02:10:22 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8f810511973a5eaf56004cd9e591d007ae355d50cc1814da5b3a489f2d5d65`  
		Last Modified: Thu, 15 Feb 2018 02:25:50 GMT  
		Size: 1.7 MB (1699279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0a5778d5c0bbfd218ce639eb5e64f68cc6455418df4d5e9d6decf8b4b8d679`  
		Last Modified: Thu, 15 Feb 2018 02:25:51 GMT  
		Size: 4.6 MB (4569076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7f2020fbf0ab448cb9018d8af734beddde81b6bbb34c5e48b9397d40b26a31`  
		Last Modified: Thu, 15 Feb 2018 02:25:50 GMT  
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
$ docker pull haproxy@sha256:351ab7c3c32f6edbe56547617478619d1e002ddb74e633af388c614f7209cbf1
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
$ docker pull haproxy@sha256:d7c0f0a756bd9acbdae135ef24b95eb0b1ad4d6a6447a173c6822aba3bf98066
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.9 MB (56940635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07844f2f265aa0f1ba4768bca378d3babd146e6cf2d2b564102a368ddd965904`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:15:25 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:15:26 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 15 Feb 2018 22:15:26 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 15 Feb 2018 22:15:26 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Thu, 15 Feb 2018 22:17:07 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 22:17:08 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 22:17:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:17:08 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3e23c0e81bb70201b80ea039d22e4ae7e1094f169be02c482a2cce14101886`  
		Last Modified: Thu, 15 Feb 2018 22:22:41 GMT  
		Size: 1.6 MB (1594767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e42e801d90c1b13cd2d145d3b669aeec0ca0559bc3579fb9fd287ece8fac5ff`  
		Last Modified: Thu, 15 Feb 2018 22:22:41 GMT  
		Size: 4.5 MB (4455842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38785817e875a232b9a4dbcce058361084ebd5902b47a8512ab820b695b33adf`  
		Last Modified: Thu, 15 Feb 2018 22:22:41 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:5fb8f13250316613f7cc16bfa429e9f2bf7afe76961e528a58b3ec538131a9f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54565221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9378dbf1194e05837bce5247a58d2a049252f7a92d8f3e5cb2b24bae02ab7e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:02:51 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:02:51 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 15 Feb 2018 14:02:52 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 15 Feb 2018 14:02:52 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Thu, 15 Feb 2018 14:04:32 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 14:04:33 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 14:04:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 14:04:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b95ce5e0bdfedce9469e92569b4f3e696868629e019a841f583af0f74cb55e`  
		Last Modified: Thu, 15 Feb 2018 14:09:12 GMT  
		Size: 1.5 MB (1535440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778443b21ec9f0faad6949d13d2b5911470d1da5fa6f6a1c2dab08ae3feafc5c`  
		Last Modified: Thu, 15 Feb 2018 14:09:12 GMT  
		Size: 4.3 MB (4327979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1bc286cd8abaee4ce373e7eb5bfc0e7b9e6f2af5f75f735a733ce51a214b927`  
		Last Modified: Thu, 15 Feb 2018 14:09:13 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:89d372210d597af814777dae62561fc632ae647a0fdb9bb91dce187c5e63adf6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.0 MB (55962313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67038d86ecd33316d0b18f772e9ce00bdfa5e1204208a2c42b565c8b75a3d955`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 20:29:07 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 20:29:08 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 15 Feb 2018 20:29:09 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 15 Feb 2018 20:29:09 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Thu, 15 Feb 2018 20:32:25 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 20:32:26 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 20:32:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 20:32:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9944c0dc7781a8011f867e579d001a3b041535452e8aff57a05a447c429343a0`  
		Last Modified: Thu, 15 Feb 2018 20:42:43 GMT  
		Size: 1.6 MB (1606489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de184ed086165096c9f379a7658f3422f7bbb04c29796b8a90d9c586972b3f22`  
		Last Modified: Thu, 15 Feb 2018 20:42:45 GMT  
		Size: 4.4 MB (4421575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a172491c5ac55ea852df027085f1f276fdcec0eeb8c06f81c62350404331f0a`  
		Last Modified: Thu, 15 Feb 2018 20:42:42 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; 386

```console
$ docker pull haproxy@sha256:64495108064d8b44eea65fc11a64801f4968d98aa4d1a4d19292f1e05b779320
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61731003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d3029b65ada0810edeaeed67e087f0d5784a15ff709c4df25a70340ea37cbfe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 09:00:20 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 09:00:21 GMT
ENV HAPROXY_MAJOR=1.5
# Wed, 21 Feb 2018 09:00:21 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 21 Feb 2018 09:00:21 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Wed, 21 Feb 2018 09:01:52 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Feb 2018 09:01:53 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Wed, 21 Feb 2018 09:01:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 21 Feb 2018 09:01:53 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f1b1e41008194e287ccc9dbe368b3420276f3e902a293b6fe7429517002366`  
		Last Modified: Wed, 21 Feb 2018 09:21:15 GMT  
		Size: 3.8 MB (3849219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49949098e8e9f1244eb7e0d1d2a5504937e47ae4bfec439eb5a4d21fb194eb48`  
		Last Modified: Wed, 21 Feb 2018 09:21:16 GMT  
		Size: 5.1 MB (5093670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955f3df123a52f317893573c58a49eaa649cfe641c7f609c8dd065df6638bef5`  
		Last Modified: Wed, 21 Feb 2018 09:21:16 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; ppc64le

```console
$ docker pull haproxy@sha256:3eb552860470cf394e33eef0022ceddca946f021e3d8304806c8fd30be14e7fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.1 MB (58085830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:113df826e8e74e8cdf9b2e9a0185c645d8c50f8ac2d7a9a15d3c8c76c143265c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 02:05:01 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 02:05:02 GMT
ENV HAPROXY_MAJOR=1.5
# Thu, 15 Feb 2018 02:05:03 GMT
ENV HAPROXY_VERSION=1.5.19
# Thu, 15 Feb 2018 02:05:04 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Thu, 15 Feb 2018 02:10:15 GMT
RUN buildDeps='ca-certificates curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 02:10:17 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 02:10:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 02:10:22 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8f810511973a5eaf56004cd9e591d007ae355d50cc1814da5b3a489f2d5d65`  
		Last Modified: Thu, 15 Feb 2018 02:25:50 GMT  
		Size: 1.7 MB (1699279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0a5778d5c0bbfd218ce639eb5e64f68cc6455418df4d5e9d6decf8b4b8d679`  
		Last Modified: Thu, 15 Feb 2018 02:25:51 GMT  
		Size: 4.6 MB (4569076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7f2020fbf0ab448cb9018d8af734beddde81b6bbb34c5e48b9397d40b26a31`  
		Last Modified: Thu, 15 Feb 2018 02:25:50 GMT  
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
$ docker pull haproxy@sha256:a57e2175f03df1b1d15743c1e461675683e27c25576512c3571a5501ed6df56b
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
$ docker pull haproxy@sha256:78292ba824a5ff3552fb5f0199ba495014c955d25bfed6a9c8405deb3615a6ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55708688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad9b3ce8ada33e8fff4db3d5593ea7574b1d37527042f686d6ac09ab1b55388`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 20:56:11 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Feb 2018 22:17:47 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:17:47 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 15 Feb 2018 22:17:47 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 15 Feb 2018 22:17:47 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Thu, 15 Feb 2018 22:19:19 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 22:19:19 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 22:19:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:19:20 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f2771f5920a462760905b0a0ddc9be1e27f215feb13663882583df5da4c48a`  
		Last Modified: Thu, 15 Feb 2018 21:05:07 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efe99ed15a5e468ef5a060ffcc88ee99d923a03472f09f9a26d0d36cc454d02`  
		Last Modified: Thu, 15 Feb 2018 22:22:59 GMT  
		Size: 1.8 MB (1788401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71bf558cbf5d2d068a1bd074d5049250fb633ec385e6ae182128030bda2b9515`  
		Last Modified: Thu, 15 Feb 2018 22:23:00 GMT  
		Size: 3.0 MB (3030036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:835fcfd34c3e02eade6d2eeeef48f37b41ebb90ee3c3c8023ac4c5914a1b2525`  
		Last Modified: Thu, 15 Feb 2018 22:22:59 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:2b258a8ef751093d9f695e491f47b98c798072858d6fecbe0f9ff6680cfc80c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.4 MB (53395911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6d603fe09176add4652e2847999e3cb61698866d8fdc88afa2553d30c9330a0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 13:26:42 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Feb 2018 14:05:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:05:24 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 15 Feb 2018 14:05:25 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 15 Feb 2018 14:05:25 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Thu, 15 Feb 2018 14:06:25 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 14:06:26 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 14:06:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 14:06:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f068c15af17e834a05996ad54b1a92d196bc9ebb70653fb7a889f6dbb982c9`  
		Last Modified: Thu, 15 Feb 2018 13:36:08 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777b3bb665a25052856c26e9442611479ef6234a04c04225ff643610bec8442a`  
		Last Modified: Thu, 15 Feb 2018 14:09:38 GMT  
		Size: 1.7 MB (1710798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:746a774eac30dd52c08ede9851204a1117584ce5b6949d3a0138597f67cc00ab`  
		Last Modified: Thu, 15 Feb 2018 14:09:38 GMT  
		Size: 3.0 MB (2983086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4c16f57f549b8fb2c88d59f06840eb7966bef2896694f1f9e8ed54aa575de4`  
		Last Modified: Thu, 15 Feb 2018 14:09:38 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:389d271fb3efb78c50cb1dd388622276f10293687c86871736c0462a319a9b81
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54805090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6469da73b6bdf0a61aa0bee9a56e09c6c8b4197a73aa1eaad5f111776c8e77bf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 18:24:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Feb 2018 20:33:25 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 20:33:26 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 15 Feb 2018 20:33:27 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 15 Feb 2018 20:33:28 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Thu, 15 Feb 2018 20:36:05 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 20:36:06 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 20:36:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 20:36:08 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672ff6ddd04a967e34b5d20af665b5a8675e674ebf6efc6f4324baac7a29ea5e`  
		Last Modified: Thu, 15 Feb 2018 18:36:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d052a8175aac8e2fac59723512f81e44c8ae618eb3357ae1ba6c3ca9d18df1d`  
		Last Modified: Thu, 15 Feb 2018 20:43:13 GMT  
		Size: 1.8 MB (1813999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7731bef99fa9a9a5ec60e2e6a8586cc530d90f325ad3d358f00252cb381f5a3b`  
		Last Modified: Thu, 15 Feb 2018 20:43:14 GMT  
		Size: 3.1 MB (3056617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c107b4e5947f419e48e1aecbf56ad384b87f284ad4e518067efa1c56d15f48`  
		Last Modified: Thu, 15 Feb 2018 20:43:13 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; 386

```console
$ docker pull haproxy@sha256:5f4be9696d55c25bb95c2496dd698527945a4953becea7a4e0ef5aecab566d40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59724754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514b9b4b3f4c8bc6894444d0bb4ed99235ed093695c2ce06f91fa809be90811a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 15:01:40 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 16 Feb 2018 10:07:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 10:12:14 GMT
ENV HAPROXY_MAJOR=1.6
# Fri, 16 Feb 2018 10:12:14 GMT
ENV HAPROXY_VERSION=1.6.14
# Fri, 16 Feb 2018 10:12:14 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Fri, 16 Feb 2018 10:13:24 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Feb 2018 10:22:58 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 16 Feb 2018 10:22:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Feb 2018 10:22:59 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb2e3091b6bd28bd76545d351d6eb985c6b124649aa0374c945c1c159d7d01b`  
		Last Modified: Thu, 15 Feb 2018 22:27:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c4c46fda02db168f881aad1a67b2e0815dcfbe1716f2b9daa5b7c4c6b66de2`  
		Last Modified: Fri, 16 Feb 2018 10:48:35 GMT  
		Size: 4.1 MB (4106274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1eb001799b6159434f4c893a557d41c3d35e91852363c3912f17dd2fe2b3e9b`  
		Last Modified: Fri, 16 Feb 2018 10:48:34 GMT  
		Size: 2.8 MB (2830140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069d2fd6776a12b3e76e00ff0266cfd7831c43430403ffb9b6b97966d2beed8d`  
		Last Modified: Fri, 16 Feb 2018 10:48:33 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; ppc64le

```console
$ docker pull haproxy@sha256:dbf05049ebbc736247de1039344b7659ddca7413713c8fc5e6e63007aaa62429
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.9 MB (56856832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f5cc4ad2a86967f380220bc1a300b911478a0d14bbf35f68acefef7c780a8b5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 01:34:00 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Feb 2018 02:11:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 02:11:02 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 15 Feb 2018 02:11:03 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 15 Feb 2018 02:11:05 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Thu, 15 Feb 2018 02:15:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 02:15:41 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 02:15:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 02:15:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3968c46665ba61ef86ff8e4271fa44d4745a585f6ce2888a000f1ae0e7cc61a5`  
		Last Modified: Thu, 15 Feb 2018 01:42:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae19689b96d4c366f59dc21a6da78ef47ef98307ace82627ac329e230c54415`  
		Last Modified: Thu, 15 Feb 2018 02:26:11 GMT  
		Size: 1.9 MB (1930093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841d4ce8120f3fa01ebdfb294debaadc5a697e87ea057e30078bd65183e98713`  
		Last Modified: Thu, 15 Feb 2018 02:26:13 GMT  
		Size: 3.1 MB (3109038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedbe71228f50593c33f304ad944f9f080afc70a0abb9d4ea0044de5a89795bd`  
		Last Modified: Thu, 15 Feb 2018 02:26:10 GMT  
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
$ docker pull haproxy@sha256:a57e2175f03df1b1d15743c1e461675683e27c25576512c3571a5501ed6df56b
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
$ docker pull haproxy@sha256:78292ba824a5ff3552fb5f0199ba495014c955d25bfed6a9c8405deb3615a6ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55708688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad9b3ce8ada33e8fff4db3d5593ea7574b1d37527042f686d6ac09ab1b55388`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 20:56:11 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Feb 2018 22:17:47 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:17:47 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 15 Feb 2018 22:17:47 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 15 Feb 2018 22:17:47 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Thu, 15 Feb 2018 22:19:19 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 22:19:19 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 22:19:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:19:20 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f2771f5920a462760905b0a0ddc9be1e27f215feb13663882583df5da4c48a`  
		Last Modified: Thu, 15 Feb 2018 21:05:07 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efe99ed15a5e468ef5a060ffcc88ee99d923a03472f09f9a26d0d36cc454d02`  
		Last Modified: Thu, 15 Feb 2018 22:22:59 GMT  
		Size: 1.8 MB (1788401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71bf558cbf5d2d068a1bd074d5049250fb633ec385e6ae182128030bda2b9515`  
		Last Modified: Thu, 15 Feb 2018 22:23:00 GMT  
		Size: 3.0 MB (3030036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:835fcfd34c3e02eade6d2eeeef48f37b41ebb90ee3c3c8023ac4c5914a1b2525`  
		Last Modified: Thu, 15 Feb 2018 22:22:59 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:2b258a8ef751093d9f695e491f47b98c798072858d6fecbe0f9ff6680cfc80c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.4 MB (53395911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6d603fe09176add4652e2847999e3cb61698866d8fdc88afa2553d30c9330a0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 13:26:42 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Feb 2018 14:05:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:05:24 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 15 Feb 2018 14:05:25 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 15 Feb 2018 14:05:25 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Thu, 15 Feb 2018 14:06:25 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 14:06:26 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 14:06:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 14:06:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f068c15af17e834a05996ad54b1a92d196bc9ebb70653fb7a889f6dbb982c9`  
		Last Modified: Thu, 15 Feb 2018 13:36:08 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777b3bb665a25052856c26e9442611479ef6234a04c04225ff643610bec8442a`  
		Last Modified: Thu, 15 Feb 2018 14:09:38 GMT  
		Size: 1.7 MB (1710798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:746a774eac30dd52c08ede9851204a1117584ce5b6949d3a0138597f67cc00ab`  
		Last Modified: Thu, 15 Feb 2018 14:09:38 GMT  
		Size: 3.0 MB (2983086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4c16f57f549b8fb2c88d59f06840eb7966bef2896694f1f9e8ed54aa575de4`  
		Last Modified: Thu, 15 Feb 2018 14:09:38 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:389d271fb3efb78c50cb1dd388622276f10293687c86871736c0462a319a9b81
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54805090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6469da73b6bdf0a61aa0bee9a56e09c6c8b4197a73aa1eaad5f111776c8e77bf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 18:24:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Feb 2018 20:33:25 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 20:33:26 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 15 Feb 2018 20:33:27 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 15 Feb 2018 20:33:28 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Thu, 15 Feb 2018 20:36:05 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 20:36:06 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 20:36:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 20:36:08 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672ff6ddd04a967e34b5d20af665b5a8675e674ebf6efc6f4324baac7a29ea5e`  
		Last Modified: Thu, 15 Feb 2018 18:36:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d052a8175aac8e2fac59723512f81e44c8ae618eb3357ae1ba6c3ca9d18df1d`  
		Last Modified: Thu, 15 Feb 2018 20:43:13 GMT  
		Size: 1.8 MB (1813999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7731bef99fa9a9a5ec60e2e6a8586cc530d90f325ad3d358f00252cb381f5a3b`  
		Last Modified: Thu, 15 Feb 2018 20:43:14 GMT  
		Size: 3.1 MB (3056617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c107b4e5947f419e48e1aecbf56ad384b87f284ad4e518067efa1c56d15f48`  
		Last Modified: Thu, 15 Feb 2018 20:43:13 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; 386

```console
$ docker pull haproxy@sha256:5f4be9696d55c25bb95c2496dd698527945a4953becea7a4e0ef5aecab566d40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59724754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514b9b4b3f4c8bc6894444d0bb4ed99235ed093695c2ce06f91fa809be90811a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 15:01:40 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 16 Feb 2018 10:07:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 10:12:14 GMT
ENV HAPROXY_MAJOR=1.6
# Fri, 16 Feb 2018 10:12:14 GMT
ENV HAPROXY_VERSION=1.6.14
# Fri, 16 Feb 2018 10:12:14 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Fri, 16 Feb 2018 10:13:24 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Feb 2018 10:22:58 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 16 Feb 2018 10:22:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Feb 2018 10:22:59 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb2e3091b6bd28bd76545d351d6eb985c6b124649aa0374c945c1c159d7d01b`  
		Last Modified: Thu, 15 Feb 2018 22:27:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c4c46fda02db168f881aad1a67b2e0815dcfbe1716f2b9daa5b7c4c6b66de2`  
		Last Modified: Fri, 16 Feb 2018 10:48:35 GMT  
		Size: 4.1 MB (4106274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1eb001799b6159434f4c893a557d41c3d35e91852363c3912f17dd2fe2b3e9b`  
		Last Modified: Fri, 16 Feb 2018 10:48:34 GMT  
		Size: 2.8 MB (2830140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069d2fd6776a12b3e76e00ff0266cfd7831c43430403ffb9b6b97966d2beed8d`  
		Last Modified: Fri, 16 Feb 2018 10:48:33 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; ppc64le

```console
$ docker pull haproxy@sha256:dbf05049ebbc736247de1039344b7659ddca7413713c8fc5e6e63007aaa62429
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.9 MB (56856832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f5cc4ad2a86967f380220bc1a300b911478a0d14bbf35f68acefef7c780a8b5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 01:34:00 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Feb 2018 02:11:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 02:11:02 GMT
ENV HAPROXY_MAJOR=1.6
# Thu, 15 Feb 2018 02:11:03 GMT
ENV HAPROXY_VERSION=1.6.14
# Thu, 15 Feb 2018 02:11:05 GMT
ENV HAPROXY_MD5=5daf73eb70052e8ec66c40817f265202
# Thu, 15 Feb 2018 02:15:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 02:15:41 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 02:15:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 02:15:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3968c46665ba61ef86ff8e4271fa44d4745a585f6ce2888a000f1ae0e7cc61a5`  
		Last Modified: Thu, 15 Feb 2018 01:42:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae19689b96d4c366f59dc21a6da78ef47ef98307ace82627ac329e230c54415`  
		Last Modified: Thu, 15 Feb 2018 02:26:11 GMT  
		Size: 1.9 MB (1930093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841d4ce8120f3fa01ebdfb294debaadc5a697e87ea057e30078bd65183e98713`  
		Last Modified: Thu, 15 Feb 2018 02:26:13 GMT  
		Size: 3.1 MB (3109038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedbe71228f50593c33f304ad944f9f080afc70a0abb9d4ea0044de5a89795bd`  
		Last Modified: Thu, 15 Feb 2018 02:26:10 GMT  
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
$ docker pull haproxy@sha256:74393f7b56e847a282ab119c15da81edaa5b8d15b3bae72c4590cb5652dd3778
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
$ docker pull haproxy@sha256:c883378162e6cd07c5bc8110f875b3d512972fab929d98cb15d9c50d3902f40f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56204084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a0b69a1415bc1b231a58d987f9fdb46d16e764c5440876ab1b714e2d9cd474f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 20:56:11 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Feb 2018 22:17:47 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:19:42 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 15 Feb 2018 22:19:42 GMT
ENV HAPROXY_VERSION=1.7.10
# Thu, 15 Feb 2018 22:19:43 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Thu, 15 Feb 2018 22:20:54 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 22:20:54 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 22:20:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:20:55 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f2771f5920a462760905b0a0ddc9be1e27f215feb13663882583df5da4c48a`  
		Last Modified: Thu, 15 Feb 2018 21:05:07 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efe99ed15a5e468ef5a060ffcc88ee99d923a03472f09f9a26d0d36cc454d02`  
		Last Modified: Thu, 15 Feb 2018 22:22:59 GMT  
		Size: 1.8 MB (1788401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d71541688bb7c9354055681a788a90ca07eeab16871b9a4af4d36c1f05e613`  
		Last Modified: Thu, 15 Feb 2018 22:23:20 GMT  
		Size: 3.5 MB (3525433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbec76bb74478970105b61a476ba49f9e5e9f4a499fef4eece94a805b200db76`  
		Last Modified: Thu, 15 Feb 2018 22:23:20 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:1ff96c79cf30b3396c4ccc15b90cfe1cf792913702b723471ea391f66091b84c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53885949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30d5dd5978bdddc2dec24c0e8d1144e009152edd72ea3fcab7b7e0581eddb6c1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 13:26:42 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Feb 2018 14:05:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:06:47 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 15 Feb 2018 14:06:48 GMT
ENV HAPROXY_VERSION=1.7.10
# Thu, 15 Feb 2018 14:06:48 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Thu, 15 Feb 2018 14:07:50 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 14:07:51 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 14:07:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 14:07:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f068c15af17e834a05996ad54b1a92d196bc9ebb70653fb7a889f6dbb982c9`  
		Last Modified: Thu, 15 Feb 2018 13:36:08 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777b3bb665a25052856c26e9442611479ef6234a04c04225ff643610bec8442a`  
		Last Modified: Thu, 15 Feb 2018 14:09:38 GMT  
		Size: 1.7 MB (1710798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfc8a34f62088d3f8495f291736d732633966eeb24b17341a4d1978447d4711`  
		Last Modified: Thu, 15 Feb 2018 14:09:57 GMT  
		Size: 3.5 MB (3473125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789b5f751bf3363d47290b0d399240ae22610342753fb8596412c8d5c918b180`  
		Last Modified: Thu, 15 Feb 2018 14:09:57 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:c36af0542e3142c1a9b44569cbd2cb9b04f4b63c39f531018009f338594afff2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.3 MB (55296345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d67574047ab4b3b05de111fa10e022d7c4229a2654f316408213b3ffe9c3ea5c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 18:24:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Feb 2018 20:33:25 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 20:36:27 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 15 Feb 2018 20:36:28 GMT
ENV HAPROXY_VERSION=1.7.10
# Thu, 15 Feb 2018 20:36:30 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Thu, 15 Feb 2018 20:39:08 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 20:39:08 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 20:39:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 20:39:10 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672ff6ddd04a967e34b5d20af665b5a8675e674ebf6efc6f4324baac7a29ea5e`  
		Last Modified: Thu, 15 Feb 2018 18:36:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d052a8175aac8e2fac59723512f81e44c8ae618eb3357ae1ba6c3ca9d18df1d`  
		Last Modified: Thu, 15 Feb 2018 20:43:13 GMT  
		Size: 1.8 MB (1813999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab630c44519eac17162c50bfdd0e116381ad97f0b9c9e2d910c206770782411c`  
		Last Modified: Thu, 15 Feb 2018 20:43:43 GMT  
		Size: 3.5 MB (3547872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d4ed7f2850d2591fbd44789876a1176229e06aa5dc2321f2129d091cbf1757`  
		Last Modified: Thu, 15 Feb 2018 20:43:42 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; 386

```console
$ docker pull haproxy@sha256:b54da86ff35e85611296f478162361c2f5a7bb15dd82e37a5785d12e5907ec7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.2 MB (60195957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f33a9cd53bbde52e0044e5c921a26d3fac8155a70f3d68fe31a26aceffac4dc7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 15:01:40 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 16 Feb 2018 10:07:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 10:31:05 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 16 Feb 2018 10:31:05 GMT
ENV HAPROXY_VERSION=1.7.10
# Fri, 16 Feb 2018 10:31:06 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Fri, 16 Feb 2018 10:32:11 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Feb 2018 10:32:11 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 16 Feb 2018 10:32:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Feb 2018 10:32:12 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb2e3091b6bd28bd76545d351d6eb985c6b124649aa0374c945c1c159d7d01b`  
		Last Modified: Thu, 15 Feb 2018 22:27:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c4c46fda02db168f881aad1a67b2e0815dcfbe1716f2b9daa5b7c4c6b66de2`  
		Last Modified: Fri, 16 Feb 2018 10:48:35 GMT  
		Size: 4.1 MB (4106274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ab8dbcb3621ec00c281cfd20a4a495470ef0325d57526ebb3d7a1bc611e1ae`  
		Last Modified: Fri, 16 Feb 2018 11:10:15 GMT  
		Size: 3.3 MB (3301343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8952c0aa51ef3a114221b6cb8f534242f7156b0282e353b31c4e4a7370450035`  
		Last Modified: Fri, 16 Feb 2018 11:10:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; ppc64le

```console
$ docker pull haproxy@sha256:0e9f1702ea0fbf8a0a99c34fe1f97c662ce7ea284329e23c1ac351b8846711f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57354319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:def994a68da5d295fc2ddea0902840edcc6f654795736be06d8cb8898378e0a8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 01:34:00 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Feb 2018 02:11:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 02:15:54 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 15 Feb 2018 02:16:07 GMT
ENV HAPROXY_VERSION=1.7.10
# Thu, 15 Feb 2018 02:16:09 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Thu, 15 Feb 2018 02:20:24 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 02:20:26 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 02:20:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 02:20:29 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3968c46665ba61ef86ff8e4271fa44d4745a585f6ce2888a000f1ae0e7cc61a5`  
		Last Modified: Thu, 15 Feb 2018 01:42:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae19689b96d4c366f59dc21a6da78ef47ef98307ace82627ac329e230c54415`  
		Last Modified: Thu, 15 Feb 2018 02:26:11 GMT  
		Size: 1.9 MB (1930093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107ce10e2ee9b3d4b42e30fcf66e664b7108e7c054099226a4cc8dbe66bbc24f`  
		Last Modified: Thu, 15 Feb 2018 02:26:35 GMT  
		Size: 3.6 MB (3606525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b5fcf1669fc7a37d1643c67d36bed96b253d84bcf171889e053d5c0a6b43e6`  
		Last Modified: Thu, 15 Feb 2018 02:26:33 GMT  
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
$ docker pull haproxy@sha256:74393f7b56e847a282ab119c15da81edaa5b8d15b3bae72c4590cb5652dd3778
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
$ docker pull haproxy@sha256:c883378162e6cd07c5bc8110f875b3d512972fab929d98cb15d9c50d3902f40f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56204084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a0b69a1415bc1b231a58d987f9fdb46d16e764c5440876ab1b714e2d9cd474f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 20:56:11 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Feb 2018 22:17:47 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:19:42 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 15 Feb 2018 22:19:42 GMT
ENV HAPROXY_VERSION=1.7.10
# Thu, 15 Feb 2018 22:19:43 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Thu, 15 Feb 2018 22:20:54 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 22:20:54 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 22:20:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:20:55 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f2771f5920a462760905b0a0ddc9be1e27f215feb13663882583df5da4c48a`  
		Last Modified: Thu, 15 Feb 2018 21:05:07 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efe99ed15a5e468ef5a060ffcc88ee99d923a03472f09f9a26d0d36cc454d02`  
		Last Modified: Thu, 15 Feb 2018 22:22:59 GMT  
		Size: 1.8 MB (1788401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d71541688bb7c9354055681a788a90ca07eeab16871b9a4af4d36c1f05e613`  
		Last Modified: Thu, 15 Feb 2018 22:23:20 GMT  
		Size: 3.5 MB (3525433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbec76bb74478970105b61a476ba49f9e5e9f4a499fef4eece94a805b200db76`  
		Last Modified: Thu, 15 Feb 2018 22:23:20 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.10` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:1ff96c79cf30b3396c4ccc15b90cfe1cf792913702b723471ea391f66091b84c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53885949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30d5dd5978bdddc2dec24c0e8d1144e009152edd72ea3fcab7b7e0581eddb6c1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 13:26:42 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Feb 2018 14:05:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:06:47 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 15 Feb 2018 14:06:48 GMT
ENV HAPROXY_VERSION=1.7.10
# Thu, 15 Feb 2018 14:06:48 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Thu, 15 Feb 2018 14:07:50 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 14:07:51 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 14:07:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 14:07:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f068c15af17e834a05996ad54b1a92d196bc9ebb70653fb7a889f6dbb982c9`  
		Last Modified: Thu, 15 Feb 2018 13:36:08 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777b3bb665a25052856c26e9442611479ef6234a04c04225ff643610bec8442a`  
		Last Modified: Thu, 15 Feb 2018 14:09:38 GMT  
		Size: 1.7 MB (1710798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfc8a34f62088d3f8495f291736d732633966eeb24b17341a4d1978447d4711`  
		Last Modified: Thu, 15 Feb 2018 14:09:57 GMT  
		Size: 3.5 MB (3473125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789b5f751bf3363d47290b0d399240ae22610342753fb8596412c8d5c918b180`  
		Last Modified: Thu, 15 Feb 2018 14:09:57 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.10` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:c36af0542e3142c1a9b44569cbd2cb9b04f4b63c39f531018009f338594afff2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.3 MB (55296345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d67574047ab4b3b05de111fa10e022d7c4229a2654f316408213b3ffe9c3ea5c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 18:24:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Feb 2018 20:33:25 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 20:36:27 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 15 Feb 2018 20:36:28 GMT
ENV HAPROXY_VERSION=1.7.10
# Thu, 15 Feb 2018 20:36:30 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Thu, 15 Feb 2018 20:39:08 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 20:39:08 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 20:39:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 20:39:10 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672ff6ddd04a967e34b5d20af665b5a8675e674ebf6efc6f4324baac7a29ea5e`  
		Last Modified: Thu, 15 Feb 2018 18:36:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d052a8175aac8e2fac59723512f81e44c8ae618eb3357ae1ba6c3ca9d18df1d`  
		Last Modified: Thu, 15 Feb 2018 20:43:13 GMT  
		Size: 1.8 MB (1813999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab630c44519eac17162c50bfdd0e116381ad97f0b9c9e2d910c206770782411c`  
		Last Modified: Thu, 15 Feb 2018 20:43:43 GMT  
		Size: 3.5 MB (3547872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d4ed7f2850d2591fbd44789876a1176229e06aa5dc2321f2129d091cbf1757`  
		Last Modified: Thu, 15 Feb 2018 20:43:42 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.10` - linux; 386

```console
$ docker pull haproxy@sha256:b54da86ff35e85611296f478162361c2f5a7bb15dd82e37a5785d12e5907ec7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.2 MB (60195957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f33a9cd53bbde52e0044e5c921a26d3fac8155a70f3d68fe31a26aceffac4dc7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 15:01:40 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 16 Feb 2018 10:07:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 10:31:05 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 16 Feb 2018 10:31:05 GMT
ENV HAPROXY_VERSION=1.7.10
# Fri, 16 Feb 2018 10:31:06 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Fri, 16 Feb 2018 10:32:11 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Feb 2018 10:32:11 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Fri, 16 Feb 2018 10:32:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Feb 2018 10:32:12 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb2e3091b6bd28bd76545d351d6eb985c6b124649aa0374c945c1c159d7d01b`  
		Last Modified: Thu, 15 Feb 2018 22:27:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c4c46fda02db168f881aad1a67b2e0815dcfbe1716f2b9daa5b7c4c6b66de2`  
		Last Modified: Fri, 16 Feb 2018 10:48:35 GMT  
		Size: 4.1 MB (4106274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ab8dbcb3621ec00c281cfd20a4a495470ef0325d57526ebb3d7a1bc611e1ae`  
		Last Modified: Fri, 16 Feb 2018 11:10:15 GMT  
		Size: 3.3 MB (3301343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8952c0aa51ef3a114221b6cb8f534242f7156b0282e353b31c4e4a7370450035`  
		Last Modified: Fri, 16 Feb 2018 11:10:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.10` - linux; ppc64le

```console
$ docker pull haproxy@sha256:0e9f1702ea0fbf8a0a99c34fe1f97c662ce7ea284329e23c1ac351b8846711f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57354319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:def994a68da5d295fc2ddea0902840edcc6f654795736be06d8cb8898378e0a8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 01:34:00 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Feb 2018 02:11:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 02:15:54 GMT
ENV HAPROXY_MAJOR=1.7
# Thu, 15 Feb 2018 02:16:07 GMT
ENV HAPROXY_VERSION=1.7.10
# Thu, 15 Feb 2018 02:16:09 GMT
ENV HAPROXY_MD5=a9b98a228660dee5ee65b62e3bd57822
# Thu, 15 Feb 2018 02:20:24 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 02:20:26 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 15 Feb 2018 02:20:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 02:20:29 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3968c46665ba61ef86ff8e4271fa44d4745a585f6ce2888a000f1ae0e7cc61a5`  
		Last Modified: Thu, 15 Feb 2018 01:42:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae19689b96d4c366f59dc21a6da78ef47ef98307ace82627ac329e230c54415`  
		Last Modified: Thu, 15 Feb 2018 02:26:11 GMT  
		Size: 1.9 MB (1930093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107ce10e2ee9b3d4b42e30fcf66e664b7108e7c054099226a4cc8dbe66bbc24f`  
		Last Modified: Thu, 15 Feb 2018 02:26:35 GMT  
		Size: 3.6 MB (3606525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b5fcf1669fc7a37d1643c67d36bed96b253d84bcf171889e053d5c0a6b43e6`  
		Last Modified: Thu, 15 Feb 2018 02:26:33 GMT  
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
$ docker pull haproxy@sha256:c2c5cc79d225b0c85314000423676ad9ea499d717dd3b922d7edd65c6105e0be
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
$ docker pull haproxy@sha256:d60696f649bd2835d9003aeb3332b56f1019159c8fce25465a84a8643c2a1531
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28454402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547018c815911bc330536521be4a1cd0a98f5f83e5e1109db199e4ea1f5195d2`
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
# Wed, 14 Mar 2018 04:30:07 GMT
ENV HAPROXY_VERSION=1.8.4
# Wed, 14 Mar 2018 04:30:07 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Wed, 14 Mar 2018 04:30:45 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 04:30:45 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 14 Mar 2018 04:30:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 04:30:45 GMT
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
	-	`sha256:8779f9b34e0a23ef0a32212c889375f08182702395008768797847dd0ac2fe77`  
		Last Modified: Wed, 14 Mar 2018 04:33:03 GMT  
		Size: 3.9 MB (3862771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfeb8bbf40aef8cf074771e9d6a9f3f99b2a1343ffe01a4de39e346f32329971`  
		Last Modified: Wed, 14 Mar 2018 04:33:02 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:cdcf0c307f1d48cdaa5e76519c50b05f960a7656df89ef1243be06333b44dcda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 MB (26791102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c963a468dac802e986a98257a41867ac5bf21b6fffd4f211528661072d22f1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:31 GMT
ADD file:a4ff4a71be86566d946378fcdcdf8a581533429c77852d0a52919a736ec535bc in / 
# Thu, 15 Feb 2018 21:00:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:21:25 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:21:25 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 15 Feb 2018 22:21:25 GMT
ENV HAPROXY_VERSION=1.8.4
# Thu, 15 Feb 2018 22:21:26 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Thu, 15 Feb 2018 22:22:17 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 22:22:17 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 15 Feb 2018 22:22:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:22:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d4fd25f13e1d4f6be6bd3e1a90bebc4f1ba9d950a6a33b46c42850a4c1d2d1b2`  
		Last Modified: Thu, 15 Feb 2018 21:11:11 GMT  
		Size: 21.2 MB (21175030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7245785f1eea7d2cc552c92c1ba14284178a037a9ac56ddb4a0be8f54a0746ea`  
		Last Modified: Thu, 15 Feb 2018 22:23:41 GMT  
		Size: 1.8 MB (1815984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f4a81a5a36ed46d50e5df2908bb65b869f9e491f611188114a48a9ba3a54e2`  
		Last Modified: Thu, 15 Feb 2018 22:23:42 GMT  
		Size: 3.8 MB (3799708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e703e186f0e844f94a107c04876233e660bd787bbeae14a89eaf5cab2e0da3e`  
		Last Modified: Thu, 15 Feb 2018 22:23:40 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:a0a549d5d0de0064bcb2c5055b7f31242e5a48ccdd6218fb1d0b2a37b1804840
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24770244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6816c0bbef7978b28f153aa6351db2f1d6d72d0e5ba562bb9a2d7fb7e83df17a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:08:22 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:08:22 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 15 Feb 2018 14:08:23 GMT
ENV HAPROXY_VERSION=1.8.4
# Thu, 15 Feb 2018 14:08:23 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Thu, 15 Feb 2018 14:08:51 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 14:08:52 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 15 Feb 2018 14:08:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 14:08:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:235baf89a76b73bd04542508f7769803ecd00e0b8c71046ada69fb9d17f02496`  
		Last Modified: Thu, 15 Feb 2018 13:41:58 GMT  
		Size: 19.3 MB (19286085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be916701862cdf44cf90478cfbb93f27b96252db66e4f8a77619f1ff173450c6`  
		Last Modified: Thu, 15 Feb 2018 14:10:18 GMT  
		Size: 1.7 MB (1736043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20503b8fc138cc401ff57c961ffe85e2a85c79955b77d826b545a1c41176f8b`  
		Last Modified: Thu, 15 Feb 2018 14:10:19 GMT  
		Size: 3.7 MB (3747736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ca163eb1cf6addcf35d78b82803708f490ceb97de7ece3f7188cc0edaf3375`  
		Last Modified: Thu, 15 Feb 2018 14:10:18 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:0eef514bdbae5b59dd456cbd945d86158a642c3056d66caf108eb91f61c73ae8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25929561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59fd8afcdf7880c5003c7ff93195020595e3a2b7675fc2169e326d7a9155eefe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 20:39:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 20:39:50 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 15 Feb 2018 20:39:51 GMT
ENV HAPROXY_VERSION=1.8.4
# Thu, 15 Feb 2018 20:39:51 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Thu, 15 Feb 2018 20:41:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 20:41:58 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 15 Feb 2018 20:42:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 20:42:04 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abce8de73dd9c8c294cb189734d4f9c94b97eb01f3ad59eb85fce5f7585ece51`  
		Last Modified: Thu, 15 Feb 2018 20:44:12 GMT  
		Size: 1.8 MB (1818761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81fb94e56b663468768872125d1842a46656cae3be55db5cd5844cb8cd119b9c`  
		Last Modified: Thu, 15 Feb 2018 20:44:13 GMT  
		Size: 3.8 MB (3762994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dfd1bc4500215e436c4dac08d35d7be2ba46035a09327fe81c8c7370e151a6`  
		Last Modified: Thu, 15 Feb 2018 20:44:11 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; 386

```console
$ docker pull haproxy@sha256:15768a8ba09dd1c2f47e1625be839bd321c5ff012adc7a4f39dea8397cd0c666
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29040524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e945d095bf3490ae71e7c1a03798865cbc841ed61012ff71dd51fcf586114e71`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 18:56:40 GMT
ADD file:46f3ea038ddbb2713695c8891a22675f7355211fecac25807c95590f5a5d4bfa in / 
# Thu, 15 Feb 2018 19:04:20 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 09:11:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 09:11:51 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 21 Feb 2018 09:11:51 GMT
ENV HAPROXY_VERSION=1.8.4
# Wed, 21 Feb 2018 09:11:51 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Wed, 21 Feb 2018 09:12:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Feb 2018 09:12:40 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 21 Feb 2018 09:12:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 21 Feb 2018 09:12:41 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5a3bef8a5a8dcf8e6b5914993862777a98536514aedf43f0a604d87764970d8a`  
		Last Modified: Thu, 15 Feb 2018 01:16:16 GMT  
		Size: 23.1 MB (23135027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc0c16f494d4e869b5a8dd5d17b8d594612060af03f5b9483760466d740b1e6`  
		Last Modified: Wed, 21 Feb 2018 09:23:02 GMT  
		Size: 2.1 MB (2128543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065da3d24013025eb59c73a4c42c0932b131fdeb7b6832179420e9b0cf078853`  
		Last Modified: Wed, 21 Feb 2018 09:23:02 GMT  
		Size: 3.8 MB (3776572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ebf900b197c37c0c94d964c961b3bd2e155dedbd0e80965d9ee497b550658d`  
		Last Modified: Wed, 21 Feb 2018 09:23:01 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; ppc64le

```console
$ docker pull haproxy@sha256:0e1e68a587ccff2ea28ab3cc974d9f95b74010396d61aee31d47c1a396c4ff77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28384883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45dd348690f8ab8132fc395f7f704ad80ee130f9cf2c582872dde3fd06711ca3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 02:20:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 02:20:56 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 15 Feb 2018 02:20:57 GMT
ENV HAPROXY_VERSION=1.8.4
# Thu, 15 Feb 2018 02:20:59 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Thu, 15 Feb 2018 02:25:12 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 02:25:15 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 15 Feb 2018 02:25:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 02:25:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95352ce84115d15969ea892a3e8b67728460d2fa0afaed6b0736434f28ebe1c`  
		Last Modified: Thu, 15 Feb 2018 02:26:53 GMT  
		Size: 1.8 MB (1781206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed8d33f108893a76412a8f17eeb8357b952a9eed2d7222c1833b19db4212a4d`  
		Last Modified: Thu, 15 Feb 2018 02:26:53 GMT  
		Size: 3.9 MB (3850198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378ba875b8ed65c8d8ad8d4355a4b70621a912b6fe96e895567bd9fd9f91ac7a`  
		Last Modified: Thu, 15 Feb 2018 02:26:52 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; s390x

```console
$ docker pull haproxy@sha256:6df9780cf3da886c96900b5bc36a679bfa0dbd883dc4fb825a28944338e32289
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28127811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a365dedcbf05760db9b77782eceb3d901e3782c17a73895213401a9a0bcda18`
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
# Wed, 14 Mar 2018 06:06:52 GMT
ENV HAPROXY_VERSION=1.8.4
# Wed, 14 Mar 2018 06:06:52 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Wed, 14 Mar 2018 06:07:30 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 06:07:30 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 14 Mar 2018 06:07:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:07:30 GMT
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
	-	`sha256:763dd9c6011b0720aa66adf87a12585d1ccc530385b37a47e12adacca52c5906`  
		Last Modified: Wed, 14 Mar 2018 06:08:26 GMT  
		Size: 3.9 MB (3945897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c82d60bab548d121093fb244ed345fa7b9b6b3400ee60c185b042972a39a8a7`  
		Last Modified: Wed, 14 Mar 2018 06:08:25 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8.4`

```console
$ docker pull haproxy@sha256:c2c5cc79d225b0c85314000423676ad9ea499d717dd3b922d7edd65c6105e0be
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

### `haproxy:1.8.4` - linux; amd64

```console
$ docker pull haproxy@sha256:d60696f649bd2835d9003aeb3332b56f1019159c8fce25465a84a8643c2a1531
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28454402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547018c815911bc330536521be4a1cd0a98f5f83e5e1109db199e4ea1f5195d2`
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
# Wed, 14 Mar 2018 04:30:07 GMT
ENV HAPROXY_VERSION=1.8.4
# Wed, 14 Mar 2018 04:30:07 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Wed, 14 Mar 2018 04:30:45 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 04:30:45 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 14 Mar 2018 04:30:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 04:30:45 GMT
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
	-	`sha256:8779f9b34e0a23ef0a32212c889375f08182702395008768797847dd0ac2fe77`  
		Last Modified: Wed, 14 Mar 2018 04:33:03 GMT  
		Size: 3.9 MB (3862771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfeb8bbf40aef8cf074771e9d6a9f3f99b2a1343ffe01a4de39e346f32329971`  
		Last Modified: Wed, 14 Mar 2018 04:33:02 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.4` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:cdcf0c307f1d48cdaa5e76519c50b05f960a7656df89ef1243be06333b44dcda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 MB (26791102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c963a468dac802e986a98257a41867ac5bf21b6fffd4f211528661072d22f1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:31 GMT
ADD file:a4ff4a71be86566d946378fcdcdf8a581533429c77852d0a52919a736ec535bc in / 
# Thu, 15 Feb 2018 21:00:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:21:25 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:21:25 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 15 Feb 2018 22:21:25 GMT
ENV HAPROXY_VERSION=1.8.4
# Thu, 15 Feb 2018 22:21:26 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Thu, 15 Feb 2018 22:22:17 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 22:22:17 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 15 Feb 2018 22:22:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:22:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d4fd25f13e1d4f6be6bd3e1a90bebc4f1ba9d950a6a33b46c42850a4c1d2d1b2`  
		Last Modified: Thu, 15 Feb 2018 21:11:11 GMT  
		Size: 21.2 MB (21175030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7245785f1eea7d2cc552c92c1ba14284178a037a9ac56ddb4a0be8f54a0746ea`  
		Last Modified: Thu, 15 Feb 2018 22:23:41 GMT  
		Size: 1.8 MB (1815984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f4a81a5a36ed46d50e5df2908bb65b869f9e491f611188114a48a9ba3a54e2`  
		Last Modified: Thu, 15 Feb 2018 22:23:42 GMT  
		Size: 3.8 MB (3799708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e703e186f0e844f94a107c04876233e660bd787bbeae14a89eaf5cab2e0da3e`  
		Last Modified: Thu, 15 Feb 2018 22:23:40 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.4` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:a0a549d5d0de0064bcb2c5055b7f31242e5a48ccdd6218fb1d0b2a37b1804840
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24770244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6816c0bbef7978b28f153aa6351db2f1d6d72d0e5ba562bb9a2d7fb7e83df17a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:08:22 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:08:22 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 15 Feb 2018 14:08:23 GMT
ENV HAPROXY_VERSION=1.8.4
# Thu, 15 Feb 2018 14:08:23 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Thu, 15 Feb 2018 14:08:51 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 14:08:52 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 15 Feb 2018 14:08:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 14:08:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:235baf89a76b73bd04542508f7769803ecd00e0b8c71046ada69fb9d17f02496`  
		Last Modified: Thu, 15 Feb 2018 13:41:58 GMT  
		Size: 19.3 MB (19286085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be916701862cdf44cf90478cfbb93f27b96252db66e4f8a77619f1ff173450c6`  
		Last Modified: Thu, 15 Feb 2018 14:10:18 GMT  
		Size: 1.7 MB (1736043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20503b8fc138cc401ff57c961ffe85e2a85c79955b77d826b545a1c41176f8b`  
		Last Modified: Thu, 15 Feb 2018 14:10:19 GMT  
		Size: 3.7 MB (3747736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ca163eb1cf6addcf35d78b82803708f490ceb97de7ece3f7188cc0edaf3375`  
		Last Modified: Thu, 15 Feb 2018 14:10:18 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.4` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:0eef514bdbae5b59dd456cbd945d86158a642c3056d66caf108eb91f61c73ae8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25929561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59fd8afcdf7880c5003c7ff93195020595e3a2b7675fc2169e326d7a9155eefe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 20:39:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 20:39:50 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 15 Feb 2018 20:39:51 GMT
ENV HAPROXY_VERSION=1.8.4
# Thu, 15 Feb 2018 20:39:51 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Thu, 15 Feb 2018 20:41:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 20:41:58 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 15 Feb 2018 20:42:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 20:42:04 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abce8de73dd9c8c294cb189734d4f9c94b97eb01f3ad59eb85fce5f7585ece51`  
		Last Modified: Thu, 15 Feb 2018 20:44:12 GMT  
		Size: 1.8 MB (1818761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81fb94e56b663468768872125d1842a46656cae3be55db5cd5844cb8cd119b9c`  
		Last Modified: Thu, 15 Feb 2018 20:44:13 GMT  
		Size: 3.8 MB (3762994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dfd1bc4500215e436c4dac08d35d7be2ba46035a09327fe81c8c7370e151a6`  
		Last Modified: Thu, 15 Feb 2018 20:44:11 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.4` - linux; 386

```console
$ docker pull haproxy@sha256:15768a8ba09dd1c2f47e1625be839bd321c5ff012adc7a4f39dea8397cd0c666
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29040524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e945d095bf3490ae71e7c1a03798865cbc841ed61012ff71dd51fcf586114e71`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 18:56:40 GMT
ADD file:46f3ea038ddbb2713695c8891a22675f7355211fecac25807c95590f5a5d4bfa in / 
# Thu, 15 Feb 2018 19:04:20 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 09:11:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 09:11:51 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 21 Feb 2018 09:11:51 GMT
ENV HAPROXY_VERSION=1.8.4
# Wed, 21 Feb 2018 09:11:51 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Wed, 21 Feb 2018 09:12:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Feb 2018 09:12:40 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 21 Feb 2018 09:12:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 21 Feb 2018 09:12:41 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5a3bef8a5a8dcf8e6b5914993862777a98536514aedf43f0a604d87764970d8a`  
		Last Modified: Thu, 15 Feb 2018 01:16:16 GMT  
		Size: 23.1 MB (23135027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc0c16f494d4e869b5a8dd5d17b8d594612060af03f5b9483760466d740b1e6`  
		Last Modified: Wed, 21 Feb 2018 09:23:02 GMT  
		Size: 2.1 MB (2128543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065da3d24013025eb59c73a4c42c0932b131fdeb7b6832179420e9b0cf078853`  
		Last Modified: Wed, 21 Feb 2018 09:23:02 GMT  
		Size: 3.8 MB (3776572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ebf900b197c37c0c94d964c961b3bd2e155dedbd0e80965d9ee497b550658d`  
		Last Modified: Wed, 21 Feb 2018 09:23:01 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.4` - linux; ppc64le

```console
$ docker pull haproxy@sha256:0e1e68a587ccff2ea28ab3cc974d9f95b74010396d61aee31d47c1a396c4ff77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28384883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45dd348690f8ab8132fc395f7f704ad80ee130f9cf2c582872dde3fd06711ca3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 02:20:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 02:20:56 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 15 Feb 2018 02:20:57 GMT
ENV HAPROXY_VERSION=1.8.4
# Thu, 15 Feb 2018 02:20:59 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Thu, 15 Feb 2018 02:25:12 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 02:25:15 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 15 Feb 2018 02:25:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 02:25:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95352ce84115d15969ea892a3e8b67728460d2fa0afaed6b0736434f28ebe1c`  
		Last Modified: Thu, 15 Feb 2018 02:26:53 GMT  
		Size: 1.8 MB (1781206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed8d33f108893a76412a8f17eeb8357b952a9eed2d7222c1833b19db4212a4d`  
		Last Modified: Thu, 15 Feb 2018 02:26:53 GMT  
		Size: 3.9 MB (3850198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378ba875b8ed65c8d8ad8d4355a4b70621a912b6fe96e895567bd9fd9f91ac7a`  
		Last Modified: Thu, 15 Feb 2018 02:26:52 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.4` - linux; s390x

```console
$ docker pull haproxy@sha256:6df9780cf3da886c96900b5bc36a679bfa0dbd883dc4fb825a28944338e32289
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28127811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a365dedcbf05760db9b77782eceb3d901e3782c17a73895213401a9a0bcda18`
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
# Wed, 14 Mar 2018 06:06:52 GMT
ENV HAPROXY_VERSION=1.8.4
# Wed, 14 Mar 2018 06:06:52 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Wed, 14 Mar 2018 06:07:30 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 06:07:30 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 14 Mar 2018 06:07:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:07:30 GMT
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
	-	`sha256:763dd9c6011b0720aa66adf87a12585d1ccc530385b37a47e12adacca52c5906`  
		Last Modified: Wed, 14 Mar 2018 06:08:26 GMT  
		Size: 3.9 MB (3945897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c82d60bab548d121093fb244ed345fa7b9b6b3400ee60c185b042972a39a8a7`  
		Last Modified: Wed, 14 Mar 2018 06:08:25 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8.4-alpine`

```console
$ docker pull haproxy@sha256:2d1f741dbb82fdd3ae648b621f43915d1fd77b3aabb26a6162eeec63686b4252
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:1.8.4-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:fff60f90f80b5eb2c2efc6faa387bc9bd6e031b38f1033a2af9d8a6a57f29c2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7620961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87ced3588ae25c41817d1f579236953e907ca01d353a21fe5b07079484060c46`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:06:38 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 09 Feb 2018 00:32:01 GMT
ENV HAPROXY_VERSION=1.8.4
# Fri, 09 Feb 2018 00:32:01 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Fri, 09 Feb 2018 00:32:01 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 09 Feb 2018 00:32:45 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 09 Feb 2018 00:32:45 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 09 Feb 2018 00:32:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Feb 2018 00:32:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abeef8b189a6194aab5e03b596c9d8f289a348d7f4d26b446ffe22cc47967d63`  
		Last Modified: Fri, 09 Feb 2018 00:35:04 GMT  
		Size: 5.6 MB (5628834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0496c16c93f2b60fcaf71f5a8bda8f7a3ba1575548656cb9e72d5493ab8c0e11`  
		Last Modified: Fri, 09 Feb 2018 00:35:03 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.4-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:d4ba0ca727e5f9f0d3d38db272c65f8346e11bbd2220b87736e67addee0022ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7475871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c9d49f883528037acd70cfc825018631c04e0b2c2c96476b4b92ec8162a661d`
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
# Fri, 09 Feb 2018 20:44:40 GMT
ENV HAPROXY_VERSION=1.8.4
# Fri, 09 Feb 2018 20:44:41 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Fri, 09 Feb 2018 20:44:42 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 09 Feb 2018 20:45:45 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 09 Feb 2018 20:45:45 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 09 Feb 2018 20:45:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Feb 2018 20:45:47 GMT
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
	-	`sha256:27b86470255232d8e0af7dc186dfaa6cc17f8240a4b37e52c8c3818b6b3e82a1`  
		Last Modified: Fri, 09 Feb 2018 20:47:02 GMT  
		Size: 5.6 MB (5560567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a08676c7f65a5b50f29f2b6a7a14f5fab73e9f11e40bdf8cc3526817388179`  
		Last Modified: Fri, 09 Feb 2018 20:47:02 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.4-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:96f0eb503b19a66558c03ca2dde26896237df010fabdbe83b5240c2c88c4a2cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7813684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe766195cde96ce20bece5df3042fc827ba6261600e59442976bf666e7c98f5c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 23 Nov 2017 05:38:10 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 09 Feb 2018 05:53:30 GMT
ENV HAPROXY_VERSION=1.8.4
# Fri, 09 Feb 2018 05:53:30 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Fri, 09 Feb 2018 05:53:30 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 09 Feb 2018 05:54:13 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 09 Feb 2018 05:54:13 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 09 Feb 2018 05:54:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Feb 2018 05:54:14 GMT
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
	-	`sha256:cbfec88e4a3deffe61a0014ea1313dc420c8f8bd2ebd41b0028d2c7f7e5b1ee3`  
		Last Modified: Fri, 09 Feb 2018 06:02:27 GMT  
		Size: 5.8 MB (5767535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb1a4689ac7dca6d8323c98a65b3a6d70b5f8f80c3983897d121ceb7243e5e2`  
		Last Modified: Fri, 09 Feb 2018 06:02:26 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.4-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:425e5599518f2c619b3bac5457dfbd937fb8281f57cc04695ce8717395d01f05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7736670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:febabc81885b4216a3436c5936bc24ea54ccb0dd55f8319017f7dd91bcd3ef02`
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
# Fri, 09 Feb 2018 03:16:33 GMT
ENV HAPROXY_VERSION=1.8.4
# Fri, 09 Feb 2018 03:16:35 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Fri, 09 Feb 2018 03:16:37 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 09 Feb 2018 03:17:23 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 09 Feb 2018 03:17:25 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 09 Feb 2018 03:17:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Feb 2018 03:17:29 GMT
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
	-	`sha256:97346b89a26f413b726eeb58ba1cbed8d8fc1a11ef7769a31081f1a4f4e47db2`  
		Last Modified: Fri, 09 Feb 2018 03:18:23 GMT  
		Size: 5.7 MB (5727536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3249cfccabbdcd199694ed94d5fc5d7d6cfbf42d6d2810ec0df4b8ce4593162`  
		Last Modified: Fri, 09 Feb 2018 03:18:21 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.4-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:3f0e1bb31ed326328ec1f21b94264e15dc6b405676c51ccd292fe8c07bcccc54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7842654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ece49226902f871433fd1a712f878c428770d10d1a6a4a537a42867d3e536ea9`
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
# Fri, 09 Feb 2018 17:54:37 GMT
ENV HAPROXY_VERSION=1.8.4
# Fri, 09 Feb 2018 17:54:37 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Fri, 09 Feb 2018 17:54:37 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 09 Feb 2018 17:55:10 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 09 Feb 2018 17:55:10 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 09 Feb 2018 17:55:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Feb 2018 17:55:11 GMT
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
	-	`sha256:19a7116d1ee540274411503022017fdb06cbad872c80e11a5aa4b6c258b0f10c`  
		Last Modified: Fri, 09 Feb 2018 17:55:37 GMT  
		Size: 5.8 MB (5776637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92bc4b657ac7a1c8e9bc296b227b98bbd3246a4a908a14912fc74f1e2703eb7`  
		Last Modified: Fri, 09 Feb 2018 17:55:35 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8-alpine`

```console
$ docker pull haproxy@sha256:2d1f741dbb82fdd3ae648b621f43915d1fd77b3aabb26a6162eeec63686b4252
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
$ docker pull haproxy@sha256:fff60f90f80b5eb2c2efc6faa387bc9bd6e031b38f1033a2af9d8a6a57f29c2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7620961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87ced3588ae25c41817d1f579236953e907ca01d353a21fe5b07079484060c46`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:06:38 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 09 Feb 2018 00:32:01 GMT
ENV HAPROXY_VERSION=1.8.4
# Fri, 09 Feb 2018 00:32:01 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Fri, 09 Feb 2018 00:32:01 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 09 Feb 2018 00:32:45 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 09 Feb 2018 00:32:45 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 09 Feb 2018 00:32:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Feb 2018 00:32:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abeef8b189a6194aab5e03b596c9d8f289a348d7f4d26b446ffe22cc47967d63`  
		Last Modified: Fri, 09 Feb 2018 00:35:04 GMT  
		Size: 5.6 MB (5628834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0496c16c93f2b60fcaf71f5a8bda8f7a3ba1575548656cb9e72d5493ab8c0e11`  
		Last Modified: Fri, 09 Feb 2018 00:35:03 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:d4ba0ca727e5f9f0d3d38db272c65f8346e11bbd2220b87736e67addee0022ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7475871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c9d49f883528037acd70cfc825018631c04e0b2c2c96476b4b92ec8162a661d`
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
# Fri, 09 Feb 2018 20:44:40 GMT
ENV HAPROXY_VERSION=1.8.4
# Fri, 09 Feb 2018 20:44:41 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Fri, 09 Feb 2018 20:44:42 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 09 Feb 2018 20:45:45 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 09 Feb 2018 20:45:45 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 09 Feb 2018 20:45:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Feb 2018 20:45:47 GMT
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
	-	`sha256:27b86470255232d8e0af7dc186dfaa6cc17f8240a4b37e52c8c3818b6b3e82a1`  
		Last Modified: Fri, 09 Feb 2018 20:47:02 GMT  
		Size: 5.6 MB (5560567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a08676c7f65a5b50f29f2b6a7a14f5fab73e9f11e40bdf8cc3526817388179`  
		Last Modified: Fri, 09 Feb 2018 20:47:02 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:96f0eb503b19a66558c03ca2dde26896237df010fabdbe83b5240c2c88c4a2cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7813684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe766195cde96ce20bece5df3042fc827ba6261600e59442976bf666e7c98f5c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 23 Nov 2017 05:38:10 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 09 Feb 2018 05:53:30 GMT
ENV HAPROXY_VERSION=1.8.4
# Fri, 09 Feb 2018 05:53:30 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Fri, 09 Feb 2018 05:53:30 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 09 Feb 2018 05:54:13 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 09 Feb 2018 05:54:13 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 09 Feb 2018 05:54:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Feb 2018 05:54:14 GMT
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
	-	`sha256:cbfec88e4a3deffe61a0014ea1313dc420c8f8bd2ebd41b0028d2c7f7e5b1ee3`  
		Last Modified: Fri, 09 Feb 2018 06:02:27 GMT  
		Size: 5.8 MB (5767535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb1a4689ac7dca6d8323c98a65b3a6d70b5f8f80c3983897d121ceb7243e5e2`  
		Last Modified: Fri, 09 Feb 2018 06:02:26 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:425e5599518f2c619b3bac5457dfbd937fb8281f57cc04695ce8717395d01f05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7736670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:febabc81885b4216a3436c5936bc24ea54ccb0dd55f8319017f7dd91bcd3ef02`
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
# Fri, 09 Feb 2018 03:16:33 GMT
ENV HAPROXY_VERSION=1.8.4
# Fri, 09 Feb 2018 03:16:35 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Fri, 09 Feb 2018 03:16:37 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 09 Feb 2018 03:17:23 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 09 Feb 2018 03:17:25 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 09 Feb 2018 03:17:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Feb 2018 03:17:29 GMT
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
	-	`sha256:97346b89a26f413b726eeb58ba1cbed8d8fc1a11ef7769a31081f1a4f4e47db2`  
		Last Modified: Fri, 09 Feb 2018 03:18:23 GMT  
		Size: 5.7 MB (5727536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3249cfccabbdcd199694ed94d5fc5d7d6cfbf42d6d2810ec0df4b8ce4593162`  
		Last Modified: Fri, 09 Feb 2018 03:18:21 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:3f0e1bb31ed326328ec1f21b94264e15dc6b405676c51ccd292fe8c07bcccc54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7842654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ece49226902f871433fd1a712f878c428770d10d1a6a4a537a42867d3e536ea9`
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
# Fri, 09 Feb 2018 17:54:37 GMT
ENV HAPROXY_VERSION=1.8.4
# Fri, 09 Feb 2018 17:54:37 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Fri, 09 Feb 2018 17:54:37 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 09 Feb 2018 17:55:10 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 09 Feb 2018 17:55:10 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 09 Feb 2018 17:55:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Feb 2018 17:55:11 GMT
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
	-	`sha256:19a7116d1ee540274411503022017fdb06cbad872c80e11a5aa4b6c258b0f10c`  
		Last Modified: Fri, 09 Feb 2018 17:55:37 GMT  
		Size: 5.8 MB (5776637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92bc4b657ac7a1c8e9bc296b227b98bbd3246a4a908a14912fc74f1e2703eb7`  
		Last Modified: Fri, 09 Feb 2018 17:55:35 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1-alpine`

```console
$ docker pull haproxy@sha256:2d1f741dbb82fdd3ae648b621f43915d1fd77b3aabb26a6162eeec63686b4252
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
$ docker pull haproxy@sha256:fff60f90f80b5eb2c2efc6faa387bc9bd6e031b38f1033a2af9d8a6a57f29c2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7620961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87ced3588ae25c41817d1f579236953e907ca01d353a21fe5b07079484060c46`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:06:38 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 09 Feb 2018 00:32:01 GMT
ENV HAPROXY_VERSION=1.8.4
# Fri, 09 Feb 2018 00:32:01 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Fri, 09 Feb 2018 00:32:01 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 09 Feb 2018 00:32:45 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 09 Feb 2018 00:32:45 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 09 Feb 2018 00:32:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Feb 2018 00:32:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abeef8b189a6194aab5e03b596c9d8f289a348d7f4d26b446ffe22cc47967d63`  
		Last Modified: Fri, 09 Feb 2018 00:35:04 GMT  
		Size: 5.6 MB (5628834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0496c16c93f2b60fcaf71f5a8bda8f7a3ba1575548656cb9e72d5493ab8c0e11`  
		Last Modified: Fri, 09 Feb 2018 00:35:03 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:d4ba0ca727e5f9f0d3d38db272c65f8346e11bbd2220b87736e67addee0022ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7475871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c9d49f883528037acd70cfc825018631c04e0b2c2c96476b4b92ec8162a661d`
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
# Fri, 09 Feb 2018 20:44:40 GMT
ENV HAPROXY_VERSION=1.8.4
# Fri, 09 Feb 2018 20:44:41 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Fri, 09 Feb 2018 20:44:42 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 09 Feb 2018 20:45:45 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 09 Feb 2018 20:45:45 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 09 Feb 2018 20:45:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Feb 2018 20:45:47 GMT
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
	-	`sha256:27b86470255232d8e0af7dc186dfaa6cc17f8240a4b37e52c8c3818b6b3e82a1`  
		Last Modified: Fri, 09 Feb 2018 20:47:02 GMT  
		Size: 5.6 MB (5560567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a08676c7f65a5b50f29f2b6a7a14f5fab73e9f11e40bdf8cc3526817388179`  
		Last Modified: Fri, 09 Feb 2018 20:47:02 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:96f0eb503b19a66558c03ca2dde26896237df010fabdbe83b5240c2c88c4a2cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7813684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe766195cde96ce20bece5df3042fc827ba6261600e59442976bf666e7c98f5c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 23 Nov 2017 05:38:10 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 09 Feb 2018 05:53:30 GMT
ENV HAPROXY_VERSION=1.8.4
# Fri, 09 Feb 2018 05:53:30 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Fri, 09 Feb 2018 05:53:30 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 09 Feb 2018 05:54:13 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 09 Feb 2018 05:54:13 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 09 Feb 2018 05:54:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Feb 2018 05:54:14 GMT
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
	-	`sha256:cbfec88e4a3deffe61a0014ea1313dc420c8f8bd2ebd41b0028d2c7f7e5b1ee3`  
		Last Modified: Fri, 09 Feb 2018 06:02:27 GMT  
		Size: 5.8 MB (5767535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb1a4689ac7dca6d8323c98a65b3a6d70b5f8f80c3983897d121ceb7243e5e2`  
		Last Modified: Fri, 09 Feb 2018 06:02:26 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:425e5599518f2c619b3bac5457dfbd937fb8281f57cc04695ce8717395d01f05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7736670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:febabc81885b4216a3436c5936bc24ea54ccb0dd55f8319017f7dd91bcd3ef02`
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
# Fri, 09 Feb 2018 03:16:33 GMT
ENV HAPROXY_VERSION=1.8.4
# Fri, 09 Feb 2018 03:16:35 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Fri, 09 Feb 2018 03:16:37 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 09 Feb 2018 03:17:23 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 09 Feb 2018 03:17:25 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 09 Feb 2018 03:17:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Feb 2018 03:17:29 GMT
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
	-	`sha256:97346b89a26f413b726eeb58ba1cbed8d8fc1a11ef7769a31081f1a4f4e47db2`  
		Last Modified: Fri, 09 Feb 2018 03:18:23 GMT  
		Size: 5.7 MB (5727536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3249cfccabbdcd199694ed94d5fc5d7d6cfbf42d6d2810ec0df4b8ce4593162`  
		Last Modified: Fri, 09 Feb 2018 03:18:21 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:3f0e1bb31ed326328ec1f21b94264e15dc6b405676c51ccd292fe8c07bcccc54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7842654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ece49226902f871433fd1a712f878c428770d10d1a6a4a537a42867d3e536ea9`
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
# Fri, 09 Feb 2018 17:54:37 GMT
ENV HAPROXY_VERSION=1.8.4
# Fri, 09 Feb 2018 17:54:37 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Fri, 09 Feb 2018 17:54:37 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 09 Feb 2018 17:55:10 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 09 Feb 2018 17:55:10 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 09 Feb 2018 17:55:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Feb 2018 17:55:11 GMT
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
	-	`sha256:19a7116d1ee540274411503022017fdb06cbad872c80e11a5aa4b6c258b0f10c`  
		Last Modified: Fri, 09 Feb 2018 17:55:37 GMT  
		Size: 5.8 MB (5776637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92bc4b657ac7a1c8e9bc296b227b98bbd3246a4a908a14912fc74f1e2703eb7`  
		Last Modified: Fri, 09 Feb 2018 17:55:35 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:alpine`

```console
$ docker pull haproxy@sha256:2d1f741dbb82fdd3ae648b621f43915d1fd77b3aabb26a6162eeec63686b4252
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
$ docker pull haproxy@sha256:fff60f90f80b5eb2c2efc6faa387bc9bd6e031b38f1033a2af9d8a6a57f29c2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7620961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87ced3588ae25c41817d1f579236953e907ca01d353a21fe5b07079484060c46`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:06:38 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 09 Feb 2018 00:32:01 GMT
ENV HAPROXY_VERSION=1.8.4
# Fri, 09 Feb 2018 00:32:01 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Fri, 09 Feb 2018 00:32:01 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 09 Feb 2018 00:32:45 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 09 Feb 2018 00:32:45 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 09 Feb 2018 00:32:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Feb 2018 00:32:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abeef8b189a6194aab5e03b596c9d8f289a348d7f4d26b446ffe22cc47967d63`  
		Last Modified: Fri, 09 Feb 2018 00:35:04 GMT  
		Size: 5.6 MB (5628834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0496c16c93f2b60fcaf71f5a8bda8f7a3ba1575548656cb9e72d5493ab8c0e11`  
		Last Modified: Fri, 09 Feb 2018 00:35:03 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:d4ba0ca727e5f9f0d3d38db272c65f8346e11bbd2220b87736e67addee0022ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7475871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c9d49f883528037acd70cfc825018631c04e0b2c2c96476b4b92ec8162a661d`
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
# Fri, 09 Feb 2018 20:44:40 GMT
ENV HAPROXY_VERSION=1.8.4
# Fri, 09 Feb 2018 20:44:41 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Fri, 09 Feb 2018 20:44:42 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 09 Feb 2018 20:45:45 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 09 Feb 2018 20:45:45 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 09 Feb 2018 20:45:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Feb 2018 20:45:47 GMT
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
	-	`sha256:27b86470255232d8e0af7dc186dfaa6cc17f8240a4b37e52c8c3818b6b3e82a1`  
		Last Modified: Fri, 09 Feb 2018 20:47:02 GMT  
		Size: 5.6 MB (5560567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a08676c7f65a5b50f29f2b6a7a14f5fab73e9f11e40bdf8cc3526817388179`  
		Last Modified: Fri, 09 Feb 2018 20:47:02 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; 386

```console
$ docker pull haproxy@sha256:96f0eb503b19a66558c03ca2dde26896237df010fabdbe83b5240c2c88c4a2cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7813684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe766195cde96ce20bece5df3042fc827ba6261600e59442976bf666e7c98f5c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 23 Nov 2017 05:38:10 GMT
ENV HAPROXY_MAJOR=1.8
# Fri, 09 Feb 2018 05:53:30 GMT
ENV HAPROXY_VERSION=1.8.4
# Fri, 09 Feb 2018 05:53:30 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Fri, 09 Feb 2018 05:53:30 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 09 Feb 2018 05:54:13 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 09 Feb 2018 05:54:13 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 09 Feb 2018 05:54:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Feb 2018 05:54:14 GMT
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
	-	`sha256:cbfec88e4a3deffe61a0014ea1313dc420c8f8bd2ebd41b0028d2c7f7e5b1ee3`  
		Last Modified: Fri, 09 Feb 2018 06:02:27 GMT  
		Size: 5.8 MB (5767535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb1a4689ac7dca6d8323c98a65b3a6d70b5f8f80c3983897d121ceb7243e5e2`  
		Last Modified: Fri, 09 Feb 2018 06:02:26 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:425e5599518f2c619b3bac5457dfbd937fb8281f57cc04695ce8717395d01f05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7736670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:febabc81885b4216a3436c5936bc24ea54ccb0dd55f8319017f7dd91bcd3ef02`
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
# Fri, 09 Feb 2018 03:16:33 GMT
ENV HAPROXY_VERSION=1.8.4
# Fri, 09 Feb 2018 03:16:35 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Fri, 09 Feb 2018 03:16:37 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 09 Feb 2018 03:17:23 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 09 Feb 2018 03:17:25 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 09 Feb 2018 03:17:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Feb 2018 03:17:29 GMT
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
	-	`sha256:97346b89a26f413b726eeb58ba1cbed8d8fc1a11ef7769a31081f1a4f4e47db2`  
		Last Modified: Fri, 09 Feb 2018 03:18:23 GMT  
		Size: 5.7 MB (5727536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3249cfccabbdcd199694ed94d5fc5d7d6cfbf42d6d2810ec0df4b8ce4593162`  
		Last Modified: Fri, 09 Feb 2018 03:18:21 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:3f0e1bb31ed326328ec1f21b94264e15dc6b405676c51ccd292fe8c07bcccc54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7842654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ece49226902f871433fd1a712f878c428770d10d1a6a4a537a42867d3e536ea9`
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
# Fri, 09 Feb 2018 17:54:37 GMT
ENV HAPROXY_VERSION=1.8.4
# Fri, 09 Feb 2018 17:54:37 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Fri, 09 Feb 2018 17:54:37 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Fri, 09 Feb 2018 17:55:10 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 09 Feb 2018 17:55:10 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Fri, 09 Feb 2018 17:55:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Feb 2018 17:55:11 GMT
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
	-	`sha256:19a7116d1ee540274411503022017fdb06cbad872c80e11a5aa4b6c258b0f10c`  
		Last Modified: Fri, 09 Feb 2018 17:55:37 GMT  
		Size: 5.8 MB (5776637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92bc4b657ac7a1c8e9bc296b227b98bbd3246a4a908a14912fc74f1e2703eb7`  
		Last Modified: Fri, 09 Feb 2018 17:55:35 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:latest`

```console
$ docker pull haproxy@sha256:c2c5cc79d225b0c85314000423676ad9ea499d717dd3b922d7edd65c6105e0be
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
$ docker pull haproxy@sha256:d60696f649bd2835d9003aeb3332b56f1019159c8fce25465a84a8643c2a1531
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28454402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547018c815911bc330536521be4a1cd0a98f5f83e5e1109db199e4ea1f5195d2`
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
# Wed, 14 Mar 2018 04:30:07 GMT
ENV HAPROXY_VERSION=1.8.4
# Wed, 14 Mar 2018 04:30:07 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Wed, 14 Mar 2018 04:30:45 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 04:30:45 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 14 Mar 2018 04:30:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 04:30:45 GMT
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
	-	`sha256:8779f9b34e0a23ef0a32212c889375f08182702395008768797847dd0ac2fe77`  
		Last Modified: Wed, 14 Mar 2018 04:33:03 GMT  
		Size: 3.9 MB (3862771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfeb8bbf40aef8cf074771e9d6a9f3f99b2a1343ffe01a4de39e346f32329971`  
		Last Modified: Wed, 14 Mar 2018 04:33:02 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:cdcf0c307f1d48cdaa5e76519c50b05f960a7656df89ef1243be06333b44dcda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 MB (26791102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c963a468dac802e986a98257a41867ac5bf21b6fffd4f211528661072d22f1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:31 GMT
ADD file:a4ff4a71be86566d946378fcdcdf8a581533429c77852d0a52919a736ec535bc in / 
# Thu, 15 Feb 2018 21:00:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:21:25 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:21:25 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 15 Feb 2018 22:21:25 GMT
ENV HAPROXY_VERSION=1.8.4
# Thu, 15 Feb 2018 22:21:26 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Thu, 15 Feb 2018 22:22:17 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 22:22:17 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 15 Feb 2018 22:22:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:22:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d4fd25f13e1d4f6be6bd3e1a90bebc4f1ba9d950a6a33b46c42850a4c1d2d1b2`  
		Last Modified: Thu, 15 Feb 2018 21:11:11 GMT  
		Size: 21.2 MB (21175030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7245785f1eea7d2cc552c92c1ba14284178a037a9ac56ddb4a0be8f54a0746ea`  
		Last Modified: Thu, 15 Feb 2018 22:23:41 GMT  
		Size: 1.8 MB (1815984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f4a81a5a36ed46d50e5df2908bb65b869f9e491f611188114a48a9ba3a54e2`  
		Last Modified: Thu, 15 Feb 2018 22:23:42 GMT  
		Size: 3.8 MB (3799708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e703e186f0e844f94a107c04876233e660bd787bbeae14a89eaf5cab2e0da3e`  
		Last Modified: Thu, 15 Feb 2018 22:23:40 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:a0a549d5d0de0064bcb2c5055b7f31242e5a48ccdd6218fb1d0b2a37b1804840
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24770244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6816c0bbef7978b28f153aa6351db2f1d6d72d0e5ba562bb9a2d7fb7e83df17a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:08:22 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:08:22 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 15 Feb 2018 14:08:23 GMT
ENV HAPROXY_VERSION=1.8.4
# Thu, 15 Feb 2018 14:08:23 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Thu, 15 Feb 2018 14:08:51 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 14:08:52 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 15 Feb 2018 14:08:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 14:08:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:235baf89a76b73bd04542508f7769803ecd00e0b8c71046ada69fb9d17f02496`  
		Last Modified: Thu, 15 Feb 2018 13:41:58 GMT  
		Size: 19.3 MB (19286085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be916701862cdf44cf90478cfbb93f27b96252db66e4f8a77619f1ff173450c6`  
		Last Modified: Thu, 15 Feb 2018 14:10:18 GMT  
		Size: 1.7 MB (1736043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20503b8fc138cc401ff57c961ffe85e2a85c79955b77d826b545a1c41176f8b`  
		Last Modified: Thu, 15 Feb 2018 14:10:19 GMT  
		Size: 3.7 MB (3747736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ca163eb1cf6addcf35d78b82803708f490ceb97de7ece3f7188cc0edaf3375`  
		Last Modified: Thu, 15 Feb 2018 14:10:18 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:0eef514bdbae5b59dd456cbd945d86158a642c3056d66caf108eb91f61c73ae8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25929561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59fd8afcdf7880c5003c7ff93195020595e3a2b7675fc2169e326d7a9155eefe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 20:39:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 20:39:50 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 15 Feb 2018 20:39:51 GMT
ENV HAPROXY_VERSION=1.8.4
# Thu, 15 Feb 2018 20:39:51 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Thu, 15 Feb 2018 20:41:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 20:41:58 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 15 Feb 2018 20:42:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 20:42:04 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abce8de73dd9c8c294cb189734d4f9c94b97eb01f3ad59eb85fce5f7585ece51`  
		Last Modified: Thu, 15 Feb 2018 20:44:12 GMT  
		Size: 1.8 MB (1818761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81fb94e56b663468768872125d1842a46656cae3be55db5cd5844cb8cd119b9c`  
		Last Modified: Thu, 15 Feb 2018 20:44:13 GMT  
		Size: 3.8 MB (3762994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dfd1bc4500215e436c4dac08d35d7be2ba46035a09327fe81c8c7370e151a6`  
		Last Modified: Thu, 15 Feb 2018 20:44:11 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; 386

```console
$ docker pull haproxy@sha256:15768a8ba09dd1c2f47e1625be839bd321c5ff012adc7a4f39dea8397cd0c666
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29040524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e945d095bf3490ae71e7c1a03798865cbc841ed61012ff71dd51fcf586114e71`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 18:56:40 GMT
ADD file:46f3ea038ddbb2713695c8891a22675f7355211fecac25807c95590f5a5d4bfa in / 
# Thu, 15 Feb 2018 19:04:20 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 09:11:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 09:11:51 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 21 Feb 2018 09:11:51 GMT
ENV HAPROXY_VERSION=1.8.4
# Wed, 21 Feb 2018 09:11:51 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Wed, 21 Feb 2018 09:12:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Feb 2018 09:12:40 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 21 Feb 2018 09:12:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 21 Feb 2018 09:12:41 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5a3bef8a5a8dcf8e6b5914993862777a98536514aedf43f0a604d87764970d8a`  
		Last Modified: Thu, 15 Feb 2018 01:16:16 GMT  
		Size: 23.1 MB (23135027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc0c16f494d4e869b5a8dd5d17b8d594612060af03f5b9483760466d740b1e6`  
		Last Modified: Wed, 21 Feb 2018 09:23:02 GMT  
		Size: 2.1 MB (2128543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065da3d24013025eb59c73a4c42c0932b131fdeb7b6832179420e9b0cf078853`  
		Last Modified: Wed, 21 Feb 2018 09:23:02 GMT  
		Size: 3.8 MB (3776572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ebf900b197c37c0c94d964c961b3bd2e155dedbd0e80965d9ee497b550658d`  
		Last Modified: Wed, 21 Feb 2018 09:23:01 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; ppc64le

```console
$ docker pull haproxy@sha256:0e1e68a587ccff2ea28ab3cc974d9f95b74010396d61aee31d47c1a396c4ff77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28384883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45dd348690f8ab8132fc395f7f704ad80ee130f9cf2c582872dde3fd06711ca3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 02:20:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 02:20:56 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 15 Feb 2018 02:20:57 GMT
ENV HAPROXY_VERSION=1.8.4
# Thu, 15 Feb 2018 02:20:59 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Thu, 15 Feb 2018 02:25:12 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 02:25:15 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 15 Feb 2018 02:25:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 02:25:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95352ce84115d15969ea892a3e8b67728460d2fa0afaed6b0736434f28ebe1c`  
		Last Modified: Thu, 15 Feb 2018 02:26:53 GMT  
		Size: 1.8 MB (1781206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed8d33f108893a76412a8f17eeb8357b952a9eed2d7222c1833b19db4212a4d`  
		Last Modified: Thu, 15 Feb 2018 02:26:53 GMT  
		Size: 3.9 MB (3850198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378ba875b8ed65c8d8ad8d4355a4b70621a912b6fe96e895567bd9fd9f91ac7a`  
		Last Modified: Thu, 15 Feb 2018 02:26:52 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; s390x

```console
$ docker pull haproxy@sha256:6df9780cf3da886c96900b5bc36a679bfa0dbd883dc4fb825a28944338e32289
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28127811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a365dedcbf05760db9b77782eceb3d901e3782c17a73895213401a9a0bcda18`
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
# Wed, 14 Mar 2018 06:06:52 GMT
ENV HAPROXY_VERSION=1.8.4
# Wed, 14 Mar 2018 06:06:52 GMT
ENV HAPROXY_MD5=540cd21169e8828d5d11894b2fa74ab4
# Wed, 14 Mar 2018 06:07:30 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 06:07:30 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 14 Mar 2018 06:07:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:07:30 GMT
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
	-	`sha256:763dd9c6011b0720aa66adf87a12585d1ccc530385b37a47e12adacca52c5906`  
		Last Modified: Wed, 14 Mar 2018 06:08:26 GMT  
		Size: 3.9 MB (3945897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c82d60bab548d121093fb244ed345fa7b9b6b3400ee60c185b042972a39a8a7`  
		Last Modified: Wed, 14 Mar 2018 06:08:25 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
