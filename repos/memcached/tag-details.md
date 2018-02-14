<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1`](#memcached1)
-	[`memcached:1.5`](#memcached15)
-	[`memcached:1.5.5`](#memcached155)
-	[`memcached:1.5.5-alpine`](#memcached155-alpine)
-	[`memcached:1.5-alpine`](#memcached15-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)
-	[`memcached:latest`](#memcachedlatest)

## `memcached:1`

```console
$ docker pull memcached@sha256:ec8ffdf1f1d2b4d7a20ac91359520528fe4a934453f8e058eaf41ac5f7f9e226
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
$ docker pull memcached@sha256:3e8897875f704f9ba8f25ae40c9c939efc7aff9af8967c6d4e35a3204b1bd250
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23463846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fdb3385afc92cec327e0d59a31f569e24ba56ecf3b67e6d732570b474fc8e5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:03:40 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 21 Dec 2017 21:32:06 GMT
ENV MEMCACHED_VERSION=1.5.4
# Thu, 21 Dec 2017 21:32:06 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Thu, 21 Dec 2017 21:35:36 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 21 Dec 2017 21:35:37 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:35:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 21 Dec 2017 21:35:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:35:38 GMT
USER [memcache]
# Thu, 21 Dec 2017 21:35:38 GMT
EXPOSE 11211/tcp
# Thu, 21 Dec 2017 21:35:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb3f8fce829024a761313c0897c1d2da32a6800c0fb63a5d714d77357f1bac2`  
		Last Modified: Tue, 12 Dec 2017 05:07:43 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99d88b232c2fb5bc315a22ef8eae787c007d7f20cd68d6476f736678e5a0e17`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 976.0 KB (975967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3999c826aa07d247c10eefdf2cea83068a44d2f82c978b43e5eac7258aa0b8`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d32ac2247f396fbe2f4e3bd58c592e43298a23b5ded6b811c29e53796db9e9`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:2474af62a1af4525ffae4af1a247ad5ef066d16549696f84da455a6928d0c1c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22129305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b0bc52938f990366d8a37f6b5c57c43343f32421d4433dead12fb00b73ea59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 15:38:30 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 23 Jan 2018 19:35:37 GMT
ENV MEMCACHED_VERSION=1.5.4
# Tue, 23 Jan 2018 19:35:37 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Tue, 23 Jan 2018 19:56:25 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 23 Jan 2018 19:56:27 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 23 Jan 2018 19:56:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 23 Jan 2018 19:56:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jan 2018 19:56:39 GMT
USER [memcache]
# Tue, 23 Jan 2018 19:56:40 GMT
EXPOSE 11211/tcp
# Tue, 23 Jan 2018 19:56:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc331e447543e8e8273f5793e5f2fb172b59f410d28852aa9d742f8d42af5c7`  
		Last Modified: Tue, 23 Jan 2018 19:57:00 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0521594cf268617a28f6bef0873a368f29043e4c15bf92c82c0c95cf43406d`  
		Last Modified: Tue, 23 Jan 2018 19:57:02 GMT  
		Size: 966.5 KB (966521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850596121635c29bdc63e1b0cf9f0ae120c360a6054b35fdbe3aafb97d72c905`  
		Last Modified: Tue, 23 Jan 2018 19:57:01 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0eeca4832440a73a506fb261abd46d9c8efe77af0300251dcfdb777881dd70`  
		Last Modified: Tue, 23 Jan 2018 19:57:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:a458791952654a9de93d22c2d10206d8c8d08a66f05342cee3094f5595fc60cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20208415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81d3aab6661be4bbd60a916cf8799d9d3906d4b8dcbc76ae0801dac1eeef6259`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Fri, 19 Jan 2018 23:09:54 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 19 Jan 2018 23:09:56 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 19 Jan 2018 23:09:57 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 19 Jan 2018 23:24:26 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 19 Jan 2018 23:24:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 19 Jan 2018 23:24:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 19 Jan 2018 23:24:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 23:24:34 GMT
USER [memcache]
# Fri, 19 Jan 2018 23:24:35 GMT
EXPOSE 11211/tcp
# Fri, 19 Jan 2018 23:24:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5d251a943b258a30d798f403db48831dfe2f2fbeb936ef43d8ec40fa9c01be`  
		Last Modified: Fri, 19 Jan 2018 23:24:49 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19401b6901696d53aa985c225f5e7da1b81b7f0b09b711ecbf20b404796dc167`  
		Last Modified: Fri, 19 Jan 2018 23:24:50 GMT  
		Size: 935.2 KB (935230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d72e01732877eb8481dcd468a6583dde3e72f909965654f0bbe024699c78ecd`  
		Last Modified: Fri, 19 Jan 2018 23:24:49 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c0fdfda870ba97d1ca0981494c76edc6fc38606af451fc3ecd7b1bdc813009`  
		Last Modified: Fri, 19 Jan 2018 23:24:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:baff641157da8c3447e5a2cdacec7d6ee83feabd6941e826ba005dbf8eea0eec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21281441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621381d436f87dc8a26ed4a8a9b56f5491870d1f5b02e0e11657cd7ffb435615`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 03:47:42 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 03:47:36 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 03:47:37 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 03:52:28 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 03:52:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 03:52:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 03:52:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 03:52:31 GMT
