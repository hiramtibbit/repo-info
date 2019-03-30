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
-	[`haproxy:1.8.19`](#haproxy1819)
-	[`haproxy:1.8.19-alpine`](#haproxy1819-alpine)
-	[`haproxy:1.8-alpine`](#haproxy18-alpine)
-	[`haproxy:1.9`](#haproxy19)
-	[`haproxy:1.9.6`](#haproxy196)
-	[`haproxy:1.9.6-alpine`](#haproxy196-alpine)
-	[`haproxy:1.9-alpine`](#haproxy19-alpine)
-	[`haproxy:1-alpine`](#haproxy1-alpine)
-	[`haproxy:alpine`](#haproxyalpine)
-	[`haproxy:latest`](#haproxylatest)

## `haproxy:1`

```console
$ docker pull haproxy@sha256:4214e032a451759da56cec6f628cea12e7a019910b62b1b9a82fb25249593af5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

### `haproxy:1` - linux; amd64

```console
$ docker pull haproxy@sha256:dec9b8a9876cd9832edcf31b8460e60b3fa8af5453c13001c6f50ba0d285355a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29121663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3abd21f393a9b51c06e56e5e5793d69195a356ef7e81786235df634f7131b8a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Fri, 29 Mar 2019 21:25:50 GMT
ENV HAPROXY_VERSION=1.9.6
# Fri, 29 Mar 2019 21:25:50 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Fri, 29 Mar 2019 21:25:50 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Fri, 29 Mar 2019 21:27:20 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 29 Mar 2019 21:27:20 GMT
STOPSIGNAL SIGUSR1
# Fri, 29 Mar 2019 21:27:20 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 29 Mar 2019 21:27:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Mar 2019 21:27:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e5b8e27a13c86c27c894762b96cb26da8a8c9db62711ea1ef76667e98e16c9`  
		Last Modified: Fri, 29 Mar 2019 21:29:29 GMT  
		Size: 6.6 MB (6625235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0759ce4c4858264d1e16e91401913422224ef125b5c2ace9209f32f717d9a77a`  
		Last Modified: Fri, 29 Mar 2019 21:29:28 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:a30e444a75cc28cbc79e8a00f023cfb286b88e73f10db23abce0987ee2a69cf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27410445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99a7a3c3c548dfedaad947607dc05b67b0229baa6e0476203462449524fe37e6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Sat, 30 Mar 2019 08:48:53 GMT
ENV HAPROXY_VERSION=1.9.6
# Sat, 30 Mar 2019 08:48:53 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Sat, 30 Mar 2019 08:48:54 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Sat, 30 Mar 2019 08:49:40 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 30 Mar 2019 08:49:41 GMT
STOPSIGNAL SIGUSR1
# Sat, 30 Mar 2019 08:49:41 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 30 Mar 2019 08:49:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:49:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f20be5b27de68f04e8d6c06f64b478d6154ab7a778b461af9702dd607db42a5`  
		Last Modified: Sat, 30 Mar 2019 08:50:11 GMT  
		Size: 6.2 MB (6249402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e376ab50f18c41a05f0995e768dcb50c26d7c45ec2b82db3b7bd984d5b2439`  
		Last Modified: Sat, 30 Mar 2019 08:50:09 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; ppc64le

```console
$ docker pull haproxy@sha256:3b5e64e5039d139a3133b9f0e39285ab89e7ecca155320057f05f3bd405e96c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29015929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d19ecbc8f76680cdfdaeeded64d12e5b4d9f72dd909555476d34855735506006`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Sat, 30 Mar 2019 08:21:42 GMT
ENV HAPROXY_VERSION=1.9.6
# Sat, 30 Mar 2019 08:21:43 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Sat, 30 Mar 2019 08:21:45 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Sat, 30 Mar 2019 08:25:08 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 30 Mar 2019 08:25:11 GMT
STOPSIGNAL SIGUSR1
# Sat, 30 Mar 2019 08:25:12 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 30 Mar 2019 08:25:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:25:17 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fa5db5b9707d79258c2c5f6204f83de48c65c23d56a392133c54252034c22c`  
		Last Modified: Sat, 30 Mar 2019 08:27:00 GMT  
		Size: 6.3 MB (6264164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccd4affcf5659f8b832d198898727110e8a9384807f505872ed021476e934cc`  
		Last Modified: Sat, 30 Mar 2019 08:26:59 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5`

```console
$ docker pull haproxy@sha256:1a73917450e1df95abcfafee7a84909ee32af9317bae3b768eba7fd6d59d9ff7
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
$ docker pull haproxy@sha256:cfd7f742b74cfbb81e8504fd296fffc509c829f15738b87928517cd306a1bba4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26632215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:817280536ca6abc51813318247866b36b252094598ff190e0886ddceb8229395`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:08:42 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 27 Mar 2019 00:08:43 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Wed, 27 Mar 2019 00:08:43 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Wed, 27 Mar 2019 00:09:16 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 00:09:17 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 00:09:17 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 00:09:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:09:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b180f0cf6ffe14d705621e5b0d3c699b51686ddc850ef87fa5526c90ccb96b`  
		Last Modified: Wed, 27 Mar 2019 00:09:58 GMT  
		Size: 4.1 MB (4135764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bfdab18c3b601a27efc71146c0fdd6eedf43c9decdadb4d075c76a9e2c5fde`  
		Last Modified: Wed, 27 Mar 2019 00:09:57 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:13955e1896c34a7888a0173047cdcf303d9bdd2c496d8aae1330e2c91692a52d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24839227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e6c75437f0833db5eedeff28197f9eab61f8eff6016333afb8fa0a953b0c5b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:50:35 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 27 Mar 2019 09:50:36 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Wed, 27 Mar 2019 09:50:36 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Wed, 27 Mar 2019 09:51:14 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 09:51:14 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 09:51:15 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 09:51:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 09:51:15 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91de81a6426c0b91b3100d9aa026d67481fbf608b1074576b0a8d730226d6613`  
		Last Modified: Wed, 27 Mar 2019 09:52:21 GMT  
		Size: 3.7 MB (3678161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ccc445bad6c40fe90575489b6c6005152a34e7189c9cf209126476797cdd50`  
		Last Modified: Wed, 27 Mar 2019 09:52:20 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:79cabc42b766fc8d0dd4ae635d5fbec0494d9d085ec25f1c7faf5db9d43b4136
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.9 MB (22868021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7004d328a46727179ddb9cc67e7fb94988f2172d533d43393e9dfea3abcef113`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:35:08 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 27 Mar 2019 12:35:09 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Wed, 27 Mar 2019 12:35:10 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Wed, 27 Mar 2019 12:35:47 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 12:35:48 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 12:35:48 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 12:35:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:35:50 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d8f8cb605456b74a3b6f4cc97168924eb22d455b133cf993ce89cfc19b5cb0`  
		Last Modified: Wed, 27 Mar 2019 12:36:37 GMT  
		Size: 3.6 MB (3585176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78afabc2a41f18b62f72b3fdaff1fb99d2f0b4b04c1d9f613c4880f71c75b4ef`  
		Last Modified: Wed, 27 Mar 2019 12:36:36 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:8164a0d0476724f284e233ba8d2c09f7d251f27b2b2c40d446c173d7b7c3334b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (24046149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddd7ce27b5ecd6ed72c7e8381c78a50ec35271141c222d5375a256c5cfa9940a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 17:31:37 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 27 Mar 2019 17:31:38 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Wed, 27 Mar 2019 17:31:40 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Wed, 27 Mar 2019 17:35:46 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 17:35:48 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 17:35:49 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 17:35:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 17:35:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e8bcc3aee98c313040b5ab7e0b3cfea75c29f91d7a8ca7e22c07992af5abe2`  
		Last Modified: Wed, 27 Mar 2019 17:37:18 GMT  
		Size: 3.7 MB (3705567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7029e095e42b55479d246ec3a675dbdb36dfabdf1a36bfcf0adb5d72fb1ba0`  
		Last Modified: Wed, 27 Mar 2019 17:37:17 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; 386

```console
$ docker pull haproxy@sha256:dc94d3c4fc9cc1fef065dc117909e537f52afb5fa6a5627e1f379ec1168f152f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 MB (27025474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e705d9c5310edbe1ac4d54494e712c8282a3f78525f291e357731aa7f832264b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:20:32 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 27 Mar 2019 13:20:32 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Wed, 27 Mar 2019 13:20:32 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Wed, 27 Mar 2019 13:21:14 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 13:21:14 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 13:21:15 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 13:21:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 13:21:15 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34baecb868195e3dd17790a2a55a45445ed2b6ad0bb086291fc0f8014558d5c`  
		Last Modified: Wed, 27 Mar 2019 13:22:04 GMT  
		Size: 3.9 MB (3899326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca2e253dc1a7488e8ca39af4265995586336c8d98ce69873135cdf041b36c18`  
		Last Modified: Wed, 27 Mar 2019 13:22:03 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; ppc64le

```console
$ docker pull haproxy@sha256:eaa11d17c57deb73086089476c589f8f370f1bbac00822ce193cc37abd97274a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26603300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcb380ab20050bc358eeafb7943a766b4c5d846481309dd0c99db3e169455958`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:37:18 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 27 Mar 2019 09:37:26 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Wed, 27 Mar 2019 09:37:31 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Wed, 27 Mar 2019 09:40:12 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 09:40:17 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 09:40:18 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 09:40:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 09:40:25 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facccdfe955104e316d8e9ff07863dcb1c2e3fcb139e40196508f00eb017815b`  
		Last Modified: Wed, 27 Mar 2019 09:41:58 GMT  
		Size: 3.9 MB (3851512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674ee25a2260be33f8452b9306ac33fad6e24f9eca177f9692bf3185cc91ef6e`  
		Last Modified: Wed, 27 Mar 2019 09:41:56 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; s390x

```console
$ docker pull haproxy@sha256:ff2ca8dc59d64b7a925fc290661d423f7dc023ad379aa8614a56ba8d44b522a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.3 MB (26303803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c419ec6ddef389d03d3ef0d94619831e93143f76289dd2e4e7832d47687da8b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:31:06 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 27 Mar 2019 12:31:06 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Wed, 27 Mar 2019 12:31:07 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Wed, 27 Mar 2019 12:31:51 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 12:31:51 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 12:31:51 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 12:31:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:31:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc06f3ef0dc253b4cb6670652c0f82cdeeed68e4ea03d7b1fd1f01f37437a96`  
		Last Modified: Wed, 27 Mar 2019 12:33:01 GMT  
		Size: 4.0 MB (3958118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7951b6cb8ae29934e5b3863372e568786fab3e358446f0e1acc21b721d2a6ef1`  
		Last Modified: Wed, 27 Mar 2019 12:33:00 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5.19`

```console
$ docker pull haproxy@sha256:1a73917450e1df95abcfafee7a84909ee32af9317bae3b768eba7fd6d59d9ff7
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
$ docker pull haproxy@sha256:cfd7f742b74cfbb81e8504fd296fffc509c829f15738b87928517cd306a1bba4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26632215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:817280536ca6abc51813318247866b36b252094598ff190e0886ddceb8229395`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:08:42 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 27 Mar 2019 00:08:43 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Wed, 27 Mar 2019 00:08:43 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Wed, 27 Mar 2019 00:09:16 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 00:09:17 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 00:09:17 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 00:09:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:09:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b180f0cf6ffe14d705621e5b0d3c699b51686ddc850ef87fa5526c90ccb96b`  
		Last Modified: Wed, 27 Mar 2019 00:09:58 GMT  
		Size: 4.1 MB (4135764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bfdab18c3b601a27efc71146c0fdd6eedf43c9decdadb4d075c76a9e2c5fde`  
		Last Modified: Wed, 27 Mar 2019 00:09:57 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:13955e1896c34a7888a0173047cdcf303d9bdd2c496d8aae1330e2c91692a52d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24839227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e6c75437f0833db5eedeff28197f9eab61f8eff6016333afb8fa0a953b0c5b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:50:35 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 27 Mar 2019 09:50:36 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Wed, 27 Mar 2019 09:50:36 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Wed, 27 Mar 2019 09:51:14 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 09:51:14 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 09:51:15 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 09:51:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 09:51:15 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91de81a6426c0b91b3100d9aa026d67481fbf608b1074576b0a8d730226d6613`  
		Last Modified: Wed, 27 Mar 2019 09:52:21 GMT  
		Size: 3.7 MB (3678161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ccc445bad6c40fe90575489b6c6005152a34e7189c9cf209126476797cdd50`  
		Last Modified: Wed, 27 Mar 2019 09:52:20 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:79cabc42b766fc8d0dd4ae635d5fbec0494d9d085ec25f1c7faf5db9d43b4136
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.9 MB (22868021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7004d328a46727179ddb9cc67e7fb94988f2172d533d43393e9dfea3abcef113`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:35:08 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 27 Mar 2019 12:35:09 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Wed, 27 Mar 2019 12:35:10 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Wed, 27 Mar 2019 12:35:47 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 12:35:48 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 12:35:48 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 12:35:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:35:50 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d8f8cb605456b74a3b6f4cc97168924eb22d455b133cf993ce89cfc19b5cb0`  
		Last Modified: Wed, 27 Mar 2019 12:36:37 GMT  
		Size: 3.6 MB (3585176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78afabc2a41f18b62f72b3fdaff1fb99d2f0b4b04c1d9f613c4880f71c75b4ef`  
		Last Modified: Wed, 27 Mar 2019 12:36:36 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:8164a0d0476724f284e233ba8d2c09f7d251f27b2b2c40d446c173d7b7c3334b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (24046149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddd7ce27b5ecd6ed72c7e8381c78a50ec35271141c222d5375a256c5cfa9940a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 17:31:37 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 27 Mar 2019 17:31:38 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Wed, 27 Mar 2019 17:31:40 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Wed, 27 Mar 2019 17:35:46 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 17:35:48 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 17:35:49 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 17:35:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 17:35:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e8bcc3aee98c313040b5ab7e0b3cfea75c29f91d7a8ca7e22c07992af5abe2`  
		Last Modified: Wed, 27 Mar 2019 17:37:18 GMT  
		Size: 3.7 MB (3705567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7029e095e42b55479d246ec3a675dbdb36dfabdf1a36bfcf0adb5d72fb1ba0`  
		Last Modified: Wed, 27 Mar 2019 17:37:17 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; 386

```console
$ docker pull haproxy@sha256:dc94d3c4fc9cc1fef065dc117909e537f52afb5fa6a5627e1f379ec1168f152f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 MB (27025474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e705d9c5310edbe1ac4d54494e712c8282a3f78525f291e357731aa7f832264b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:20:32 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 27 Mar 2019 13:20:32 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Wed, 27 Mar 2019 13:20:32 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Wed, 27 Mar 2019 13:21:14 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 13:21:14 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 13:21:15 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 13:21:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 13:21:15 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34baecb868195e3dd17790a2a55a45445ed2b6ad0bb086291fc0f8014558d5c`  
		Last Modified: Wed, 27 Mar 2019 13:22:04 GMT  
		Size: 3.9 MB (3899326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca2e253dc1a7488e8ca39af4265995586336c8d98ce69873135cdf041b36c18`  
		Last Modified: Wed, 27 Mar 2019 13:22:03 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; ppc64le

```console
$ docker pull haproxy@sha256:eaa11d17c57deb73086089476c589f8f370f1bbac00822ce193cc37abd97274a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26603300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcb380ab20050bc358eeafb7943a766b4c5d846481309dd0c99db3e169455958`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:37:18 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 27 Mar 2019 09:37:26 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Wed, 27 Mar 2019 09:37:31 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Wed, 27 Mar 2019 09:40:12 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 09:40:17 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 09:40:18 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 09:40:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 09:40:25 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facccdfe955104e316d8e9ff07863dcb1c2e3fcb139e40196508f00eb017815b`  
		Last Modified: Wed, 27 Mar 2019 09:41:58 GMT  
		Size: 3.9 MB (3851512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674ee25a2260be33f8452b9306ac33fad6e24f9eca177f9692bf3185cc91ef6e`  
		Last Modified: Wed, 27 Mar 2019 09:41:56 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; s390x

```console
$ docker pull haproxy@sha256:ff2ca8dc59d64b7a925fc290661d423f7dc023ad379aa8614a56ba8d44b522a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.3 MB (26303803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c419ec6ddef389d03d3ef0d94619831e93143f76289dd2e4e7832d47687da8b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:31:06 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 27 Mar 2019 12:31:06 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Wed, 27 Mar 2019 12:31:07 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Wed, 27 Mar 2019 12:31:51 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 12:31:51 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 12:31:51 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 12:31:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:31:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc06f3ef0dc253b4cb6670652c0f82cdeeed68e4ea03d7b1fd1f01f37437a96`  
		Last Modified: Wed, 27 Mar 2019 12:33:01 GMT  
		Size: 4.0 MB (3958118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7951b6cb8ae29934e5b3863372e568786fab3e358446f0e1acc21b721d2a6ef1`  
		Last Modified: Wed, 27 Mar 2019 12:33:00 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5.19-alpine`

```console
$ docker pull haproxy@sha256:4c73476fc3941516eed979311ed4c118e877e9daed08ec90454eb480b957283f
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
$ docker pull haproxy@sha256:1eb6c427cd1ee9ed4ad3725da3c43e95479d7cfd33906dbb2ead3c38bd7021cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7115134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72d69db13e71b42770eff1f9ba8166f1bf3425376b0e719b749dd00e4823ad54`
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
# Thu, 07 Mar 2019 23:21:32 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 07 Mar 2019 23:21:33 GMT
STOPSIGNAL SIGUSR1
# Thu, 07 Mar 2019 23:21:33 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Thu, 07 Mar 2019 23:21:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:21:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b04d1c1c9fffc3d45631de2cd391bf9272554bb955dec41791cfc4163aded1`  
		Last Modified: Thu, 07 Mar 2019 23:22:42 GMT  
		Size: 4.9 MB (4907557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b51aa3c6c5569c42cf2e897d3f3a54dae4d0f5f8a1a680980b2051c803797aa`  
		Last Modified: Thu, 07 Mar 2019 23:22:41 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:7af5616b60bba6a4dc1d19472a597f9df39b9843de78e607a704c435d2c83542
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6580532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:974164ea7aee5b2e4b2c8b2181aa17389e9eb37151139d69bd82f9b7de4fc0ad`
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
# Fri, 08 Mar 2019 04:11:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:11:26 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 04:11:27 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 04:11:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:11:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607d70f8efc28245876d4ec172b204b1c2fc3e1159d2d613ca8397c5f7ed22bb`  
		Last Modified: Fri, 08 Mar 2019 04:12:08 GMT  
		Size: 4.4 MB (4434007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32dbbacc1630287d1acefcaa90a78a2d4c49c3c2b5d98715539a684cdb3b37c`  
		Last Modified: Fri, 08 Mar 2019 04:12:07 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:1cb7467c9326ff143317ff1fbb734f633552b1ea19900669210cb29865fe30e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6579399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7b7fdfb103c22f72ab8b13808bcdd4fe0203322b754374f660f396c47a37e3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:50:55 GMT
ENV HAPROXY_VERSION=1.5.19
# Fri, 08 Mar 2019 07:50:56 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Fri, 08 Mar 2019 07:50:56 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Fri, 08 Mar 2019 07:51:24 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 07:51:25 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 07:51:25 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 07:51:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 07:51:26 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a05632bdc2cd9d48ff9d4a5c3fd8d783ff927a4ec7235e5ab707e5444b1d22`  
		Last Modified: Fri, 08 Mar 2019 07:53:00 GMT  
		Size: 4.5 MB (4479033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986957311d296ed1e332fe913660304e00a485ee6d4c552a9056cababe9da0bd`  
		Last Modified: Fri, 08 Mar 2019 07:52:59 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:cb826ac0eb8b0f928dc731c0338471a76cc43e6a08ff6b8a64576cb13485bdf0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6926859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4161229ed6e97f55b1fafba04cc9849507077443905830527320f16537929e92`
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
# Fri, 08 Mar 2019 04:38:57 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:38:57 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 04:38:57 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 04:38:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:38:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bb688fb2ed64cf52097deee74b161bb2df71ee9b4300bedb832ad48f1c5a5b86`  
		Last Modified: Fri, 08 Mar 2019 03:36:39 GMT  
		Size: 2.3 MB (2272029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee769e4cd61b7b87d2c81735249d7b8ffc92eeb51ccc427530345d1cd9ec291`  
		Last Modified: Fri, 08 Mar 2019 04:39:37 GMT  
		Size: 4.7 MB (4654428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4a782b8d7fa14827a216744cee874b727fec9890b79d5f1c703f456b35b65a`  
		Last Modified: Fri, 08 Mar 2019 04:39:35 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:3f5c4310121d425f5f14048d73ab5b5e58ed6704e0f006cd5f31070a7ec2279d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6797455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41377137d88d638047de85c6eb0aabb8f368de633c7c66e1419bf079ab046d0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:43 GMT
ADD file:a0b688c2ad4ec9d0535b05f0f63ecc15d1af3e496ad8fcf29809af582add17f0 in / 
# Fri, 08 Mar 2019 03:37:45 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:58:22 GMT
ENV HAPROXY_VERSION=1.5.19
# Fri, 08 Mar 2019 03:58:26 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Fri, 08 Mar 2019 03:58:27 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Fri, 08 Mar 2019 03:58:47 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:58:51 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 03:58:52 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 03:58:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:58:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0c6396bb25a488a80e061dc7e486b5fee792a25d36fbafa08c0b0f31ef402eac`  
		Last Modified: Fri, 08 Mar 2019 03:38:44 GMT  
		Size: 2.2 MB (2194926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf9c09cb669b25f1073faac4292b5bf044b063e9c1522cf340d6350a67bc531`  
		Last Modified: Fri, 08 Mar 2019 04:00:34 GMT  
		Size: 4.6 MB (4602126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0f883ae0229ac1b78703a3d26940685bc66f17c1afea1ea12eac56727053af`  
		Last Modified: Fri, 08 Mar 2019 04:00:33 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:26fcf5f446197e2d1a89e43a99205b775845222b48e9e07361dd4b474ad44c9d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6891776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b7a9d1f066542280db46b2e703ebbb27d0d13efbda32b35aa179e41e4daa6ab`
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
# Fri, 08 Mar 2019 03:54:34 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:54:34 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 03:54:34 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 03:54:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:34 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2dae612ccf35f9ba25dee8f8762f1b8d330eaaad0cccef7cdac1c8292a37a081`  
		Last Modified: Fri, 08 Mar 2019 03:36:25 GMT  
		Size: 2.3 MB (2307669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bd49ec542742e077a28ded1bf7db26199887d943f0c57392ffaf7024c8e1ad`  
		Last Modified: Fri, 08 Mar 2019 03:55:18 GMT  
		Size: 4.6 MB (4583704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b5b122c8f16a159d3d8bfbb4c5ad2b9f7a990afb72a8fea45f07e0f214c5f3`  
		Last Modified: Fri, 08 Mar 2019 03:55:17 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5-alpine`

```console
$ docker pull haproxy@sha256:4c73476fc3941516eed979311ed4c118e877e9daed08ec90454eb480b957283f
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
$ docker pull haproxy@sha256:1eb6c427cd1ee9ed4ad3725da3c43e95479d7cfd33906dbb2ead3c38bd7021cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7115134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72d69db13e71b42770eff1f9ba8166f1bf3425376b0e719b749dd00e4823ad54`
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
# Thu, 07 Mar 2019 23:21:32 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 07 Mar 2019 23:21:33 GMT
STOPSIGNAL SIGUSR1
# Thu, 07 Mar 2019 23:21:33 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Thu, 07 Mar 2019 23:21:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:21:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b04d1c1c9fffc3d45631de2cd391bf9272554bb955dec41791cfc4163aded1`  
		Last Modified: Thu, 07 Mar 2019 23:22:42 GMT  
		Size: 4.9 MB (4907557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b51aa3c6c5569c42cf2e897d3f3a54dae4d0f5f8a1a680980b2051c803797aa`  
		Last Modified: Thu, 07 Mar 2019 23:22:41 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:7af5616b60bba6a4dc1d19472a597f9df39b9843de78e607a704c435d2c83542
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6580532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:974164ea7aee5b2e4b2c8b2181aa17389e9eb37151139d69bd82f9b7de4fc0ad`
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
# Fri, 08 Mar 2019 04:11:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:11:26 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 04:11:27 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 04:11:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:11:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607d70f8efc28245876d4ec172b204b1c2fc3e1159d2d613ca8397c5f7ed22bb`  
		Last Modified: Fri, 08 Mar 2019 04:12:08 GMT  
		Size: 4.4 MB (4434007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32dbbacc1630287d1acefcaa90a78a2d4c49c3c2b5d98715539a684cdb3b37c`  
		Last Modified: Fri, 08 Mar 2019 04:12:07 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:1cb7467c9326ff143317ff1fbb734f633552b1ea19900669210cb29865fe30e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6579399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7b7fdfb103c22f72ab8b13808bcdd4fe0203322b754374f660f396c47a37e3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:50:55 GMT
ENV HAPROXY_VERSION=1.5.19
# Fri, 08 Mar 2019 07:50:56 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Fri, 08 Mar 2019 07:50:56 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Fri, 08 Mar 2019 07:51:24 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 07:51:25 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 07:51:25 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 07:51:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 07:51:26 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a05632bdc2cd9d48ff9d4a5c3fd8d783ff927a4ec7235e5ab707e5444b1d22`  
		Last Modified: Fri, 08 Mar 2019 07:53:00 GMT  
		Size: 4.5 MB (4479033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986957311d296ed1e332fe913660304e00a485ee6d4c552a9056cababe9da0bd`  
		Last Modified: Fri, 08 Mar 2019 07:52:59 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:cb826ac0eb8b0f928dc731c0338471a76cc43e6a08ff6b8a64576cb13485bdf0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6926859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4161229ed6e97f55b1fafba04cc9849507077443905830527320f16537929e92`
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
# Fri, 08 Mar 2019 04:38:57 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:38:57 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 04:38:57 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 04:38:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:38:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bb688fb2ed64cf52097deee74b161bb2df71ee9b4300bedb832ad48f1c5a5b86`  
		Last Modified: Fri, 08 Mar 2019 03:36:39 GMT  
		Size: 2.3 MB (2272029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee769e4cd61b7b87d2c81735249d7b8ffc92eeb51ccc427530345d1cd9ec291`  
		Last Modified: Fri, 08 Mar 2019 04:39:37 GMT  
		Size: 4.7 MB (4654428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4a782b8d7fa14827a216744cee874b727fec9890b79d5f1c703f456b35b65a`  
		Last Modified: Fri, 08 Mar 2019 04:39:35 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:3f5c4310121d425f5f14048d73ab5b5e58ed6704e0f006cd5f31070a7ec2279d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6797455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41377137d88d638047de85c6eb0aabb8f368de633c7c66e1419bf079ab046d0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:43 GMT
ADD file:a0b688c2ad4ec9d0535b05f0f63ecc15d1af3e496ad8fcf29809af582add17f0 in / 
# Fri, 08 Mar 2019 03:37:45 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:58:22 GMT
ENV HAPROXY_VERSION=1.5.19
# Fri, 08 Mar 2019 03:58:26 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Fri, 08 Mar 2019 03:58:27 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Fri, 08 Mar 2019 03:58:47 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:58:51 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 03:58:52 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 03:58:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:58:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0c6396bb25a488a80e061dc7e486b5fee792a25d36fbafa08c0b0f31ef402eac`  
		Last Modified: Fri, 08 Mar 2019 03:38:44 GMT  
		Size: 2.2 MB (2194926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf9c09cb669b25f1073faac4292b5bf044b063e9c1522cf340d6350a67bc531`  
		Last Modified: Fri, 08 Mar 2019 04:00:34 GMT  
		Size: 4.6 MB (4602126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0f883ae0229ac1b78703a3d26940685bc66f17c1afea1ea12eac56727053af`  
		Last Modified: Fri, 08 Mar 2019 04:00:33 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:26fcf5f446197e2d1a89e43a99205b775845222b48e9e07361dd4b474ad44c9d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6891776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b7a9d1f066542280db46b2e703ebbb27d0d13efbda32b35aa179e41e4daa6ab`
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
# Fri, 08 Mar 2019 03:54:34 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:54:34 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 03:54:34 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 03:54:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:34 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2dae612ccf35f9ba25dee8f8762f1b8d330eaaad0cccef7cdac1c8292a37a081`  
		Last Modified: Fri, 08 Mar 2019 03:36:25 GMT  
		Size: 2.3 MB (2307669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bd49ec542742e077a28ded1bf7db26199887d943f0c57392ffaf7024c8e1ad`  
		Last Modified: Fri, 08 Mar 2019 03:55:18 GMT  
		Size: 4.6 MB (4583704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b5b122c8f16a159d3d8bfbb4c5ad2b9f7a990afb72a8fea45f07e0f214c5f3`  
		Last Modified: Fri, 08 Mar 2019 03:55:17 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6`

```console
$ docker pull haproxy@sha256:3a275580e456d91a519c4c681c0600626747cb0ca130baa101e746e2b7049a76
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
$ docker pull haproxy@sha256:a9747b2a7719c10b628493507e860e6ad8e0273f49c74864cd86f17e08124346
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27455982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39578e13cc348e459abe098db7abb780a2b51676fba67893d5d18a86a0591585`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:07:37 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 27 Mar 2019 00:07:38 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Wed, 27 Mar 2019 00:07:38 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Wed, 27 Mar 2019 00:08:28 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 00:08:29 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 00:08:29 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 00:08:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:08:30 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674ca6158763102d39b5938d29f7a0127fbba8e486009e0a63554c2590e44340`  
		Last Modified: Wed, 27 Mar 2019 00:09:54 GMT  
		Size: 5.0 MB (4959531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083e9448ab01e6e175d877e736f61338bdbe22d4c8eacc066efb1305e3b7ab60`  
		Last Modified: Wed, 27 Mar 2019 00:09:53 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:1a4b631199e45964d6f192950d0eaa9ed7f689bb95e6c14a803b97ede705a4a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25631767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c8e6331203e25ef95b82421ff8b339096453af441cfb6a3dd86c8652066241b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:49:42 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 27 Mar 2019 09:49:42 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Wed, 27 Mar 2019 09:49:43 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Wed, 27 Mar 2019 09:50:25 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 09:50:26 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 09:50:26 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 09:50:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 09:50:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6533fba8198dc853846e6ff9fd33fbe82a512fe03676ee7442a6bfb0bb78912c`  
		Last Modified: Wed, 27 Mar 2019 09:52:16 GMT  
		Size: 4.5 MB (4470701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7919629ed16018655f99b59e9372f37af2132f4b9c6244adbb376dc22ab38bc5`  
		Last Modified: Wed, 27 Mar 2019 09:52:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:68451a1a82860dd5e0e05dd35157e12543f67649f025e19736da587fe66e7402
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23627294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a26f7a85bc9523edbb1e34c80f3e585aa19251c461386125ee30cd71e23b521`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:34:16 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 27 Mar 2019 12:34:17 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Wed, 27 Mar 2019 12:34:18 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Wed, 27 Mar 2019 12:35:01 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 12:35:02 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 12:35:02 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 12:35:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:35:04 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4a3d7a5a60613eb225cc505b8c98d41b7ad45b588ceac63323c46d173f4ab1`  
		Last Modified: Wed, 27 Mar 2019 12:36:30 GMT  
		Size: 4.3 MB (4344449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b3aebfe3292151e686ad520c4d99c8b5b13f5694ec89dccbbbb6bdfbaf75c1`  
		Last Modified: Wed, 27 Mar 2019 12:36:29 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:787f424bc8a1331a7c7e1bac84527d18da275c1c9a8a8638bddb8bcc4e9c0c60
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24841298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b165801d9fb35eea7eff21e7c455ed3ccab903b549e77375a52411eb1e7222a3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 17:28:48 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 27 Mar 2019 17:28:49 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Wed, 27 Mar 2019 17:28:50 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Wed, 27 Mar 2019 17:31:11 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 17:31:12 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 17:31:13 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 17:31:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 17:31:14 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f69e2d69e19343c50453b5710dc0a1b1d9fa1d733047d55ba4f7fe8f50a090f`  
		Last Modified: Wed, 27 Mar 2019 17:37:10 GMT  
		Size: 4.5 MB (4500716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c668a7151f495e5dbcdd7f23b15f03c619e494d4fab873eb4c2d0be4464db3`  
		Last Modified: Wed, 27 Mar 2019 17:37:08 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; 386

```console
$ docker pull haproxy@sha256:72b29a14d4602203368866a9698b7c0667689237bbb1bcbf7293a6531dfa44ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27867615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fba7889c6304f807a589e252ff206ca20079ff0903a65339a367f1c1adca2235`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:19:15 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 27 Mar 2019 13:19:15 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Wed, 27 Mar 2019 13:19:16 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Wed, 27 Mar 2019 13:20:25 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 13:20:26 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 13:20:26 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 13:20:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 13:20:26 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88fa0b8eae12844ee34023b9511e55216549dcec3253bd06191cb95ed54fe97`  
		Last Modified: Wed, 27 Mar 2019 13:21:59 GMT  
		Size: 4.7 MB (4741467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ce1521e978da2f539a110ecd3bd681a72ece4d1029c2ac0c66d4c82075b977`  
		Last Modified: Wed, 27 Mar 2019 13:21:59 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; ppc64le

```console
$ docker pull haproxy@sha256:06ee1ef5c8d3608b01b84f187094ce0c28d858fd94901a39b4702d6308edd9dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27439258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:872b30776f2062b0a377d4fead69d38605b06c083fc891e8d22a872f0f5e049f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:37 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 27 Mar 2019 09:33:39 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Wed, 27 Mar 2019 09:33:41 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Wed, 27 Mar 2019 09:36:50 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 09:36:57 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 09:36:58 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 09:37:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 09:37:03 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b49adb038d8e5293e70906c5d2ee8dc705d7b953cbd71bed5514fc61fd22511`  
		Last Modified: Wed, 27 Mar 2019 09:41:47 GMT  
		Size: 4.7 MB (4687470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04e99f7e88f566f596b4be62a410b69cdc966be447a0a94ddb62e23dbdd3946e`  
		Last Modified: Wed, 27 Mar 2019 09:41:45 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; s390x

```console
$ docker pull haproxy@sha256:3473906e61827d81025c5c4b48b4af1de7ca5edfff275368a438d9786a6d125a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27160474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4f184c80adff348cee919fcf9294d73ea660d539e0d974dec3ea4c3fc5ff79a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:30:05 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 27 Mar 2019 12:30:05 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Wed, 27 Mar 2019 12:30:06 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Wed, 27 Mar 2019 12:30:56 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 12:30:56 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 12:30:57 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 12:30:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:30:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b75e333154e39c504ccefcab44e729e3000ab14d59ff83ead862891636cb91c`  
		Last Modified: Wed, 27 Mar 2019 12:32:54 GMT  
		Size: 4.8 MB (4814789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16989e777f8da2c85bc5b51609d2c29c166464f00407310813b6b82689dc906d`  
		Last Modified: Wed, 27 Mar 2019 12:32:53 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6.14`

```console
$ docker pull haproxy@sha256:3a275580e456d91a519c4c681c0600626747cb0ca130baa101e746e2b7049a76
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
$ docker pull haproxy@sha256:a9747b2a7719c10b628493507e860e6ad8e0273f49c74864cd86f17e08124346
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27455982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39578e13cc348e459abe098db7abb780a2b51676fba67893d5d18a86a0591585`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:07:37 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 27 Mar 2019 00:07:38 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Wed, 27 Mar 2019 00:07:38 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Wed, 27 Mar 2019 00:08:28 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 00:08:29 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 00:08:29 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 00:08:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:08:30 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674ca6158763102d39b5938d29f7a0127fbba8e486009e0a63554c2590e44340`  
		Last Modified: Wed, 27 Mar 2019 00:09:54 GMT  
		Size: 5.0 MB (4959531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083e9448ab01e6e175d877e736f61338bdbe22d4c8eacc066efb1305e3b7ab60`  
		Last Modified: Wed, 27 Mar 2019 00:09:53 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:1a4b631199e45964d6f192950d0eaa9ed7f689bb95e6c14a803b97ede705a4a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25631767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c8e6331203e25ef95b82421ff8b339096453af441cfb6a3dd86c8652066241b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:49:42 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 27 Mar 2019 09:49:42 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Wed, 27 Mar 2019 09:49:43 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Wed, 27 Mar 2019 09:50:25 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 09:50:26 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 09:50:26 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 09:50:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 09:50:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6533fba8198dc853846e6ff9fd33fbe82a512fe03676ee7442a6bfb0bb78912c`  
		Last Modified: Wed, 27 Mar 2019 09:52:16 GMT  
		Size: 4.5 MB (4470701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7919629ed16018655f99b59e9372f37af2132f4b9c6244adbb376dc22ab38bc5`  
		Last Modified: Wed, 27 Mar 2019 09:52:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:68451a1a82860dd5e0e05dd35157e12543f67649f025e19736da587fe66e7402
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23627294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a26f7a85bc9523edbb1e34c80f3e585aa19251c461386125ee30cd71e23b521`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:34:16 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 27 Mar 2019 12:34:17 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Wed, 27 Mar 2019 12:34:18 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Wed, 27 Mar 2019 12:35:01 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 12:35:02 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 12:35:02 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 12:35:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:35:04 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4a3d7a5a60613eb225cc505b8c98d41b7ad45b588ceac63323c46d173f4ab1`  
		Last Modified: Wed, 27 Mar 2019 12:36:30 GMT  
		Size: 4.3 MB (4344449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b3aebfe3292151e686ad520c4d99c8b5b13f5694ec89dccbbbb6bdfbaf75c1`  
		Last Modified: Wed, 27 Mar 2019 12:36:29 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:787f424bc8a1331a7c7e1bac84527d18da275c1c9a8a8638bddb8bcc4e9c0c60
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24841298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b165801d9fb35eea7eff21e7c455ed3ccab903b549e77375a52411eb1e7222a3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 17:28:48 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 27 Mar 2019 17:28:49 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Wed, 27 Mar 2019 17:28:50 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Wed, 27 Mar 2019 17:31:11 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 17:31:12 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 17:31:13 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 17:31:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 17:31:14 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f69e2d69e19343c50453b5710dc0a1b1d9fa1d733047d55ba4f7fe8f50a090f`  
		Last Modified: Wed, 27 Mar 2019 17:37:10 GMT  
		Size: 4.5 MB (4500716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c668a7151f495e5dbcdd7f23b15f03c619e494d4fab873eb4c2d0be4464db3`  
		Last Modified: Wed, 27 Mar 2019 17:37:08 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; 386

```console
$ docker pull haproxy@sha256:72b29a14d4602203368866a9698b7c0667689237bbb1bcbf7293a6531dfa44ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27867615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fba7889c6304f807a589e252ff206ca20079ff0903a65339a367f1c1adca2235`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:19:15 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 27 Mar 2019 13:19:15 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Wed, 27 Mar 2019 13:19:16 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Wed, 27 Mar 2019 13:20:25 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 13:20:26 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 13:20:26 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 13:20:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 13:20:26 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88fa0b8eae12844ee34023b9511e55216549dcec3253bd06191cb95ed54fe97`  
		Last Modified: Wed, 27 Mar 2019 13:21:59 GMT  
		Size: 4.7 MB (4741467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ce1521e978da2f539a110ecd3bd681a72ece4d1029c2ac0c66d4c82075b977`  
		Last Modified: Wed, 27 Mar 2019 13:21:59 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; ppc64le

```console
$ docker pull haproxy@sha256:06ee1ef5c8d3608b01b84f187094ce0c28d858fd94901a39b4702d6308edd9dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27439258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:872b30776f2062b0a377d4fead69d38605b06c083fc891e8d22a872f0f5e049f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:37 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 27 Mar 2019 09:33:39 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Wed, 27 Mar 2019 09:33:41 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Wed, 27 Mar 2019 09:36:50 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 09:36:57 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 09:36:58 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 09:37:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 09:37:03 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b49adb038d8e5293e70906c5d2ee8dc705d7b953cbd71bed5514fc61fd22511`  
		Last Modified: Wed, 27 Mar 2019 09:41:47 GMT  
		Size: 4.7 MB (4687470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04e99f7e88f566f596b4be62a410b69cdc966be447a0a94ddb62e23dbdd3946e`  
		Last Modified: Wed, 27 Mar 2019 09:41:45 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; s390x

```console
$ docker pull haproxy@sha256:3473906e61827d81025c5c4b48b4af1de7ca5edfff275368a438d9786a6d125a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27160474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4f184c80adff348cee919fcf9294d73ea660d539e0d974dec3ea4c3fc5ff79a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:30:05 GMT
ENV HAPROXY_VERSION=1.6.14
# Wed, 27 Mar 2019 12:30:05 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Wed, 27 Mar 2019 12:30:06 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Wed, 27 Mar 2019 12:30:56 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 12:30:56 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 12:30:57 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 12:30:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:30:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b75e333154e39c504ccefcab44e729e3000ab14d59ff83ead862891636cb91c`  
		Last Modified: Wed, 27 Mar 2019 12:32:54 GMT  
		Size: 4.8 MB (4814789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16989e777f8da2c85bc5b51609d2c29c166464f00407310813b6b82689dc906d`  
		Last Modified: Wed, 27 Mar 2019 12:32:53 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6.14-alpine`

```console
$ docker pull haproxy@sha256:7d5b23d8395285875014cda23cdad38819fc817214c52e469950de5ac8a05a26
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
$ docker pull haproxy@sha256:c33605600b91e6d30d4b04c46e1f9e840b6bb5cd9fbe8873048d5693406b1196
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7802729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461413c77127a1c25acd0962d37113c5b3e352af667d8e54968d066890dbe2dd`
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
# Thu, 07 Mar 2019 23:20:23 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 07 Mar 2019 23:20:23 GMT
STOPSIGNAL SIGUSR1
# Thu, 07 Mar 2019 23:20:24 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Thu, 07 Mar 2019 23:20:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:20:24 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc7ca9a6cd7205ad62d7a72f213cc8e5d20dbf0de74a6a7d2cb7638fab7bafeb`  
		Last Modified: Thu, 07 Mar 2019 23:22:36 GMT  
		Size: 5.6 MB (5595150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8386bc8097d6798d1e0d60c713da0e88b2663d9bbf2663e662ea3ee6bcf4319`  
		Last Modified: Thu, 07 Mar 2019 23:22:34 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:ddea5b1a0047119389cadd9b511f2fa4af1ea6e36b82c98e55b649e6a0abe129
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7253283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc8f7a3c36b8093d7aa6b9cf9ff8640de6487c451196dbd284f5d7dbb2c0395`
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
# Fri, 08 Mar 2019 04:11:05 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:11:05 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 04:11:06 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 04:11:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:11:06 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1844c215974323ab4ca05dbb061128e045682132988d721b186243d1171423b0`  
		Last Modified: Fri, 08 Mar 2019 04:12:02 GMT  
		Size: 5.1 MB (5106758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e660f85f2fb4adff1c08f394536478d0482b28ee026e23e41dfcf37a1fdc4e4`  
		Last Modified: Fri, 08 Mar 2019 04:12:00 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:f21e5d485e161dda8e433b498fe142ffd98c6b383010eaa464a09f9c779d84e0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7246246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b91118aa4b5a1b8dd2a3e9841df20e15cd7aaba875116523ce4f506ea6821d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:49:39 GMT
ENV HAPROXY_VERSION=1.6.14
# Fri, 08 Mar 2019 07:49:40 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Fri, 08 Mar 2019 07:49:41 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Fri, 08 Mar 2019 07:50:40 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 07:50:41 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 07:50:42 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 07:50:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 07:50:43 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1731023e02a3c062af10b3e7d4069450c0b6b0f8963a50b9b63d1e8604238b59`  
		Last Modified: Fri, 08 Mar 2019 07:52:50 GMT  
		Size: 5.1 MB (5145881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82aeaf1eb50a5ebcee2ba3e16f3255df0da572f874283c868d672d6d879df212`  
		Last Modified: Fri, 08 Mar 2019 07:52:47 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:f722172bb9e172b68b6d2ed1d26fe7c84fd9acdd9175ce8b183058b1f9fac6cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7614993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:110dbb553460a273eac01ca2f396290b28509bb5b73d8684856608b698c1af8a`
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
# Fri, 08 Mar 2019 04:38:21 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:38:21 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 04:38:22 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 04:38:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:38:22 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bb688fb2ed64cf52097deee74b161bb2df71ee9b4300bedb832ad48f1c5a5b86`  
		Last Modified: Fri, 08 Mar 2019 03:36:39 GMT  
		Size: 2.3 MB (2272029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5babaed55cbdad68bafcdbf98e61082620965362084479ba21a7463ea2960383`  
		Last Modified: Fri, 08 Mar 2019 04:39:31 GMT  
		Size: 5.3 MB (5342561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e287e72c7e6fda0cde0112c346472c74ff7ec73a8173fcfb82e7de7b43229492`  
		Last Modified: Fri, 08 Mar 2019 04:39:30 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:ff5aaee04a3cbd4a41df0edeb6e9987c4035907d9f5f2cf040e187a2774d38eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7486915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c266e53b6972ad40f713e022c41ead26ebacf9c003666cfaafd0ab77e038817f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:43 GMT
ADD file:a0b688c2ad4ec9d0535b05f0f63ecc15d1af3e496ad8fcf29809af582add17f0 in / 
# Fri, 08 Mar 2019 03:37:45 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:57:29 GMT
ENV HAPROXY_VERSION=1.6.14
# Fri, 08 Mar 2019 03:57:33 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Fri, 08 Mar 2019 03:57:35 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Fri, 08 Mar 2019 03:57:56 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:57:59 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 03:58:00 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 03:58:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:58:06 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0c6396bb25a488a80e061dc7e486b5fee792a25d36fbafa08c0b0f31ef402eac`  
		Last Modified: Fri, 08 Mar 2019 03:38:44 GMT  
		Size: 2.2 MB (2194926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055187c835d9548ed2a703d92e5befef4ecf1d1e618975d8d0911f5f9867d0a3`  
		Last Modified: Fri, 08 Mar 2019 04:00:22 GMT  
		Size: 5.3 MB (5291586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19de575b235bfdbfc1ae22b722eab553bc07ab8f9c6fd6629b2046f2be50573b`  
		Last Modified: Fri, 08 Mar 2019 04:00:20 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:e9ca61f0891525819b67eb8673f52ee39aecca93059d0b99aa68a1253879f6d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7592205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd385377dc5ed6d3152a6016d4b86602908e03d7921600c916d2a03df74361da`
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
# Fri, 08 Mar 2019 03:54:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:54:08 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 03:54:09 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 03:54:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:09 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2dae612ccf35f9ba25dee8f8762f1b8d330eaaad0cccef7cdac1c8292a37a081`  
		Last Modified: Fri, 08 Mar 2019 03:36:25 GMT  
		Size: 2.3 MB (2307669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c3495f0ae327b213b26cd4bbef903abf66aeff0bcdce9bc7ebba63d1844357`  
		Last Modified: Fri, 08 Mar 2019 03:55:12 GMT  
		Size: 5.3 MB (5284133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0f6fa4795ddb32d4efe0518e635b382da1e5dd7bdbdad86144c9103636c7a7`  
		Last Modified: Fri, 08 Mar 2019 03:55:11 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6-alpine`

```console
$ docker pull haproxy@sha256:7d5b23d8395285875014cda23cdad38819fc817214c52e469950de5ac8a05a26
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
$ docker pull haproxy@sha256:c33605600b91e6d30d4b04c46e1f9e840b6bb5cd9fbe8873048d5693406b1196
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7802729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461413c77127a1c25acd0962d37113c5b3e352af667d8e54968d066890dbe2dd`
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
# Thu, 07 Mar 2019 23:20:23 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 07 Mar 2019 23:20:23 GMT
STOPSIGNAL SIGUSR1
# Thu, 07 Mar 2019 23:20:24 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Thu, 07 Mar 2019 23:20:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:20:24 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc7ca9a6cd7205ad62d7a72f213cc8e5d20dbf0de74a6a7d2cb7638fab7bafeb`  
		Last Modified: Thu, 07 Mar 2019 23:22:36 GMT  
		Size: 5.6 MB (5595150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8386bc8097d6798d1e0d60c713da0e88b2663d9bbf2663e662ea3ee6bcf4319`  
		Last Modified: Thu, 07 Mar 2019 23:22:34 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:ddea5b1a0047119389cadd9b511f2fa4af1ea6e36b82c98e55b649e6a0abe129
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7253283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc8f7a3c36b8093d7aa6b9cf9ff8640de6487c451196dbd284f5d7dbb2c0395`
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
# Fri, 08 Mar 2019 04:11:05 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:11:05 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 04:11:06 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 04:11:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:11:06 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1844c215974323ab4ca05dbb061128e045682132988d721b186243d1171423b0`  
		Last Modified: Fri, 08 Mar 2019 04:12:02 GMT  
		Size: 5.1 MB (5106758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e660f85f2fb4adff1c08f394536478d0482b28ee026e23e41dfcf37a1fdc4e4`  
		Last Modified: Fri, 08 Mar 2019 04:12:00 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:f21e5d485e161dda8e433b498fe142ffd98c6b383010eaa464a09f9c779d84e0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7246246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b91118aa4b5a1b8dd2a3e9841df20e15cd7aaba875116523ce4f506ea6821d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:49:39 GMT
ENV HAPROXY_VERSION=1.6.14
# Fri, 08 Mar 2019 07:49:40 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Fri, 08 Mar 2019 07:49:41 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Fri, 08 Mar 2019 07:50:40 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 07:50:41 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 07:50:42 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 07:50:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 07:50:43 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1731023e02a3c062af10b3e7d4069450c0b6b0f8963a50b9b63d1e8604238b59`  
		Last Modified: Fri, 08 Mar 2019 07:52:50 GMT  
		Size: 5.1 MB (5145881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82aeaf1eb50a5ebcee2ba3e16f3255df0da572f874283c868d672d6d879df212`  
		Last Modified: Fri, 08 Mar 2019 07:52:47 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:f722172bb9e172b68b6d2ed1d26fe7c84fd9acdd9175ce8b183058b1f9fac6cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7614993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:110dbb553460a273eac01ca2f396290b28509bb5b73d8684856608b698c1af8a`
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
# Fri, 08 Mar 2019 04:38:21 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:38:21 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 04:38:22 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 04:38:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:38:22 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bb688fb2ed64cf52097deee74b161bb2df71ee9b4300bedb832ad48f1c5a5b86`  
		Last Modified: Fri, 08 Mar 2019 03:36:39 GMT  
		Size: 2.3 MB (2272029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5babaed55cbdad68bafcdbf98e61082620965362084479ba21a7463ea2960383`  
		Last Modified: Fri, 08 Mar 2019 04:39:31 GMT  
		Size: 5.3 MB (5342561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e287e72c7e6fda0cde0112c346472c74ff7ec73a8173fcfb82e7de7b43229492`  
		Last Modified: Fri, 08 Mar 2019 04:39:30 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:ff5aaee04a3cbd4a41df0edeb6e9987c4035907d9f5f2cf040e187a2774d38eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7486915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c266e53b6972ad40f713e022c41ead26ebacf9c003666cfaafd0ab77e038817f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:43 GMT
ADD file:a0b688c2ad4ec9d0535b05f0f63ecc15d1af3e496ad8fcf29809af582add17f0 in / 
# Fri, 08 Mar 2019 03:37:45 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:57:29 GMT
ENV HAPROXY_VERSION=1.6.14
# Fri, 08 Mar 2019 03:57:33 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Fri, 08 Mar 2019 03:57:35 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Fri, 08 Mar 2019 03:57:56 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:57:59 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 03:58:00 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 03:58:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:58:06 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0c6396bb25a488a80e061dc7e486b5fee792a25d36fbafa08c0b0f31ef402eac`  
		Last Modified: Fri, 08 Mar 2019 03:38:44 GMT  
		Size: 2.2 MB (2194926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055187c835d9548ed2a703d92e5befef4ecf1d1e618975d8d0911f5f9867d0a3`  
		Last Modified: Fri, 08 Mar 2019 04:00:22 GMT  
		Size: 5.3 MB (5291586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19de575b235bfdbfc1ae22b722eab553bc07ab8f9c6fd6629b2046f2be50573b`  
		Last Modified: Fri, 08 Mar 2019 04:00:20 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:e9ca61f0891525819b67eb8673f52ee39aecca93059d0b99aa68a1253879f6d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7592205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd385377dc5ed6d3152a6016d4b86602908e03d7921600c916d2a03df74361da`
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
# Fri, 08 Mar 2019 03:54:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:54:08 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 03:54:09 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 03:54:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:09 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2dae612ccf35f9ba25dee8f8762f1b8d330eaaad0cccef7cdac1c8292a37a081`  
		Last Modified: Fri, 08 Mar 2019 03:36:25 GMT  
		Size: 2.3 MB (2307669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c3495f0ae327b213b26cd4bbef903abf66aeff0bcdce9bc7ebba63d1844357`  
		Last Modified: Fri, 08 Mar 2019 03:55:12 GMT  
		Size: 5.3 MB (5284133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0f6fa4795ddb32d4efe0518e635b382da1e5dd7bdbdad86144c9103636c7a7`  
		Last Modified: Fri, 08 Mar 2019 03:55:11 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7`

```console
$ docker pull haproxy@sha256:c9476cbda8fce86c6aed60980be325b2c16f4e4f672167a1b2d518f5ad3246b2
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
$ docker pull haproxy@sha256:2b04d7c5729f9b2980a2289e80a88d59e1ec3e1a36fbc1686f0099e7862d63b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27259041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:474317c53adfffaab1d73581b41cf89466119eee59f7469a31c3290c00d0bd0c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:06:51 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 27 Mar 2019 00:06:51 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Wed, 27 Mar 2019 00:06:51 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Wed, 27 Mar 2019 00:07:29 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 00:07:30 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 00:07:30 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 00:07:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:07:30 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76e105e49120ac4a33a661d8bcc828660c489cf1c7b0c94e9ef504008a3eabf`  
		Last Modified: Wed, 27 Mar 2019 00:09:50 GMT  
		Size: 4.8 MB (4762590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26179706cdce73bbda1b11ea2ff481a9e13c49acf2328165de77feece6d0f14e`  
		Last Modified: Wed, 27 Mar 2019 00:09:49 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:31e2b30aafd463befd054f97792bbb109b9107248c1cf85ff8e0241aee918465
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25611419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f28d7e5ff032cfb86ffb418b22f8e40f2b70d7b7062fc09b207562eaf112d9d3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:48:48 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 27 Mar 2019 09:48:48 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Wed, 27 Mar 2019 09:48:49 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Wed, 27 Mar 2019 09:49:29 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 09:49:30 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 09:49:30 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 09:49:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 09:49:31 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060fb2dff31f99685780b782c81d75df649cc40adc2519e8c6bbad0f35f5c1d2`  
		Last Modified: Wed, 27 Mar 2019 09:52:10 GMT  
		Size: 4.5 MB (4450354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf11521961467365aaf75810f5b3dc52573445bd6a31167efda13f5c18d50cb`  
		Last Modified: Wed, 27 Mar 2019 09:52:09 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:efa3f3b6b3744831df691bb9feaa556191ffc5abd9170840ba390c40e9195b89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23610093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df21966fc066a9ca5b35b9b08b64908891df5650b637c7bb50705e30e361364d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:33:08 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 27 Mar 2019 12:33:09 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Wed, 27 Mar 2019 12:33:10 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Wed, 27 Mar 2019 12:33:55 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 12:33:56 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 12:33:57 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 12:33:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:33:59 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b60bde4a8d9819e12c3e4341920a2e7cdc5bc93852cbb5f74a796940fbf6a746`  
		Last Modified: Wed, 27 Mar 2019 12:36:24 GMT  
		Size: 4.3 MB (4327251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d85a4aaed9ed0510669f9e46c050fb55de5d01e9c4715c7891af3ab125149ae`  
		Last Modified: Wed, 27 Mar 2019 12:36:23 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:a4bf771153f679d4cd4c2d0612d09136073b26bb27ea5c57b4cda1feba946f5d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24788579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ac7c415b270bd33426247756349875fc0c59b6df148e32bc543bee736a34ae4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 17:26:28 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 27 Mar 2019 17:26:29 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Wed, 27 Mar 2019 17:26:29 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Wed, 27 Mar 2019 17:28:23 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 17:28:24 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 17:28:25 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 17:28:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 17:28:26 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6497ec4d17df5576230b2459b7626365b30f08af1449672e11b7c90d3bbeb1`  
		Last Modified: Wed, 27 Mar 2019 17:37:00 GMT  
		Size: 4.4 MB (4447997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b113afe0d8c04002339f092647c49b8c3dc5874dcd1064bad280e12331d4e54`  
		Last Modified: Wed, 27 Mar 2019 17:36:58 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; 386

```console
$ docker pull haproxy@sha256:75314144063717f4cc067699b2d17d92980f4042d8d8a1e1dc398fbff486e26e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27844273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f62242663a01ad5fbb3b1aa7cdded66e6c9a474a6bdad021263969e1460ff49`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:18:10 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 27 Mar 2019 13:18:10 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Wed, 27 Mar 2019 13:18:10 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Wed, 27 Mar 2019 13:19:03 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 13:19:03 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 13:19:03 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 13:19:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 13:19:04 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385ea36086a79fba684f68ec68b794cf255aa6a0c3f7ed4f6db107da309847a4`  
		Last Modified: Wed, 27 Mar 2019 13:21:55 GMT  
		Size: 4.7 MB (4718125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77398a94108abd758910e66e369f1e24d61f626380cb195ee445f8eb1a16c0ae`  
		Last Modified: Wed, 27 Mar 2019 13:21:54 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; ppc64le

```console
$ docker pull haproxy@sha256:1c9b1af3a342e5a371843dcefb5ccd044048e399e7c39d870abb83134e4df1c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27218203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89fd9d881e4b3dd68c5289f6db7c3e1b056507e68b65e5b993a0d66e2f23f3c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:31:15 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 27 Mar 2019 09:31:18 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Wed, 27 Mar 2019 09:31:20 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Wed, 27 Mar 2019 09:33:06 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 09:33:08 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 09:33:10 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 09:33:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 09:33:14 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06e705a8b597e1f357dbbafb5f95aa4ccac9c7f85ba7cdc6c222d7157325f00c`  
		Last Modified: Wed, 27 Mar 2019 09:41:35 GMT  
		Size: 4.5 MB (4466415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded90714060a9cb8531d5a151e57db3788657f1c4c4b35fa06d77f898355c11d`  
		Last Modified: Wed, 27 Mar 2019 09:41:35 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; s390x

```console
$ docker pull haproxy@sha256:556179744d69d7f7e28cdf06d960f4bdb4764dcc432cb3ec896a7f0cc3747ddf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26943668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51351e781f552c3e1f3c4762869f9b0011197a48c3129302c6849c76cc696a88`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:28:44 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 27 Mar 2019 12:28:44 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Wed, 27 Mar 2019 12:28:45 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Wed, 27 Mar 2019 12:29:44 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 12:29:45 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 12:29:45 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 12:29:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:29:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92c4f35ee59a570141b3176b6f91f48fe220d368fde7a1d9bdeb41e9666583c`  
		Last Modified: Wed, 27 Mar 2019 12:32:47 GMT  
		Size: 4.6 MB (4597983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e38e126de4b5648c45b6e6ffe9dd735f9c3e76f45e99babebaf0b7caecdf7d`  
		Last Modified: Wed, 27 Mar 2019 12:32:46 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7.11`

```console
$ docker pull haproxy@sha256:c9476cbda8fce86c6aed60980be325b2c16f4e4f672167a1b2d518f5ad3246b2
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
$ docker pull haproxy@sha256:2b04d7c5729f9b2980a2289e80a88d59e1ec3e1a36fbc1686f0099e7862d63b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27259041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:474317c53adfffaab1d73581b41cf89466119eee59f7469a31c3290c00d0bd0c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:06:51 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 27 Mar 2019 00:06:51 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Wed, 27 Mar 2019 00:06:51 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Wed, 27 Mar 2019 00:07:29 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 00:07:30 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 00:07:30 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 00:07:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:07:30 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76e105e49120ac4a33a661d8bcc828660c489cf1c7b0c94e9ef504008a3eabf`  
		Last Modified: Wed, 27 Mar 2019 00:09:50 GMT  
		Size: 4.8 MB (4762590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26179706cdce73bbda1b11ea2ff481a9e13c49acf2328165de77feece6d0f14e`  
		Last Modified: Wed, 27 Mar 2019 00:09:49 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:31e2b30aafd463befd054f97792bbb109b9107248c1cf85ff8e0241aee918465
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25611419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f28d7e5ff032cfb86ffb418b22f8e40f2b70d7b7062fc09b207562eaf112d9d3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:48:48 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 27 Mar 2019 09:48:48 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Wed, 27 Mar 2019 09:48:49 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Wed, 27 Mar 2019 09:49:29 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 09:49:30 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 09:49:30 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 09:49:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 09:49:31 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060fb2dff31f99685780b782c81d75df649cc40adc2519e8c6bbad0f35f5c1d2`  
		Last Modified: Wed, 27 Mar 2019 09:52:10 GMT  
		Size: 4.5 MB (4450354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf11521961467365aaf75810f5b3dc52573445bd6a31167efda13f5c18d50cb`  
		Last Modified: Wed, 27 Mar 2019 09:52:09 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:efa3f3b6b3744831df691bb9feaa556191ffc5abd9170840ba390c40e9195b89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23610093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df21966fc066a9ca5b35b9b08b64908891df5650b637c7bb50705e30e361364d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:33:08 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 27 Mar 2019 12:33:09 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Wed, 27 Mar 2019 12:33:10 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Wed, 27 Mar 2019 12:33:55 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 12:33:56 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 12:33:57 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 12:33:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:33:59 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b60bde4a8d9819e12c3e4341920a2e7cdc5bc93852cbb5f74a796940fbf6a746`  
		Last Modified: Wed, 27 Mar 2019 12:36:24 GMT  
		Size: 4.3 MB (4327251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d85a4aaed9ed0510669f9e46c050fb55de5d01e9c4715c7891af3ab125149ae`  
		Last Modified: Wed, 27 Mar 2019 12:36:23 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:a4bf771153f679d4cd4c2d0612d09136073b26bb27ea5c57b4cda1feba946f5d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24788579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ac7c415b270bd33426247756349875fc0c59b6df148e32bc543bee736a34ae4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 17:26:28 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 27 Mar 2019 17:26:29 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Wed, 27 Mar 2019 17:26:29 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Wed, 27 Mar 2019 17:28:23 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 17:28:24 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 17:28:25 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 17:28:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 17:28:26 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6497ec4d17df5576230b2459b7626365b30f08af1449672e11b7c90d3bbeb1`  
		Last Modified: Wed, 27 Mar 2019 17:37:00 GMT  
		Size: 4.4 MB (4447997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b113afe0d8c04002339f092647c49b8c3dc5874dcd1064bad280e12331d4e54`  
		Last Modified: Wed, 27 Mar 2019 17:36:58 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; 386

```console
$ docker pull haproxy@sha256:75314144063717f4cc067699b2d17d92980f4042d8d8a1e1dc398fbff486e26e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27844273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f62242663a01ad5fbb3b1aa7cdded66e6c9a474a6bdad021263969e1460ff49`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:18:10 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 27 Mar 2019 13:18:10 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Wed, 27 Mar 2019 13:18:10 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Wed, 27 Mar 2019 13:19:03 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 13:19:03 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 13:19:03 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 13:19:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 13:19:04 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385ea36086a79fba684f68ec68b794cf255aa6a0c3f7ed4f6db107da309847a4`  
		Last Modified: Wed, 27 Mar 2019 13:21:55 GMT  
		Size: 4.7 MB (4718125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77398a94108abd758910e66e369f1e24d61f626380cb195ee445f8eb1a16c0ae`  
		Last Modified: Wed, 27 Mar 2019 13:21:54 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; ppc64le

```console
$ docker pull haproxy@sha256:1c9b1af3a342e5a371843dcefb5ccd044048e399e7c39d870abb83134e4df1c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27218203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89fd9d881e4b3dd68c5289f6db7c3e1b056507e68b65e5b993a0d66e2f23f3c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:31:15 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 27 Mar 2019 09:31:18 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Wed, 27 Mar 2019 09:31:20 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Wed, 27 Mar 2019 09:33:06 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 09:33:08 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 09:33:10 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 09:33:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 09:33:14 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06e705a8b597e1f357dbbafb5f95aa4ccac9c7f85ba7cdc6c222d7157325f00c`  
		Last Modified: Wed, 27 Mar 2019 09:41:35 GMT  
		Size: 4.5 MB (4466415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded90714060a9cb8531d5a151e57db3788657f1c4c4b35fa06d77f898355c11d`  
		Last Modified: Wed, 27 Mar 2019 09:41:35 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; s390x

```console
$ docker pull haproxy@sha256:556179744d69d7f7e28cdf06d960f4bdb4764dcc432cb3ec896a7f0cc3747ddf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26943668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51351e781f552c3e1f3c4762869f9b0011197a48c3129302c6849c76cc696a88`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:28:44 GMT
ENV HAPROXY_VERSION=1.7.11
# Wed, 27 Mar 2019 12:28:44 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Wed, 27 Mar 2019 12:28:45 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Wed, 27 Mar 2019 12:29:44 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 12:29:45 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 12:29:45 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Wed, 27 Mar 2019 12:29:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:29:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92c4f35ee59a570141b3176b6f91f48fe220d368fde7a1d9bdeb41e9666583c`  
		Last Modified: Wed, 27 Mar 2019 12:32:47 GMT  
		Size: 4.6 MB (4597983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e38e126de4b5648c45b6e6ffe9dd735f9c3e76f45e99babebaf0b7caecdf7d`  
		Last Modified: Wed, 27 Mar 2019 12:32:46 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7.11-alpine`

```console
$ docker pull haproxy@sha256:b197e67062eaf1e7d985f7d8ff5ea7aae1f57ad86157989f3c446c9a02918276
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
$ docker pull haproxy@sha256:103ed1d7d5f660dfbf43a8e1bb15befcafac3d5f6e7cc882758ae595deccfa05
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7273020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cab80d5dce8d6ff77259033d13c4a42fcf02f598f7f9297b5e2b4d6f06ecc29`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:19:15 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 07 Mar 2019 23:19:16 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Thu, 07 Mar 2019 23:19:16 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 07 Mar 2019 23:19:46 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 07 Mar 2019 23:19:46 GMT
STOPSIGNAL SIGUSR1
# Thu, 07 Mar 2019 23:19:46 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Thu, 07 Mar 2019 23:19:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:19:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e9c4bf47380aa024664233c9608be892b88a39198a3d4e5d9fa81f8849fcf4`  
		Last Modified: Thu, 07 Mar 2019 23:22:30 GMT  
		Size: 4.5 MB (4517888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6af17701d3cdef7c099600ac368d1781111f6e8b7ac785d50c390e37af4fcf`  
		Last Modified: Thu, 07 Mar 2019 23:22:29 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:ec59968a94f82e0cd22de4aaf4136860e295f17519f3bc4c5b558dd5117a8e6b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6935031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:882aee6769b65489a6556e3ec58718db4f63d7df57da990f19ff5fc761847a53`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:10:19 GMT
ENV HAPROXY_VERSION=1.7.11
# Fri, 08 Mar 2019 04:10:19 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Fri, 08 Mar 2019 04:10:20 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 08 Mar 2019 04:10:38 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:10:38 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 04:10:39 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 04:10:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:10:40 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff31d47a4f2e1310173b46a996b20a3c373c30200ac94cde593a624a5b09af6`  
		Last Modified: Fri, 08 Mar 2019 04:11:56 GMT  
		Size: 4.4 MB (4393955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889987e806e4528d1079bdc37cc8beaa4fc0de61e3d8ccd931446c49fb94deab`  
		Last Modified: Fri, 08 Mar 2019 04:11:55 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11-alpine` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:1994a867ee82f234c588561392f85b369c88202d259211950594cb7aed40b7f3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6699488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f57d59eea2ec59be0284a32210f30cc4b80417c3bdb1fca7b0e046f8933ef6b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:12:20 GMT
ENV HAPROXY_VERSION=1.7.11
# Tue, 12 Mar 2019 12:12:20 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Tue, 12 Mar 2019 12:12:21 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Tue, 12 Mar 2019 12:12:38 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 12 Mar 2019 12:12:38 GMT
STOPSIGNAL SIGUSR1
# Tue, 12 Mar 2019 12:12:39 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Tue, 12 Mar 2019 12:12:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Mar 2019 12:12:40 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e5c52cb99d0fa4a49d4096f26332d6a761e8fadd6c8e24696a79f8539ad0d4`  
		Last Modified: Tue, 12 Mar 2019 12:13:19 GMT  
		Size: 4.4 MB (4350505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8ba5d08973350e9f0188566d263a170ae41972db13ea163964ad97485f7408`  
		Last Modified: Tue, 12 Mar 2019 12:13:17 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:db951d745acfcfd7783a1260c2c38e8aaa178641f328bb12056497913588ab70
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7171589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ec5f97d91744c9dbe68830bf512fb3934a6a6af1476b3f8efffa90a4734f8c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:48:27 GMT
ENV HAPROXY_VERSION=1.7.11
# Fri, 08 Mar 2019 07:48:28 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Fri, 08 Mar 2019 07:48:29 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 08 Mar 2019 07:49:16 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 07:49:17 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 07:49:18 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 07:49:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 07:49:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10100ceaf0f2e53c787a137d1e740566138cc832aa7aa64384e9ab312a51d7fb`  
		Last Modified: Fri, 08 Mar 2019 07:52:38 GMT  
		Size: 4.5 MB (4483246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d59fa41fa7782482ac8d697f09007d5eefa02c364b29e1438f162b2e0fce8c48`  
		Last Modified: Fri, 08 Mar 2019 07:52:36 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:866d5fbc299727c84391a80ad570c7d4686880621c66dc33548719ef87e03579
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7174796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6185ea59cf984ac82b31232f4b20d6ef000a750261b92f3715e8795293f0ec7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:36:46 GMT
ENV HAPROXY_VERSION=1.7.11
# Fri, 08 Mar 2019 04:36:46 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Fri, 08 Mar 2019 04:36:46 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 08 Mar 2019 04:37:27 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:37:28 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 04:37:28 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 04:37:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:37:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9639430fde85a40fa20bca5d621b94a4f551ec0bd4b5b9de8abcd15d4c5e52a8`  
		Last Modified: Fri, 08 Mar 2019 04:39:27 GMT  
		Size: 4.4 MB (4425038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df18da0614095fc3d1131aaea340447476458cc2b06f00ec55b3113ccb408ff`  
		Last Modified: Fri, 08 Mar 2019 04:39:26 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:3dc61139b70393fb03330466a90fa71e712aa0ce8351704b6fda7d91aeb3f94a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7466760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce9d162c24cb283e53c3e0dd2e1939c429eeed4ae294f95ae17f536f045763d0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:56:44 GMT
ENV HAPROXY_VERSION=1.7.11
# Fri, 08 Mar 2019 03:56:46 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Fri, 08 Mar 2019 03:56:48 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 08 Mar 2019 03:57:10 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:57:13 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 03:57:14 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 03:57:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:57:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556482097a63a982e5b296ccf0a54f33ce3e2c91f39928a230b0b7fda367e85a`  
		Last Modified: Fri, 08 Mar 2019 04:00:10 GMT  
		Size: 4.7 MB (4687720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68c89f29ee9f52a676f7773df412824407afc1df784c3c144189dadf2b8f74b`  
		Last Modified: Fri, 08 Mar 2019 04:00:11 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:041c69976e8d0842040bcb46d7849edf25d460a07bb9a80f28468ace21d9f5ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6970483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4afabe158dbddb340932ff6f6cbd92e0eb1b74578d1881e29b41effeb03cd63f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:14 GMT
ENV HAPROXY_VERSION=1.7.11
# Fri, 08 Mar 2019 03:53:14 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Fri, 08 Mar 2019 03:53:14 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 08 Mar 2019 03:53:41 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:53:42 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 03:53:42 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 03:53:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb8b775412c0132790dc1914dc5c893476da1d53f6ada2016c7699a91fbcb8d`  
		Last Modified: Fri, 08 Mar 2019 03:55:06 GMT  
		Size: 4.4 MB (4428775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6978b9dd79294aef89a6b830301b37f6732c3f517ce32d08e561b62d33eee64`  
		Last Modified: Fri, 08 Mar 2019 03:55:06 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7-alpine`

```console
$ docker pull haproxy@sha256:b197e67062eaf1e7d985f7d8ff5ea7aae1f57ad86157989f3c446c9a02918276
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
$ docker pull haproxy@sha256:103ed1d7d5f660dfbf43a8e1bb15befcafac3d5f6e7cc882758ae595deccfa05
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7273020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cab80d5dce8d6ff77259033d13c4a42fcf02f598f7f9297b5e2b4d6f06ecc29`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:19:15 GMT
ENV HAPROXY_VERSION=1.7.11
# Thu, 07 Mar 2019 23:19:16 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Thu, 07 Mar 2019 23:19:16 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Thu, 07 Mar 2019 23:19:46 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 07 Mar 2019 23:19:46 GMT
STOPSIGNAL SIGUSR1
# Thu, 07 Mar 2019 23:19:46 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Thu, 07 Mar 2019 23:19:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:19:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e9c4bf47380aa024664233c9608be892b88a39198a3d4e5d9fa81f8849fcf4`  
		Last Modified: Thu, 07 Mar 2019 23:22:30 GMT  
		Size: 4.5 MB (4517888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6af17701d3cdef7c099600ac368d1781111f6e8b7ac785d50c390e37af4fcf`  
		Last Modified: Thu, 07 Mar 2019 23:22:29 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:ec59968a94f82e0cd22de4aaf4136860e295f17519f3bc4c5b558dd5117a8e6b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6935031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:882aee6769b65489a6556e3ec58718db4f63d7df57da990f19ff5fc761847a53`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:10:19 GMT
ENV HAPROXY_VERSION=1.7.11
# Fri, 08 Mar 2019 04:10:19 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Fri, 08 Mar 2019 04:10:20 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 08 Mar 2019 04:10:38 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:10:38 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 04:10:39 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 04:10:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:10:40 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff31d47a4f2e1310173b46a996b20a3c373c30200ac94cde593a624a5b09af6`  
		Last Modified: Fri, 08 Mar 2019 04:11:56 GMT  
		Size: 4.4 MB (4393955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889987e806e4528d1079bdc37cc8beaa4fc0de61e3d8ccd931446c49fb94deab`  
		Last Modified: Fri, 08 Mar 2019 04:11:55 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7-alpine` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:1994a867ee82f234c588561392f85b369c88202d259211950594cb7aed40b7f3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6699488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f57d59eea2ec59be0284a32210f30cc4b80417c3bdb1fca7b0e046f8933ef6b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:12:20 GMT
ENV HAPROXY_VERSION=1.7.11
# Tue, 12 Mar 2019 12:12:20 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Tue, 12 Mar 2019 12:12:21 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Tue, 12 Mar 2019 12:12:38 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 12 Mar 2019 12:12:38 GMT
STOPSIGNAL SIGUSR1
# Tue, 12 Mar 2019 12:12:39 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Tue, 12 Mar 2019 12:12:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Mar 2019 12:12:40 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e5c52cb99d0fa4a49d4096f26332d6a761e8fadd6c8e24696a79f8539ad0d4`  
		Last Modified: Tue, 12 Mar 2019 12:13:19 GMT  
		Size: 4.4 MB (4350505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8ba5d08973350e9f0188566d263a170ae41972db13ea163964ad97485f7408`  
		Last Modified: Tue, 12 Mar 2019 12:13:17 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:db951d745acfcfd7783a1260c2c38e8aaa178641f328bb12056497913588ab70
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7171589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ec5f97d91744c9dbe68830bf512fb3934a6a6af1476b3f8efffa90a4734f8c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:48:27 GMT
ENV HAPROXY_VERSION=1.7.11
# Fri, 08 Mar 2019 07:48:28 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Fri, 08 Mar 2019 07:48:29 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 08 Mar 2019 07:49:16 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 07:49:17 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 07:49:18 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 07:49:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 07:49:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10100ceaf0f2e53c787a137d1e740566138cc832aa7aa64384e9ab312a51d7fb`  
		Last Modified: Fri, 08 Mar 2019 07:52:38 GMT  
		Size: 4.5 MB (4483246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d59fa41fa7782482ac8d697f09007d5eefa02c364b29e1438f162b2e0fce8c48`  
		Last Modified: Fri, 08 Mar 2019 07:52:36 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:866d5fbc299727c84391a80ad570c7d4686880621c66dc33548719ef87e03579
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7174796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6185ea59cf984ac82b31232f4b20d6ef000a750261b92f3715e8795293f0ec7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:36:46 GMT
ENV HAPROXY_VERSION=1.7.11
# Fri, 08 Mar 2019 04:36:46 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Fri, 08 Mar 2019 04:36:46 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 08 Mar 2019 04:37:27 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:37:28 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 04:37:28 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 04:37:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:37:28 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9639430fde85a40fa20bca5d621b94a4f551ec0bd4b5b9de8abcd15d4c5e52a8`  
		Last Modified: Fri, 08 Mar 2019 04:39:27 GMT  
		Size: 4.4 MB (4425038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df18da0614095fc3d1131aaea340447476458cc2b06f00ec55b3113ccb408ff`  
		Last Modified: Fri, 08 Mar 2019 04:39:26 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:3dc61139b70393fb03330466a90fa71e712aa0ce8351704b6fda7d91aeb3f94a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7466760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce9d162c24cb283e53c3e0dd2e1939c429eeed4ae294f95ae17f536f045763d0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:56:44 GMT
ENV HAPROXY_VERSION=1.7.11
# Fri, 08 Mar 2019 03:56:46 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Fri, 08 Mar 2019 03:56:48 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 08 Mar 2019 03:57:10 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:57:13 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 03:57:14 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 03:57:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:57:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556482097a63a982e5b296ccf0a54f33ce3e2c91f39928a230b0b7fda367e85a`  
		Last Modified: Fri, 08 Mar 2019 04:00:10 GMT  
		Size: 4.7 MB (4687720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68c89f29ee9f52a676f7773df412824407afc1df784c3c144189dadf2b8f74b`  
		Last Modified: Fri, 08 Mar 2019 04:00:11 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:041c69976e8d0842040bcb46d7849edf25d460a07bb9a80f28468ace21d9f5ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6970483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4afabe158dbddb340932ff6f6cbd92e0eb1b74578d1881e29b41effeb03cd63f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:14 GMT
ENV HAPROXY_VERSION=1.7.11
# Fri, 08 Mar 2019 03:53:14 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Fri, 08 Mar 2019 03:53:14 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Fri, 08 Mar 2019 03:53:41 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:53:42 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 03:53:42 GMT
COPY file:9a05f2c8b43e780abf69d813f7c45613cced5481a65611bf8127c6f222dff4e3 in / 
# Fri, 08 Mar 2019 03:53:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb8b775412c0132790dc1914dc5c893476da1d53f6ada2016c7699a91fbcb8d`  
		Last Modified: Fri, 08 Mar 2019 03:55:06 GMT  
		Size: 4.4 MB (4428775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6978b9dd79294aef89a6b830301b37f6732c3f517ce32d08e561b62d33eee64`  
		Last Modified: Fri, 08 Mar 2019 03:55:06 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8`

```console
$ docker pull haproxy@sha256:4a966196992abb34c3bb456a6f01f6b8cb2c1e947c7fa1d8045ea9cb07e6396a
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
$ docker pull haproxy@sha256:6a314b68eaa3a12f1b4dc3fb59eb6030041f1223c8e0b282e8d18f4a2d60b50c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28103986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3163c3bb9b0d83e77c9e2af4d3da19cb793e6f60ef6c95e7d359149f1fba1a8c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:05:05 GMT
ENV HAPROXY_VERSION=1.8.19
# Wed, 27 Mar 2019 00:05:06 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Wed, 27 Mar 2019 00:05:06 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Wed, 27 Mar 2019 00:06:42 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 00:06:42 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 00:06:42 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 27 Mar 2019 00:06:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:06:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651caca2f3a33d308dd064fbe901aefe0d08a9108182c6ab69f66f22d7ecdecd`  
		Last Modified: Wed, 27 Mar 2019 00:09:46 GMT  
		Size: 5.6 MB (5607558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfc3b2c3eda9b278d7dbee35af934b4c4f3b885c7ebfeea327e330bb508fbe0`  
		Last Modified: Wed, 27 Mar 2019 00:09:45 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:133269c88d33a34acc65130f3bd469c4ac6d95b65543f5035b209b6f1a62e9c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26417654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8ebce82acca20b87e8926c9483823a80467eedbdadf7788bbee2537a713b73d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:47:55 GMT
ENV HAPROXY_VERSION=1.8.19
# Wed, 27 Mar 2019 09:47:55 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Wed, 27 Mar 2019 09:47:55 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Wed, 27 Mar 2019 09:48:38 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 09:48:38 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 09:48:39 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 27 Mar 2019 09:48:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 09:48:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7688cabe13d5b0ca77ac6fe97b9c3dd2c45ec7a1db21106118ae96c51fe8927`  
		Last Modified: Wed, 27 Mar 2019 09:52:04 GMT  
		Size: 5.3 MB (5256610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731fb5022d7ec343d0be9ae1a5d2fc3c1f3a512cecfb4e5efc29850e7af2eb28`  
		Last Modified: Wed, 27 Mar 2019 09:52:01 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:191bb1ee6bbe5479865d5f0f8e163e21a515aa70c6e451cf8f88cc289dd1aa36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24403805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67eb8b6f631e2cd9d08ae46a2e579031f56975e5e6506610fde329a31f1f0570`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:32:19 GMT
ENV HAPROXY_VERSION=1.8.19
# Wed, 27 Mar 2019 12:32:20 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Wed, 27 Mar 2019 12:32:20 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Wed, 27 Mar 2019 12:32:58 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 12:32:59 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 12:33:00 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 27 Mar 2019 12:33:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:33:01 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a4b0fb726fac3859552244427be57184517c534133e57acb6a4d8705ffa0ce`  
		Last Modified: Wed, 27 Mar 2019 12:36:18 GMT  
		Size: 5.1 MB (5120982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd4660a1f94572e1d3f2e781a44a022006079323d442f6f0bdbb24756c1d482`  
		Last Modified: Wed, 27 Mar 2019 12:36:17 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:3df8dd47e735fb1e4175e43cb4d457b656cd35da77aebe3fc510d7512d6849dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25560898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdcea6eaafcdc0a797303389b0368c7d595cad00fc4a41872fb023d042d642fc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 17:24:24 GMT
ENV HAPROXY_VERSION=1.8.19
# Wed, 27 Mar 2019 17:24:24 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Wed, 27 Mar 2019 17:24:25 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Wed, 27 Mar 2019 17:26:16 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 17:26:16 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 17:26:17 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 27 Mar 2019 17:26:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 17:26:19 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5417e9cd73d2569acb0b466021f31077303155cb0bfe1d635109dca5a0d2971a`  
		Last Modified: Wed, 27 Mar 2019 17:36:51 GMT  
		Size: 5.2 MB (5220339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa52cd24ace64c2841f969993f613c665de01aef64bbd2e8a5ba7ea78d41de3`  
		Last Modified: Wed, 27 Mar 2019 17:36:49 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; 386

```console
$ docker pull haproxy@sha256:343d034506623c9a712fe1123aecdf42137c2bafc5213454c921fd93a9d4fbe8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.7 MB (28669588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be30325ad3e30ab978d399650fea4096d6ed3d9db47006abefda08b30bb173ef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:17:05 GMT
ENV HAPROXY_VERSION=1.8.19
# Wed, 27 Mar 2019 13:17:05 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Wed, 27 Mar 2019 13:17:05 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Wed, 27 Mar 2019 13:18:01 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 13:18:02 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 13:18:02 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 27 Mar 2019 13:18:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 13:18:02 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5691ae27915405991afb01e31c1711f09ee76369cff8d834652812c112a5d4`  
		Last Modified: Wed, 27 Mar 2019 13:21:50 GMT  
		Size: 5.5 MB (5543463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d114e20fc56578a1f568f38eea0603fe07f85b4a3583a12f6a4bbca0267a4551`  
		Last Modified: Wed, 27 Mar 2019 13:21:46 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; ppc64le

```console
$ docker pull haproxy@sha256:65030fb6d594f61871875348f7ab54116faf998e715170f400fc7a7bef541b8e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (28021694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9a874abe1c18443a24118a16f0dd3b0c90e9d0c28a36f399615ab49098feca1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:26:59 GMT
ENV HAPROXY_VERSION=1.8.19
# Wed, 27 Mar 2019 09:27:03 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Wed, 27 Mar 2019 09:27:06 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Wed, 27 Mar 2019 09:30:39 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 09:30:42 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 09:30:44 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 27 Mar 2019 09:30:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 09:30:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd553e1b06e802d8d805d04e98949682201ed415c7889277bb0171dab9f909e`  
		Last Modified: Wed, 27 Mar 2019 09:41:25 GMT  
		Size: 5.3 MB (5269929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91669cf8ce6c9fac5009c918648cbfefcd63814951b3c4b67a573aac56b86f24`  
		Last Modified: Wed, 27 Mar 2019 09:41:24 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8` - linux; s390x

```console
$ docker pull haproxy@sha256:8f93f3d65815c83ca373d8fcf5b0c8269d2ff983b07717b7180d45ccae51c77d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27775139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3201f6e4ffbb43b16f08eacaa24c2b030e6ecc451974f3847d05f25e429f5035`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:27:33 GMT
ENV HAPROXY_VERSION=1.8.19
# Wed, 27 Mar 2019 12:27:33 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Wed, 27 Mar 2019 12:27:33 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Wed, 27 Mar 2019 12:28:33 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 12:28:33 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 12:28:34 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 27 Mar 2019 12:28:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:28:34 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c01af17268a0b08bea28f1e8c36c30fdc9699e5601d64b3c55f133f7e2c5e1`  
		Last Modified: Wed, 27 Mar 2019 12:32:42 GMT  
		Size: 5.4 MB (5429477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82a8d3c0b814d06f98ca865b5de2527595c85a74989e1498ff1fec9350ddbbb`  
		Last Modified: Wed, 27 Mar 2019 12:32:40 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8.19`

```console
$ docker pull haproxy@sha256:4a966196992abb34c3bb456a6f01f6b8cb2c1e947c7fa1d8045ea9cb07e6396a
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

### `haproxy:1.8.19` - linux; amd64

```console
$ docker pull haproxy@sha256:6a314b68eaa3a12f1b4dc3fb59eb6030041f1223c8e0b282e8d18f4a2d60b50c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28103986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3163c3bb9b0d83e77c9e2af4d3da19cb793e6f60ef6c95e7d359149f1fba1a8c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:05:05 GMT
ENV HAPROXY_VERSION=1.8.19
# Wed, 27 Mar 2019 00:05:06 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Wed, 27 Mar 2019 00:05:06 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Wed, 27 Mar 2019 00:06:42 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 00:06:42 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 00:06:42 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 27 Mar 2019 00:06:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:06:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651caca2f3a33d308dd064fbe901aefe0d08a9108182c6ab69f66f22d7ecdecd`  
		Last Modified: Wed, 27 Mar 2019 00:09:46 GMT  
		Size: 5.6 MB (5607558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfc3b2c3eda9b278d7dbee35af934b4c4f3b885c7ebfeea327e330bb508fbe0`  
		Last Modified: Wed, 27 Mar 2019 00:09:45 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.19` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:133269c88d33a34acc65130f3bd469c4ac6d95b65543f5035b209b6f1a62e9c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26417654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8ebce82acca20b87e8926c9483823a80467eedbdadf7788bbee2537a713b73d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:47:55 GMT
ENV HAPROXY_VERSION=1.8.19
# Wed, 27 Mar 2019 09:47:55 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Wed, 27 Mar 2019 09:47:55 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Wed, 27 Mar 2019 09:48:38 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 09:48:38 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 09:48:39 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 27 Mar 2019 09:48:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 09:48:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7688cabe13d5b0ca77ac6fe97b9c3dd2c45ec7a1db21106118ae96c51fe8927`  
		Last Modified: Wed, 27 Mar 2019 09:52:04 GMT  
		Size: 5.3 MB (5256610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731fb5022d7ec343d0be9ae1a5d2fc3c1f3a512cecfb4e5efc29850e7af2eb28`  
		Last Modified: Wed, 27 Mar 2019 09:52:01 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.19` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:191bb1ee6bbe5479865d5f0f8e163e21a515aa70c6e451cf8f88cc289dd1aa36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24403805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67eb8b6f631e2cd9d08ae46a2e579031f56975e5e6506610fde329a31f1f0570`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:32:19 GMT
ENV HAPROXY_VERSION=1.8.19
# Wed, 27 Mar 2019 12:32:20 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Wed, 27 Mar 2019 12:32:20 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Wed, 27 Mar 2019 12:32:58 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 12:32:59 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 12:33:00 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 27 Mar 2019 12:33:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:33:01 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a4b0fb726fac3859552244427be57184517c534133e57acb6a4d8705ffa0ce`  
		Last Modified: Wed, 27 Mar 2019 12:36:18 GMT  
		Size: 5.1 MB (5120982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd4660a1f94572e1d3f2e781a44a022006079323d442f6f0bdbb24756c1d482`  
		Last Modified: Wed, 27 Mar 2019 12:36:17 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.19` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:3df8dd47e735fb1e4175e43cb4d457b656cd35da77aebe3fc510d7512d6849dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25560898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdcea6eaafcdc0a797303389b0368c7d595cad00fc4a41872fb023d042d642fc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 17:24:24 GMT
ENV HAPROXY_VERSION=1.8.19
# Wed, 27 Mar 2019 17:24:24 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Wed, 27 Mar 2019 17:24:25 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Wed, 27 Mar 2019 17:26:16 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 17:26:16 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 17:26:17 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 27 Mar 2019 17:26:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 17:26:19 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5417e9cd73d2569acb0b466021f31077303155cb0bfe1d635109dca5a0d2971a`  
		Last Modified: Wed, 27 Mar 2019 17:36:51 GMT  
		Size: 5.2 MB (5220339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa52cd24ace64c2841f969993f613c665de01aef64bbd2e8a5ba7ea78d41de3`  
		Last Modified: Wed, 27 Mar 2019 17:36:49 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.19` - linux; 386

```console
$ docker pull haproxy@sha256:343d034506623c9a712fe1123aecdf42137c2bafc5213454c921fd93a9d4fbe8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.7 MB (28669588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be30325ad3e30ab978d399650fea4096d6ed3d9db47006abefda08b30bb173ef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:17:05 GMT
ENV HAPROXY_VERSION=1.8.19
# Wed, 27 Mar 2019 13:17:05 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Wed, 27 Mar 2019 13:17:05 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Wed, 27 Mar 2019 13:18:01 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 13:18:02 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 13:18:02 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 27 Mar 2019 13:18:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 13:18:02 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5691ae27915405991afb01e31c1711f09ee76369cff8d834652812c112a5d4`  
		Last Modified: Wed, 27 Mar 2019 13:21:50 GMT  
		Size: 5.5 MB (5543463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d114e20fc56578a1f568f38eea0603fe07f85b4a3583a12f6a4bbca0267a4551`  
		Last Modified: Wed, 27 Mar 2019 13:21:46 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.19` - linux; ppc64le

```console
$ docker pull haproxy@sha256:65030fb6d594f61871875348f7ab54116faf998e715170f400fc7a7bef541b8e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (28021694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9a874abe1c18443a24118a16f0dd3b0c90e9d0c28a36f399615ab49098feca1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:26:59 GMT
ENV HAPROXY_VERSION=1.8.19
# Wed, 27 Mar 2019 09:27:03 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Wed, 27 Mar 2019 09:27:06 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Wed, 27 Mar 2019 09:30:39 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 09:30:42 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 09:30:44 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 27 Mar 2019 09:30:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 09:30:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd553e1b06e802d8d805d04e98949682201ed415c7889277bb0171dab9f909e`  
		Last Modified: Wed, 27 Mar 2019 09:41:25 GMT  
		Size: 5.3 MB (5269929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91669cf8ce6c9fac5009c918648cbfefcd63814951b3c4b67a573aac56b86f24`  
		Last Modified: Wed, 27 Mar 2019 09:41:24 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.19` - linux; s390x

```console
$ docker pull haproxy@sha256:8f93f3d65815c83ca373d8fcf5b0c8269d2ff983b07717b7180d45ccae51c77d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27775139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3201f6e4ffbb43b16f08eacaa24c2b030e6ecc451974f3847d05f25e429f5035`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:27:33 GMT
ENV HAPROXY_VERSION=1.8.19
# Wed, 27 Mar 2019 12:27:33 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Wed, 27 Mar 2019 12:27:33 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Wed, 27 Mar 2019 12:28:33 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Mar 2019 12:28:33 GMT
STOPSIGNAL SIGUSR1
# Wed, 27 Mar 2019 12:28:34 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 27 Mar 2019 12:28:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:28:34 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c01af17268a0b08bea28f1e8c36c30fdc9699e5601d64b3c55f133f7e2c5e1`  
		Last Modified: Wed, 27 Mar 2019 12:32:42 GMT  
		Size: 5.4 MB (5429477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82a8d3c0b814d06f98ca865b5de2527595c85a74989e1498ff1fec9350ddbbb`  
		Last Modified: Wed, 27 Mar 2019 12:32:40 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8.19-alpine`

```console
$ docker pull haproxy@sha256:7113d4dab29acbc7c4f5a6990f65631a26b91384977050f704dd4baecb77034c
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

### `haproxy:1.8.19-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:3ddba5b533866de16305b7cfc86cbe433634341dc3f1ba55c99e55da38e6dae2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8271189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf84da34e7150fd4b09ad66e951e38f4c1002938e808ff1c4b7ed738d3063e21`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:18:21 GMT
ENV HAPROXY_VERSION=1.8.19
# Thu, 07 Mar 2019 23:18:21 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Thu, 07 Mar 2019 23:18:21 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Thu, 07 Mar 2019 23:19:03 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 07 Mar 2019 23:19:03 GMT
STOPSIGNAL SIGUSR1
# Thu, 07 Mar 2019 23:19:04 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Thu, 07 Mar 2019 23:19:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:19:04 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7297bd72a0da419ecf817651ee7bc37b77383fc9ffdc972e5d04a3c4df1e53`  
		Last Modified: Thu, 07 Mar 2019 23:22:24 GMT  
		Size: 5.5 MB (5516080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297aafbd98091ded858f00e11b76fb263d1776c738b26dfb671adf8be4518d01`  
		Last Modified: Thu, 07 Mar 2019 23:22:24 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.19-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:a97e9595103452972199a21aace28ec8290a8ee9eaad730812e638481012e3eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7880294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee6f1f2c51ad6220c1948474ce691dd7789927acb04a80c2186b8da288a7abe4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:09:51 GMT
ENV HAPROXY_VERSION=1.8.19
# Fri, 08 Mar 2019 04:09:52 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Fri, 08 Mar 2019 04:09:52 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Fri, 08 Mar 2019 04:10:12 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:10:13 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 04:10:13 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 08 Mar 2019 04:10:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:10:14 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acd7859285352ab37d432101d734b23f6b7706c74918f93505c133bb410830c`  
		Last Modified: Fri, 08 Mar 2019 04:11:50 GMT  
		Size: 5.3 MB (5339241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1680119cd57f60839a41528ba9dc0c9f3ece32c9479e93fa25dbea2f00cf123`  
		Last Modified: Fri, 08 Mar 2019 04:11:49 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.19-alpine` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:8310698c0e42cedb5be49b75f553f3747f84573a6af2e8d6ce42358e497bd58e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7639639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e7eabadc9b4b6a94bbc3101c13f9f144d7d04a0aa5639f102d5bf4098679a26`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:11:48 GMT
ENV HAPROXY_VERSION=1.8.19
# Tue, 12 Mar 2019 12:11:49 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Tue, 12 Mar 2019 12:11:49 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Tue, 12 Mar 2019 12:12:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 12 Mar 2019 12:12:09 GMT
STOPSIGNAL SIGUSR1
# Tue, 12 Mar 2019 12:12:09 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 12 Mar 2019 12:12:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Mar 2019 12:12:10 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2763742f3cb126d74fa184dd65130a7dc0102e510617fad6e80e33a90f5e3f`  
		Last Modified: Tue, 12 Mar 2019 12:13:12 GMT  
		Size: 5.3 MB (5290679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b0f927d06ff26e1ab7f10487cf6613a94d2c5049659ea6acc54eca65cb2ee7`  
		Last Modified: Tue, 12 Mar 2019 12:13:10 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.19-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:caf3adfa84584a550ec76b64013aaae1a6e78beb7ab4ae26cc0c8ee71eede0f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8102149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77cfb4458964d47cacfecb45caceb83b5a3f5eafb37b1429283e79596a6f6df1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:47:22 GMT
ENV HAPROXY_VERSION=1.8.19
# Fri, 08 Mar 2019 07:47:22 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Fri, 08 Mar 2019 07:47:23 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Fri, 08 Mar 2019 07:48:11 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 07:48:12 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 07:48:12 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 08 Mar 2019 07:48:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 07:48:14 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e918eb910323a7bb241434c5f19c5c6fefc6a152e50ba90111933dbe774b9c`  
		Last Modified: Fri, 08 Mar 2019 07:52:28 GMT  
		Size: 5.4 MB (5413830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45a9f4926647a09b3d47b817dddb332d73c19a2a8fcbee8ae8f58ede3d92802`  
		Last Modified: Fri, 08 Mar 2019 07:52:26 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.19-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:50dab9430344759890182f1823e31159092f62de7eaeeab51c483182a1a88c18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8155640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4940d821287ddbf99671265f7b627cf2101fc878dff41eeb7531fe2700acf2f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:35:41 GMT
ENV HAPROXY_VERSION=1.8.19
# Fri, 08 Mar 2019 04:35:41 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Fri, 08 Mar 2019 04:35:41 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Fri, 08 Mar 2019 04:36:39 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:36:39 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 04:36:39 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 08 Mar 2019 04:36:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:36:40 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93826a730f147aea5fc4f016be3a1c61b1d73c81b74eb3eaabd923c16580d854`  
		Last Modified: Fri, 08 Mar 2019 04:39:22 GMT  
		Size: 5.4 MB (5405905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2834d4df54fedcdb714cc8e1ac9cde005e2fba527c2ca9ed0dc24ac1f9bb045f`  
		Last Modified: Fri, 08 Mar 2019 04:39:20 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.19-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:adc9abefd63d0945347f075ebc3c13e2e7234b47b876f55aeb00ab8d7cd776ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8429761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc2f0e0ebec2ec4d2c1be96e78b08b6133b7f901bc781603263dc43548bb693`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:55:53 GMT
ENV HAPROXY_VERSION=1.8.19
# Fri, 08 Mar 2019 03:55:55 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Fri, 08 Mar 2019 03:55:57 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Fri, 08 Mar 2019 03:56:25 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:56:29 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 03:56:30 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 08 Mar 2019 03:56:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:56:35 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de96c5839749236e0d7ad3723a8392256dedaa7448847aa4cc12df7a82d3737`  
		Last Modified: Fri, 08 Mar 2019 03:59:59 GMT  
		Size: 5.7 MB (5650742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb2654e46f0217c06837cfe3958598cbf16fbc3b26576d1c33fa9708d86c869`  
		Last Modified: Fri, 08 Mar 2019 03:59:57 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8.19-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:6dcb49f793bd3ddcb7abc017ce5da55affc1519aa27c3b5498226f901c934990
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7915056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799ebd696d0316fcb89f00349d8fd48391a5108b364f598ed5648e534b6a1ab9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:41 GMT
ENV HAPROXY_VERSION=1.8.19
# Fri, 08 Mar 2019 03:52:42 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Fri, 08 Mar 2019 03:52:42 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Fri, 08 Mar 2019 03:53:06 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:53:06 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 03:53:06 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 08 Mar 2019 03:53:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:07 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee1a337084cd2fd56fe67bbf05c4e0ca1acf1a5ea5a72c404ad09d8bd3291ca`  
		Last Modified: Fri, 08 Mar 2019 03:54:59 GMT  
		Size: 5.4 MB (5373371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06e7b4abcf2e49f9631905111e96068cf4e57c819317f1fd78610e89fde48d4`  
		Last Modified: Fri, 08 Mar 2019 03:54:58 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8-alpine`

```console
$ docker pull haproxy@sha256:7113d4dab29acbc7c4f5a6990f65631a26b91384977050f704dd4baecb77034c
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
$ docker pull haproxy@sha256:3ddba5b533866de16305b7cfc86cbe433634341dc3f1ba55c99e55da38e6dae2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8271189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf84da34e7150fd4b09ad66e951e38f4c1002938e808ff1c4b7ed738d3063e21`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:18:21 GMT
ENV HAPROXY_VERSION=1.8.19
# Thu, 07 Mar 2019 23:18:21 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Thu, 07 Mar 2019 23:18:21 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Thu, 07 Mar 2019 23:19:03 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 07 Mar 2019 23:19:03 GMT
STOPSIGNAL SIGUSR1
# Thu, 07 Mar 2019 23:19:04 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Thu, 07 Mar 2019 23:19:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:19:04 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7297bd72a0da419ecf817651ee7bc37b77383fc9ffdc972e5d04a3c4df1e53`  
		Last Modified: Thu, 07 Mar 2019 23:22:24 GMT  
		Size: 5.5 MB (5516080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297aafbd98091ded858f00e11b76fb263d1776c738b26dfb671adf8be4518d01`  
		Last Modified: Thu, 07 Mar 2019 23:22:24 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:a97e9595103452972199a21aace28ec8290a8ee9eaad730812e638481012e3eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7880294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee6f1f2c51ad6220c1948474ce691dd7789927acb04a80c2186b8da288a7abe4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:09:51 GMT
ENV HAPROXY_VERSION=1.8.19
# Fri, 08 Mar 2019 04:09:52 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Fri, 08 Mar 2019 04:09:52 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Fri, 08 Mar 2019 04:10:12 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:10:13 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 04:10:13 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 08 Mar 2019 04:10:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:10:14 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acd7859285352ab37d432101d734b23f6b7706c74918f93505c133bb410830c`  
		Last Modified: Fri, 08 Mar 2019 04:11:50 GMT  
		Size: 5.3 MB (5339241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1680119cd57f60839a41528ba9dc0c9f3ece32c9479e93fa25dbea2f00cf123`  
		Last Modified: Fri, 08 Mar 2019 04:11:49 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:8310698c0e42cedb5be49b75f553f3747f84573a6af2e8d6ce42358e497bd58e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7639639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e7eabadc9b4b6a94bbc3101c13f9f144d7d04a0aa5639f102d5bf4098679a26`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:11:48 GMT
ENV HAPROXY_VERSION=1.8.19
# Tue, 12 Mar 2019 12:11:49 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Tue, 12 Mar 2019 12:11:49 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Tue, 12 Mar 2019 12:12:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 12 Mar 2019 12:12:09 GMT
STOPSIGNAL SIGUSR1
# Tue, 12 Mar 2019 12:12:09 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Tue, 12 Mar 2019 12:12:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Mar 2019 12:12:10 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2763742f3cb126d74fa184dd65130a7dc0102e510617fad6e80e33a90f5e3f`  
		Last Modified: Tue, 12 Mar 2019 12:13:12 GMT  
		Size: 5.3 MB (5290679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b0f927d06ff26e1ab7f10487cf6613a94d2c5049659ea6acc54eca65cb2ee7`  
		Last Modified: Tue, 12 Mar 2019 12:13:10 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:caf3adfa84584a550ec76b64013aaae1a6e78beb7ab4ae26cc0c8ee71eede0f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8102149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77cfb4458964d47cacfecb45caceb83b5a3f5eafb37b1429283e79596a6f6df1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:47:22 GMT
ENV HAPROXY_VERSION=1.8.19
# Fri, 08 Mar 2019 07:47:22 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Fri, 08 Mar 2019 07:47:23 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Fri, 08 Mar 2019 07:48:11 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 07:48:12 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 07:48:12 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 08 Mar 2019 07:48:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 07:48:14 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e918eb910323a7bb241434c5f19c5c6fefc6a152e50ba90111933dbe774b9c`  
		Last Modified: Fri, 08 Mar 2019 07:52:28 GMT  
		Size: 5.4 MB (5413830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45a9f4926647a09b3d47b817dddb332d73c19a2a8fcbee8ae8f58ede3d92802`  
		Last Modified: Fri, 08 Mar 2019 07:52:26 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:50dab9430344759890182f1823e31159092f62de7eaeeab51c483182a1a88c18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8155640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4940d821287ddbf99671265f7b627cf2101fc878dff41eeb7531fe2700acf2f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:35:41 GMT
ENV HAPROXY_VERSION=1.8.19
# Fri, 08 Mar 2019 04:35:41 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Fri, 08 Mar 2019 04:35:41 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Fri, 08 Mar 2019 04:36:39 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:36:39 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 04:36:39 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 08 Mar 2019 04:36:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:36:40 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93826a730f147aea5fc4f016be3a1c61b1d73c81b74eb3eaabd923c16580d854`  
		Last Modified: Fri, 08 Mar 2019 04:39:22 GMT  
		Size: 5.4 MB (5405905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2834d4df54fedcdb714cc8e1ac9cde005e2fba527c2ca9ed0dc24ac1f9bb045f`  
		Last Modified: Fri, 08 Mar 2019 04:39:20 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:adc9abefd63d0945347f075ebc3c13e2e7234b47b876f55aeb00ab8d7cd776ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8429761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc2f0e0ebec2ec4d2c1be96e78b08b6133b7f901bc781603263dc43548bb693`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:55:53 GMT
ENV HAPROXY_VERSION=1.8.19
# Fri, 08 Mar 2019 03:55:55 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Fri, 08 Mar 2019 03:55:57 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Fri, 08 Mar 2019 03:56:25 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:56:29 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 03:56:30 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 08 Mar 2019 03:56:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:56:35 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de96c5839749236e0d7ad3723a8392256dedaa7448847aa4cc12df7a82d3737`  
		Last Modified: Fri, 08 Mar 2019 03:59:59 GMT  
		Size: 5.7 MB (5650742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb2654e46f0217c06837cfe3958598cbf16fbc3b26576d1c33fa9708d86c869`  
		Last Modified: Fri, 08 Mar 2019 03:59:57 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.8-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:6dcb49f793bd3ddcb7abc017ce5da55affc1519aa27c3b5498226f901c934990
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7915056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799ebd696d0316fcb89f00349d8fd48391a5108b364f598ed5648e534b6a1ab9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:41 GMT
ENV HAPROXY_VERSION=1.8.19
# Fri, 08 Mar 2019 03:52:42 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.19.tar.gz
# Fri, 08 Mar 2019 03:52:42 GMT
ENV HAPROXY_SHA256=64f5fbfd4e09ffeaf26cb6667398ba780704a14e96e60000caa8bf69962ba734
# Fri, 08 Mar 2019 03:53:06 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:53:06 GMT
STOPSIGNAL SIGUSR1
# Fri, 08 Mar 2019 03:53:06 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 08 Mar 2019 03:53:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:07 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee1a337084cd2fd56fe67bbf05c4e0ca1acf1a5ea5a72c404ad09d8bd3291ca`  
		Last Modified: Fri, 08 Mar 2019 03:54:59 GMT  
		Size: 5.4 MB (5373371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06e7b4abcf2e49f9631905111e96068cf4e57c819317f1fd78610e89fde48d4`  
		Last Modified: Fri, 08 Mar 2019 03:54:58 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.9`

```console
$ docker pull haproxy@sha256:4214e032a451759da56cec6f628cea12e7a019910b62b1b9a82fb25249593af5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

### `haproxy:1.9` - linux; amd64

```console
$ docker pull haproxy@sha256:dec9b8a9876cd9832edcf31b8460e60b3fa8af5453c13001c6f50ba0d285355a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29121663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3abd21f393a9b51c06e56e5e5793d69195a356ef7e81786235df634f7131b8a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Fri, 29 Mar 2019 21:25:50 GMT
ENV HAPROXY_VERSION=1.9.6
# Fri, 29 Mar 2019 21:25:50 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Fri, 29 Mar 2019 21:25:50 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Fri, 29 Mar 2019 21:27:20 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 29 Mar 2019 21:27:20 GMT
STOPSIGNAL SIGUSR1
# Fri, 29 Mar 2019 21:27:20 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 29 Mar 2019 21:27:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Mar 2019 21:27:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e5b8e27a13c86c27c894762b96cb26da8a8c9db62711ea1ef76667e98e16c9`  
		Last Modified: Fri, 29 Mar 2019 21:29:29 GMT  
		Size: 6.6 MB (6625235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0759ce4c4858264d1e16e91401913422224ef125b5c2ace9209f32f717d9a77a`  
		Last Modified: Fri, 29 Mar 2019 21:29:28 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:a30e444a75cc28cbc79e8a00f023cfb286b88e73f10db23abce0987ee2a69cf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27410445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99a7a3c3c548dfedaad947607dc05b67b0229baa6e0476203462449524fe37e6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Sat, 30 Mar 2019 08:48:53 GMT
ENV HAPROXY_VERSION=1.9.6
# Sat, 30 Mar 2019 08:48:53 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Sat, 30 Mar 2019 08:48:54 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Sat, 30 Mar 2019 08:49:40 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 30 Mar 2019 08:49:41 GMT
STOPSIGNAL SIGUSR1
# Sat, 30 Mar 2019 08:49:41 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 30 Mar 2019 08:49:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:49:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f20be5b27de68f04e8d6c06f64b478d6154ab7a778b461af9702dd607db42a5`  
		Last Modified: Sat, 30 Mar 2019 08:50:11 GMT  
		Size: 6.2 MB (6249402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e376ab50f18c41a05f0995e768dcb50c26d7c45ec2b82db3b7bd984d5b2439`  
		Last Modified: Sat, 30 Mar 2019 08:50:09 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9` - linux; ppc64le

```console
$ docker pull haproxy@sha256:3b5e64e5039d139a3133b9f0e39285ab89e7ecca155320057f05f3bd405e96c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29015929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d19ecbc8f76680cdfdaeeded64d12e5b4d9f72dd909555476d34855735506006`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Sat, 30 Mar 2019 08:21:42 GMT
ENV HAPROXY_VERSION=1.9.6
# Sat, 30 Mar 2019 08:21:43 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Sat, 30 Mar 2019 08:21:45 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Sat, 30 Mar 2019 08:25:08 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 30 Mar 2019 08:25:11 GMT
STOPSIGNAL SIGUSR1
# Sat, 30 Mar 2019 08:25:12 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 30 Mar 2019 08:25:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:25:17 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fa5db5b9707d79258c2c5f6204f83de48c65c23d56a392133c54252034c22c`  
		Last Modified: Sat, 30 Mar 2019 08:27:00 GMT  
		Size: 6.3 MB (6264164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccd4affcf5659f8b832d198898727110e8a9384807f505872ed021476e934cc`  
		Last Modified: Sat, 30 Mar 2019 08:26:59 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.9.6`

```console
$ docker pull haproxy@sha256:4214e032a451759da56cec6f628cea12e7a019910b62b1b9a82fb25249593af5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

### `haproxy:1.9.6` - linux; amd64

```console
$ docker pull haproxy@sha256:dec9b8a9876cd9832edcf31b8460e60b3fa8af5453c13001c6f50ba0d285355a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29121663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3abd21f393a9b51c06e56e5e5793d69195a356ef7e81786235df634f7131b8a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Fri, 29 Mar 2019 21:25:50 GMT
ENV HAPROXY_VERSION=1.9.6
# Fri, 29 Mar 2019 21:25:50 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Fri, 29 Mar 2019 21:25:50 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Fri, 29 Mar 2019 21:27:20 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 29 Mar 2019 21:27:20 GMT
STOPSIGNAL SIGUSR1
# Fri, 29 Mar 2019 21:27:20 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 29 Mar 2019 21:27:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Mar 2019 21:27:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e5b8e27a13c86c27c894762b96cb26da8a8c9db62711ea1ef76667e98e16c9`  
		Last Modified: Fri, 29 Mar 2019 21:29:29 GMT  
		Size: 6.6 MB (6625235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0759ce4c4858264d1e16e91401913422224ef125b5c2ace9209f32f717d9a77a`  
		Last Modified: Fri, 29 Mar 2019 21:29:28 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9.6` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:a30e444a75cc28cbc79e8a00f023cfb286b88e73f10db23abce0987ee2a69cf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27410445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99a7a3c3c548dfedaad947607dc05b67b0229baa6e0476203462449524fe37e6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Sat, 30 Mar 2019 08:48:53 GMT
ENV HAPROXY_VERSION=1.9.6
# Sat, 30 Mar 2019 08:48:53 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Sat, 30 Mar 2019 08:48:54 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Sat, 30 Mar 2019 08:49:40 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 30 Mar 2019 08:49:41 GMT
STOPSIGNAL SIGUSR1
# Sat, 30 Mar 2019 08:49:41 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 30 Mar 2019 08:49:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:49:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f20be5b27de68f04e8d6c06f64b478d6154ab7a778b461af9702dd607db42a5`  
		Last Modified: Sat, 30 Mar 2019 08:50:11 GMT  
		Size: 6.2 MB (6249402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e376ab50f18c41a05f0995e768dcb50c26d7c45ec2b82db3b7bd984d5b2439`  
		Last Modified: Sat, 30 Mar 2019 08:50:09 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9.6` - linux; ppc64le

```console
$ docker pull haproxy@sha256:3b5e64e5039d139a3133b9f0e39285ab89e7ecca155320057f05f3bd405e96c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29015929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d19ecbc8f76680cdfdaeeded64d12e5b4d9f72dd909555476d34855735506006`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Sat, 30 Mar 2019 08:21:42 GMT
ENV HAPROXY_VERSION=1.9.6
# Sat, 30 Mar 2019 08:21:43 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Sat, 30 Mar 2019 08:21:45 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Sat, 30 Mar 2019 08:25:08 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 30 Mar 2019 08:25:11 GMT
STOPSIGNAL SIGUSR1
# Sat, 30 Mar 2019 08:25:12 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 30 Mar 2019 08:25:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:25:17 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fa5db5b9707d79258c2c5f6204f83de48c65c23d56a392133c54252034c22c`  
		Last Modified: Sat, 30 Mar 2019 08:27:00 GMT  
		Size: 6.3 MB (6264164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccd4affcf5659f8b832d198898727110e8a9384807f505872ed021476e934cc`  
		Last Modified: Sat, 30 Mar 2019 08:26:59 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.9.6-alpine`

```console
$ docker pull haproxy@sha256:e8b5b98f3d5f67d0bddb3d3c27ef564434055fe4c68ff449b4b82ca96acabb1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `haproxy:1.9.6-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:13769387694bd29e200c6733b90e4767ab456d07ff56780de161000dc23ce052
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11400059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3fe45cf6c0a702be1b951efc7045b22fc0a37b5b4429d6bd4b385cdbf1da2a9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 29 Mar 2019 21:27:33 GMT
ENV HAPROXY_VERSION=1.9.6
# Fri, 29 Mar 2019 21:27:33 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Fri, 29 Mar 2019 21:27:33 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Fri, 29 Mar 2019 21:28:56 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 29 Mar 2019 21:28:57 GMT
STOPSIGNAL SIGUSR1
# Fri, 29 Mar 2019 21:28:57 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 29 Mar 2019 21:28:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Mar 2019 21:28:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b97ba8534796fc2df4da560e6ad7060476ddbc14f9fcc0ad32b643403c486239`  
		Last Modified: Fri, 29 Mar 2019 21:29:35 GMT  
		Size: 8.6 MB (8644950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83033135b5e4277d3fa7aa103ff6e000d30609494068481e0156b03bc3204c0b`  
		Last Modified: Fri, 29 Mar 2019 21:29:33 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9.6-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:7213bc3bfea6957635dca451d42ca538bddb74f47d5ca1f066a89a98b5f8dd9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10682933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41fc81193a464f17c2720ea5bd4f3a492fa8d97f66073158ee35eb21728ce65b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Sat, 30 Mar 2019 07:49:23 GMT
ENV HAPROXY_VERSION=1.9.6
# Sat, 30 Mar 2019 07:49:24 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Sat, 30 Mar 2019 07:49:24 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Sat, 30 Mar 2019 07:49:42 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 30 Mar 2019 07:49:43 GMT
STOPSIGNAL SIGUSR1
# Sat, 30 Mar 2019 07:49:43 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 30 Mar 2019 07:49:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:44 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0d6b385f4f59e64c90f953d23181aec55a5c6bd653887ece5f2d664e11f4e0`  
		Last Modified: Sat, 30 Mar 2019 07:50:14 GMT  
		Size: 8.1 MB (8141880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16aa2e6f512d87e373d3f280c3db6e5f7ae5982f9ac2ae4aa258f1083aa7b8f`  
		Last Modified: Sat, 30 Mar 2019 07:50:12 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9.6-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:97f1b9c7156b19103bd65924b651548909319b8d264c01280bb441fdca48c979
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11486902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98733909100689b48e5ce5f0e582649996cd4a1a7839f5347ab9dad5a195c0a9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Sat, 30 Mar 2019 08:25:37 GMT
ENV HAPROXY_VERSION=1.9.6
# Sat, 30 Mar 2019 08:25:38 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Sat, 30 Mar 2019 08:25:39 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Sat, 30 Mar 2019 08:26:13 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 30 Mar 2019 08:26:14 GMT
STOPSIGNAL SIGUSR1
# Sat, 30 Mar 2019 08:26:15 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 30 Mar 2019 08:26:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:26:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c356883271620834d71ae4481d54256c761244c1b6a448c2add77bee0de0721`  
		Last Modified: Sat, 30 Mar 2019 08:27:16 GMT  
		Size: 8.7 MB (8707882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6914f569803b0e5789557d5fef883363c9501b80b27e42adadad719d1ad42c18`  
		Last Modified: Sat, 30 Mar 2019 08:27:13 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.9-alpine`

```console
$ docker pull haproxy@sha256:e8b5b98f3d5f67d0bddb3d3c27ef564434055fe4c68ff449b4b82ca96acabb1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `haproxy:1.9-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:13769387694bd29e200c6733b90e4767ab456d07ff56780de161000dc23ce052
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11400059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3fe45cf6c0a702be1b951efc7045b22fc0a37b5b4429d6bd4b385cdbf1da2a9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 29 Mar 2019 21:27:33 GMT
ENV HAPROXY_VERSION=1.9.6
# Fri, 29 Mar 2019 21:27:33 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Fri, 29 Mar 2019 21:27:33 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Fri, 29 Mar 2019 21:28:56 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 29 Mar 2019 21:28:57 GMT
STOPSIGNAL SIGUSR1
# Fri, 29 Mar 2019 21:28:57 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 29 Mar 2019 21:28:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Mar 2019 21:28:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b97ba8534796fc2df4da560e6ad7060476ddbc14f9fcc0ad32b643403c486239`  
		Last Modified: Fri, 29 Mar 2019 21:29:35 GMT  
		Size: 8.6 MB (8644950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83033135b5e4277d3fa7aa103ff6e000d30609494068481e0156b03bc3204c0b`  
		Last Modified: Fri, 29 Mar 2019 21:29:33 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:7213bc3bfea6957635dca451d42ca538bddb74f47d5ca1f066a89a98b5f8dd9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10682933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41fc81193a464f17c2720ea5bd4f3a492fa8d97f66073158ee35eb21728ce65b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Sat, 30 Mar 2019 07:49:23 GMT
ENV HAPROXY_VERSION=1.9.6
# Sat, 30 Mar 2019 07:49:24 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Sat, 30 Mar 2019 07:49:24 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Sat, 30 Mar 2019 07:49:42 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 30 Mar 2019 07:49:43 GMT
STOPSIGNAL SIGUSR1
# Sat, 30 Mar 2019 07:49:43 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 30 Mar 2019 07:49:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:44 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0d6b385f4f59e64c90f953d23181aec55a5c6bd653887ece5f2d664e11f4e0`  
		Last Modified: Sat, 30 Mar 2019 07:50:14 GMT  
		Size: 8.1 MB (8141880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16aa2e6f512d87e373d3f280c3db6e5f7ae5982f9ac2ae4aa258f1083aa7b8f`  
		Last Modified: Sat, 30 Mar 2019 07:50:12 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.9-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:97f1b9c7156b19103bd65924b651548909319b8d264c01280bb441fdca48c979
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11486902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98733909100689b48e5ce5f0e582649996cd4a1a7839f5347ab9dad5a195c0a9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Sat, 30 Mar 2019 08:25:37 GMT
ENV HAPROXY_VERSION=1.9.6
# Sat, 30 Mar 2019 08:25:38 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Sat, 30 Mar 2019 08:25:39 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Sat, 30 Mar 2019 08:26:13 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 30 Mar 2019 08:26:14 GMT
STOPSIGNAL SIGUSR1
# Sat, 30 Mar 2019 08:26:15 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 30 Mar 2019 08:26:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:26:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c356883271620834d71ae4481d54256c761244c1b6a448c2add77bee0de0721`  
		Last Modified: Sat, 30 Mar 2019 08:27:16 GMT  
		Size: 8.7 MB (8707882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6914f569803b0e5789557d5fef883363c9501b80b27e42adadad719d1ad42c18`  
		Last Modified: Sat, 30 Mar 2019 08:27:13 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1-alpine`

```console
$ docker pull haproxy@sha256:e8b5b98f3d5f67d0bddb3d3c27ef564434055fe4c68ff449b4b82ca96acabb1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `haproxy:1-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:13769387694bd29e200c6733b90e4767ab456d07ff56780de161000dc23ce052
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11400059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3fe45cf6c0a702be1b951efc7045b22fc0a37b5b4429d6bd4b385cdbf1da2a9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 29 Mar 2019 21:27:33 GMT
ENV HAPROXY_VERSION=1.9.6
# Fri, 29 Mar 2019 21:27:33 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Fri, 29 Mar 2019 21:27:33 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Fri, 29 Mar 2019 21:28:56 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 29 Mar 2019 21:28:57 GMT
STOPSIGNAL SIGUSR1
# Fri, 29 Mar 2019 21:28:57 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 29 Mar 2019 21:28:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Mar 2019 21:28:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b97ba8534796fc2df4da560e6ad7060476ddbc14f9fcc0ad32b643403c486239`  
		Last Modified: Fri, 29 Mar 2019 21:29:35 GMT  
		Size: 8.6 MB (8644950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83033135b5e4277d3fa7aa103ff6e000d30609494068481e0156b03bc3204c0b`  
		Last Modified: Fri, 29 Mar 2019 21:29:33 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:7213bc3bfea6957635dca451d42ca538bddb74f47d5ca1f066a89a98b5f8dd9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10682933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41fc81193a464f17c2720ea5bd4f3a492fa8d97f66073158ee35eb21728ce65b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Sat, 30 Mar 2019 07:49:23 GMT
ENV HAPROXY_VERSION=1.9.6
# Sat, 30 Mar 2019 07:49:24 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Sat, 30 Mar 2019 07:49:24 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Sat, 30 Mar 2019 07:49:42 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 30 Mar 2019 07:49:43 GMT
STOPSIGNAL SIGUSR1
# Sat, 30 Mar 2019 07:49:43 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 30 Mar 2019 07:49:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:44 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0d6b385f4f59e64c90f953d23181aec55a5c6bd653887ece5f2d664e11f4e0`  
		Last Modified: Sat, 30 Mar 2019 07:50:14 GMT  
		Size: 8.1 MB (8141880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16aa2e6f512d87e373d3f280c3db6e5f7ae5982f9ac2ae4aa258f1083aa7b8f`  
		Last Modified: Sat, 30 Mar 2019 07:50:12 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:97f1b9c7156b19103bd65924b651548909319b8d264c01280bb441fdca48c979
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11486902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98733909100689b48e5ce5f0e582649996cd4a1a7839f5347ab9dad5a195c0a9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Sat, 30 Mar 2019 08:25:37 GMT
ENV HAPROXY_VERSION=1.9.6
# Sat, 30 Mar 2019 08:25:38 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Sat, 30 Mar 2019 08:25:39 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Sat, 30 Mar 2019 08:26:13 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 30 Mar 2019 08:26:14 GMT
STOPSIGNAL SIGUSR1
# Sat, 30 Mar 2019 08:26:15 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 30 Mar 2019 08:26:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:26:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c356883271620834d71ae4481d54256c761244c1b6a448c2add77bee0de0721`  
		Last Modified: Sat, 30 Mar 2019 08:27:16 GMT  
		Size: 8.7 MB (8707882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6914f569803b0e5789557d5fef883363c9501b80b27e42adadad719d1ad42c18`  
		Last Modified: Sat, 30 Mar 2019 08:27:13 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:alpine`

```console
$ docker pull haproxy@sha256:e8b5b98f3d5f67d0bddb3d3c27ef564434055fe4c68ff449b4b82ca96acabb1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `haproxy:alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:13769387694bd29e200c6733b90e4767ab456d07ff56780de161000dc23ce052
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11400059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3fe45cf6c0a702be1b951efc7045b22fc0a37b5b4429d6bd4b385cdbf1da2a9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 29 Mar 2019 21:27:33 GMT
ENV HAPROXY_VERSION=1.9.6
# Fri, 29 Mar 2019 21:27:33 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Fri, 29 Mar 2019 21:27:33 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Fri, 29 Mar 2019 21:28:56 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 29 Mar 2019 21:28:57 GMT
STOPSIGNAL SIGUSR1
# Fri, 29 Mar 2019 21:28:57 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 29 Mar 2019 21:28:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Mar 2019 21:28:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b97ba8534796fc2df4da560e6ad7060476ddbc14f9fcc0ad32b643403c486239`  
		Last Modified: Fri, 29 Mar 2019 21:29:35 GMT  
		Size: 8.6 MB (8644950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83033135b5e4277d3fa7aa103ff6e000d30609494068481e0156b03bc3204c0b`  
		Last Modified: Fri, 29 Mar 2019 21:29:33 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:7213bc3bfea6957635dca451d42ca538bddb74f47d5ca1f066a89a98b5f8dd9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10682933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41fc81193a464f17c2720ea5bd4f3a492fa8d97f66073158ee35eb21728ce65b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Sat, 30 Mar 2019 07:49:23 GMT
ENV HAPROXY_VERSION=1.9.6
# Sat, 30 Mar 2019 07:49:24 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Sat, 30 Mar 2019 07:49:24 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Sat, 30 Mar 2019 07:49:42 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 30 Mar 2019 07:49:43 GMT
STOPSIGNAL SIGUSR1
# Sat, 30 Mar 2019 07:49:43 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 30 Mar 2019 07:49:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:44 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0d6b385f4f59e64c90f953d23181aec55a5c6bd653887ece5f2d664e11f4e0`  
		Last Modified: Sat, 30 Mar 2019 07:50:14 GMT  
		Size: 8.1 MB (8141880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16aa2e6f512d87e373d3f280c3db6e5f7ae5982f9ac2ae4aa258f1083aa7b8f`  
		Last Modified: Sat, 30 Mar 2019 07:50:12 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:97f1b9c7156b19103bd65924b651548909319b8d264c01280bb441fdca48c979
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11486902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98733909100689b48e5ce5f0e582649996cd4a1a7839f5347ab9dad5a195c0a9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Sat, 30 Mar 2019 08:25:37 GMT
ENV HAPROXY_VERSION=1.9.6
# Sat, 30 Mar 2019 08:25:38 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Sat, 30 Mar 2019 08:25:39 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Sat, 30 Mar 2019 08:26:13 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 30 Mar 2019 08:26:14 GMT
STOPSIGNAL SIGUSR1
# Sat, 30 Mar 2019 08:26:15 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 30 Mar 2019 08:26:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:26:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c356883271620834d71ae4481d54256c761244c1b6a448c2add77bee0de0721`  
		Last Modified: Sat, 30 Mar 2019 08:27:16 GMT  
		Size: 8.7 MB (8707882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6914f569803b0e5789557d5fef883363c9501b80b27e42adadad719d1ad42c18`  
		Last Modified: Sat, 30 Mar 2019 08:27:13 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:latest`

```console
$ docker pull haproxy@sha256:4214e032a451759da56cec6f628cea12e7a019910b62b1b9a82fb25249593af5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

### `haproxy:latest` - linux; amd64

```console
$ docker pull haproxy@sha256:dec9b8a9876cd9832edcf31b8460e60b3fa8af5453c13001c6f50ba0d285355a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29121663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3abd21f393a9b51c06e56e5e5793d69195a356ef7e81786235df634f7131b8a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Fri, 29 Mar 2019 21:25:50 GMT
ENV HAPROXY_VERSION=1.9.6
# Fri, 29 Mar 2019 21:25:50 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Fri, 29 Mar 2019 21:25:50 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Fri, 29 Mar 2019 21:27:20 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 29 Mar 2019 21:27:20 GMT
STOPSIGNAL SIGUSR1
# Fri, 29 Mar 2019 21:27:20 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Fri, 29 Mar 2019 21:27:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Mar 2019 21:27:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e5b8e27a13c86c27c894762b96cb26da8a8c9db62711ea1ef76667e98e16c9`  
		Last Modified: Fri, 29 Mar 2019 21:29:29 GMT  
		Size: 6.6 MB (6625235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0759ce4c4858264d1e16e91401913422224ef125b5c2ace9209f32f717d9a77a`  
		Last Modified: Fri, 29 Mar 2019 21:29:28 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:a30e444a75cc28cbc79e8a00f023cfb286b88e73f10db23abce0987ee2a69cf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27410445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99a7a3c3c548dfedaad947607dc05b67b0229baa6e0476203462449524fe37e6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Sat, 30 Mar 2019 08:48:53 GMT
ENV HAPROXY_VERSION=1.9.6
# Sat, 30 Mar 2019 08:48:53 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Sat, 30 Mar 2019 08:48:54 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Sat, 30 Mar 2019 08:49:40 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 30 Mar 2019 08:49:41 GMT
STOPSIGNAL SIGUSR1
# Sat, 30 Mar 2019 08:49:41 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 30 Mar 2019 08:49:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:49:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f20be5b27de68f04e8d6c06f64b478d6154ab7a778b461af9702dd607db42a5`  
		Last Modified: Sat, 30 Mar 2019 08:50:11 GMT  
		Size: 6.2 MB (6249402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e376ab50f18c41a05f0995e768dcb50c26d7c45ec2b82db3b7bd984d5b2439`  
		Last Modified: Sat, 30 Mar 2019 08:50:09 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; ppc64le

```console
$ docker pull haproxy@sha256:3b5e64e5039d139a3133b9f0e39285ab89e7ecca155320057f05f3bd405e96c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29015929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d19ecbc8f76680cdfdaeeded64d12e5b4d9f72dd909555476d34855735506006`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Sat, 30 Mar 2019 08:21:42 GMT
ENV HAPROXY_VERSION=1.9.6
# Sat, 30 Mar 2019 08:21:43 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.6.tar.gz
# Sat, 30 Mar 2019 08:21:45 GMT
ENV HAPROXY_SHA256=0837c35e2914d40f685740487886e86b1b16132b81ecb60a3be66cf9a6f19bef
# Sat, 30 Mar 2019 08:25:08 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 30 Mar 2019 08:25:11 GMT
STOPSIGNAL SIGUSR1
# Sat, 30 Mar 2019 08:25:12 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 30 Mar 2019 08:25:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:25:17 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fa5db5b9707d79258c2c5f6204f83de48c65c23d56a392133c54252034c22c`  
		Last Modified: Sat, 30 Mar 2019 08:27:00 GMT  
		Size: 6.3 MB (6264164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccd4affcf5659f8b832d198898727110e8a9384807f505872ed021476e934cc`  
		Last Modified: Sat, 30 Mar 2019 08:26:59 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
