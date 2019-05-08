<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1`](#memcached1)
-	[`memcached:1.5`](#memcached15)
-	[`memcached:1.5.14`](#memcached1514)
-	[`memcached:1.5.14-alpine`](#memcached1514-alpine)
-	[`memcached:1.5-alpine`](#memcached15-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)
-	[`memcached:latest`](#memcachedlatest)

## `memcached:1`

```console
$ docker pull memcached@sha256:98a7f3b75932d98915e861278975f4fc0a28ae7ab3576c50148ded26a8cc06a5
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

### `memcached:1` - linux; amd64

```console
$ docker pull memcached@sha256:9a7e6a3c23de5814dd60a033bdf22bad5f4f016103e12c8c7ef765f9ad3f51a9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23544506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33546802fc245149b0a777b0a73be0be9936a9a4b70155551b592c3a696483d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:13:03 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 08 May 2019 02:13:04 GMT
ENV MEMCACHED_VERSION=1.5.14
# Wed, 08 May 2019 02:13:04 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 08 May 2019 02:18:45 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 May 2019 02:18:45 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 08 May 2019 02:18:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 02:18:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 02:18:46 GMT
USER memcache
# Wed, 08 May 2019 02:18:46 GMT
EXPOSE 11211
# Wed, 08 May 2019 02:18:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d426054b20f1adcf09d20ba2857b17cab3bc04d15bbc22f067e7f2856b0582f`  
		Last Modified: Wed, 08 May 2019 02:19:11 GMT  
		Size: 5.0 KB (4987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df6e79f2c3c683409ec1b43b388249a2641c831807d30f2de6fc56466f836d8`  
		Last Modified: Wed, 08 May 2019 02:19:11 GMT  
		Size: 1.0 MB (1049753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e50d4a961fd529a58b816fd188757d3393fdb5cc0fe97dc96f8f383bc2f634`  
		Last Modified: Wed, 08 May 2019 02:19:11 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3469ff204be855ce56c9c9603ee1a839a5e1e2b7a07663f516cdaf5c796d26`  
		Last Modified: Wed, 08 May 2019 02:19:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:20b473de4bf1e27a9336db9fb414c64016ced030494fcb9ab10bd9a485b1effa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22195926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8cac7329eacb38043c96c11bce07a987d2d0ded4e1340eb66838dc607ceffaf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:16:57 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 30 Apr 2019 08:48:44 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:48:46 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 01 May 2019 09:05:57 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 01 May 2019 09:05:59 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 01 May 2019 09:06:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 01 May 2019 09:06:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 May 2019 09:06:13 GMT
USER memcache
# Wed, 01 May 2019 09:06:14 GMT
EXPOSE 11211
# Wed, 01 May 2019 09:06:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d549001cb3e9e2c708f63e2e900b0ee699955ddf3396c15e6d25e0a465576b`  
		Last Modified: Wed, 27 Mar 2019 10:13:25 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484d26110243b9763349ed8778597521f0b11e89eb44358b2d30b3586d0f6895`  
		Last Modified: Wed, 01 May 2019 09:06:31 GMT  
		Size: 1.0 MB (1029947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62113e9a42744a86a761fe250d08b2628cda02055ad84d7a7c8bb90ab9ff9b47`  
		Last Modified: Wed, 01 May 2019 09:06:30 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f42604621e3109268a7aa069e34a52c39d34b2f51b1c6bbd0ad33cc4a0fb945`  
		Last Modified: Wed, 01 May 2019 09:06:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:11c10abbb3030b09775dec49867e4f148ae378c1c24ac91d944bf6960d24c39d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20285387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad61631f947ee4eb84523ee4b599d82cf975afa4f41e2a7cf1cb8fb70dce2b9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 10 Apr 2019 12:14:01 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 30 Apr 2019 11:57:36 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 11:57:37 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 01 May 2019 12:48:17 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 01 May 2019 12:48:20 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 01 May 2019 12:48:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 01 May 2019 12:48:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 May 2019 12:48:34 GMT
USER memcache
# Wed, 01 May 2019 12:48:36 GMT
EXPOSE 11211
# Wed, 01 May 2019 12:48:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f15fa1a3dee3fdb28b0ae2d1b2274d32563afb1e76d6c79fefa94841fdb1c3`  
		Last Modified: Wed, 01 May 2019 13:21:26 GMT  
		Size: 4.9 KB (4904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904a83684682bff5ab616a07204f1af1aa5b5149ef2d98460814cbf344fe62d7`  
		Last Modified: Wed, 01 May 2019 13:21:28 GMT  
		Size: 997.6 KB (997621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8539acf8fd7be8cacab4a44238e0c4e0b12bcdd3fda7cc059f45d2c9783c5d25`  
		Last Modified: Wed, 01 May 2019 13:21:26 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2225294531f6c3fca62650f6222ddb4cdcc46e397c31ace04702c7b40e412932`  
		Last Modified: Wed, 01 May 2019 13:21:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:f8fb8ffd9710772de3e6df403f5b8fa8da521ca17d4f465e4d0561e7a515eb62
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21347501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75eff7c5fb0380f47df9ec00ea788916fef2590eb33e946d9c3d436ce4a2eb64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:21:24 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 08 May 2019 16:21:24 GMT
ENV MEMCACHED_VERSION=1.5.14
# Wed, 08 May 2019 16:21:26 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 08 May 2019 16:30:53 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 May 2019 16:30:53 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 08 May 2019 16:30:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 16:30:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 16:30:57 GMT
USER memcache
# Wed, 08 May 2019 16:30:57 GMT
EXPOSE 11211
# Wed, 08 May 2019 16:30:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0a91dd2af5fb33783250d433c3a5e9262eda6e802d68e06cd83f8e49ae4777`  
		Last Modified: Wed, 08 May 2019 16:31:24 GMT  
		Size: 5.0 KB (5025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb960f477fccdfc82913e7a7082d9c67915742ffba4ebc87a9a0b7b59e405946`  
		Last Modified: Wed, 08 May 2019 16:31:25 GMT  
		Size: 1.0 MB (1008246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95c8d82bd9f68ad73c4b7a2b28766bd5dd0a68c212798dc9cbb6e60ced0676a`  
		Last Modified: Wed, 08 May 2019 16:31:24 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a4e91ab518f4816ce94f7aeb9504f20c6a835dcc9957d4357c7d14f20d3496`  
		Last Modified: Wed, 08 May 2019 16:31:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:c8787da60496ed68a35e0b03df0a657e706c9c29c82f0c0f39f2359316efeb46
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24187495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c571d5f712d50d1ff3908782627df147d8a54a99439a702c443933cd8cbca1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 16:16:04 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 30 Apr 2019 10:46:10 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 10:46:10 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 10:51:56 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 30 Apr 2019 10:51:56 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 10:51:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 10:51:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 10:51:57 GMT
USER memcache
# Tue, 30 Apr 2019 10:51:57 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 10:51:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a5a92f9531dbd67d92cdbc568757a9a9ee34ab0497d891cc4bcba083cdfef5`  
		Last Modified: Wed, 27 Mar 2019 16:22:42 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15781090152ca1a688301ab6b35e0813fc3ac77bba043e437c99141f381bf756`  
		Last Modified: Tue, 30 Apr 2019 10:58:18 GMT  
		Size: 1.1 MB (1056431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f852eee5008e1da1fe95576e2f6abc6ab14bf6a51fa8809173c8be2558171e`  
		Last Modified: Tue, 30 Apr 2019 10:58:17 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6aa43086391cd800401a249eb524d425ea33eecab8f8e834f6fd756a5d737e`  
		Last Modified: Tue, 30 Apr 2019 10:58:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:4f553dba91fbf4fb054a3be802c65de3e8957b080d32147b921148466faee5f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23792926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b8cf54001612751eb9fca24a463bc507e202a49d8255237c2f13446c4d2e06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:24:16 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 08 May 2019 13:24:20 GMT
ENV MEMCACHED_VERSION=1.5.14
# Wed, 08 May 2019 13:24:23 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 08 May 2019 13:34:28 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 May 2019 13:34:31 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 08 May 2019 13:34:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 13:34:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 13:34:46 GMT
USER memcache
# Wed, 08 May 2019 13:34:50 GMT
EXPOSE 11211
# Wed, 08 May 2019 13:34:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c0066a1642e901f72fe616b91b6f062e97b4301b73972ad62fcc0cf66c9668`  
		Last Modified: Wed, 08 May 2019 13:36:24 GMT  
		Size: 5.0 KB (4987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bca94c9068931f5c219f02f6813ee4d0a78a3f8cf1b3736f2a3241da3f1ba34`  
		Last Modified: Wed, 08 May 2019 13:36:24 GMT  
		Size: 1.0 MB (1042609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6229f2679a5f9d0fe63faa8824763968b873e056ca95a39b1b22bc610e6c7a8`  
		Last Modified: Wed, 08 May 2019 13:36:24 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54dd5a50f79b58cb81db36e1384b236d68a6888f691fc49f531b468dafdce9b`  
		Last Modified: Wed, 08 May 2019 13:36:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:57b40b192881974b2b7fcddde719e42267059ab8fadbb46e73cac3c0d08858d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23349582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4172b6d8e24ca019b61b2da250eae84da45dab261df62d2a11432fa635126b34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:04:14 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 08 May 2019 14:04:15 GMT
ENV MEMCACHED_VERSION=1.5.14
# Wed, 08 May 2019 14:04:16 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 08 May 2019 14:09:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 May 2019 14:09:56 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 08 May 2019 14:09:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 14:09:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:10:00 GMT
USER memcache
# Wed, 08 May 2019 14:10:01 GMT
EXPOSE 11211
# Wed, 08 May 2019 14:10:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36798865fbca3ec6db67583993c06bf7c9eef385c3ab2b85b0b9f52d898f2427`  
		Last Modified: Wed, 08 May 2019 14:10:37 GMT  
		Size: 5.0 KB (5027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eddd47014e4e1fc9a7b52480a22db420751bec8ad50e09ff95d2d8b6664d12a`  
		Last Modified: Wed, 08 May 2019 14:10:37 GMT  
		Size: 1.0 MB (1005269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeed36c89bfdd05539e04605f35714608bb2446cb096e7ad5e76504ea9592a`  
		Last Modified: Wed, 08 May 2019 14:10:37 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9c346f846fbd3179110e9ef255b262d7e063ff5d59cde74befb43505e1f615`  
		Last Modified: Wed, 08 May 2019 14:10:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:98a7f3b75932d98915e861278975f4fc0a28ae7ab3576c50148ded26a8cc06a5
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

### `memcached:1.5` - linux; amd64

```console
$ docker pull memcached@sha256:9a7e6a3c23de5814dd60a033bdf22bad5f4f016103e12c8c7ef765f9ad3f51a9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23544506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33546802fc245149b0a777b0a73be0be9936a9a4b70155551b592c3a696483d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:13:03 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 08 May 2019 02:13:04 GMT
ENV MEMCACHED_VERSION=1.5.14
# Wed, 08 May 2019 02:13:04 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 08 May 2019 02:18:45 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 May 2019 02:18:45 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 08 May 2019 02:18:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 02:18:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 02:18:46 GMT
USER memcache
# Wed, 08 May 2019 02:18:46 GMT
EXPOSE 11211
# Wed, 08 May 2019 02:18:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d426054b20f1adcf09d20ba2857b17cab3bc04d15bbc22f067e7f2856b0582f`  
		Last Modified: Wed, 08 May 2019 02:19:11 GMT  
		Size: 5.0 KB (4987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df6e79f2c3c683409ec1b43b388249a2641c831807d30f2de6fc56466f836d8`  
		Last Modified: Wed, 08 May 2019 02:19:11 GMT  
		Size: 1.0 MB (1049753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e50d4a961fd529a58b816fd188757d3393fdb5cc0fe97dc96f8f383bc2f634`  
		Last Modified: Wed, 08 May 2019 02:19:11 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3469ff204be855ce56c9c9603ee1a839a5e1e2b7a07663f516cdaf5c796d26`  
		Last Modified: Wed, 08 May 2019 02:19:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v5

```console
$ docker pull memcached@sha256:20b473de4bf1e27a9336db9fb414c64016ced030494fcb9ab10bd9a485b1effa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22195926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8cac7329eacb38043c96c11bce07a987d2d0ded4e1340eb66838dc607ceffaf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:16:57 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 30 Apr 2019 08:48:44 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:48:46 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 01 May 2019 09:05:57 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 01 May 2019 09:05:59 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 01 May 2019 09:06:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 01 May 2019 09:06:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 May 2019 09:06:13 GMT
USER memcache
# Wed, 01 May 2019 09:06:14 GMT
EXPOSE 11211
# Wed, 01 May 2019 09:06:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d549001cb3e9e2c708f63e2e900b0ee699955ddf3396c15e6d25e0a465576b`  
		Last Modified: Wed, 27 Mar 2019 10:13:25 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484d26110243b9763349ed8778597521f0b11e89eb44358b2d30b3586d0f6895`  
		Last Modified: Wed, 01 May 2019 09:06:31 GMT  
		Size: 1.0 MB (1029947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62113e9a42744a86a761fe250d08b2628cda02055ad84d7a7c8bb90ab9ff9b47`  
		Last Modified: Wed, 01 May 2019 09:06:30 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f42604621e3109268a7aa069e34a52c39d34b2f51b1c6bbd0ad33cc4a0fb945`  
		Last Modified: Wed, 01 May 2019 09:06:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v7

```console
$ docker pull memcached@sha256:11c10abbb3030b09775dec49867e4f148ae378c1c24ac91d944bf6960d24c39d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20285387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad61631f947ee4eb84523ee4b599d82cf975afa4f41e2a7cf1cb8fb70dce2b9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 10 Apr 2019 12:14:01 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 30 Apr 2019 11:57:36 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 11:57:37 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 01 May 2019 12:48:17 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 01 May 2019 12:48:20 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 01 May 2019 12:48:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 01 May 2019 12:48:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 May 2019 12:48:34 GMT
USER memcache
# Wed, 01 May 2019 12:48:36 GMT
EXPOSE 11211
# Wed, 01 May 2019 12:48:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f15fa1a3dee3fdb28b0ae2d1b2274d32563afb1e76d6c79fefa94841fdb1c3`  
		Last Modified: Wed, 01 May 2019 13:21:26 GMT  
		Size: 4.9 KB (4904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904a83684682bff5ab616a07204f1af1aa5b5149ef2d98460814cbf344fe62d7`  
		Last Modified: Wed, 01 May 2019 13:21:28 GMT  
		Size: 997.6 KB (997621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8539acf8fd7be8cacab4a44238e0c4e0b12bcdd3fda7cc059f45d2c9783c5d25`  
		Last Modified: Wed, 01 May 2019 13:21:26 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2225294531f6c3fca62650f6222ddb4cdcc46e397c31ace04702c7b40e412932`  
		Last Modified: Wed, 01 May 2019 13:21:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:f8fb8ffd9710772de3e6df403f5b8fa8da521ca17d4f465e4d0561e7a515eb62
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21347501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75eff7c5fb0380f47df9ec00ea788916fef2590eb33e946d9c3d436ce4a2eb64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:21:24 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 08 May 2019 16:21:24 GMT
ENV MEMCACHED_VERSION=1.5.14
# Wed, 08 May 2019 16:21:26 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 08 May 2019 16:30:53 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 May 2019 16:30:53 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 08 May 2019 16:30:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 16:30:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 16:30:57 GMT
USER memcache
# Wed, 08 May 2019 16:30:57 GMT
EXPOSE 11211
# Wed, 08 May 2019 16:30:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0a91dd2af5fb33783250d433c3a5e9262eda6e802d68e06cd83f8e49ae4777`  
		Last Modified: Wed, 08 May 2019 16:31:24 GMT  
		Size: 5.0 KB (5025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb960f477fccdfc82913e7a7082d9c67915742ffba4ebc87a9a0b7b59e405946`  
		Last Modified: Wed, 08 May 2019 16:31:25 GMT  
		Size: 1.0 MB (1008246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95c8d82bd9f68ad73c4b7a2b28766bd5dd0a68c212798dc9cbb6e60ced0676a`  
		Last Modified: Wed, 08 May 2019 16:31:24 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a4e91ab518f4816ce94f7aeb9504f20c6a835dcc9957d4357c7d14f20d3496`  
		Last Modified: Wed, 08 May 2019 16:31:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; 386

```console
$ docker pull memcached@sha256:c8787da60496ed68a35e0b03df0a657e706c9c29c82f0c0f39f2359316efeb46
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24187495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c571d5f712d50d1ff3908782627df147d8a54a99439a702c443933cd8cbca1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 16:16:04 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 30 Apr 2019 10:46:10 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 10:46:10 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 10:51:56 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 30 Apr 2019 10:51:56 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 10:51:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 10:51:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 10:51:57 GMT
USER memcache
# Tue, 30 Apr 2019 10:51:57 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 10:51:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a5a92f9531dbd67d92cdbc568757a9a9ee34ab0497d891cc4bcba083cdfef5`  
		Last Modified: Wed, 27 Mar 2019 16:22:42 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15781090152ca1a688301ab6b35e0813fc3ac77bba043e437c99141f381bf756`  
		Last Modified: Tue, 30 Apr 2019 10:58:18 GMT  
		Size: 1.1 MB (1056431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f852eee5008e1da1fe95576e2f6abc6ab14bf6a51fa8809173c8be2558171e`  
		Last Modified: Tue, 30 Apr 2019 10:58:17 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6aa43086391cd800401a249eb524d425ea33eecab8f8e834f6fd756a5d737e`  
		Last Modified: Tue, 30 Apr 2019 10:58:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; ppc64le

```console
$ docker pull memcached@sha256:4f553dba91fbf4fb054a3be802c65de3e8957b080d32147b921148466faee5f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23792926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b8cf54001612751eb9fca24a463bc507e202a49d8255237c2f13446c4d2e06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:24:16 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 08 May 2019 13:24:20 GMT
ENV MEMCACHED_VERSION=1.5.14
# Wed, 08 May 2019 13:24:23 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 08 May 2019 13:34:28 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 May 2019 13:34:31 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 08 May 2019 13:34:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 13:34:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 13:34:46 GMT
USER memcache
# Wed, 08 May 2019 13:34:50 GMT
EXPOSE 11211
# Wed, 08 May 2019 13:34:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c0066a1642e901f72fe616b91b6f062e97b4301b73972ad62fcc0cf66c9668`  
		Last Modified: Wed, 08 May 2019 13:36:24 GMT  
		Size: 5.0 KB (4987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bca94c9068931f5c219f02f6813ee4d0a78a3f8cf1b3736f2a3241da3f1ba34`  
		Last Modified: Wed, 08 May 2019 13:36:24 GMT  
		Size: 1.0 MB (1042609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6229f2679a5f9d0fe63faa8824763968b873e056ca95a39b1b22bc610e6c7a8`  
		Last Modified: Wed, 08 May 2019 13:36:24 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54dd5a50f79b58cb81db36e1384b236d68a6888f691fc49f531b468dafdce9b`  
		Last Modified: Wed, 08 May 2019 13:36:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; s390x

```console
$ docker pull memcached@sha256:57b40b192881974b2b7fcddde719e42267059ab8fadbb46e73cac3c0d08858d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23349582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4172b6d8e24ca019b61b2da250eae84da45dab261df62d2a11432fa635126b34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:04:14 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 08 May 2019 14:04:15 GMT
ENV MEMCACHED_VERSION=1.5.14
# Wed, 08 May 2019 14:04:16 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 08 May 2019 14:09:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 May 2019 14:09:56 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 08 May 2019 14:09:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 14:09:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:10:00 GMT
USER memcache
# Wed, 08 May 2019 14:10:01 GMT
EXPOSE 11211
# Wed, 08 May 2019 14:10:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36798865fbca3ec6db67583993c06bf7c9eef385c3ab2b85b0b9f52d898f2427`  
		Last Modified: Wed, 08 May 2019 14:10:37 GMT  
		Size: 5.0 KB (5027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eddd47014e4e1fc9a7b52480a22db420751bec8ad50e09ff95d2d8b6664d12a`  
		Last Modified: Wed, 08 May 2019 14:10:37 GMT  
		Size: 1.0 MB (1005269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeed36c89bfdd05539e04605f35714608bb2446cb096e7ad5e76504ea9592a`  
		Last Modified: Wed, 08 May 2019 14:10:37 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9c346f846fbd3179110e9ef255b262d7e063ff5d59cde74befb43505e1f615`  
		Last Modified: Wed, 08 May 2019 14:10:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.14`

```console
$ docker pull memcached@sha256:98a7f3b75932d98915e861278975f4fc0a28ae7ab3576c50148ded26a8cc06a5
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

### `memcached:1.5.14` - linux; amd64

```console
$ docker pull memcached@sha256:9a7e6a3c23de5814dd60a033bdf22bad5f4f016103e12c8c7ef765f9ad3f51a9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23544506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33546802fc245149b0a777b0a73be0be9936a9a4b70155551b592c3a696483d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:13:03 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 08 May 2019 02:13:04 GMT
ENV MEMCACHED_VERSION=1.5.14
# Wed, 08 May 2019 02:13:04 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 08 May 2019 02:18:45 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 May 2019 02:18:45 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 08 May 2019 02:18:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 02:18:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 02:18:46 GMT
USER memcache
# Wed, 08 May 2019 02:18:46 GMT
EXPOSE 11211
# Wed, 08 May 2019 02:18:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d426054b20f1adcf09d20ba2857b17cab3bc04d15bbc22f067e7f2856b0582f`  
		Last Modified: Wed, 08 May 2019 02:19:11 GMT  
		Size: 5.0 KB (4987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df6e79f2c3c683409ec1b43b388249a2641c831807d30f2de6fc56466f836d8`  
		Last Modified: Wed, 08 May 2019 02:19:11 GMT  
		Size: 1.0 MB (1049753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e50d4a961fd529a58b816fd188757d3393fdb5cc0fe97dc96f8f383bc2f634`  
		Last Modified: Wed, 08 May 2019 02:19:11 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3469ff204be855ce56c9c9603ee1a839a5e1e2b7a07663f516cdaf5c796d26`  
		Last Modified: Wed, 08 May 2019 02:19:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.14` - linux; arm variant v5

```console
$ docker pull memcached@sha256:20b473de4bf1e27a9336db9fb414c64016ced030494fcb9ab10bd9a485b1effa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22195926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8cac7329eacb38043c96c11bce07a987d2d0ded4e1340eb66838dc607ceffaf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:16:57 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 30 Apr 2019 08:48:44 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:48:46 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 01 May 2019 09:05:57 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 01 May 2019 09:05:59 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 01 May 2019 09:06:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 01 May 2019 09:06:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 May 2019 09:06:13 GMT
USER memcache
# Wed, 01 May 2019 09:06:14 GMT
EXPOSE 11211
# Wed, 01 May 2019 09:06:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d549001cb3e9e2c708f63e2e900b0ee699955ddf3396c15e6d25e0a465576b`  
		Last Modified: Wed, 27 Mar 2019 10:13:25 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484d26110243b9763349ed8778597521f0b11e89eb44358b2d30b3586d0f6895`  
		Last Modified: Wed, 01 May 2019 09:06:31 GMT  
		Size: 1.0 MB (1029947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62113e9a42744a86a761fe250d08b2628cda02055ad84d7a7c8bb90ab9ff9b47`  
		Last Modified: Wed, 01 May 2019 09:06:30 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f42604621e3109268a7aa069e34a52c39d34b2f51b1c6bbd0ad33cc4a0fb945`  
		Last Modified: Wed, 01 May 2019 09:06:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.14` - linux; arm variant v7

```console
$ docker pull memcached@sha256:11c10abbb3030b09775dec49867e4f148ae378c1c24ac91d944bf6960d24c39d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20285387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad61631f947ee4eb84523ee4b599d82cf975afa4f41e2a7cf1cb8fb70dce2b9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 10 Apr 2019 12:14:01 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 30 Apr 2019 11:57:36 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 11:57:37 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 01 May 2019 12:48:17 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 01 May 2019 12:48:20 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 01 May 2019 12:48:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 01 May 2019 12:48:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 May 2019 12:48:34 GMT
USER memcache
# Wed, 01 May 2019 12:48:36 GMT
EXPOSE 11211
# Wed, 01 May 2019 12:48:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f15fa1a3dee3fdb28b0ae2d1b2274d32563afb1e76d6c79fefa94841fdb1c3`  
		Last Modified: Wed, 01 May 2019 13:21:26 GMT  
		Size: 4.9 KB (4904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904a83684682bff5ab616a07204f1af1aa5b5149ef2d98460814cbf344fe62d7`  
		Last Modified: Wed, 01 May 2019 13:21:28 GMT  
		Size: 997.6 KB (997621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8539acf8fd7be8cacab4a44238e0c4e0b12bcdd3fda7cc059f45d2c9783c5d25`  
		Last Modified: Wed, 01 May 2019 13:21:26 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2225294531f6c3fca62650f6222ddb4cdcc46e397c31ace04702c7b40e412932`  
		Last Modified: Wed, 01 May 2019 13:21:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.14` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:f8fb8ffd9710772de3e6df403f5b8fa8da521ca17d4f465e4d0561e7a515eb62
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21347501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75eff7c5fb0380f47df9ec00ea788916fef2590eb33e946d9c3d436ce4a2eb64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:21:24 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 08 May 2019 16:21:24 GMT
ENV MEMCACHED_VERSION=1.5.14
# Wed, 08 May 2019 16:21:26 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 08 May 2019 16:30:53 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 May 2019 16:30:53 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 08 May 2019 16:30:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 16:30:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 16:30:57 GMT
USER memcache
# Wed, 08 May 2019 16:30:57 GMT
EXPOSE 11211
# Wed, 08 May 2019 16:30:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0a91dd2af5fb33783250d433c3a5e9262eda6e802d68e06cd83f8e49ae4777`  
		Last Modified: Wed, 08 May 2019 16:31:24 GMT  
		Size: 5.0 KB (5025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb960f477fccdfc82913e7a7082d9c67915742ffba4ebc87a9a0b7b59e405946`  
		Last Modified: Wed, 08 May 2019 16:31:25 GMT  
		Size: 1.0 MB (1008246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95c8d82bd9f68ad73c4b7a2b28766bd5dd0a68c212798dc9cbb6e60ced0676a`  
		Last Modified: Wed, 08 May 2019 16:31:24 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a4e91ab518f4816ce94f7aeb9504f20c6a835dcc9957d4357c7d14f20d3496`  
		Last Modified: Wed, 08 May 2019 16:31:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.14` - linux; 386

```console
$ docker pull memcached@sha256:c8787da60496ed68a35e0b03df0a657e706c9c29c82f0c0f39f2359316efeb46
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24187495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c571d5f712d50d1ff3908782627df147d8a54a99439a702c443933cd8cbca1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 16:16:04 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 30 Apr 2019 10:46:10 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 10:46:10 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 10:51:56 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 30 Apr 2019 10:51:56 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 10:51:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 10:51:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 10:51:57 GMT
USER memcache
# Tue, 30 Apr 2019 10:51:57 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 10:51:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a5a92f9531dbd67d92cdbc568757a9a9ee34ab0497d891cc4bcba083cdfef5`  
		Last Modified: Wed, 27 Mar 2019 16:22:42 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15781090152ca1a688301ab6b35e0813fc3ac77bba043e437c99141f381bf756`  
		Last Modified: Tue, 30 Apr 2019 10:58:18 GMT  
		Size: 1.1 MB (1056431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f852eee5008e1da1fe95576e2f6abc6ab14bf6a51fa8809173c8be2558171e`  
		Last Modified: Tue, 30 Apr 2019 10:58:17 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6aa43086391cd800401a249eb524d425ea33eecab8f8e834f6fd756a5d737e`  
		Last Modified: Tue, 30 Apr 2019 10:58:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.14` - linux; ppc64le

```console
$ docker pull memcached@sha256:4f553dba91fbf4fb054a3be802c65de3e8957b080d32147b921148466faee5f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23792926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b8cf54001612751eb9fca24a463bc507e202a49d8255237c2f13446c4d2e06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:24:16 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 08 May 2019 13:24:20 GMT
ENV MEMCACHED_VERSION=1.5.14
# Wed, 08 May 2019 13:24:23 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 08 May 2019 13:34:28 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 May 2019 13:34:31 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 08 May 2019 13:34:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 13:34:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 13:34:46 GMT
USER memcache
# Wed, 08 May 2019 13:34:50 GMT
EXPOSE 11211
# Wed, 08 May 2019 13:34:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c0066a1642e901f72fe616b91b6f062e97b4301b73972ad62fcc0cf66c9668`  
		Last Modified: Wed, 08 May 2019 13:36:24 GMT  
		Size: 5.0 KB (4987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bca94c9068931f5c219f02f6813ee4d0a78a3f8cf1b3736f2a3241da3f1ba34`  
		Last Modified: Wed, 08 May 2019 13:36:24 GMT  
		Size: 1.0 MB (1042609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6229f2679a5f9d0fe63faa8824763968b873e056ca95a39b1b22bc610e6c7a8`  
		Last Modified: Wed, 08 May 2019 13:36:24 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54dd5a50f79b58cb81db36e1384b236d68a6888f691fc49f531b468dafdce9b`  
		Last Modified: Wed, 08 May 2019 13:36:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.14` - linux; s390x

```console
$ docker pull memcached@sha256:57b40b192881974b2b7fcddde719e42267059ab8fadbb46e73cac3c0d08858d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23349582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4172b6d8e24ca019b61b2da250eae84da45dab261df62d2a11432fa635126b34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:04:14 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 08 May 2019 14:04:15 GMT
ENV MEMCACHED_VERSION=1.5.14
# Wed, 08 May 2019 14:04:16 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 08 May 2019 14:09:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 May 2019 14:09:56 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 08 May 2019 14:09:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 14:09:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:10:00 GMT
USER memcache
# Wed, 08 May 2019 14:10:01 GMT
EXPOSE 11211
# Wed, 08 May 2019 14:10:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36798865fbca3ec6db67583993c06bf7c9eef385c3ab2b85b0b9f52d898f2427`  
		Last Modified: Wed, 08 May 2019 14:10:37 GMT  
		Size: 5.0 KB (5027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eddd47014e4e1fc9a7b52480a22db420751bec8ad50e09ff95d2d8b6664d12a`  
		Last Modified: Wed, 08 May 2019 14:10:37 GMT  
		Size: 1.0 MB (1005269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeed36c89bfdd05539e04605f35714608bb2446cb096e7ad5e76504ea9592a`  
		Last Modified: Wed, 08 May 2019 14:10:37 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9c346f846fbd3179110e9ef255b262d7e063ff5d59cde74befb43505e1f615`  
		Last Modified: Wed, 08 May 2019 14:10:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.14-alpine`

```console
$ docker pull memcached@sha256:54e712744fc6fdeab861251f117ac883df2a4f50d9be436c4024c908b7b35e52
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

### `memcached:1.5.14-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:390f13d8a7320bcb6edd1f08caa7378e04cf029ee3312bb6b84a633cf9e77a60
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5535472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46e69c5985d83b36d1c6869b63a1dac1aea9ad3abf35f21352f4ca10abf4e79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 00:55:43 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Mon, 29 Apr 2019 17:33:55 GMT
ENV MEMCACHED_VERSION=1.5.14
# Mon, 29 Apr 2019 17:33:55 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Mon, 29 Apr 2019 17:39:30 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 29 Apr 2019 17:39:30 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Mon, 29 Apr 2019 17:39:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 29 Apr 2019 17:39:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Apr 2019 17:39:31 GMT
USER memcache
# Mon, 29 Apr 2019 17:39:31 GMT
EXPOSE 11211
# Mon, 29 Apr 2019 17:39:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12051f92ab0523d44d3598ff191584df468ea31f3fe2def0a1c58b2e7d62b02c`  
		Last Modified: Wed, 10 Apr 2019 01:02:24 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae637e0cea9c531ef968ad81dc6ed09aadd7a59ffa7df66ca656527cef0af7`  
		Last Modified: Mon, 29 Apr 2019 17:39:52 GMT  
		Size: 2.8 MB (2776802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6471f3bd9d8a0fe53141581c6be88d8472125701a1a7b4ee0e20ed02216eae2e`  
		Last Modified: Mon, 29 Apr 2019 17:39:51 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22699414d3a444b57a0865e7293c3aa4c81b9b6c9afa02a4290d0c9403856d83`  
		Last Modified: Mon, 29 Apr 2019 17:39:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.14-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:5ea02664d604a14b7620a729cecb398c4b9ac4c35565660109402ccc5a8fd5f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5221211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8abaa74c757022ea2d56523c0977e217563e0de555166f237206929f2f426847`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:09:13 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 07:50:50 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 07:50:50 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 07:56:58 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 07:56:58 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 07:56:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 07:57:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 07:57:00 GMT
USER memcache
# Tue, 30 Apr 2019 07:57:00 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 07:57:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77c2ea711d1b9c8fd752a8e48e450f2e21bb8a9a5acb824e170517b8055be37`  
		Last Modified: Wed, 10 Apr 2019 08:15:36 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9439ac92c1b1a25822057746f44dd8e49d1eb8c975d8463e646e6e581b1a663`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 2.7 MB (2676081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4ba13fb4d649d00cb38e596fcdd2575fb3d0e7c25a82545d517b6d855397b0`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd1062037d39236b15eb130443607b4a0c1278e6c516ba53b394122d3a5753c`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.14-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:0dc0acd5ff3dd13ffae0b34eb2cc8cbd20b4b63278c1c47230523facee061c15
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4918209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3819030dbade438e064f14da470c3062506363b346ddd7c88ea1ed11335d296e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:02:19 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 12:50:01 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 12:50:03 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 01 May 2019 13:20:49 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 01 May 2019 13:20:51 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 01 May 2019 13:21:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 01 May 2019 13:21:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 May 2019 13:21:05 GMT
USER memcache
# Wed, 01 May 2019 13:21:06 GMT
EXPOSE 11211
# Wed, 01 May 2019 13:21:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c3707e742ebd66ff0aa2896f394a00b454addfee5ce4630b61971e4cc2af93`  
		Last Modified: Wed, 10 Apr 2019 13:18:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4555a8ab021ac5005e3f7919016d795c8a97b367229c2dc4ff7fcb6a70a9a3`  
		Last Modified: Wed, 01 May 2019 13:22:16 GMT  
		Size: 2.6 MB (2565761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414b0876ef09595b9ccbbf407eb157a5ee75fb2820ee80aeb51f92b489ab875d`  
		Last Modified: Wed, 01 May 2019 13:22:15 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fa9885e7b16672eb96f7fcd959054074eeb03b79256cda0cf116b6b67aced5`  
		Last Modified: Wed, 01 May 2019 13:22:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.14-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:90510a0531be9dd88e5d068fc9fdfb3170fa98e2a14e3ea00688fbb28cadd81a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5445143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9ba5c7a52c624cb1ea522060805ed22d8be034d22f7fb15633e236682d76da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:06:36 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 08:53:04 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:53:05 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 09:06:00 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 09:06:02 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 09:06:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 09:06:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 09:06:16 GMT
USER memcache
# Tue, 30 Apr 2019 09:06:18 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 09:06:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0103bf96dd91c6a0d24d67deeb9b0c0f9a2a7d062b94d8fec14c5c64b955b9`  
		Last Modified: Wed, 10 Apr 2019 10:13:44 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89595fb4030f2d717e89c344bcd0de97e4f26401ac4a9e7966d571da659bca36`  
		Last Modified: Tue, 30 Apr 2019 09:06:50 GMT  
		Size: 2.8 MB (2754707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c71dbdb6bdbe3ce8c2ed57ae9f710e9304b755e3a1b543086733cb0a23be52b`  
		Last Modified: Tue, 30 Apr 2019 09:06:49 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30c45faef31cfc457559d72599e8805d0394f5b2808518174dbce394d310b55`  
		Last Modified: Tue, 30 Apr 2019 09:06:49 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.14-alpine` - linux; 386

```console
$ docker pull memcached@sha256:974e24e8bf0b9d2e71ee50524c1f82083ba50fdb390233fa0aaceb6212efc3c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b10a01f3f249eb46072418d58a32f7d3c89cae77b713b550d05078df80dbeda`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 11:43:35 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 10:52:11 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 10:52:11 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 10:57:57 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 10:57:57 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 10:57:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 10:57:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 10:57:58 GMT
USER memcache
# Tue, 30 Apr 2019 10:57:58 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 10:57:59 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bb21124da6259041e34e2b51127fa78484ede4159d5332606abc00c82d90d3`  
		Last Modified: Wed, 10 Apr 2019 11:49:41 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e79f2dc3f61d5fc97ec40dd1034d040364c3dc8e2f3d253123c57b1c97728a`  
		Last Modified: Tue, 30 Apr 2019 10:58:23 GMT  
		Size: 2.9 MB (2855108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27515b6c6e85ee66ed6af86669c71aed09e4073d7b20ebd0cb7d74fc8a1651c7`  
		Last Modified: Tue, 30 Apr 2019 10:58:22 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df77d16963ecf91ba77ff5e15d75f25fc0737be1a17711218db41b4f85831a79`  
		Last Modified: Tue, 30 Apr 2019 10:58:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.14-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:b70bc0a1585897e41e1ddf858c244cdb6b195306acca7af03e1d426d4dd5c42d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5600523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630e6e0ff44f673638af1d2667423a90c78b90bc3b7c242763a4dacac26bc5fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:20:21 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 08:40:06 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:40:09 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 08:46:12 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 08:46:14 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 08:46:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 08:46:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 08:46:34 GMT
USER memcache
# Tue, 30 Apr 2019 08:46:37 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 08:46:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9777ddbf25f844454b4a485408a3d64277684e92bc3b172438f537581b8aae`  
		Last Modified: Wed, 10 Apr 2019 09:27:35 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03877311416fd12eaeb73b93bf2db88dfe7ccff75b7b93d7f03b8ec9d58a3d6f`  
		Last Modified: Tue, 30 Apr 2019 08:47:22 GMT  
		Size: 2.8 MB (2817810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a238a947c5276739e35471dc11e0091d28f1cf552fcecef3ecf53f73dab1b1eb`  
		Last Modified: Tue, 30 Apr 2019 08:47:21 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d38ff1a3c7b869a560fc974365bca4b083600faa1887d8cd0b0ef99dffc06ff`  
		Last Modified: Tue, 30 Apr 2019 08:47:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.14-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:237dbe6e5e8e34201f8369cb69487cabdca4bf6f1e2525d9f30068798a9ead98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5205066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:101342853a0456bba06f9a33984c003afb499b8d2a90218162c7d60f27c17c01`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:26:56 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 11:54:34 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 11:54:34 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 11:58:45 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 11:58:45 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 11:58:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 11:58:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 11:58:48 GMT
USER memcache
# Tue, 30 Apr 2019 11:58:49 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 11:58:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1c5656ce4077e7885ee1ac2095c4098eb9aaedddff57fd8ce459a2ff317adc`  
		Last Modified: Wed, 10 Apr 2019 12:32:37 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd6f29d35039ddf81aaa49cc7a4391b1cbbffa6e86bf2e561d3143f1d034ff9`  
		Last Modified: Tue, 30 Apr 2019 11:59:15 GMT  
		Size: 2.7 MB (2660077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a842ab9f0d01365c076bb84ead2b6f33f57c3a035f7f90c5b940105224e0f93`  
		Last Modified: Tue, 30 Apr 2019 11:59:15 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b5bd0ee4c1c49ad412ba7a06ffc75bc51a4c28bdc242aafe82cd44d5dd4412`  
		Last Modified: Tue, 30 Apr 2019 11:59:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:54e712744fc6fdeab861251f117ac883df2a4f50d9be436c4024c908b7b35e52
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

### `memcached:1.5-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:390f13d8a7320bcb6edd1f08caa7378e04cf029ee3312bb6b84a633cf9e77a60
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5535472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46e69c5985d83b36d1c6869b63a1dac1aea9ad3abf35f21352f4ca10abf4e79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 00:55:43 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Mon, 29 Apr 2019 17:33:55 GMT
ENV MEMCACHED_VERSION=1.5.14
# Mon, 29 Apr 2019 17:33:55 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Mon, 29 Apr 2019 17:39:30 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 29 Apr 2019 17:39:30 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Mon, 29 Apr 2019 17:39:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 29 Apr 2019 17:39:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Apr 2019 17:39:31 GMT
USER memcache
# Mon, 29 Apr 2019 17:39:31 GMT
EXPOSE 11211
# Mon, 29 Apr 2019 17:39:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12051f92ab0523d44d3598ff191584df468ea31f3fe2def0a1c58b2e7d62b02c`  
		Last Modified: Wed, 10 Apr 2019 01:02:24 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae637e0cea9c531ef968ad81dc6ed09aadd7a59ffa7df66ca656527cef0af7`  
		Last Modified: Mon, 29 Apr 2019 17:39:52 GMT  
		Size: 2.8 MB (2776802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6471f3bd9d8a0fe53141581c6be88d8472125701a1a7b4ee0e20ed02216eae2e`  
		Last Modified: Mon, 29 Apr 2019 17:39:51 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22699414d3a444b57a0865e7293c3aa4c81b9b6c9afa02a4290d0c9403856d83`  
		Last Modified: Mon, 29 Apr 2019 17:39:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:5ea02664d604a14b7620a729cecb398c4b9ac4c35565660109402ccc5a8fd5f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5221211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8abaa74c757022ea2d56523c0977e217563e0de555166f237206929f2f426847`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:09:13 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 07:50:50 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 07:50:50 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 07:56:58 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 07:56:58 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 07:56:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 07:57:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 07:57:00 GMT
USER memcache
# Tue, 30 Apr 2019 07:57:00 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 07:57:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77c2ea711d1b9c8fd752a8e48e450f2e21bb8a9a5acb824e170517b8055be37`  
		Last Modified: Wed, 10 Apr 2019 08:15:36 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9439ac92c1b1a25822057746f44dd8e49d1eb8c975d8463e646e6e581b1a663`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 2.7 MB (2676081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4ba13fb4d649d00cb38e596fcdd2575fb3d0e7c25a82545d517b6d855397b0`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd1062037d39236b15eb130443607b4a0c1278e6c516ba53b394122d3a5753c`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:0dc0acd5ff3dd13ffae0b34eb2cc8cbd20b4b63278c1c47230523facee061c15
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4918209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3819030dbade438e064f14da470c3062506363b346ddd7c88ea1ed11335d296e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:02:19 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 12:50:01 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 12:50:03 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 01 May 2019 13:20:49 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 01 May 2019 13:20:51 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 01 May 2019 13:21:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 01 May 2019 13:21:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 May 2019 13:21:05 GMT
USER memcache
# Wed, 01 May 2019 13:21:06 GMT
EXPOSE 11211
# Wed, 01 May 2019 13:21:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c3707e742ebd66ff0aa2896f394a00b454addfee5ce4630b61971e4cc2af93`  
		Last Modified: Wed, 10 Apr 2019 13:18:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4555a8ab021ac5005e3f7919016d795c8a97b367229c2dc4ff7fcb6a70a9a3`  
		Last Modified: Wed, 01 May 2019 13:22:16 GMT  
		Size: 2.6 MB (2565761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414b0876ef09595b9ccbbf407eb157a5ee75fb2820ee80aeb51f92b489ab875d`  
		Last Modified: Wed, 01 May 2019 13:22:15 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fa9885e7b16672eb96f7fcd959054074eeb03b79256cda0cf116b6b67aced5`  
		Last Modified: Wed, 01 May 2019 13:22:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:90510a0531be9dd88e5d068fc9fdfb3170fa98e2a14e3ea00688fbb28cadd81a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5445143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9ba5c7a52c624cb1ea522060805ed22d8be034d22f7fb15633e236682d76da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:06:36 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 08:53:04 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:53:05 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 09:06:00 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 09:06:02 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 09:06:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 09:06:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 09:06:16 GMT
USER memcache
# Tue, 30 Apr 2019 09:06:18 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 09:06:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0103bf96dd91c6a0d24d67deeb9b0c0f9a2a7d062b94d8fec14c5c64b955b9`  
		Last Modified: Wed, 10 Apr 2019 10:13:44 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89595fb4030f2d717e89c344bcd0de97e4f26401ac4a9e7966d571da659bca36`  
		Last Modified: Tue, 30 Apr 2019 09:06:50 GMT  
		Size: 2.8 MB (2754707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c71dbdb6bdbe3ce8c2ed57ae9f710e9304b755e3a1b543086733cb0a23be52b`  
		Last Modified: Tue, 30 Apr 2019 09:06:49 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30c45faef31cfc457559d72599e8805d0394f5b2808518174dbce394d310b55`  
		Last Modified: Tue, 30 Apr 2019 09:06:49 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; 386

```console
$ docker pull memcached@sha256:974e24e8bf0b9d2e71ee50524c1f82083ba50fdb390233fa0aaceb6212efc3c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b10a01f3f249eb46072418d58a32f7d3c89cae77b713b550d05078df80dbeda`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 11:43:35 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 10:52:11 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 10:52:11 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 10:57:57 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 10:57:57 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 10:57:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 10:57:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 10:57:58 GMT
USER memcache
# Tue, 30 Apr 2019 10:57:58 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 10:57:59 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bb21124da6259041e34e2b51127fa78484ede4159d5332606abc00c82d90d3`  
		Last Modified: Wed, 10 Apr 2019 11:49:41 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e79f2dc3f61d5fc97ec40dd1034d040364c3dc8e2f3d253123c57b1c97728a`  
		Last Modified: Tue, 30 Apr 2019 10:58:23 GMT  
		Size: 2.9 MB (2855108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27515b6c6e85ee66ed6af86669c71aed09e4073d7b20ebd0cb7d74fc8a1651c7`  
		Last Modified: Tue, 30 Apr 2019 10:58:22 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df77d16963ecf91ba77ff5e15d75f25fc0737be1a17711218db41b4f85831a79`  
		Last Modified: Tue, 30 Apr 2019 10:58:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:b70bc0a1585897e41e1ddf858c244cdb6b195306acca7af03e1d426d4dd5c42d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5600523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630e6e0ff44f673638af1d2667423a90c78b90bc3b7c242763a4dacac26bc5fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:20:21 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 08:40:06 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:40:09 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 08:46:12 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 08:46:14 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 08:46:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 08:46:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 08:46:34 GMT
USER memcache
# Tue, 30 Apr 2019 08:46:37 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 08:46:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9777ddbf25f844454b4a485408a3d64277684e92bc3b172438f537581b8aae`  
		Last Modified: Wed, 10 Apr 2019 09:27:35 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03877311416fd12eaeb73b93bf2db88dfe7ccff75b7b93d7f03b8ec9d58a3d6f`  
		Last Modified: Tue, 30 Apr 2019 08:47:22 GMT  
		Size: 2.8 MB (2817810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a238a947c5276739e35471dc11e0091d28f1cf552fcecef3ecf53f73dab1b1eb`  
		Last Modified: Tue, 30 Apr 2019 08:47:21 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d38ff1a3c7b869a560fc974365bca4b083600faa1887d8cd0b0ef99dffc06ff`  
		Last Modified: Tue, 30 Apr 2019 08:47:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:237dbe6e5e8e34201f8369cb69487cabdca4bf6f1e2525d9f30068798a9ead98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5205066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:101342853a0456bba06f9a33984c003afb499b8d2a90218162c7d60f27c17c01`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:26:56 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 11:54:34 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 11:54:34 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 11:58:45 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 11:58:45 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 11:58:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 11:58:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 11:58:48 GMT
USER memcache
# Tue, 30 Apr 2019 11:58:49 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 11:58:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1c5656ce4077e7885ee1ac2095c4098eb9aaedddff57fd8ce459a2ff317adc`  
		Last Modified: Wed, 10 Apr 2019 12:32:37 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd6f29d35039ddf81aaa49cc7a4391b1cbbffa6e86bf2e561d3143f1d034ff9`  
		Last Modified: Tue, 30 Apr 2019 11:59:15 GMT  
		Size: 2.7 MB (2660077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a842ab9f0d01365c076bb84ead2b6f33f57c3a035f7f90c5b940105224e0f93`  
		Last Modified: Tue, 30 Apr 2019 11:59:15 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b5bd0ee4c1c49ad412ba7a06ffc75bc51a4c28bdc242aafe82cd44d5dd4412`  
		Last Modified: Tue, 30 Apr 2019 11:59:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:54e712744fc6fdeab861251f117ac883df2a4f50d9be436c4024c908b7b35e52
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

### `memcached:1-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:390f13d8a7320bcb6edd1f08caa7378e04cf029ee3312bb6b84a633cf9e77a60
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5535472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46e69c5985d83b36d1c6869b63a1dac1aea9ad3abf35f21352f4ca10abf4e79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 00:55:43 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Mon, 29 Apr 2019 17:33:55 GMT
ENV MEMCACHED_VERSION=1.5.14
# Mon, 29 Apr 2019 17:33:55 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Mon, 29 Apr 2019 17:39:30 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 29 Apr 2019 17:39:30 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Mon, 29 Apr 2019 17:39:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 29 Apr 2019 17:39:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Apr 2019 17:39:31 GMT
USER memcache
# Mon, 29 Apr 2019 17:39:31 GMT
EXPOSE 11211
# Mon, 29 Apr 2019 17:39:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12051f92ab0523d44d3598ff191584df468ea31f3fe2def0a1c58b2e7d62b02c`  
		Last Modified: Wed, 10 Apr 2019 01:02:24 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae637e0cea9c531ef968ad81dc6ed09aadd7a59ffa7df66ca656527cef0af7`  
		Last Modified: Mon, 29 Apr 2019 17:39:52 GMT  
		Size: 2.8 MB (2776802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6471f3bd9d8a0fe53141581c6be88d8472125701a1a7b4ee0e20ed02216eae2e`  
		Last Modified: Mon, 29 Apr 2019 17:39:51 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22699414d3a444b57a0865e7293c3aa4c81b9b6c9afa02a4290d0c9403856d83`  
		Last Modified: Mon, 29 Apr 2019 17:39:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:5ea02664d604a14b7620a729cecb398c4b9ac4c35565660109402ccc5a8fd5f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5221211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8abaa74c757022ea2d56523c0977e217563e0de555166f237206929f2f426847`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:09:13 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 07:50:50 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 07:50:50 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 07:56:58 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 07:56:58 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 07:56:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 07:57:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 07:57:00 GMT
USER memcache
# Tue, 30 Apr 2019 07:57:00 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 07:57:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77c2ea711d1b9c8fd752a8e48e450f2e21bb8a9a5acb824e170517b8055be37`  
		Last Modified: Wed, 10 Apr 2019 08:15:36 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9439ac92c1b1a25822057746f44dd8e49d1eb8c975d8463e646e6e581b1a663`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 2.7 MB (2676081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4ba13fb4d649d00cb38e596fcdd2575fb3d0e7c25a82545d517b6d855397b0`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd1062037d39236b15eb130443607b4a0c1278e6c516ba53b394122d3a5753c`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:0dc0acd5ff3dd13ffae0b34eb2cc8cbd20b4b63278c1c47230523facee061c15
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4918209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3819030dbade438e064f14da470c3062506363b346ddd7c88ea1ed11335d296e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:02:19 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 12:50:01 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 12:50:03 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 01 May 2019 13:20:49 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 01 May 2019 13:20:51 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 01 May 2019 13:21:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 01 May 2019 13:21:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 May 2019 13:21:05 GMT
USER memcache
# Wed, 01 May 2019 13:21:06 GMT
EXPOSE 11211
# Wed, 01 May 2019 13:21:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c3707e742ebd66ff0aa2896f394a00b454addfee5ce4630b61971e4cc2af93`  
		Last Modified: Wed, 10 Apr 2019 13:18:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4555a8ab021ac5005e3f7919016d795c8a97b367229c2dc4ff7fcb6a70a9a3`  
		Last Modified: Wed, 01 May 2019 13:22:16 GMT  
		Size: 2.6 MB (2565761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414b0876ef09595b9ccbbf407eb157a5ee75fb2820ee80aeb51f92b489ab875d`  
		Last Modified: Wed, 01 May 2019 13:22:15 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fa9885e7b16672eb96f7fcd959054074eeb03b79256cda0cf116b6b67aced5`  
		Last Modified: Wed, 01 May 2019 13:22:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:90510a0531be9dd88e5d068fc9fdfb3170fa98e2a14e3ea00688fbb28cadd81a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5445143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9ba5c7a52c624cb1ea522060805ed22d8be034d22f7fb15633e236682d76da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:06:36 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 08:53:04 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:53:05 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 09:06:00 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 09:06:02 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 09:06:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 09:06:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 09:06:16 GMT
USER memcache
# Tue, 30 Apr 2019 09:06:18 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 09:06:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0103bf96dd91c6a0d24d67deeb9b0c0f9a2a7d062b94d8fec14c5c64b955b9`  
		Last Modified: Wed, 10 Apr 2019 10:13:44 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89595fb4030f2d717e89c344bcd0de97e4f26401ac4a9e7966d571da659bca36`  
		Last Modified: Tue, 30 Apr 2019 09:06:50 GMT  
		Size: 2.8 MB (2754707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c71dbdb6bdbe3ce8c2ed57ae9f710e9304b755e3a1b543086733cb0a23be52b`  
		Last Modified: Tue, 30 Apr 2019 09:06:49 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30c45faef31cfc457559d72599e8805d0394f5b2808518174dbce394d310b55`  
		Last Modified: Tue, 30 Apr 2019 09:06:49 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:974e24e8bf0b9d2e71ee50524c1f82083ba50fdb390233fa0aaceb6212efc3c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b10a01f3f249eb46072418d58a32f7d3c89cae77b713b550d05078df80dbeda`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 11:43:35 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 10:52:11 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 10:52:11 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 10:57:57 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 10:57:57 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 10:57:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 10:57:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 10:57:58 GMT
USER memcache
# Tue, 30 Apr 2019 10:57:58 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 10:57:59 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bb21124da6259041e34e2b51127fa78484ede4159d5332606abc00c82d90d3`  
		Last Modified: Wed, 10 Apr 2019 11:49:41 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e79f2dc3f61d5fc97ec40dd1034d040364c3dc8e2f3d253123c57b1c97728a`  
		Last Modified: Tue, 30 Apr 2019 10:58:23 GMT  
		Size: 2.9 MB (2855108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27515b6c6e85ee66ed6af86669c71aed09e4073d7b20ebd0cb7d74fc8a1651c7`  
		Last Modified: Tue, 30 Apr 2019 10:58:22 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df77d16963ecf91ba77ff5e15d75f25fc0737be1a17711218db41b4f85831a79`  
		Last Modified: Tue, 30 Apr 2019 10:58:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:b70bc0a1585897e41e1ddf858c244cdb6b195306acca7af03e1d426d4dd5c42d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5600523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630e6e0ff44f673638af1d2667423a90c78b90bc3b7c242763a4dacac26bc5fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:20:21 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 08:40:06 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:40:09 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 08:46:12 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 08:46:14 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 08:46:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 08:46:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 08:46:34 GMT
USER memcache
# Tue, 30 Apr 2019 08:46:37 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 08:46:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9777ddbf25f844454b4a485408a3d64277684e92bc3b172438f537581b8aae`  
		Last Modified: Wed, 10 Apr 2019 09:27:35 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03877311416fd12eaeb73b93bf2db88dfe7ccff75b7b93d7f03b8ec9d58a3d6f`  
		Last Modified: Tue, 30 Apr 2019 08:47:22 GMT  
		Size: 2.8 MB (2817810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a238a947c5276739e35471dc11e0091d28f1cf552fcecef3ecf53f73dab1b1eb`  
		Last Modified: Tue, 30 Apr 2019 08:47:21 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d38ff1a3c7b869a560fc974365bca4b083600faa1887d8cd0b0ef99dffc06ff`  
		Last Modified: Tue, 30 Apr 2019 08:47:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:237dbe6e5e8e34201f8369cb69487cabdca4bf6f1e2525d9f30068798a9ead98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5205066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:101342853a0456bba06f9a33984c003afb499b8d2a90218162c7d60f27c17c01`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:26:56 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 11:54:34 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 11:54:34 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 11:58:45 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 11:58:45 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 11:58:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 11:58:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 11:58:48 GMT
USER memcache
# Tue, 30 Apr 2019 11:58:49 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 11:58:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1c5656ce4077e7885ee1ac2095c4098eb9aaedddff57fd8ce459a2ff317adc`  
		Last Modified: Wed, 10 Apr 2019 12:32:37 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd6f29d35039ddf81aaa49cc7a4391b1cbbffa6e86bf2e561d3143f1d034ff9`  
		Last Modified: Tue, 30 Apr 2019 11:59:15 GMT  
		Size: 2.7 MB (2660077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a842ab9f0d01365c076bb84ead2b6f33f57c3a035f7f90c5b940105224e0f93`  
		Last Modified: Tue, 30 Apr 2019 11:59:15 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b5bd0ee4c1c49ad412ba7a06ffc75bc51a4c28bdc242aafe82cd44d5dd4412`  
		Last Modified: Tue, 30 Apr 2019 11:59:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:54e712744fc6fdeab861251f117ac883df2a4f50d9be436c4024c908b7b35e52
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

### `memcached:alpine` - linux; amd64

```console
$ docker pull memcached@sha256:390f13d8a7320bcb6edd1f08caa7378e04cf029ee3312bb6b84a633cf9e77a60
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5535472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46e69c5985d83b36d1c6869b63a1dac1aea9ad3abf35f21352f4ca10abf4e79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 00:55:43 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Mon, 29 Apr 2019 17:33:55 GMT
ENV MEMCACHED_VERSION=1.5.14
# Mon, 29 Apr 2019 17:33:55 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Mon, 29 Apr 2019 17:39:30 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 29 Apr 2019 17:39:30 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Mon, 29 Apr 2019 17:39:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 29 Apr 2019 17:39:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Apr 2019 17:39:31 GMT
USER memcache
# Mon, 29 Apr 2019 17:39:31 GMT
EXPOSE 11211
# Mon, 29 Apr 2019 17:39:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12051f92ab0523d44d3598ff191584df468ea31f3fe2def0a1c58b2e7d62b02c`  
		Last Modified: Wed, 10 Apr 2019 01:02:24 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae637e0cea9c531ef968ad81dc6ed09aadd7a59ffa7df66ca656527cef0af7`  
		Last Modified: Mon, 29 Apr 2019 17:39:52 GMT  
		Size: 2.8 MB (2776802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6471f3bd9d8a0fe53141581c6be88d8472125701a1a7b4ee0e20ed02216eae2e`  
		Last Modified: Mon, 29 Apr 2019 17:39:51 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22699414d3a444b57a0865e7293c3aa4c81b9b6c9afa02a4290d0c9403856d83`  
		Last Modified: Mon, 29 Apr 2019 17:39:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:5ea02664d604a14b7620a729cecb398c4b9ac4c35565660109402ccc5a8fd5f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5221211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8abaa74c757022ea2d56523c0977e217563e0de555166f237206929f2f426847`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:09:13 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 07:50:50 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 07:50:50 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 07:56:58 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 07:56:58 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 07:56:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 07:57:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 07:57:00 GMT
USER memcache
# Tue, 30 Apr 2019 07:57:00 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 07:57:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77c2ea711d1b9c8fd752a8e48e450f2e21bb8a9a5acb824e170517b8055be37`  
		Last Modified: Wed, 10 Apr 2019 08:15:36 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9439ac92c1b1a25822057746f44dd8e49d1eb8c975d8463e646e6e581b1a663`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 2.7 MB (2676081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4ba13fb4d649d00cb38e596fcdd2575fb3d0e7c25a82545d517b6d855397b0`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd1062037d39236b15eb130443607b4a0c1278e6c516ba53b394122d3a5753c`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:0dc0acd5ff3dd13ffae0b34eb2cc8cbd20b4b63278c1c47230523facee061c15
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4918209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3819030dbade438e064f14da470c3062506363b346ddd7c88ea1ed11335d296e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:02:19 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 12:50:01 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 12:50:03 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 01 May 2019 13:20:49 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 01 May 2019 13:20:51 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 01 May 2019 13:21:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 01 May 2019 13:21:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 May 2019 13:21:05 GMT
USER memcache
# Wed, 01 May 2019 13:21:06 GMT
EXPOSE 11211
# Wed, 01 May 2019 13:21:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c3707e742ebd66ff0aa2896f394a00b454addfee5ce4630b61971e4cc2af93`  
		Last Modified: Wed, 10 Apr 2019 13:18:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4555a8ab021ac5005e3f7919016d795c8a97b367229c2dc4ff7fcb6a70a9a3`  
		Last Modified: Wed, 01 May 2019 13:22:16 GMT  
		Size: 2.6 MB (2565761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414b0876ef09595b9ccbbf407eb157a5ee75fb2820ee80aeb51f92b489ab875d`  
		Last Modified: Wed, 01 May 2019 13:22:15 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fa9885e7b16672eb96f7fcd959054074eeb03b79256cda0cf116b6b67aced5`  
		Last Modified: Wed, 01 May 2019 13:22:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:90510a0531be9dd88e5d068fc9fdfb3170fa98e2a14e3ea00688fbb28cadd81a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5445143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9ba5c7a52c624cb1ea522060805ed22d8be034d22f7fb15633e236682d76da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:06:36 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 08:53:04 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:53:05 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 09:06:00 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 09:06:02 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 09:06:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 09:06:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 09:06:16 GMT
USER memcache
# Tue, 30 Apr 2019 09:06:18 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 09:06:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0103bf96dd91c6a0d24d67deeb9b0c0f9a2a7d062b94d8fec14c5c64b955b9`  
		Last Modified: Wed, 10 Apr 2019 10:13:44 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89595fb4030f2d717e89c344bcd0de97e4f26401ac4a9e7966d571da659bca36`  
		Last Modified: Tue, 30 Apr 2019 09:06:50 GMT  
		Size: 2.8 MB (2754707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c71dbdb6bdbe3ce8c2ed57ae9f710e9304b755e3a1b543086733cb0a23be52b`  
		Last Modified: Tue, 30 Apr 2019 09:06:49 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30c45faef31cfc457559d72599e8805d0394f5b2808518174dbce394d310b55`  
		Last Modified: Tue, 30 Apr 2019 09:06:49 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; 386

```console
$ docker pull memcached@sha256:974e24e8bf0b9d2e71ee50524c1f82083ba50fdb390233fa0aaceb6212efc3c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b10a01f3f249eb46072418d58a32f7d3c89cae77b713b550d05078df80dbeda`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 11:43:35 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 10:52:11 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 10:52:11 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 10:57:57 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 10:57:57 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 10:57:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 10:57:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 10:57:58 GMT
USER memcache
# Tue, 30 Apr 2019 10:57:58 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 10:57:59 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bb21124da6259041e34e2b51127fa78484ede4159d5332606abc00c82d90d3`  
		Last Modified: Wed, 10 Apr 2019 11:49:41 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e79f2dc3f61d5fc97ec40dd1034d040364c3dc8e2f3d253123c57b1c97728a`  
		Last Modified: Tue, 30 Apr 2019 10:58:23 GMT  
		Size: 2.9 MB (2855108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27515b6c6e85ee66ed6af86669c71aed09e4073d7b20ebd0cb7d74fc8a1651c7`  
		Last Modified: Tue, 30 Apr 2019 10:58:22 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df77d16963ecf91ba77ff5e15d75f25fc0737be1a17711218db41b4f85831a79`  
		Last Modified: Tue, 30 Apr 2019 10:58:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:b70bc0a1585897e41e1ddf858c244cdb6b195306acca7af03e1d426d4dd5c42d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5600523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630e6e0ff44f673638af1d2667423a90c78b90bc3b7c242763a4dacac26bc5fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:20:21 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 08:40:06 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:40:09 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 08:46:12 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 08:46:14 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 08:46:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 08:46:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 08:46:34 GMT
USER memcache
# Tue, 30 Apr 2019 08:46:37 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 08:46:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9777ddbf25f844454b4a485408a3d64277684e92bc3b172438f537581b8aae`  
		Last Modified: Wed, 10 Apr 2019 09:27:35 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03877311416fd12eaeb73b93bf2db88dfe7ccff75b7b93d7f03b8ec9d58a3d6f`  
		Last Modified: Tue, 30 Apr 2019 08:47:22 GMT  
		Size: 2.8 MB (2817810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a238a947c5276739e35471dc11e0091d28f1cf552fcecef3ecf53f73dab1b1eb`  
		Last Modified: Tue, 30 Apr 2019 08:47:21 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d38ff1a3c7b869a560fc974365bca4b083600faa1887d8cd0b0ef99dffc06ff`  
		Last Modified: Tue, 30 Apr 2019 08:47:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; s390x

```console
$ docker pull memcached@sha256:237dbe6e5e8e34201f8369cb69487cabdca4bf6f1e2525d9f30068798a9ead98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5205066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:101342853a0456bba06f9a33984c003afb499b8d2a90218162c7d60f27c17c01`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:26:56 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 11:54:34 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 11:54:34 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 11:58:45 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 11:58:45 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 11:58:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 11:58:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 11:58:48 GMT
USER memcache
# Tue, 30 Apr 2019 11:58:49 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 11:58:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1c5656ce4077e7885ee1ac2095c4098eb9aaedddff57fd8ce459a2ff317adc`  
		Last Modified: Wed, 10 Apr 2019 12:32:37 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd6f29d35039ddf81aaa49cc7a4391b1cbbffa6e86bf2e561d3143f1d034ff9`  
		Last Modified: Tue, 30 Apr 2019 11:59:15 GMT  
		Size: 2.7 MB (2660077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a842ab9f0d01365c076bb84ead2b6f33f57c3a035f7f90c5b940105224e0f93`  
		Last Modified: Tue, 30 Apr 2019 11:59:15 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b5bd0ee4c1c49ad412ba7a06ffc75bc51a4c28bdc242aafe82cd44d5dd4412`  
		Last Modified: Tue, 30 Apr 2019 11:59:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:98a7f3b75932d98915e861278975f4fc0a28ae7ab3576c50148ded26a8cc06a5
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

### `memcached:latest` - linux; amd64

```console
$ docker pull memcached@sha256:9a7e6a3c23de5814dd60a033bdf22bad5f4f016103e12c8c7ef765f9ad3f51a9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23544506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33546802fc245149b0a777b0a73be0be9936a9a4b70155551b592c3a696483d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:13:03 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 08 May 2019 02:13:04 GMT
ENV MEMCACHED_VERSION=1.5.14
# Wed, 08 May 2019 02:13:04 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 08 May 2019 02:18:45 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 May 2019 02:18:45 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 08 May 2019 02:18:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 02:18:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 02:18:46 GMT
USER memcache
# Wed, 08 May 2019 02:18:46 GMT
EXPOSE 11211
# Wed, 08 May 2019 02:18:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d426054b20f1adcf09d20ba2857b17cab3bc04d15bbc22f067e7f2856b0582f`  
		Last Modified: Wed, 08 May 2019 02:19:11 GMT  
		Size: 5.0 KB (4987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df6e79f2c3c683409ec1b43b388249a2641c831807d30f2de6fc56466f836d8`  
		Last Modified: Wed, 08 May 2019 02:19:11 GMT  
		Size: 1.0 MB (1049753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e50d4a961fd529a58b816fd188757d3393fdb5cc0fe97dc96f8f383bc2f634`  
		Last Modified: Wed, 08 May 2019 02:19:11 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3469ff204be855ce56c9c9603ee1a839a5e1e2b7a07663f516cdaf5c796d26`  
		Last Modified: Wed, 08 May 2019 02:19:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:20b473de4bf1e27a9336db9fb414c64016ced030494fcb9ab10bd9a485b1effa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22195926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8cac7329eacb38043c96c11bce07a987d2d0ded4e1340eb66838dc607ceffaf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:16:57 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 30 Apr 2019 08:48:44 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:48:46 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 01 May 2019 09:05:57 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 01 May 2019 09:05:59 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 01 May 2019 09:06:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 01 May 2019 09:06:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 May 2019 09:06:13 GMT
USER memcache
# Wed, 01 May 2019 09:06:14 GMT
EXPOSE 11211
# Wed, 01 May 2019 09:06:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d549001cb3e9e2c708f63e2e900b0ee699955ddf3396c15e6d25e0a465576b`  
		Last Modified: Wed, 27 Mar 2019 10:13:25 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484d26110243b9763349ed8778597521f0b11e89eb44358b2d30b3586d0f6895`  
		Last Modified: Wed, 01 May 2019 09:06:31 GMT  
		Size: 1.0 MB (1029947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62113e9a42744a86a761fe250d08b2628cda02055ad84d7a7c8bb90ab9ff9b47`  
		Last Modified: Wed, 01 May 2019 09:06:30 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f42604621e3109268a7aa069e34a52c39d34b2f51b1c6bbd0ad33cc4a0fb945`  
		Last Modified: Wed, 01 May 2019 09:06:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:11c10abbb3030b09775dec49867e4f148ae378c1c24ac91d944bf6960d24c39d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20285387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad61631f947ee4eb84523ee4b599d82cf975afa4f41e2a7cf1cb8fb70dce2b9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 10 Apr 2019 12:14:01 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 30 Apr 2019 11:57:36 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 11:57:37 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 01 May 2019 12:48:17 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 01 May 2019 12:48:20 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 01 May 2019 12:48:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 01 May 2019 12:48:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 May 2019 12:48:34 GMT
USER memcache
# Wed, 01 May 2019 12:48:36 GMT
EXPOSE 11211
# Wed, 01 May 2019 12:48:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f15fa1a3dee3fdb28b0ae2d1b2274d32563afb1e76d6c79fefa94841fdb1c3`  
		Last Modified: Wed, 01 May 2019 13:21:26 GMT  
		Size: 4.9 KB (4904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904a83684682bff5ab616a07204f1af1aa5b5149ef2d98460814cbf344fe62d7`  
		Last Modified: Wed, 01 May 2019 13:21:28 GMT  
		Size: 997.6 KB (997621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8539acf8fd7be8cacab4a44238e0c4e0b12bcdd3fda7cc059f45d2c9783c5d25`  
		Last Modified: Wed, 01 May 2019 13:21:26 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2225294531f6c3fca62650f6222ddb4cdcc46e397c31ace04702c7b40e412932`  
		Last Modified: Wed, 01 May 2019 13:21:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:f8fb8ffd9710772de3e6df403f5b8fa8da521ca17d4f465e4d0561e7a515eb62
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21347501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75eff7c5fb0380f47df9ec00ea788916fef2590eb33e946d9c3d436ce4a2eb64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:21:24 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 08 May 2019 16:21:24 GMT
ENV MEMCACHED_VERSION=1.5.14
# Wed, 08 May 2019 16:21:26 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 08 May 2019 16:30:53 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 May 2019 16:30:53 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 08 May 2019 16:30:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 16:30:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 16:30:57 GMT
USER memcache
# Wed, 08 May 2019 16:30:57 GMT
EXPOSE 11211
# Wed, 08 May 2019 16:30:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0a91dd2af5fb33783250d433c3a5e9262eda6e802d68e06cd83f8e49ae4777`  
		Last Modified: Wed, 08 May 2019 16:31:24 GMT  
		Size: 5.0 KB (5025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb960f477fccdfc82913e7a7082d9c67915742ffba4ebc87a9a0b7b59e405946`  
		Last Modified: Wed, 08 May 2019 16:31:25 GMT  
		Size: 1.0 MB (1008246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95c8d82bd9f68ad73c4b7a2b28766bd5dd0a68c212798dc9cbb6e60ced0676a`  
		Last Modified: Wed, 08 May 2019 16:31:24 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a4e91ab518f4816ce94f7aeb9504f20c6a835dcc9957d4357c7d14f20d3496`  
		Last Modified: Wed, 08 May 2019 16:31:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:c8787da60496ed68a35e0b03df0a657e706c9c29c82f0c0f39f2359316efeb46
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24187495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c571d5f712d50d1ff3908782627df147d8a54a99439a702c443933cd8cbca1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 16:16:04 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 30 Apr 2019 10:46:10 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 10:46:10 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 10:51:56 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 30 Apr 2019 10:51:56 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 10:51:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 10:51:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 10:51:57 GMT
USER memcache
# Tue, 30 Apr 2019 10:51:57 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 10:51:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a5a92f9531dbd67d92cdbc568757a9a9ee34ab0497d891cc4bcba083cdfef5`  
		Last Modified: Wed, 27 Mar 2019 16:22:42 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15781090152ca1a688301ab6b35e0813fc3ac77bba043e437c99141f381bf756`  
		Last Modified: Tue, 30 Apr 2019 10:58:18 GMT  
		Size: 1.1 MB (1056431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f852eee5008e1da1fe95576e2f6abc6ab14bf6a51fa8809173c8be2558171e`  
		Last Modified: Tue, 30 Apr 2019 10:58:17 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6aa43086391cd800401a249eb524d425ea33eecab8f8e834f6fd756a5d737e`  
		Last Modified: Tue, 30 Apr 2019 10:58:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:4f553dba91fbf4fb054a3be802c65de3e8957b080d32147b921148466faee5f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23792926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b8cf54001612751eb9fca24a463bc507e202a49d8255237c2f13446c4d2e06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:24:16 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 08 May 2019 13:24:20 GMT
ENV MEMCACHED_VERSION=1.5.14
# Wed, 08 May 2019 13:24:23 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 08 May 2019 13:34:28 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 May 2019 13:34:31 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 08 May 2019 13:34:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 13:34:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 13:34:46 GMT
USER memcache
# Wed, 08 May 2019 13:34:50 GMT
EXPOSE 11211
# Wed, 08 May 2019 13:34:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c0066a1642e901f72fe616b91b6f062e97b4301b73972ad62fcc0cf66c9668`  
		Last Modified: Wed, 08 May 2019 13:36:24 GMT  
		Size: 5.0 KB (4987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bca94c9068931f5c219f02f6813ee4d0a78a3f8cf1b3736f2a3241da3f1ba34`  
		Last Modified: Wed, 08 May 2019 13:36:24 GMT  
		Size: 1.0 MB (1042609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6229f2679a5f9d0fe63faa8824763968b873e056ca95a39b1b22bc610e6c7a8`  
		Last Modified: Wed, 08 May 2019 13:36:24 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54dd5a50f79b58cb81db36e1384b236d68a6888f691fc49f531b468dafdce9b`  
		Last Modified: Wed, 08 May 2019 13:36:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:57b40b192881974b2b7fcddde719e42267059ab8fadbb46e73cac3c0d08858d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23349582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4172b6d8e24ca019b61b2da250eae84da45dab261df62d2a11432fa635126b34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:04:14 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 08 May 2019 14:04:15 GMT
ENV MEMCACHED_VERSION=1.5.14
# Wed, 08 May 2019 14:04:16 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 08 May 2019 14:09:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 May 2019 14:09:56 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 08 May 2019 14:09:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 14:09:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:10:00 GMT
USER memcache
# Wed, 08 May 2019 14:10:01 GMT
EXPOSE 11211
# Wed, 08 May 2019 14:10:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36798865fbca3ec6db67583993c06bf7c9eef385c3ab2b85b0b9f52d898f2427`  
		Last Modified: Wed, 08 May 2019 14:10:37 GMT  
		Size: 5.0 KB (5027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eddd47014e4e1fc9a7b52480a22db420751bec8ad50e09ff95d2d8b6664d12a`  
		Last Modified: Wed, 08 May 2019 14:10:37 GMT  
		Size: 1.0 MB (1005269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeed36c89bfdd05539e04605f35714608bb2446cb096e7ad5e76504ea9592a`  
		Last Modified: Wed, 08 May 2019 14:10:37 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9c346f846fbd3179110e9ef255b262d7e063ff5d59cde74befb43505e1f615`  
		Last Modified: Wed, 08 May 2019 14:10:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