USER [memcache]
# Fri, 22 Dec 2017 03:52:32 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 03:52:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636d863df4ae3972e295821c901d1de893f6117a3a18c3187af09ef19d2f43af`  
		Last Modified: Wed, 20 Dec 2017 03:54:05 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2f5ba92030711a118cb8183f3afbb4a08898c141c2f05c4149e8c4ea422d57`  
		Last Modified: Fri, 22 Dec 2017 03:57:21 GMT  
		Size: 948.0 KB (948009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a32b237f417fd71c94a0bac80fc7584faf97269587345b8056030f50b99930`  
		Last Modified: Fri, 22 Dec 2017 03:57:20 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225375b3d98bb3e665770c0f3103f11147f224fa655498b962a69843ee7ea736`  
		Last Modified: Fri, 22 Dec 2017 03:57:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:d65fc2b6259620953e6cd53b0a000d8f02e1a1c775440601ecfdeb527500d69d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24113548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e48b8f10f3483916f7590729054a1381a4d144bbb1b5189cbcdb0a192163e2fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:49:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 20:01:33 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 20:01:33 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 20:05:16 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 20:05:16 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 20:05:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 20:05:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 20:05:17 GMT
USER [memcache]
# Fri, 22 Dec 2017 20:05:18 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 20:05:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf48db5b271ca26bf75c52c0921bd7b5982927fa493e304256c95ce446b08b8`  
		Last Modified: Tue, 12 Dec 2017 17:55:59 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d990949866a3e4c464e5dfcc62b3f63afdde1b5232e2423d7a553bc3df19e2`  
		Last Modified: Fri, 22 Dec 2017 20:23:46 GMT  
		Size: 988.9 KB (988943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b534c078e4423b62d09398c487dd404ddbb90e1d8157267f63b579502a578c`  
		Last Modified: Fri, 22 Dec 2017 20:23:45 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7ec3ba19c75f40d18d70c1c268da2de1d5ffe39d36ce2a9f4cb240ae1be1dd`  
		Last Modified: Fri, 22 Dec 2017 20:23:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:e064e0606c7df34da785410563aaf1e937f5485290348548b90e10a30001dab9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23721267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d1eb5b8bfea38852c1230bcb5a2773b4ef711bd3e03d383bf1e2a147c481513`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:44 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 01:33:24 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 01:33:26 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 01:54:08 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 01:54:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 01:54:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 01:54:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 01:54:14 GMT
