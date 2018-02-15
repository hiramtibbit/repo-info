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
$ docker pull memcached@sha256:c58e9fbd962290efbfa9a4c84c6b0501e3bda0d80b135cf7ca6bf24454de769c
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
$ docker pull memcached@sha256:60e2ce3e8215d7ca744bbbafd9b11b7a95961ea068e1ad51a6c361ad3a9bd34b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23464093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b47a4ecc0a206457b4e5d6c30a0d0b0632fd13f6e60477ee9c000b2237013e27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:03:40 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 13 Feb 2018 22:32:06 GMT
ENV MEMCACHED_VERSION=1.5.5
# Tue, 13 Feb 2018 22:32:06 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Tue, 13 Feb 2018 22:35:36 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 13 Feb 2018 22:35:36 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 13 Feb 2018 22:35:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 13 Feb 2018 22:35:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Feb 2018 22:35:37 GMT
USER [memcache]
# Tue, 13 Feb 2018 22:35:38 GMT
EXPOSE 11211/tcp
# Tue, 13 Feb 2018 22:35:38 GMT
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
	-	`sha256:d95c60c11ef4dfcbbd6b780c57741d8daaacbdd870cfcb4d9d9e7d95eb475fac`  
		Last Modified: Tue, 13 Feb 2018 22:48:35 GMT  
		Size: 976.2 KB (976214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abe58aaaf9e3a20ed579657b39033c17bb49f4f26715c1b9919aee2ace2de52`  
		Last Modified: Tue, 13 Feb 2018 22:48:34 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4089b4f1b0d4a625547d484488aac4256bbeeb63ef7472797927c4764c39e1a`  
		Last Modified: Tue, 13 Feb 2018 22:48:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:755cd238efe0d67d61156b6de7c37c2539529142b41a7977cb4f6878fe59fb89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22129371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16b8d9133198be461da71eef6281d3bf502f67998b537de0cc69ad3155505b89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 15:38:30 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Feb 2018 19:35:33 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 19:35:34 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 19:48:26 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 14 Feb 2018 19:48:27 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 19:48:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 19:48:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 19:48:31 GMT
USER [memcache]
# Wed, 14 Feb 2018 19:48:32 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 19:48:33 GMT
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
	-	`sha256:5c9c82565fbfb569e9062370a686bb75af6ba02e4d35c8a72c5d5d0bf95cee89`  
		Last Modified: Wed, 14 Feb 2018 19:48:56 GMT  
		Size: 966.6 KB (966588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199fcfa2ae1da3fec4ce53725465b9765d8221836ee3d506f414fd8e0533ebbd`  
		Last Modified: Wed, 14 Feb 2018 19:48:55 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd2801dc46c2a77b3518c36b8c690a5dc2638d690130392f1414ea0a62f8e75`  
		Last Modified: Wed, 14 Feb 2018 19:48:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:ddbd438f7e5d055cf1b1fc0d63acf67e3dafbb26cd329933499719ff39cfa814
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20208454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa4774bfd9d2bd36b773cbf3f28054d06d0f574b475cca54f9f8c87955aec3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Fri, 19 Jan 2018 23:09:54 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Feb 2018 05:58:21 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 05:58:22 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 06:10:14 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 14 Feb 2018 06:10:15 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 06:10:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 06:10:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 06:10:20 GMT
USER [memcache]
# Wed, 14 Feb 2018 06:10:21 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 06:10:21 GMT
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
	-	`sha256:c31f7b7fd620aa9160faac0a48e41ba21836a73154c8ca8b4fb63f268f45a589`  
		Last Modified: Wed, 14 Feb 2018 06:10:43 GMT  
		Size: 935.3 KB (935270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db367df6aa714c4e9e69f2f6c098690669d8654f57254e8bc66c901f03b0a58`  
		Last Modified: Wed, 14 Feb 2018 06:10:42 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce7f02facaf673411d5c36f3b2f367e8cfbcfda3b0e031a2c8865624aca574c`  
		Last Modified: Wed, 14 Feb 2018 06:10:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:340f11f60a66b85d56229a4fad0dfb0c74fd6b1e2d0ca40d8e0a6973354f9e18
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21281469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be5ebb3e6a23d5d037ce5d4d4de9738b991db19d037842dd24429bf9fb608d54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 03:47:42 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Feb 2018 03:47:52 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 03:47:53 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 03:52:51 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 14 Feb 2018 03:52:52 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 03:52:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 03:52:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 03:52:54 GMT
USER [memcache]
# Wed, 14 Feb 2018 03:52:55 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 03:52:55 GMT
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
	-	`sha256:8f8e59386cf51aff6f61a662d09566fdeb532638645ad6bd8a402b32bdc2db2c`  
		Last Modified: Wed, 14 Feb 2018 03:57:48 GMT  
		Size: 948.0 KB (948036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c62a4b6662fd55c09ae4f40dce82a96f25cd483643ca9370893c2097718c839f`  
		Last Modified: Wed, 14 Feb 2018 03:57:47 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11976d4dc3d74e357f9e4aeffa32b690b43abe9ce5c0cdbbe65a2efce2de0e64`  
		Last Modified: Wed, 14 Feb 2018 03:57:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:c69d94a1c698aebb66014431917aa8cd8cb18c45f96e32d52ab66d351d22fd3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24113690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc924efce2d9b2b434372ce398b1bfde1802318926408ba8380e23cd1b231058`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:49:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Feb 2018 20:05:45 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 20:05:45 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 20:09:27 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 14 Feb 2018 20:09:27 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 20:09:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 20:09:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 20:09:28 GMT
USER [memcache]
# Wed, 14 Feb 2018 20:09:29 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 20:09:29 GMT
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
	-	`sha256:2069e8fe8e5caae50a1b9cfb84bda627e58c25a507244806e92360a433b93c1a`  
		Last Modified: Wed, 14 Feb 2018 20:23:39 GMT  
		Size: 989.1 KB (989084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d58ed1a71196d8b3cc42e1d56b1ddeec737fa541498c255c97802c40ca0350`  
		Last Modified: Wed, 14 Feb 2018 20:23:39 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf8eef997d43aee0e4af73861558620e11dde3315417648374ca3e36a01f4a1`  
		Last Modified: Wed, 14 Feb 2018 20:23:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:527132ff49bc2b4298882b3c25ac25dac1ff3f6adff345815513c650ca3f6c2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23734846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2eeef18c29b98c7263b5c5a51c3afc8a55743f0058993dc94781c55bdd2e8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:36:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 05:36:56 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 05:36:57 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 05:43:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 05:43:35 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 05:43:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 05:43:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 05:43:43 GMT
USER [memcache]
# Thu, 15 Feb 2018 05:43:45 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 05:43:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6feefc8c0ce8e8b2576e58690248056fad0c5fe91ab39d661ea10c365222530b`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb4ecd42ba514dd70c484be92e085e6ca1cf346191b158b289bce7e8e20952c`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 979.6 KB (979578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01072d0bc6314984a565f60bea9dd02435130a1ce86772a7300cce1b3d5d0e9`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f18482c44a6e4920b2dad505a9e41c170a489fd4c0135f5ff74c7e655c33b7`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:1096b8320bf19235980dafe2d0d57e4072a9c0aae24546121d91eb0aecf80aec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23332651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ba658230da18d9d5d9d38322b8a811bb68639d060985ee0032ddaed4fd8db6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:50 GMT
ADD file:8cd208817150f41f5b21f5c2b6641af023ddeaa6d842fe490190e20effe94a08 in / 
# Tue, 12 Dec 2017 06:25:51 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:36 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Feb 2018 18:34:11 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 18:34:12 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 18:37:34 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 14 Feb 2018 18:37:34 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 18:37:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 18:37:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 18:37:35 GMT
USER [memcache]
# Wed, 14 Feb 2018 18:37:35 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 18:37:35 GMT
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
	-	`sha256:0509b51fc06519a439fafbf5eade4297867950b0a832445a2395db23c20c2d90`  
		Last Modified: Wed, 14 Feb 2018 18:41:24 GMT  
		Size: 996.6 KB (996635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8f9edb76cd0709258bd14ef330e5bad5967264bbbc899269b7022b51afdc7f`  
		Last Modified: Wed, 14 Feb 2018 18:41:25 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b079bf926e7e4d7409b4bc6614fad1f9dd05dbeee4fd70effd7a2195578c4702`  
		Last Modified: Wed, 14 Feb 2018 18:41:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:c58e9fbd962290efbfa9a4c84c6b0501e3bda0d80b135cf7ca6bf24454de769c
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
$ docker pull memcached@sha256:60e2ce3e8215d7ca744bbbafd9b11b7a95961ea068e1ad51a6c361ad3a9bd34b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23464093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b47a4ecc0a206457b4e5d6c30a0d0b0632fd13f6e60477ee9c000b2237013e27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:03:40 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 13 Feb 2018 22:32:06 GMT
ENV MEMCACHED_VERSION=1.5.5
# Tue, 13 Feb 2018 22:32:06 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Tue, 13 Feb 2018 22:35:36 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 13 Feb 2018 22:35:36 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 13 Feb 2018 22:35:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 13 Feb 2018 22:35:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Feb 2018 22:35:37 GMT
USER [memcache]
# Tue, 13 Feb 2018 22:35:38 GMT
EXPOSE 11211/tcp
# Tue, 13 Feb 2018 22:35:38 GMT
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
	-	`sha256:d95c60c11ef4dfcbbd6b780c57741d8daaacbdd870cfcb4d9d9e7d95eb475fac`  
		Last Modified: Tue, 13 Feb 2018 22:48:35 GMT  
		Size: 976.2 KB (976214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abe58aaaf9e3a20ed579657b39033c17bb49f4f26715c1b9919aee2ace2de52`  
		Last Modified: Tue, 13 Feb 2018 22:48:34 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4089b4f1b0d4a625547d484488aac4256bbeeb63ef7472797927c4764c39e1a`  
		Last Modified: Tue, 13 Feb 2018 22:48:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v5

```console
$ docker pull memcached@sha256:755cd238efe0d67d61156b6de7c37c2539529142b41a7977cb4f6878fe59fb89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22129371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16b8d9133198be461da71eef6281d3bf502f67998b537de0cc69ad3155505b89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 15:38:30 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Feb 2018 19:35:33 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 19:35:34 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 19:48:26 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 14 Feb 2018 19:48:27 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 19:48:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 19:48:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 19:48:31 GMT
USER [memcache]
# Wed, 14 Feb 2018 19:48:32 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 19:48:33 GMT
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
	-	`sha256:5c9c82565fbfb569e9062370a686bb75af6ba02e4d35c8a72c5d5d0bf95cee89`  
		Last Modified: Wed, 14 Feb 2018 19:48:56 GMT  
		Size: 966.6 KB (966588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199fcfa2ae1da3fec4ce53725465b9765d8221836ee3d506f414fd8e0533ebbd`  
		Last Modified: Wed, 14 Feb 2018 19:48:55 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd2801dc46c2a77b3518c36b8c690a5dc2638d690130392f1414ea0a62f8e75`  
		Last Modified: Wed, 14 Feb 2018 19:48:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v7

```console
$ docker pull memcached@sha256:ddbd438f7e5d055cf1b1fc0d63acf67e3dafbb26cd329933499719ff39cfa814
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20208454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa4774bfd9d2bd36b773cbf3f28054d06d0f574b475cca54f9f8c87955aec3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Fri, 19 Jan 2018 23:09:54 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Feb 2018 05:58:21 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 05:58:22 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 06:10:14 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 14 Feb 2018 06:10:15 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 06:10:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 06:10:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 06:10:20 GMT
USER [memcache]
# Wed, 14 Feb 2018 06:10:21 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 06:10:21 GMT
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
	-	`sha256:c31f7b7fd620aa9160faac0a48e41ba21836a73154c8ca8b4fb63f268f45a589`  
		Last Modified: Wed, 14 Feb 2018 06:10:43 GMT  
		Size: 935.3 KB (935270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db367df6aa714c4e9e69f2f6c098690669d8654f57254e8bc66c901f03b0a58`  
		Last Modified: Wed, 14 Feb 2018 06:10:42 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce7f02facaf673411d5c36f3b2f367e8cfbcfda3b0e031a2c8865624aca574c`  
		Last Modified: Wed, 14 Feb 2018 06:10:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:340f11f60a66b85d56229a4fad0dfb0c74fd6b1e2d0ca40d8e0a6973354f9e18
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21281469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be5ebb3e6a23d5d037ce5d4d4de9738b991db19d037842dd24429bf9fb608d54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 03:47:42 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Feb 2018 03:47:52 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 03:47:53 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 03:52:51 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 14 Feb 2018 03:52:52 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 03:52:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 03:52:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 03:52:54 GMT
USER [memcache]
# Wed, 14 Feb 2018 03:52:55 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 03:52:55 GMT
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
	-	`sha256:8f8e59386cf51aff6f61a662d09566fdeb532638645ad6bd8a402b32bdc2db2c`  
		Last Modified: Wed, 14 Feb 2018 03:57:48 GMT  
		Size: 948.0 KB (948036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c62a4b6662fd55c09ae4f40dce82a96f25cd483643ca9370893c2097718c839f`  
		Last Modified: Wed, 14 Feb 2018 03:57:47 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11976d4dc3d74e357f9e4aeffa32b690b43abe9ce5c0cdbbe65a2efce2de0e64`  
		Last Modified: Wed, 14 Feb 2018 03:57:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; 386

```console
$ docker pull memcached@sha256:c69d94a1c698aebb66014431917aa8cd8cb18c45f96e32d52ab66d351d22fd3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24113690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc924efce2d9b2b434372ce398b1bfde1802318926408ba8380e23cd1b231058`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:49:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Feb 2018 20:05:45 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 20:05:45 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 20:09:27 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 14 Feb 2018 20:09:27 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 20:09:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 20:09:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 20:09:28 GMT
USER [memcache]
# Wed, 14 Feb 2018 20:09:29 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 20:09:29 GMT
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
	-	`sha256:2069e8fe8e5caae50a1b9cfb84bda627e58c25a507244806e92360a433b93c1a`  
		Last Modified: Wed, 14 Feb 2018 20:23:39 GMT  
		Size: 989.1 KB (989084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d58ed1a71196d8b3cc42e1d56b1ddeec737fa541498c255c97802c40ca0350`  
		Last Modified: Wed, 14 Feb 2018 20:23:39 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf8eef997d43aee0e4af73861558620e11dde3315417648374ca3e36a01f4a1`  
		Last Modified: Wed, 14 Feb 2018 20:23:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; ppc64le

```console
$ docker pull memcached@sha256:527132ff49bc2b4298882b3c25ac25dac1ff3f6adff345815513c650ca3f6c2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23734846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2eeef18c29b98c7263b5c5a51c3afc8a55743f0058993dc94781c55bdd2e8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:36:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 05:36:56 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 05:36:57 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 05:43:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 05:43:35 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 05:43:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 05:43:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 05:43:43 GMT
USER [memcache]
# Thu, 15 Feb 2018 05:43:45 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 05:43:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6feefc8c0ce8e8b2576e58690248056fad0c5fe91ab39d661ea10c365222530b`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb4ecd42ba514dd70c484be92e085e6ca1cf346191b158b289bce7e8e20952c`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 979.6 KB (979578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01072d0bc6314984a565f60bea9dd02435130a1ce86772a7300cce1b3d5d0e9`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f18482c44a6e4920b2dad505a9e41c170a489fd4c0135f5ff74c7e655c33b7`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; s390x

```console
$ docker pull memcached@sha256:1096b8320bf19235980dafe2d0d57e4072a9c0aae24546121d91eb0aecf80aec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23332651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ba658230da18d9d5d9d38322b8a811bb68639d060985ee0032ddaed4fd8db6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:50 GMT
ADD file:8cd208817150f41f5b21f5c2b6641af023ddeaa6d842fe490190e20effe94a08 in / 
# Tue, 12 Dec 2017 06:25:51 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:36 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Feb 2018 18:34:11 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 18:34:12 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 18:37:34 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 14 Feb 2018 18:37:34 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 18:37:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 18:37:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 18:37:35 GMT
USER [memcache]
# Wed, 14 Feb 2018 18:37:35 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 18:37:35 GMT
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
	-	`sha256:0509b51fc06519a439fafbf5eade4297867950b0a832445a2395db23c20c2d90`  
		Last Modified: Wed, 14 Feb 2018 18:41:24 GMT  
		Size: 996.6 KB (996635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8f9edb76cd0709258bd14ef330e5bad5967264bbbc899269b7022b51afdc7f`  
		Last Modified: Wed, 14 Feb 2018 18:41:25 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b079bf926e7e4d7409b4bc6614fad1f9dd05dbeee4fd70effd7a2195578c4702`  
		Last Modified: Wed, 14 Feb 2018 18:41:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.5`

```console
$ docker pull memcached@sha256:c58e9fbd962290efbfa9a4c84c6b0501e3bda0d80b135cf7ca6bf24454de769c
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

### `memcached:1.5.5` - linux; amd64

```console
$ docker pull memcached@sha256:60e2ce3e8215d7ca744bbbafd9b11b7a95961ea068e1ad51a6c361ad3a9bd34b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23464093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b47a4ecc0a206457b4e5d6c30a0d0b0632fd13f6e60477ee9c000b2237013e27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:03:40 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 13 Feb 2018 22:32:06 GMT
ENV MEMCACHED_VERSION=1.5.5
# Tue, 13 Feb 2018 22:32:06 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Tue, 13 Feb 2018 22:35:36 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 13 Feb 2018 22:35:36 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 13 Feb 2018 22:35:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 13 Feb 2018 22:35:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Feb 2018 22:35:37 GMT
USER [memcache]
# Tue, 13 Feb 2018 22:35:38 GMT
EXPOSE 11211/tcp
# Tue, 13 Feb 2018 22:35:38 GMT
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
	-	`sha256:d95c60c11ef4dfcbbd6b780c57741d8daaacbdd870cfcb4d9d9e7d95eb475fac`  
		Last Modified: Tue, 13 Feb 2018 22:48:35 GMT  
		Size: 976.2 KB (976214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abe58aaaf9e3a20ed579657b39033c17bb49f4f26715c1b9919aee2ace2de52`  
		Last Modified: Tue, 13 Feb 2018 22:48:34 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4089b4f1b0d4a625547d484488aac4256bbeeb63ef7472797927c4764c39e1a`  
		Last Modified: Tue, 13 Feb 2018 22:48:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.5` - linux; arm variant v5

```console
$ docker pull memcached@sha256:755cd238efe0d67d61156b6de7c37c2539529142b41a7977cb4f6878fe59fb89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22129371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16b8d9133198be461da71eef6281d3bf502f67998b537de0cc69ad3155505b89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 15:38:30 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Feb 2018 19:35:33 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 19:35:34 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 19:48:26 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 14 Feb 2018 19:48:27 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 19:48:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 19:48:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 19:48:31 GMT
USER [memcache]
# Wed, 14 Feb 2018 19:48:32 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 19:48:33 GMT
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
	-	`sha256:5c9c82565fbfb569e9062370a686bb75af6ba02e4d35c8a72c5d5d0bf95cee89`  
		Last Modified: Wed, 14 Feb 2018 19:48:56 GMT  
		Size: 966.6 KB (966588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199fcfa2ae1da3fec4ce53725465b9765d8221836ee3d506f414fd8e0533ebbd`  
		Last Modified: Wed, 14 Feb 2018 19:48:55 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd2801dc46c2a77b3518c36b8c690a5dc2638d690130392f1414ea0a62f8e75`  
		Last Modified: Wed, 14 Feb 2018 19:48:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.5` - linux; arm variant v7

```console
$ docker pull memcached@sha256:ddbd438f7e5d055cf1b1fc0d63acf67e3dafbb26cd329933499719ff39cfa814
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20208454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa4774bfd9d2bd36b773cbf3f28054d06d0f574b475cca54f9f8c87955aec3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Fri, 19 Jan 2018 23:09:54 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Feb 2018 05:58:21 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 05:58:22 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 06:10:14 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 14 Feb 2018 06:10:15 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 06:10:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 06:10:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 06:10:20 GMT
USER [memcache]
# Wed, 14 Feb 2018 06:10:21 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 06:10:21 GMT
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
	-	`sha256:c31f7b7fd620aa9160faac0a48e41ba21836a73154c8ca8b4fb63f268f45a589`  
		Last Modified: Wed, 14 Feb 2018 06:10:43 GMT  
		Size: 935.3 KB (935270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db367df6aa714c4e9e69f2f6c098690669d8654f57254e8bc66c901f03b0a58`  
		Last Modified: Wed, 14 Feb 2018 06:10:42 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce7f02facaf673411d5c36f3b2f367e8cfbcfda3b0e031a2c8865624aca574c`  
		Last Modified: Wed, 14 Feb 2018 06:10:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.5` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:340f11f60a66b85d56229a4fad0dfb0c74fd6b1e2d0ca40d8e0a6973354f9e18
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21281469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be5ebb3e6a23d5d037ce5d4d4de9738b991db19d037842dd24429bf9fb608d54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 03:47:42 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Feb 2018 03:47:52 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 03:47:53 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 03:52:51 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 14 Feb 2018 03:52:52 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 03:52:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 03:52:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 03:52:54 GMT
USER [memcache]
# Wed, 14 Feb 2018 03:52:55 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 03:52:55 GMT
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
	-	`sha256:8f8e59386cf51aff6f61a662d09566fdeb532638645ad6bd8a402b32bdc2db2c`  
		Last Modified: Wed, 14 Feb 2018 03:57:48 GMT  
		Size: 948.0 KB (948036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c62a4b6662fd55c09ae4f40dce82a96f25cd483643ca9370893c2097718c839f`  
		Last Modified: Wed, 14 Feb 2018 03:57:47 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11976d4dc3d74e357f9e4aeffa32b690b43abe9ce5c0cdbbe65a2efce2de0e64`  
		Last Modified: Wed, 14 Feb 2018 03:57:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.5` - linux; 386

```console
$ docker pull memcached@sha256:c69d94a1c698aebb66014431917aa8cd8cb18c45f96e32d52ab66d351d22fd3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24113690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc924efce2d9b2b434372ce398b1bfde1802318926408ba8380e23cd1b231058`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:49:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Feb 2018 20:05:45 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 20:05:45 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 20:09:27 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 14 Feb 2018 20:09:27 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 20:09:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 20:09:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 20:09:28 GMT
USER [memcache]
# Wed, 14 Feb 2018 20:09:29 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 20:09:29 GMT
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
	-	`sha256:2069e8fe8e5caae50a1b9cfb84bda627e58c25a507244806e92360a433b93c1a`  
		Last Modified: Wed, 14 Feb 2018 20:23:39 GMT  
		Size: 989.1 KB (989084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d58ed1a71196d8b3cc42e1d56b1ddeec737fa541498c255c97802c40ca0350`  
		Last Modified: Wed, 14 Feb 2018 20:23:39 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf8eef997d43aee0e4af73861558620e11dde3315417648374ca3e36a01f4a1`  
		Last Modified: Wed, 14 Feb 2018 20:23:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.5` - linux; ppc64le

```console
$ docker pull memcached@sha256:527132ff49bc2b4298882b3c25ac25dac1ff3f6adff345815513c650ca3f6c2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23734846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2eeef18c29b98c7263b5c5a51c3afc8a55743f0058993dc94781c55bdd2e8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:36:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 05:36:56 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 05:36:57 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 05:43:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 05:43:35 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 05:43:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 05:43:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 05:43:43 GMT
USER [memcache]
# Thu, 15 Feb 2018 05:43:45 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 05:43:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6feefc8c0ce8e8b2576e58690248056fad0c5fe91ab39d661ea10c365222530b`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb4ecd42ba514dd70c484be92e085e6ca1cf346191b158b289bce7e8e20952c`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 979.6 KB (979578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01072d0bc6314984a565f60bea9dd02435130a1ce86772a7300cce1b3d5d0e9`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f18482c44a6e4920b2dad505a9e41c170a489fd4c0135f5ff74c7e655c33b7`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.5` - linux; s390x

```console
$ docker pull memcached@sha256:1096b8320bf19235980dafe2d0d57e4072a9c0aae24546121d91eb0aecf80aec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23332651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ba658230da18d9d5d9d38322b8a811bb68639d060985ee0032ddaed4fd8db6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:50 GMT
ADD file:8cd208817150f41f5b21f5c2b6641af023ddeaa6d842fe490190e20effe94a08 in / 
# Tue, 12 Dec 2017 06:25:51 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:36 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Feb 2018 18:34:11 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 18:34:12 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 18:37:34 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 14 Feb 2018 18:37:34 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 18:37:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 18:37:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 18:37:35 GMT
USER [memcache]
# Wed, 14 Feb 2018 18:37:35 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 18:37:35 GMT
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
	-	`sha256:0509b51fc06519a439fafbf5eade4297867950b0a832445a2395db23c20c2d90`  
		Last Modified: Wed, 14 Feb 2018 18:41:24 GMT  
		Size: 996.6 KB (996635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8f9edb76cd0709258bd14ef330e5bad5967264bbbc899269b7022b51afdc7f`  
		Last Modified: Wed, 14 Feb 2018 18:41:25 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b079bf926e7e4d7409b4bc6614fad1f9dd05dbeee4fd70effd7a2195578c4702`  
		Last Modified: Wed, 14 Feb 2018 18:41:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.5-alpine`

```console
$ docker pull memcached@sha256:789b41012c96a5440613e215e6d70a2dd3760f840832791206a916a9cb62541f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5.5-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:5a03ab4762b7a9bac7f814eb5bbc9d5db5bd8eb3710d4548b5df1b99f09ee4b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3803665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b97d9b2ea1ab802c8a9da3e0489b0f8847b628e8c74ab4e5389aa9fd4192241`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Tue, 13 Feb 2018 22:35:55 GMT
ENV MEMCACHED_VERSION=1.5.5
# Tue, 13 Feb 2018 22:35:55 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Tue, 13 Feb 2018 22:39:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 13 Feb 2018 22:48:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 13 Feb 2018 22:48:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 13 Feb 2018 22:48:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Feb 2018 22:48:14 GMT
USER [memcache]
# Tue, 13 Feb 2018 22:48:14 GMT
EXPOSE 11211/tcp
# Tue, 13 Feb 2018 22:48:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2dd15093416a9c9620ddfa18507f40ab70c5f3fd5b338e34990af372932a3d`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83846c5edccf2fe948d0e017e6b2959080259f66776ada51599f2c189d1de560`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 1.7 MB (1736475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934b6753283a8c4672aafa787f0313bd637ba5448426bad086aa3949b8e13e4`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0dfbb0d80be278a8b1887853fd2d0654a571e79f96e517f9f9c00d84e0134a`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

### `memcached:1.5.5-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:55d7a4c5ea4b149536644eb36f1b8c91ee4d78ec7ff1bf68f11dffb37ea7c6b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3672284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5759af40bd88485f070277d8629d1e93d159bb6d5d762b275091945466b87d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 04:16:39 GMT
RUN adduser -D memcache
# Wed, 14 Feb 2018 03:53:17 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 03:53:18 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 03:57:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 03:57:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 03:57:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 03:57:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 03:57:20 GMT
USER [memcache]
# Wed, 14 Feb 2018 03:57:21 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 03:57:22 GMT
CMD ["memcached"]
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
	-	`sha256:151c071afab1ab7b08ef0dbe8e2ea271716a48481c9f03bf22500bddd9538556`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d35ba3fdc1fb193d97fbc5b80f508dc3c555cf5d2b138e3ee06ae3645d9759`  
		Last Modified: Wed, 14 Feb 2018 03:58:38 GMT  
		Size: 1.7 MB (1681602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a138e2c35f452177cbf4201fbf0b2a5cc1ee6c1aefeaadd519ee40dc3d5686da`  
		Last Modified: Wed, 14 Feb 2018 03:58:38 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae51b3da4445cd7ea23278d020c36eac8cf9d47fd4fcc9b3c5ceb1dddab58226`  
		Last Modified: Wed, 14 Feb 2018 03:58:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.5-alpine` - linux; 386

```console
$ docker pull memcached@sha256:8d36e6b812055e22d9e2cc342e6f16e8272c59f01434050e572d3ff42646ce42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3965533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2edb95fd0bd931f2e47f0eba743e4ae5c19314e082e950ddf42d497215eca9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 21:15:00 GMT
RUN adduser -D memcache
# Wed, 14 Feb 2018 20:17:31 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 20:17:31 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 20:21:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 20:21:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 20:21:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 20:21:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 20:21:19 GMT
USER [memcache]
# Wed, 14 Feb 2018 20:21:19 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 20:21:19 GMT
CMD ["memcached"]
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
	-	`sha256:0e764ac324ae5f248d64a1c76d7f7962178040706dce50136076b67b727edbd7`  
		Last Modified: Fri, 19 Jan 2018 21:27:28 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b779cd18e8ea12b4abb7779549416d5399b36a8604272e0f58bd3c8be498341e`  
		Last Modified: Wed, 14 Feb 2018 20:32:01 GMT  
		Size: 1.8 MB (1837487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132f47e2023352d45de9b333f1614cbf93ce114d4795a7e9b58e8d46e03945e`  
		Last Modified: Wed, 14 Feb 2018 20:32:00 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e065b370241b7e4c7c65b876d0a0c7b82ad7f4cacd31ee9bff55990725df40c`  
		Last Modified: Wed, 14 Feb 2018 20:32:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.5-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:94d6f9798a0b07df249110e2267b8ede9dbc83686900879fb4ae459389e56df1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3825221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b73033648d2464cbea1f2b7756746fd29211ff412e80383253c048bdf90fa37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:33:29 GMT
RUN adduser -D memcache
# Wed, 14 Feb 2018 01:39:56 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 01:39:57 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 01:43:52 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 01:43:53 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 01:43:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 01:43:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 01:43:59 GMT
USER [memcache]
# Wed, 14 Feb 2018 01:44:01 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 01:44:02 GMT
CMD ["memcached"]
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
	-	`sha256:ab31b119386a086d3a80f01a107e952063d9f94f3a50fe9a2dabc1b8fdd2b087`  
		Last Modified: Fri, 19 Jan 2018 01:37:46 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884bee6c027d56be8398c34ca157c970512432133b5fd000ed9fd813ffb23d09`  
		Last Modified: Wed, 14 Feb 2018 01:44:41 GMT  
		Size: 1.7 MB (1741893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2ff5847d4379ed9d5ed11c4a744815b23ca20fd213fddec3c2753d8ca1b88f`  
		Last Modified: Wed, 14 Feb 2018 01:44:40 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740314290d892e661d3b5425ceb702620567969eaf59a5b6e45ba61a10a24108`  
		Last Modified: Wed, 14 Feb 2018 01:44:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.5-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:fcf39878ad8bd1f8f59077cebe8780681731aa1a24f87a4feaf2cfa9d58ee1b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3602255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:198bd59cab695b4394b2c24083fbebfa95e9ab4ddc10817db81f76e7299c28cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 18:33:29 GMT
RUN adduser -D memcache
# Wed, 14 Feb 2018 18:37:46 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 18:37:46 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 18:41:03 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 18:41:03 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 18:41:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 18:41:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 18:41:04 GMT
USER [memcache]
# Wed, 14 Feb 2018 18:41:04 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 18:41:04 GMT
CMD ["memcached"]
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
	-	`sha256:3ee38c4a66157820c6274c579d65ea2b83987e188f25c816a44863a47059c895`  
		Last Modified: Fri, 19 Jan 2018 18:37:09 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc85a8c2d6716f7e0ea20bb79a1da00b9d6704ae68f3cf722521c6f5a973c736`  
		Last Modified: Wed, 14 Feb 2018 18:41:37 GMT  
		Size: 1.4 MB (1415206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a25252c5a19b062e078bd68c12bd3856b151ac5cd4debf191ced978c854856a`  
		Last Modified: Wed, 14 Feb 2018 18:41:36 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710022e211c4c2658844ba52f4464c9c330b64a08d2267fd5b81c02cf95750e8`  
		Last Modified: Wed, 14 Feb 2018 18:41:37 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:789b41012c96a5440613e215e6d70a2dd3760f840832791206a916a9cb62541f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:5a03ab4762b7a9bac7f814eb5bbc9d5db5bd8eb3710d4548b5df1b99f09ee4b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3803665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b97d9b2ea1ab802c8a9da3e0489b0f8847b628e8c74ab4e5389aa9fd4192241`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Tue, 13 Feb 2018 22:35:55 GMT
ENV MEMCACHED_VERSION=1.5.5
# Tue, 13 Feb 2018 22:35:55 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Tue, 13 Feb 2018 22:39:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 13 Feb 2018 22:48:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 13 Feb 2018 22:48:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 13 Feb 2018 22:48:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Feb 2018 22:48:14 GMT
USER [memcache]
# Tue, 13 Feb 2018 22:48:14 GMT
EXPOSE 11211/tcp
# Tue, 13 Feb 2018 22:48:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2dd15093416a9c9620ddfa18507f40ab70c5f3fd5b338e34990af372932a3d`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83846c5edccf2fe948d0e017e6b2959080259f66776ada51599f2c189d1de560`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 1.7 MB (1736475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934b6753283a8c4672aafa787f0313bd637ba5448426bad086aa3949b8e13e4`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0dfbb0d80be278a8b1887853fd2d0654a571e79f96e517f9f9c00d84e0134a`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

### `memcached:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:55d7a4c5ea4b149536644eb36f1b8c91ee4d78ec7ff1bf68f11dffb37ea7c6b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3672284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5759af40bd88485f070277d8629d1e93d159bb6d5d762b275091945466b87d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 04:16:39 GMT
RUN adduser -D memcache
# Wed, 14 Feb 2018 03:53:17 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 03:53:18 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 03:57:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 03:57:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 03:57:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 03:57:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 03:57:20 GMT
USER [memcache]
# Wed, 14 Feb 2018 03:57:21 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 03:57:22 GMT
CMD ["memcached"]
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
	-	`sha256:151c071afab1ab7b08ef0dbe8e2ea271716a48481c9f03bf22500bddd9538556`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d35ba3fdc1fb193d97fbc5b80f508dc3c555cf5d2b138e3ee06ae3645d9759`  
		Last Modified: Wed, 14 Feb 2018 03:58:38 GMT  
		Size: 1.7 MB (1681602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a138e2c35f452177cbf4201fbf0b2a5cc1ee6c1aefeaadd519ee40dc3d5686da`  
		Last Modified: Wed, 14 Feb 2018 03:58:38 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae51b3da4445cd7ea23278d020c36eac8cf9d47fd4fcc9b3c5ceb1dddab58226`  
		Last Modified: Wed, 14 Feb 2018 03:58:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; 386

```console
$ docker pull memcached@sha256:8d36e6b812055e22d9e2cc342e6f16e8272c59f01434050e572d3ff42646ce42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3965533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2edb95fd0bd931f2e47f0eba743e4ae5c19314e082e950ddf42d497215eca9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 21:15:00 GMT
RUN adduser -D memcache
# Wed, 14 Feb 2018 20:17:31 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 20:17:31 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 20:21:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 20:21:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 20:21:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 20:21:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 20:21:19 GMT
USER [memcache]
# Wed, 14 Feb 2018 20:21:19 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 20:21:19 GMT
CMD ["memcached"]
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
	-	`sha256:0e764ac324ae5f248d64a1c76d7f7962178040706dce50136076b67b727edbd7`  
		Last Modified: Fri, 19 Jan 2018 21:27:28 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b779cd18e8ea12b4abb7779549416d5399b36a8604272e0f58bd3c8be498341e`  
		Last Modified: Wed, 14 Feb 2018 20:32:01 GMT  
		Size: 1.8 MB (1837487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132f47e2023352d45de9b333f1614cbf93ce114d4795a7e9b58e8d46e03945e`  
		Last Modified: Wed, 14 Feb 2018 20:32:00 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e065b370241b7e4c7c65b876d0a0c7b82ad7f4cacd31ee9bff55990725df40c`  
		Last Modified: Wed, 14 Feb 2018 20:32:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:94d6f9798a0b07df249110e2267b8ede9dbc83686900879fb4ae459389e56df1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3825221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b73033648d2464cbea1f2b7756746fd29211ff412e80383253c048bdf90fa37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:33:29 GMT
RUN adduser -D memcache
# Wed, 14 Feb 2018 01:39:56 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 01:39:57 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 01:43:52 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 01:43:53 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 01:43:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 01:43:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 01:43:59 GMT
USER [memcache]
# Wed, 14 Feb 2018 01:44:01 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 01:44:02 GMT
CMD ["memcached"]
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
	-	`sha256:ab31b119386a086d3a80f01a107e952063d9f94f3a50fe9a2dabc1b8fdd2b087`  
		Last Modified: Fri, 19 Jan 2018 01:37:46 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884bee6c027d56be8398c34ca157c970512432133b5fd000ed9fd813ffb23d09`  
		Last Modified: Wed, 14 Feb 2018 01:44:41 GMT  
		Size: 1.7 MB (1741893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2ff5847d4379ed9d5ed11c4a744815b23ca20fd213fddec3c2753d8ca1b88f`  
		Last Modified: Wed, 14 Feb 2018 01:44:40 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740314290d892e661d3b5425ceb702620567969eaf59a5b6e45ba61a10a24108`  
		Last Modified: Wed, 14 Feb 2018 01:44:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:fcf39878ad8bd1f8f59077cebe8780681731aa1a24f87a4feaf2cfa9d58ee1b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3602255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:198bd59cab695b4394b2c24083fbebfa95e9ab4ddc10817db81f76e7299c28cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 18:33:29 GMT
RUN adduser -D memcache
# Wed, 14 Feb 2018 18:37:46 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 18:37:46 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 18:41:03 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 18:41:03 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 18:41:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 18:41:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 18:41:04 GMT
USER [memcache]
# Wed, 14 Feb 2018 18:41:04 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 18:41:04 GMT
CMD ["memcached"]
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
	-	`sha256:3ee38c4a66157820c6274c579d65ea2b83987e188f25c816a44863a47059c895`  
		Last Modified: Fri, 19 Jan 2018 18:37:09 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc85a8c2d6716f7e0ea20bb79a1da00b9d6704ae68f3cf722521c6f5a973c736`  
		Last Modified: Wed, 14 Feb 2018 18:41:37 GMT  
		Size: 1.4 MB (1415206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a25252c5a19b062e078bd68c12bd3856b151ac5cd4debf191ced978c854856a`  
		Last Modified: Wed, 14 Feb 2018 18:41:36 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710022e211c4c2658844ba52f4464c9c330b64a08d2267fd5b81c02cf95750e8`  
		Last Modified: Wed, 14 Feb 2018 18:41:37 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:789b41012c96a5440613e215e6d70a2dd3760f840832791206a916a9cb62541f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:5a03ab4762b7a9bac7f814eb5bbc9d5db5bd8eb3710d4548b5df1b99f09ee4b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3803665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b97d9b2ea1ab802c8a9da3e0489b0f8847b628e8c74ab4e5389aa9fd4192241`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Tue, 13 Feb 2018 22:35:55 GMT
ENV MEMCACHED_VERSION=1.5.5
# Tue, 13 Feb 2018 22:35:55 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Tue, 13 Feb 2018 22:39:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 13 Feb 2018 22:48:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 13 Feb 2018 22:48:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 13 Feb 2018 22:48:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Feb 2018 22:48:14 GMT
USER [memcache]
# Tue, 13 Feb 2018 22:48:14 GMT
EXPOSE 11211/tcp
# Tue, 13 Feb 2018 22:48:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2dd15093416a9c9620ddfa18507f40ab70c5f3fd5b338e34990af372932a3d`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83846c5edccf2fe948d0e017e6b2959080259f66776ada51599f2c189d1de560`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 1.7 MB (1736475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934b6753283a8c4672aafa787f0313bd637ba5448426bad086aa3949b8e13e4`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0dfbb0d80be278a8b1887853fd2d0654a571e79f96e517f9f9c00d84e0134a`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:55d7a4c5ea4b149536644eb36f1b8c91ee4d78ec7ff1bf68f11dffb37ea7c6b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3672284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5759af40bd88485f070277d8629d1e93d159bb6d5d762b275091945466b87d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 04:16:39 GMT
RUN adduser -D memcache
# Wed, 14 Feb 2018 03:53:17 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 03:53:18 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 03:57:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 03:57:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 03:57:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 03:57:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 03:57:20 GMT
USER [memcache]
# Wed, 14 Feb 2018 03:57:21 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 03:57:22 GMT
CMD ["memcached"]
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
	-	`sha256:151c071afab1ab7b08ef0dbe8e2ea271716a48481c9f03bf22500bddd9538556`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d35ba3fdc1fb193d97fbc5b80f508dc3c555cf5d2b138e3ee06ae3645d9759`  
		Last Modified: Wed, 14 Feb 2018 03:58:38 GMT  
		Size: 1.7 MB (1681602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a138e2c35f452177cbf4201fbf0b2a5cc1ee6c1aefeaadd519ee40dc3d5686da`  
		Last Modified: Wed, 14 Feb 2018 03:58:38 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae51b3da4445cd7ea23278d020c36eac8cf9d47fd4fcc9b3c5ceb1dddab58226`  
		Last Modified: Wed, 14 Feb 2018 03:58:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:8d36e6b812055e22d9e2cc342e6f16e8272c59f01434050e572d3ff42646ce42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3965533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2edb95fd0bd931f2e47f0eba743e4ae5c19314e082e950ddf42d497215eca9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 21:15:00 GMT
RUN adduser -D memcache
# Wed, 14 Feb 2018 20:17:31 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 20:17:31 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 20:21:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 20:21:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 20:21:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 20:21:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 20:21:19 GMT
USER [memcache]
# Wed, 14 Feb 2018 20:21:19 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 20:21:19 GMT
CMD ["memcached"]
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
	-	`sha256:0e764ac324ae5f248d64a1c76d7f7962178040706dce50136076b67b727edbd7`  
		Last Modified: Fri, 19 Jan 2018 21:27:28 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b779cd18e8ea12b4abb7779549416d5399b36a8604272e0f58bd3c8be498341e`  
		Last Modified: Wed, 14 Feb 2018 20:32:01 GMT  
		Size: 1.8 MB (1837487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132f47e2023352d45de9b333f1614cbf93ce114d4795a7e9b58e8d46e03945e`  
		Last Modified: Wed, 14 Feb 2018 20:32:00 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e065b370241b7e4c7c65b876d0a0c7b82ad7f4cacd31ee9bff55990725df40c`  
		Last Modified: Wed, 14 Feb 2018 20:32:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:94d6f9798a0b07df249110e2267b8ede9dbc83686900879fb4ae459389e56df1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3825221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b73033648d2464cbea1f2b7756746fd29211ff412e80383253c048bdf90fa37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:33:29 GMT
RUN adduser -D memcache
# Wed, 14 Feb 2018 01:39:56 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 01:39:57 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 01:43:52 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 01:43:53 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 01:43:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 01:43:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 01:43:59 GMT
USER [memcache]
# Wed, 14 Feb 2018 01:44:01 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 01:44:02 GMT
CMD ["memcached"]
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
	-	`sha256:ab31b119386a086d3a80f01a107e952063d9f94f3a50fe9a2dabc1b8fdd2b087`  
		Last Modified: Fri, 19 Jan 2018 01:37:46 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884bee6c027d56be8398c34ca157c970512432133b5fd000ed9fd813ffb23d09`  
		Last Modified: Wed, 14 Feb 2018 01:44:41 GMT  
		Size: 1.7 MB (1741893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2ff5847d4379ed9d5ed11c4a744815b23ca20fd213fddec3c2753d8ca1b88f`  
		Last Modified: Wed, 14 Feb 2018 01:44:40 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740314290d892e661d3b5425ceb702620567969eaf59a5b6e45ba61a10a24108`  
		Last Modified: Wed, 14 Feb 2018 01:44:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:fcf39878ad8bd1f8f59077cebe8780681731aa1a24f87a4feaf2cfa9d58ee1b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3602255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:198bd59cab695b4394b2c24083fbebfa95e9ab4ddc10817db81f76e7299c28cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 18:33:29 GMT
RUN adduser -D memcache
# Wed, 14 Feb 2018 18:37:46 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 18:37:46 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 18:41:03 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 18:41:03 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 18:41:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 18:41:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 18:41:04 GMT
USER [memcache]
# Wed, 14 Feb 2018 18:41:04 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 18:41:04 GMT
CMD ["memcached"]
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
	-	`sha256:3ee38c4a66157820c6274c579d65ea2b83987e188f25c816a44863a47059c895`  
		Last Modified: Fri, 19 Jan 2018 18:37:09 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc85a8c2d6716f7e0ea20bb79a1da00b9d6704ae68f3cf722521c6f5a973c736`  
		Last Modified: Wed, 14 Feb 2018 18:41:37 GMT  
		Size: 1.4 MB (1415206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a25252c5a19b062e078bd68c12bd3856b151ac5cd4debf191ced978c854856a`  
		Last Modified: Wed, 14 Feb 2018 18:41:36 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710022e211c4c2658844ba52f4464c9c330b64a08d2267fd5b81c02cf95750e8`  
		Last Modified: Wed, 14 Feb 2018 18:41:37 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:789b41012c96a5440613e215e6d70a2dd3760f840832791206a916a9cb62541f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:alpine` - linux; amd64

```console
$ docker pull memcached@sha256:5a03ab4762b7a9bac7f814eb5bbc9d5db5bd8eb3710d4548b5df1b99f09ee4b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3803665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b97d9b2ea1ab802c8a9da3e0489b0f8847b628e8c74ab4e5389aa9fd4192241`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Tue, 13 Feb 2018 22:35:55 GMT
ENV MEMCACHED_VERSION=1.5.5
# Tue, 13 Feb 2018 22:35:55 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Tue, 13 Feb 2018 22:39:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 13 Feb 2018 22:48:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 13 Feb 2018 22:48:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 13 Feb 2018 22:48:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Feb 2018 22:48:14 GMT
USER [memcache]
# Tue, 13 Feb 2018 22:48:14 GMT
EXPOSE 11211/tcp
# Tue, 13 Feb 2018 22:48:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2dd15093416a9c9620ddfa18507f40ab70c5f3fd5b338e34990af372932a3d`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83846c5edccf2fe948d0e017e6b2959080259f66776ada51599f2c189d1de560`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 1.7 MB (1736475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934b6753283a8c4672aafa787f0313bd637ba5448426bad086aa3949b8e13e4`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0dfbb0d80be278a8b1887853fd2d0654a571e79f96e517f9f9c00d84e0134a`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:55d7a4c5ea4b149536644eb36f1b8c91ee4d78ec7ff1bf68f11dffb37ea7c6b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3672284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5759af40bd88485f070277d8629d1e93d159bb6d5d762b275091945466b87d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 04:16:39 GMT
RUN adduser -D memcache
# Wed, 14 Feb 2018 03:53:17 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 03:53:18 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 03:57:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 03:57:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 03:57:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 03:57:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 03:57:20 GMT
USER [memcache]
# Wed, 14 Feb 2018 03:57:21 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 03:57:22 GMT
CMD ["memcached"]
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
	-	`sha256:151c071afab1ab7b08ef0dbe8e2ea271716a48481c9f03bf22500bddd9538556`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d35ba3fdc1fb193d97fbc5b80f508dc3c555cf5d2b138e3ee06ae3645d9759`  
		Last Modified: Wed, 14 Feb 2018 03:58:38 GMT  
		Size: 1.7 MB (1681602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a138e2c35f452177cbf4201fbf0b2a5cc1ee6c1aefeaadd519ee40dc3d5686da`  
		Last Modified: Wed, 14 Feb 2018 03:58:38 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae51b3da4445cd7ea23278d020c36eac8cf9d47fd4fcc9b3c5ceb1dddab58226`  
		Last Modified: Wed, 14 Feb 2018 03:58:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; 386

```console
$ docker pull memcached@sha256:8d36e6b812055e22d9e2cc342e6f16e8272c59f01434050e572d3ff42646ce42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3965533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2edb95fd0bd931f2e47f0eba743e4ae5c19314e082e950ddf42d497215eca9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 21:15:00 GMT
RUN adduser -D memcache
# Wed, 14 Feb 2018 20:17:31 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 20:17:31 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 20:21:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 20:21:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 20:21:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 20:21:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 20:21:19 GMT
USER [memcache]
# Wed, 14 Feb 2018 20:21:19 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 20:21:19 GMT
CMD ["memcached"]
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
	-	`sha256:0e764ac324ae5f248d64a1c76d7f7962178040706dce50136076b67b727edbd7`  
		Last Modified: Fri, 19 Jan 2018 21:27:28 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b779cd18e8ea12b4abb7779549416d5399b36a8604272e0f58bd3c8be498341e`  
		Last Modified: Wed, 14 Feb 2018 20:32:01 GMT  
		Size: 1.8 MB (1837487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132f47e2023352d45de9b333f1614cbf93ce114d4795a7e9b58e8d46e03945e`  
		Last Modified: Wed, 14 Feb 2018 20:32:00 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e065b370241b7e4c7c65b876d0a0c7b82ad7f4cacd31ee9bff55990725df40c`  
		Last Modified: Wed, 14 Feb 2018 20:32:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:94d6f9798a0b07df249110e2267b8ede9dbc83686900879fb4ae459389e56df1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3825221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b73033648d2464cbea1f2b7756746fd29211ff412e80383253c048bdf90fa37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:33:29 GMT
RUN adduser -D memcache
# Wed, 14 Feb 2018 01:39:56 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 01:39:57 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 01:43:52 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 01:43:53 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 01:43:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 01:43:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 01:43:59 GMT
USER [memcache]
# Wed, 14 Feb 2018 01:44:01 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 01:44:02 GMT
CMD ["memcached"]
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
	-	`sha256:ab31b119386a086d3a80f01a107e952063d9f94f3a50fe9a2dabc1b8fdd2b087`  
		Last Modified: Fri, 19 Jan 2018 01:37:46 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884bee6c027d56be8398c34ca157c970512432133b5fd000ed9fd813ffb23d09`  
		Last Modified: Wed, 14 Feb 2018 01:44:41 GMT  
		Size: 1.7 MB (1741893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2ff5847d4379ed9d5ed11c4a744815b23ca20fd213fddec3c2753d8ca1b88f`  
		Last Modified: Wed, 14 Feb 2018 01:44:40 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740314290d892e661d3b5425ceb702620567969eaf59a5b6e45ba61a10a24108`  
		Last Modified: Wed, 14 Feb 2018 01:44:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; s390x

```console
$ docker pull memcached@sha256:fcf39878ad8bd1f8f59077cebe8780681731aa1a24f87a4feaf2cfa9d58ee1b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3602255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:198bd59cab695b4394b2c24083fbebfa95e9ab4ddc10817db81f76e7299c28cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 18:33:29 GMT
RUN adduser -D memcache
# Wed, 14 Feb 2018 18:37:46 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 18:37:46 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 18:41:03 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 18:41:03 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 18:41:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 18:41:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 18:41:04 GMT
USER [memcache]
# Wed, 14 Feb 2018 18:41:04 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 18:41:04 GMT
CMD ["memcached"]
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
	-	`sha256:3ee38c4a66157820c6274c579d65ea2b83987e188f25c816a44863a47059c895`  
		Last Modified: Fri, 19 Jan 2018 18:37:09 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc85a8c2d6716f7e0ea20bb79a1da00b9d6704ae68f3cf722521c6f5a973c736`  
		Last Modified: Wed, 14 Feb 2018 18:41:37 GMT  
		Size: 1.4 MB (1415206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a25252c5a19b062e078bd68c12bd3856b151ac5cd4debf191ced978c854856a`  
		Last Modified: Wed, 14 Feb 2018 18:41:36 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710022e211c4c2658844ba52f4464c9c330b64a08d2267fd5b81c02cf95750e8`  
		Last Modified: Wed, 14 Feb 2018 18:41:37 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:c58e9fbd962290efbfa9a4c84c6b0501e3bda0d80b135cf7ca6bf24454de769c
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
$ docker pull memcached@sha256:60e2ce3e8215d7ca744bbbafd9b11b7a95961ea068e1ad51a6c361ad3a9bd34b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23464093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b47a4ecc0a206457b4e5d6c30a0d0b0632fd13f6e60477ee9c000b2237013e27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:03:40 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 13 Feb 2018 22:32:06 GMT
ENV MEMCACHED_VERSION=1.5.5
# Tue, 13 Feb 2018 22:32:06 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Tue, 13 Feb 2018 22:35:36 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 13 Feb 2018 22:35:36 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 13 Feb 2018 22:35:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 13 Feb 2018 22:35:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Feb 2018 22:35:37 GMT
USER [memcache]
# Tue, 13 Feb 2018 22:35:38 GMT
EXPOSE 11211/tcp
# Tue, 13 Feb 2018 22:35:38 GMT
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
	-	`sha256:d95c60c11ef4dfcbbd6b780c57741d8daaacbdd870cfcb4d9d9e7d95eb475fac`  
		Last Modified: Tue, 13 Feb 2018 22:48:35 GMT  
		Size: 976.2 KB (976214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abe58aaaf9e3a20ed579657b39033c17bb49f4f26715c1b9919aee2ace2de52`  
		Last Modified: Tue, 13 Feb 2018 22:48:34 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4089b4f1b0d4a625547d484488aac4256bbeeb63ef7472797927c4764c39e1a`  
		Last Modified: Tue, 13 Feb 2018 22:48:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:755cd238efe0d67d61156b6de7c37c2539529142b41a7977cb4f6878fe59fb89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22129371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16b8d9133198be461da71eef6281d3bf502f67998b537de0cc69ad3155505b89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 15:38:30 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Feb 2018 19:35:33 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 19:35:34 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 19:48:26 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 14 Feb 2018 19:48:27 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 19:48:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 19:48:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 19:48:31 GMT
USER [memcache]
# Wed, 14 Feb 2018 19:48:32 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 19:48:33 GMT
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
	-	`sha256:5c9c82565fbfb569e9062370a686bb75af6ba02e4d35c8a72c5d5d0bf95cee89`  
		Last Modified: Wed, 14 Feb 2018 19:48:56 GMT  
		Size: 966.6 KB (966588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199fcfa2ae1da3fec4ce53725465b9765d8221836ee3d506f414fd8e0533ebbd`  
		Last Modified: Wed, 14 Feb 2018 19:48:55 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd2801dc46c2a77b3518c36b8c690a5dc2638d690130392f1414ea0a62f8e75`  
		Last Modified: Wed, 14 Feb 2018 19:48:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:ddbd438f7e5d055cf1b1fc0d63acf67e3dafbb26cd329933499719ff39cfa814
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20208454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa4774bfd9d2bd36b773cbf3f28054d06d0f574b475cca54f9f8c87955aec3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Fri, 19 Jan 2018 23:09:54 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Feb 2018 05:58:21 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 05:58:22 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 06:10:14 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 14 Feb 2018 06:10:15 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 06:10:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 06:10:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 06:10:20 GMT
USER [memcache]
# Wed, 14 Feb 2018 06:10:21 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 06:10:21 GMT
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
	-	`sha256:c31f7b7fd620aa9160faac0a48e41ba21836a73154c8ca8b4fb63f268f45a589`  
		Last Modified: Wed, 14 Feb 2018 06:10:43 GMT  
		Size: 935.3 KB (935270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db367df6aa714c4e9e69f2f6c098690669d8654f57254e8bc66c901f03b0a58`  
		Last Modified: Wed, 14 Feb 2018 06:10:42 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce7f02facaf673411d5c36f3b2f367e8cfbcfda3b0e031a2c8865624aca574c`  
		Last Modified: Wed, 14 Feb 2018 06:10:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:340f11f60a66b85d56229a4fad0dfb0c74fd6b1e2d0ca40d8e0a6973354f9e18
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21281469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be5ebb3e6a23d5d037ce5d4d4de9738b991db19d037842dd24429bf9fb608d54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 03:47:42 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Feb 2018 03:47:52 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 03:47:53 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 03:52:51 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 14 Feb 2018 03:52:52 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 03:52:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 03:52:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 03:52:54 GMT
USER [memcache]
# Wed, 14 Feb 2018 03:52:55 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 03:52:55 GMT
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
	-	`sha256:8f8e59386cf51aff6f61a662d09566fdeb532638645ad6bd8a402b32bdc2db2c`  
		Last Modified: Wed, 14 Feb 2018 03:57:48 GMT  
		Size: 948.0 KB (948036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c62a4b6662fd55c09ae4f40dce82a96f25cd483643ca9370893c2097718c839f`  
		Last Modified: Wed, 14 Feb 2018 03:57:47 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11976d4dc3d74e357f9e4aeffa32b690b43abe9ce5c0cdbbe65a2efce2de0e64`  
		Last Modified: Wed, 14 Feb 2018 03:57:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:c69d94a1c698aebb66014431917aa8cd8cb18c45f96e32d52ab66d351d22fd3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24113690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc924efce2d9b2b434372ce398b1bfde1802318926408ba8380e23cd1b231058`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:49:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Feb 2018 20:05:45 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 20:05:45 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 20:09:27 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 14 Feb 2018 20:09:27 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 20:09:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 20:09:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 20:09:28 GMT
USER [memcache]
# Wed, 14 Feb 2018 20:09:29 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 20:09:29 GMT
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
	-	`sha256:2069e8fe8e5caae50a1b9cfb84bda627e58c25a507244806e92360a433b93c1a`  
		Last Modified: Wed, 14 Feb 2018 20:23:39 GMT  
		Size: 989.1 KB (989084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d58ed1a71196d8b3cc42e1d56b1ddeec737fa541498c255c97802c40ca0350`  
		Last Modified: Wed, 14 Feb 2018 20:23:39 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf8eef997d43aee0e4af73861558620e11dde3315417648374ca3e36a01f4a1`  
		Last Modified: Wed, 14 Feb 2018 20:23:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:527132ff49bc2b4298882b3c25ac25dac1ff3f6adff345815513c650ca3f6c2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23734846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2eeef18c29b98c7263b5c5a51c3afc8a55743f0058993dc94781c55bdd2e8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:36:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 05:36:56 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 05:36:57 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 05:43:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 05:43:35 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 05:43:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 05:43:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 05:43:43 GMT
USER [memcache]
# Thu, 15 Feb 2018 05:43:45 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 05:43:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6feefc8c0ce8e8b2576e58690248056fad0c5fe91ab39d661ea10c365222530b`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb4ecd42ba514dd70c484be92e085e6ca1cf346191b158b289bce7e8e20952c`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 979.6 KB (979578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01072d0bc6314984a565f60bea9dd02435130a1ce86772a7300cce1b3d5d0e9`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f18482c44a6e4920b2dad505a9e41c170a489fd4c0135f5ff74c7e655c33b7`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:1096b8320bf19235980dafe2d0d57e4072a9c0aae24546121d91eb0aecf80aec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23332651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ba658230da18d9d5d9d38322b8a811bb68639d060985ee0032ddaed4fd8db6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:50 GMT
ADD file:8cd208817150f41f5b21f5c2b6641af023ddeaa6d842fe490190e20effe94a08 in / 
# Tue, 12 Dec 2017 06:25:51 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:36 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 14 Feb 2018 18:34:11 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 18:34:12 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 18:37:34 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 14 Feb 2018 18:37:34 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 18:37:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 18:37:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 18:37:35 GMT
USER [memcache]
# Wed, 14 Feb 2018 18:37:35 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 18:37:35 GMT
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
	-	`sha256:0509b51fc06519a439fafbf5eade4297867950b0a832445a2395db23c20c2d90`  
		Last Modified: Wed, 14 Feb 2018 18:41:24 GMT  
		Size: 996.6 KB (996635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8f9edb76cd0709258bd14ef330e5bad5967264bbbc899269b7022b51afdc7f`  
		Last Modified: Wed, 14 Feb 2018 18:41:25 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b079bf926e7e4d7409b4bc6614fad1f9dd05dbeee4fd70effd7a2195578c4702`  
		Last Modified: Wed, 14 Feb 2018 18:41:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