USER [memcache]
# Fri, 22 Dec 2017 01:54:15 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 01:54:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57213c4055790e86ab8130d85d27c055c55c6938d5de24609b217d70227e68d2`  
		Last Modified: Tue, 12 Dec 2017 03:24:15 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7364ee7131f19c6ad5754f3c5d19a30c34d37b11d70847e6506c7b5b59e20251`  
		Last Modified: Fri, 22 Dec 2017 01:58:37 GMT  
		Size: 979.4 KB (979386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca1e94003eb8786a769885da40333a59397f2e62b49120af7588d50e63b9937`  
		Last Modified: Fri, 22 Dec 2017 01:58:37 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c39efde29df98b8151126ed13322e12741eb8772e22a667b3abd5d35dc855c`  
		Last Modified: Fri, 22 Dec 2017 01:58:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:ac307c9ae6bf3d3f029bb0fd2e21af9f3c2531274422b6cbab662a3e59c5dd45
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23332496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c817fffcdf35c3357cccc648eaa42551d61f290d2d1e92d675ca2f8b9b68406`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:50 GMT
ADD file:8cd208817150f41f5b21f5c2b6641af023ddeaa6d842fe490190e20effe94a08 in / 
# Tue, 12 Dec 2017 06:25:51 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:36 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sun, 07 Jan 2018 08:07:21 GMT
ENV MEMCACHED_VERSION=1.5.4
# Sun, 07 Jan 2018 08:07:22 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Sun, 07 Jan 2018 08:10:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sun, 07 Jan 2018 08:10:55 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sun, 07 Jan 2018 08:10:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sun, 07 Jan 2018 08:10:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 07 Jan 2018 08:10:56 GMT
USER [memcache]
# Sun, 07 Jan 2018 08:10:56 GMT
EXPOSE 11211/tcp
# Sun, 07 Jan 2018 08:10:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da91ecedba56836763b256841bfd01198234139e3e4824510318c25fa8cf140a`  
		Last Modified: Tue, 12 Dec 2017 06:31:22 GMT  
		Size: 22.3 MB (22333855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0430cdab840b4e29a0e2f3fa23e30410f1e71adb0a7847a3338dbc2a76c6000`  
		Last Modified: Tue, 12 Dec 2017 07:33:34 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142bfa03884b38ea471a978148b464f45e9bcd2cca658d00472186ab90a6c631`  
		Last Modified: Sun, 07 Jan 2018 08:15:02 GMT  
		Size: 996.5 KB (996479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1bb5489c871617709ff9ba51f5c1ea3431c2e99c5b803c717ccbc74b3e2e7c`  
		Last Modified: Sun, 07 Jan 2018 08:15:01 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d29424cc1e99de551b5abc21057dbc160f6375c7d4373dd60371ad61fb9b29f`  
		Last Modified: Sun, 07 Jan 2018 08:15:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:ec8ffdf1f1d2b4d7a20ac91359520528fe4a934453f8e058eaf41ac5f7f9e226
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
$ docker pull memcached@sha256:3e8897875f704f9ba8f25ae40c9c939efc7aff9af8967c6d4e35a3204b1bd250
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23463846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fdb3385afc92cec327e0d59a31f569e24ba56ecf3b67e6d732570b474fc8e5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:03:40 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 21 Dec 2017 21:32:06 GMT
ENV MEMCACHED_VERSION=1.5.4
# Thu, 21 Dec 2017 21:32:06 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Thu, 21 Dec 2017 21:35:36 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 21 Dec 2017 21:35:37 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:35:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 21 Dec 2017 21:35:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:35:38 GMT
USER [memcache]
# Thu, 21 Dec 2017 21:35:38 GMT
EXPOSE 11211/tcp
# Thu, 21 Dec 2017 21:35:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb3f8fce829024a761313c0897c1d2da32a6800c0fb63a5d714d77357f1bac2`  
		Last Modified: Tue, 12 Dec 2017 05:07:43 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99d88b232c2fb5bc315a22ef8eae787c007d7f20cd68d6476f736678e5a0e17`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 976.0 KB (975967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3999c826aa07d247c10eefdf2cea83068a44d2f82c978b43e5eac7258aa0b8`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d32ac2247f396fbe2f4e3bd58c592e43298a23b5ded6b811c29e53796db9e9`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v5

```console
$ docker pull memcached@sha256:2474af62a1af4525ffae4af1a247ad5ef066d16549696f84da455a6928d0c1c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22129305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b0bc52938f990366d8a37f6b5c57c43343f32421d4433dead12fb00b73ea59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 15:38:30 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 23 Jan 2018 19:35:37 GMT
ENV MEMCACHED_VERSION=1.5.4
# Tue, 23 Jan 2018 19:35:37 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Tue, 23 Jan 2018 19:56:25 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 23 Jan 2018 19:56:27 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 23 Jan 2018 19:56:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 23 Jan 2018 19:56:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jan 2018 19:56:39 GMT
USER [memcache]
# Tue, 23 Jan 2018 19:56:40 GMT
EXPOSE 11211/tcp
# Tue, 23 Jan 2018 19:56:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc331e447543e8e8273f5793e5f2fb172b59f410d28852aa9d742f8d42af5c7`  
		Last Modified: Tue, 23 Jan 2018 19:57:00 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0521594cf268617a28f6bef0873a368f29043e4c15bf92c82c0c95cf43406d`  
		Last Modified: Tue, 23 Jan 2018 19:57:02 GMT  
		Size: 966.5 KB (966521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850596121635c29bdc63e1b0cf9f0ae120c360a6054b35fdbe3aafb97d72c905`  
		Last Modified: Tue, 23 Jan 2018 19:57:01 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0eeca4832440a73a506fb261abd46d9c8efe77af0300251dcfdb777881dd70`  
		Last Modified: Tue, 23 Jan 2018 19:57:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v7

```console
$ docker pull memcached@sha256:a458791952654a9de93d22c2d10206d8c8d08a66f05342cee3094f5595fc60cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20208415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81d3aab6661be4bbd60a916cf8799d9d3906d4b8dcbc76ae0801dac1eeef6259`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Fri, 19 Jan 2018 23:09:54 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 19 Jan 2018 23:09:56 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 19 Jan 2018 23:09:57 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 19 Jan 2018 23:24:26 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 19 Jan 2018 23:24:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 19 Jan 2018 23:24:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 19 Jan 2018 23:24:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 23:24:34 GMT
USER [memcache]
# Fri, 19 Jan 2018 23:24:35 GMT
EXPOSE 11211/tcp
# Fri, 19 Jan 2018 23:24:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5d251a943b258a30d798f403db48831dfe2f2fbeb936ef43d8ec40fa9c01be`  
		Last Modified: Fri, 19 Jan 2018 23:24:49 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19401b6901696d53aa985c225f5e7da1b81b7f0b09b711ecbf20b404796dc167`  
		Last Modified: Fri, 19 Jan 2018 23:24:50 GMT  
		Size: 935.2 KB (935230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d72e01732877eb8481dcd468a6583dde3e72f909965654f0bbe024699c78ecd`  
		Last Modified: Fri, 19 Jan 2018 23:24:49 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c0fdfda870ba97d1ca0981494c76edc6fc38606af451fc3ecd7b1bdc813009`  
		Last Modified: Fri, 19 Jan 2018 23:24:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:baff641157da8c3447e5a2cdacec7d6ee83feabd6941e826ba005dbf8eea0eec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21281441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621381d436f87dc8a26ed4a8a9b56f5491870d1f5b02e0e11657cd7ffb435615`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 03:47:42 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 03:47:36 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 03:47:37 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 03:52:28 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 03:52:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 03:52:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 03:52:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 03:52:31 GMT
USER [memcache]
# Fri, 22 Dec 2017 03:52:32 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 03:52:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636d863df4ae3972e295821c901d1de893f6117a3a18c3187af09ef19d2f43af`  
		Last Modified: Wed, 20 Dec 2017 03:54:05 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2f5ba92030711a118cb8183f3afbb4a08898c141c2f05c4149e8c4ea422d57`  
		Last Modified: Fri, 22 Dec 2017 03:57:21 GMT  
		Size: 948.0 KB (948009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a32b237f417fd71c94a0bac80fc7584faf97269587345b8056030f50b99930`  
		Last Modified: Fri, 22 Dec 2017 03:57:20 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225375b3d98bb3e665770c0f3103f11147f224fa655498b962a69843ee7ea736`  
		Last Modified: Fri, 22 Dec 2017 03:57:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; 386

```console
$ docker pull memcached@sha256:d65fc2b6259620953e6cd53b0a000d8f02e1a1c775440601ecfdeb527500d69d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24113548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e48b8f10f3483916f7590729054a1381a4d144bbb1b5189cbcdb0a192163e2fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:49:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 20:01:33 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 20:01:33 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 20:05:16 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 20:05:16 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 20:05:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 20:05:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 20:05:17 GMT
USER [memcache]
# Fri, 22 Dec 2017 20:05:18 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 20:05:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf48db5b271ca26bf75c52c0921bd7b5982927fa493e304256c95ce446b08b8`  
		Last Modified: Tue, 12 Dec 2017 17:55:59 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d990949866a3e4c464e5dfcc62b3f63afdde1b5232e2423d7a553bc3df19e2`  
		Last Modified: Fri, 22 Dec 2017 20:23:46 GMT  
		Size: 988.9 KB (988943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b534c078e4423b62d09398c487dd404ddbb90e1d8157267f63b579502a578c`  
		Last Modified: Fri, 22 Dec 2017 20:23:45 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7ec3ba19c75f40d18d70c1c268da2de1d5ffe39d36ce2a9f4cb240ae1be1dd`  
		Last Modified: Fri, 22 Dec 2017 20:23:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; ppc64le

```console
$ docker pull memcached@sha256:e064e0606c7df34da785410563aaf1e937f5485290348548b90e10a30001dab9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23721267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d1eb5b8bfea38852c1230bcb5a2773b4ef711bd3e03d383bf1e2a147c481513`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:44 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 01:33:24 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 01:33:26 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 01:54:08 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 01:54:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 01:54:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 01:54:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 01:54:14 GMT
USER [memcache]
# Fri, 22 Dec 2017 01:54:15 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 01:54:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57213c4055790e86ab8130d85d27c055c55c6938d5de24609b217d70227e68d2`  
		Last Modified: Tue, 12 Dec 2017 03:24:15 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7364ee7131f19c6ad5754f3c5d19a30c34d37b11d70847e6506c7b5b59e20251`  
		Last Modified: Fri, 22 Dec 2017 01:58:37 GMT  
		Size: 979.4 KB (979386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca1e94003eb8786a769885da40333a59397f2e62b49120af7588d50e63b9937`  
		Last Modified: Fri, 22 Dec 2017 01:58:37 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c39efde29df98b8151126ed13322e12741eb8772e22a667b3abd5d35dc855c`  
		Last Modified: Fri, 22 Dec 2017 01:58:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; s390x

```console
$ docker pull memcached@sha256:ac307c9ae6bf3d3f029bb0fd2e21af9f3c2531274422b6cbab662a3e59c5dd45
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23332496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c817fffcdf35c3357cccc648eaa42551d61f290d2d1e92d675ca2f8b9b68406`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:50 GMT
ADD file:8cd208817150f41f5b21f5c2b6641af023ddeaa6d842fe490190e20effe94a08 in / 
# Tue, 12 Dec 2017 06:25:51 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:36 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sun, 07 Jan 2018 08:07:21 GMT
ENV MEMCACHED_VERSION=1.5.4
# Sun, 07 Jan 2018 08:07:22 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Sun, 07 Jan 2018 08:10:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sun, 07 Jan 2018 08:10:55 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sun, 07 Jan 2018 08:10:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sun, 07 Jan 2018 08:10:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 07 Jan 2018 08:10:56 GMT
USER [memcache]
# Sun, 07 Jan 2018 08:10:56 GMT
EXPOSE 11211/tcp
# Sun, 07 Jan 2018 08:10:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da91ecedba56836763b256841bfd01198234139e3e4824510318c25fa8cf140a`  
		Last Modified: Tue, 12 Dec 2017 06:31:22 GMT  
		Size: 22.3 MB (22333855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0430cdab840b4e29a0e2f3fa23e30410f1e71adb0a7847a3338dbc2a76c6000`  
		Last Modified: Tue, 12 Dec 2017 07:33:34 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142bfa03884b38ea471a978148b464f45e9bcd2cca658d00472186ab90a6c631`  
		Last Modified: Sun, 07 Jan 2018 08:15:02 GMT  
		Size: 996.5 KB (996479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1bb5489c871617709ff9ba51f5c1ea3431c2e99c5b803c717ccbc74b3e2e7c`  
		Last Modified: Sun, 07 Jan 2018 08:15:01 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d29424cc1e99de551b5abc21057dbc160f6375c7d4373dd60371ad61fb9b29f`  
		Last Modified: Sun, 07 Jan 2018 08:15:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.5`

**does not exist** (yet?)

## `memcached:1.5.5-alpine`

```console
$ docker pull memcached@sha256:3d76fc88edacebe3fd5f04ac4213e1f792634874231a2de84e404c6fa075c995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v6

### `memcached:1.5.5-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:c223b57acc0376c8b97854d3a806ad27aa9a93ce42ef1449de4889e411bc6057
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3738409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c262be2bed30dce8692b5d7d5e9ac04a0644278eb4c258b2803d7f54435dd30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 23 Jan 2018 22:28:21 GMT
RUN adduser -D memcache
# Tue, 13 Feb 2018 22:28:23 GMT
ENV MEMCACHED_VERSION=1.5.5
# Tue, 13 Feb 2018 22:28:24 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Tue, 13 Feb 2018 22:38:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 13 Feb 2018 22:38:29 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 13 Feb 2018 22:38:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 13 Feb 2018 22:38:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Feb 2018 22:38:35 GMT
USER [memcache]
# Tue, 13 Feb 2018 22:38:36 GMT
EXPOSE 11211/tcp
# Tue, 13 Feb 2018 22:38:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e46cdb4738aeac79685a7bd5ffffe354184b93bb162d67ec1bd6dd09cd190b7`  
		Last Modified: Tue, 23 Jan 2018 22:39:22 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82374311a97dec5dafe6bb7b038768a52125f1876210a9977e24216b8ae034f`  
		Last Modified: Tue, 13 Feb 2018 22:39:00 GMT  
		Size: 1.7 MB (1698251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ef0da57f8bca50a57f42135d763fc0c4b71771104cdf964d6a55e6a7d50dfb`  
		Last Modified: Tue, 13 Feb 2018 22:38:58 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b0e4480a9139db6f3fb4be1b0a8ec199a05f631ce7ee577c090eac9538eca2`  
		Last Modified: Tue, 13 Feb 2018 22:38:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:3d76fc88edacebe3fd5f04ac4213e1f792634874231a2de84e404c6fa075c995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v6

### `memcached:1.5-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:c223b57acc0376c8b97854d3a806ad27aa9a93ce42ef1449de4889e411bc6057
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3738409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c262be2bed30dce8692b5d7d5e9ac04a0644278eb4c258b2803d7f54435dd30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 23 Jan 2018 22:28:21 GMT
RUN adduser -D memcache
# Tue, 13 Feb 2018 22:28:23 GMT
ENV MEMCACHED_VERSION=1.5.5
# Tue, 13 Feb 2018 22:28:24 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Tue, 13 Feb 2018 22:38:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 13 Feb 2018 22:38:29 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 13 Feb 2018 22:38:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 13 Feb 2018 22:38:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Feb 2018 22:38:35 GMT
USER [memcache]
# Tue, 13 Feb 2018 22:38:36 GMT
EXPOSE 11211/tcp
# Tue, 13 Feb 2018 22:38:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e46cdb4738aeac79685a7bd5ffffe354184b93bb162d67ec1bd6dd09cd190b7`  
		Last Modified: Tue, 23 Jan 2018 22:39:22 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82374311a97dec5dafe6bb7b038768a52125f1876210a9977e24216b8ae034f`  
		Last Modified: Tue, 13 Feb 2018 22:39:00 GMT  
		Size: 1.7 MB (1698251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ef0da57f8bca50a57f42135d763fc0c4b71771104cdf964d6a55e6a7d50dfb`  
		Last Modified: Tue, 13 Feb 2018 22:38:58 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b0e4480a9139db6f3fb4be1b0a8ec199a05f631ce7ee577c090eac9538eca2`  
		Last Modified: Tue, 13 Feb 2018 22:38:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:3d76fc88edacebe3fd5f04ac4213e1f792634874231a2de84e404c6fa075c995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v6

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:c223b57acc0376c8b97854d3a806ad27aa9a93ce42ef1449de4889e411bc6057
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3738409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c262be2bed30dce8692b5d7d5e9ac04a0644278eb4c258b2803d7f54435dd30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 23 Jan 2018 22:28:21 GMT
RUN adduser -D memcache
# Tue, 13 Feb 2018 22:28:23 GMT
ENV MEMCACHED_VERSION=1.5.5
# Tue, 13 Feb 2018 22:28:24 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Tue, 13 Feb 2018 22:38:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 13 Feb 2018 22:38:29 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 13 Feb 2018 22:38:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 13 Feb 2018 22:38:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Feb 2018 22:38:35 GMT
USER [memcache]
# Tue, 13 Feb 2018 22:38:36 GMT
EXPOSE 11211/tcp
# Tue, 13 Feb 2018 22:38:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e46cdb4738aeac79685a7bd5ffffe354184b93bb162d67ec1bd6dd09cd190b7`  
		Last Modified: Tue, 23 Jan 2018 22:39:22 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82374311a97dec5dafe6bb7b038768a52125f1876210a9977e24216b8ae034f`  
		Last Modified: Tue, 13 Feb 2018 22:39:00 GMT  
		Size: 1.7 MB (1698251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ef0da57f8bca50a57f42135d763fc0c4b71771104cdf964d6a55e6a7d50dfb`  
		Last Modified: Tue, 13 Feb 2018 22:38:58 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b0e4480a9139db6f3fb4be1b0a8ec199a05f631ce7ee577c090eac9538eca2`  
		Last Modified: Tue, 13 Feb 2018 22:38:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:3d76fc88edacebe3fd5f04ac4213e1f792634874231a2de84e404c6fa075c995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v6

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:c223b57acc0376c8b97854d3a806ad27aa9a93ce42ef1449de4889e411bc6057
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3738409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c262be2bed30dce8692b5d7d5e9ac04a0644278eb4c258b2803d7f54435dd30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 23 Jan 2018 22:28:21 GMT
RUN adduser -D memcache
# Tue, 13 Feb 2018 22:28:23 GMT
ENV MEMCACHED_VERSION=1.5.5
# Tue, 13 Feb 2018 22:28:24 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Tue, 13 Feb 2018 22:38:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 13 Feb 2018 22:38:29 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 13 Feb 2018 22:38:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 13 Feb 2018 22:38:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Feb 2018 22:38:35 GMT
USER [memcache]
# Tue, 13 Feb 2018 22:38:36 GMT
EXPOSE 11211/tcp
# Tue, 13 Feb 2018 22:38:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e46cdb4738aeac79685a7bd5ffffe354184b93bb162d67ec1bd6dd09cd190b7`  
		Last Modified: Tue, 23 Jan 2018 22:39:22 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82374311a97dec5dafe6bb7b038768a52125f1876210a9977e24216b8ae034f`  
		Last Modified: Tue, 13 Feb 2018 22:39:00 GMT  
		Size: 1.7 MB (1698251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ef0da57f8bca50a57f42135d763fc0c4b71771104cdf964d6a55e6a7d50dfb`  
		Last Modified: Tue, 13 Feb 2018 22:38:58 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b0e4480a9139db6f3fb4be1b0a8ec199a05f631ce7ee577c090eac9538eca2`  
		Last Modified: Tue, 13 Feb 2018 22:38:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:ec8ffdf1f1d2b4d7a20ac91359520528fe4a934453f8e058eaf41ac5f7f9e226
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
$ docker pull memcached@sha256:3e8897875f704f9ba8f25ae40c9c939efc7aff9af8967c6d4e35a3204b1bd250
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23463846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fdb3385afc92cec327e0d59a31f569e24ba56ecf3b67e6d732570b474fc8e5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:03:40 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 21 Dec 2017 21:32:06 GMT
ENV MEMCACHED_VERSION=1.5.4
# Thu, 21 Dec 2017 21:32:06 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Thu, 21 Dec 2017 21:35:36 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 21 Dec 2017 21:35:37 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:35:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 21 Dec 2017 21:35:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:35:38 GMT
USER [memcache]
# Thu, 21 Dec 2017 21:35:38 GMT
EXPOSE 11211/tcp
# Thu, 21 Dec 2017 21:35:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb3f8fce829024a761313c0897c1d2da32a6800c0fb63a5d714d77357f1bac2`  
		Last Modified: Tue, 12 Dec 2017 05:07:43 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99d88b232c2fb5bc315a22ef8eae787c007d7f20cd68d6476f736678e5a0e17`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 976.0 KB (975967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3999c826aa07d247c10eefdf2cea83068a44d2f82c978b43e5eac7258aa0b8`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d32ac2247f396fbe2f4e3bd58c592e43298a23b5ded6b811c29e53796db9e9`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:2474af62a1af4525ffae4af1a247ad5ef066d16549696f84da455a6928d0c1c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22129305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b0bc52938f990366d8a37f6b5c57c43343f32421d4433dead12fb00b73ea59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 15:38:30 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 23 Jan 2018 19:35:37 GMT
ENV MEMCACHED_VERSION=1.5.4
# Tue, 23 Jan 2018 19:35:37 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Tue, 23 Jan 2018 19:56:25 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 23 Jan 2018 19:56:27 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 23 Jan 2018 19:56:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 23 Jan 2018 19:56:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jan 2018 19:56:39 GMT
USER [memcache]
# Tue, 23 Jan 2018 19:56:40 GMT
EXPOSE 11211/tcp
# Tue, 23 Jan 2018 19:56:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc331e447543e8e8273f5793e5f2fb172b59f410d28852aa9d742f8d42af5c7`  
		Last Modified: Tue, 23 Jan 2018 19:57:00 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0521594cf268617a28f6bef0873a368f29043e4c15bf92c82c0c95cf43406d`  
		Last Modified: Tue, 23 Jan 2018 19:57:02 GMT  
		Size: 966.5 KB (966521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850596121635c29bdc63e1b0cf9f0ae120c360a6054b35fdbe3aafb97d72c905`  
		Last Modified: Tue, 23 Jan 2018 19:57:01 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0eeca4832440a73a506fb261abd46d9c8efe77af0300251dcfdb777881dd70`  
		Last Modified: Tue, 23 Jan 2018 19:57:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:a458791952654a9de93d22c2d10206d8c8d08a66f05342cee3094f5595fc60cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20208415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81d3aab6661be4bbd60a916cf8799d9d3906d4b8dcbc76ae0801dac1eeef6259`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Fri, 19 Jan 2018 23:09:54 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 19 Jan 2018 23:09:56 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 19 Jan 2018 23:09:57 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 19 Jan 2018 23:24:26 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 19 Jan 2018 23:24:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 19 Jan 2018 23:24:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 19 Jan 2018 23:24:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 23:24:34 GMT
USER [memcache]
# Fri, 19 Jan 2018 23:24:35 GMT
EXPOSE 11211/tcp
# Fri, 19 Jan 2018 23:24:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5d251a943b258a30d798f403db48831dfe2f2fbeb936ef43d8ec40fa9c01be`  
		Last Modified: Fri, 19 Jan 2018 23:24:49 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19401b6901696d53aa985c225f5e7da1b81b7f0b09b711ecbf20b404796dc167`  
		Last Modified: Fri, 19 Jan 2018 23:24:50 GMT  
		Size: 935.2 KB (935230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d72e01732877eb8481dcd468a6583dde3e72f909965654f0bbe024699c78ecd`  
		Last Modified: Fri, 19 Jan 2018 23:24:49 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c0fdfda870ba97d1ca0981494c76edc6fc38606af451fc3ecd7b1bdc813009`  
		Last Modified: Fri, 19 Jan 2018 23:24:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:baff641157da8c3447e5a2cdacec7d6ee83feabd6941e826ba005dbf8eea0eec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21281441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621381d436f87dc8a26ed4a8a9b56f5491870d1f5b02e0e11657cd7ffb435615`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 03:47:42 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 03:47:36 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 03:47:37 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 03:52:28 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 03:52:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 03:52:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 03:52:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 03:52:31 GMT
USER [memcache]
# Fri, 22 Dec 2017 03:52:32 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 03:52:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636d863df4ae3972e295821c901d1de893f6117a3a18c3187af09ef19d2f43af`  
		Last Modified: Wed, 20 Dec 2017 03:54:05 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2f5ba92030711a118cb8183f3afbb4a08898c141c2f05c4149e8c4ea422d57`  
		Last Modified: Fri, 22 Dec 2017 03:57:21 GMT  
		Size: 948.0 KB (948009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a32b237f417fd71c94a0bac80fc7584faf97269587345b8056030f50b99930`  
		Last Modified: Fri, 22 Dec 2017 03:57:20 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225375b3d98bb3e665770c0f3103f11147f224fa655498b962a69843ee7ea736`  
		Last Modified: Fri, 22 Dec 2017 03:57:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:d65fc2b6259620953e6cd53b0a000d8f02e1a1c775440601ecfdeb527500d69d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24113548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e48b8f10f3483916f7590729054a1381a4d144bbb1b5189cbcdb0a192163e2fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:49:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 20:01:33 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 20:01:33 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 20:05:16 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 20:05:16 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 20:05:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 20:05:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 20:05:17 GMT
USER [memcache]
# Fri, 22 Dec 2017 20:05:18 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 20:05:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf48db5b271ca26bf75c52c0921bd7b5982927fa493e304256c95ce446b08b8`  
		Last Modified: Tue, 12 Dec 2017 17:55:59 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d990949866a3e4c464e5dfcc62b3f63afdde1b5232e2423d7a553bc3df19e2`  
		Last Modified: Fri, 22 Dec 2017 20:23:46 GMT  
		Size: 988.9 KB (988943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b534c078e4423b62d09398c487dd404ddbb90e1d8157267f63b579502a578c`  
		Last Modified: Fri, 22 Dec 2017 20:23:45 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7ec3ba19c75f40d18d70c1c268da2de1d5ffe39d36ce2a9f4cb240ae1be1dd`  
		Last Modified: Fri, 22 Dec 2017 20:23:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:e064e0606c7df34da785410563aaf1e937f5485290348548b90e10a30001dab9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23721267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d1eb5b8bfea38852c1230bcb5a2773b4ef711bd3e03d383bf1e2a147c481513`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:44 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 01:33:24 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 01:33:26 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 01:54:08 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 01:54:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 01:54:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 01:54:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 01:54:14 GMT
USER [memcache]
# Fri, 22 Dec 2017 01:54:15 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 01:54:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57213c4055790e86ab8130d85d27c055c55c6938d5de24609b217d70227e68d2`  
		Last Modified: Tue, 12 Dec 2017 03:24:15 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7364ee7131f19c6ad5754f3c5d19a30c34d37b11d70847e6506c7b5b59e20251`  
		Last Modified: Fri, 22 Dec 2017 01:58:37 GMT  
		Size: 979.4 KB (979386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca1e94003eb8786a769885da40333a59397f2e62b49120af7588d50e63b9937`  
		Last Modified: Fri, 22 Dec 2017 01:58:37 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c39efde29df98b8151126ed13322e12741eb8772e22a667b3abd5d35dc855c`  
		Last Modified: Fri, 22 Dec 2017 01:58:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:ac307c9ae6bf3d3f029bb0fd2e21af9f3c2531274422b6cbab662a3e59c5dd45
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23332496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c817fffcdf35c3357cccc648eaa42551d61f290d2d1e92d675ca2f8b9b68406`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:50 GMT
ADD file:8cd208817150f41f5b21f5c2b6641af023ddeaa6d842fe490190e20effe94a08 in / 
# Tue, 12 Dec 2017 06:25:51 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:36 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sun, 07 Jan 2018 08:07:21 GMT
ENV MEMCACHED_VERSION=1.5.4
# Sun, 07 Jan 2018 08:07:22 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Sun, 07 Jan 2018 08:10:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sun, 07 Jan 2018 08:10:55 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sun, 07 Jan 2018 08:10:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sun, 07 Jan 2018 08:10:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 07 Jan 2018 08:10:56 GMT
USER [memcache]
# Sun, 07 Jan 2018 08:10:56 GMT
EXPOSE 11211/tcp
# Sun, 07 Jan 2018 08:10:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da91ecedba56836763b256841bfd01198234139e3e4824510318c25fa8cf140a`  
		Last Modified: Tue, 12 Dec 2017 06:31:22 GMT  
		Size: 22.3 MB (22333855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0430cdab840b4e29a0e2f3fa23e30410f1e71adb0a7847a3338dbc2a76c6000`  
		Last Modified: Tue, 12 Dec 2017 07:33:34 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142bfa03884b38ea471a978148b464f45e9bcd2cca658d00472186ab90a6c631`  
		Last Modified: Sun, 07 Jan 2018 08:15:02 GMT  
		Size: 996.5 KB (996479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1bb5489c871617709ff9ba51f5c1ea3431c2e99c5b803c717ccbc74b3e2e7c`  
		Last Modified: Sun, 07 Jan 2018 08:15:01 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d29424cc1e99de551b5abc21057dbc160f6375c7d4373dd60371ad61fb9b29f`  
		Last Modified: Sun, 07 Jan 2018 08:15:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
