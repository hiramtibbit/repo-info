<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1`](#memcached1)
-	[`memcached:1.5`](#memcached15)
-	[`memcached:1.5.7`](#memcached157)
-	[`memcached:1.5.7-alpine`](#memcached157-alpine)
-	[`memcached:1.5-alpine`](#memcached15-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)
-	[`memcached:latest`](#memcachedlatest)

## `memcached:1`

```console
$ docker pull memcached@sha256:01c97fa6030789268adf4c5827f04b7df1943ff8a703b558085fb0a6c32d62b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:1` - linux; amd64

```console
$ docker pull memcached@sha256:3690cfbe0d97d17f85dc38c13919816238363244555f453a0cdfff4b2d13c6ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23468534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:784b59c50820f8375de66148763f3a1503748866fc01143e7befcca468433127`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:22:54 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 31 Mar 2018 06:15:49 GMT
ENV MEMCACHED_VERSION=1.5.7
# Sat, 31 Mar 2018 06:15:49 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Sat, 31 Mar 2018 06:19:19 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 31 Mar 2018 06:19:19 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 31 Mar 2018 06:19:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 31 Mar 2018 06:19:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 31 Mar 2018 06:19:20 GMT
USER [memcache]
# Sat, 31 Mar 2018 06:19:21 GMT
EXPOSE 11211/tcp
# Sat, 31 Mar 2018 06:19:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d7f86ee24a8d57fa91e48cbc35a25711a84503b27d795922afe464ae984b77`  
		Last Modified: Wed, 14 Mar 2018 06:26:51 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d1a0ca9e18eab9c230ddd666fa7f18d2ded92517631a1c6b8e3bc279643b8e`  
		Last Modified: Sat, 31 Mar 2018 06:41:39 GMT  
		Size: 977.4 KB (977395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ea7792f94782f38195a5839774a4c8a409941333d788ba77440b9ca4256b56`  
		Last Modified: Sat, 31 Mar 2018 06:41:39 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6683ee625f6e4ea4fce6b6873a50d4885c92f96f044a4387e239682a78d8e1b`  
		Last Modified: Sat, 31 Mar 2018 06:41:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:01c97fa6030789268adf4c5827f04b7df1943ff8a703b558085fb0a6c32d62b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:1.5` - linux; amd64

```console
$ docker pull memcached@sha256:3690cfbe0d97d17f85dc38c13919816238363244555f453a0cdfff4b2d13c6ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23468534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:784b59c50820f8375de66148763f3a1503748866fc01143e7befcca468433127`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:22:54 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 31 Mar 2018 06:15:49 GMT
ENV MEMCACHED_VERSION=1.5.7
# Sat, 31 Mar 2018 06:15:49 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Sat, 31 Mar 2018 06:19:19 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 31 Mar 2018 06:19:19 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 31 Mar 2018 06:19:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 31 Mar 2018 06:19:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 31 Mar 2018 06:19:20 GMT
USER [memcache]
# Sat, 31 Mar 2018 06:19:21 GMT
EXPOSE 11211/tcp
# Sat, 31 Mar 2018 06:19:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d7f86ee24a8d57fa91e48cbc35a25711a84503b27d795922afe464ae984b77`  
		Last Modified: Wed, 14 Mar 2018 06:26:51 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d1a0ca9e18eab9c230ddd666fa7f18d2ded92517631a1c6b8e3bc279643b8e`  
		Last Modified: Sat, 31 Mar 2018 06:41:39 GMT  
		Size: 977.4 KB (977395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ea7792f94782f38195a5839774a4c8a409941333d788ba77440b9ca4256b56`  
		Last Modified: Sat, 31 Mar 2018 06:41:39 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6683ee625f6e4ea4fce6b6873a50d4885c92f96f044a4387e239682a78d8e1b`  
		Last Modified: Sat, 31 Mar 2018 06:41:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.7`

```console
$ docker pull memcached@sha256:01c97fa6030789268adf4c5827f04b7df1943ff8a703b558085fb0a6c32d62b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:1.5.7` - linux; amd64

```console
$ docker pull memcached@sha256:3690cfbe0d97d17f85dc38c13919816238363244555f453a0cdfff4b2d13c6ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23468534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:784b59c50820f8375de66148763f3a1503748866fc01143e7befcca468433127`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:22:54 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 31 Mar 2018 06:15:49 GMT
ENV MEMCACHED_VERSION=1.5.7
# Sat, 31 Mar 2018 06:15:49 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Sat, 31 Mar 2018 06:19:19 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 31 Mar 2018 06:19:19 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 31 Mar 2018 06:19:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 31 Mar 2018 06:19:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 31 Mar 2018 06:19:20 GMT
USER [memcache]
# Sat, 31 Mar 2018 06:19:21 GMT
EXPOSE 11211/tcp
# Sat, 31 Mar 2018 06:19:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d7f86ee24a8d57fa91e48cbc35a25711a84503b27d795922afe464ae984b77`  
		Last Modified: Wed, 14 Mar 2018 06:26:51 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d1a0ca9e18eab9c230ddd666fa7f18d2ded92517631a1c6b8e3bc279643b8e`  
		Last Modified: Sat, 31 Mar 2018 06:41:39 GMT  
		Size: 977.4 KB (977395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ea7792f94782f38195a5839774a4c8a409941333d788ba77440b9ca4256b56`  
		Last Modified: Sat, 31 Mar 2018 06:41:39 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6683ee625f6e4ea4fce6b6873a50d4885c92f96f044a4387e239682a78d8e1b`  
		Last Modified: Sat, 31 Mar 2018 06:41:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.7-alpine`

```console
$ docker pull memcached@sha256:7944c37bb12209c7d55aab1e1ddfdb2fc021df281b8ff820dd0d83411897bab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:1.5.7-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:11157b52ee72427fe5d0fe457e8cecb01598653e9754319fa597a7361a33710a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3805664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44e151ee78377e0a02290c3eae21e5900b37cddb86d4c4ecc82b173a783cc2dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Sat, 31 Mar 2018 06:37:48 GMT
ENV MEMCACHED_VERSION=1.5.7
# Sat, 31 Mar 2018 06:37:48 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Sat, 31 Mar 2018 06:41:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 31 Mar 2018 06:41:07 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 31 Mar 2018 06:41:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 31 Mar 2018 06:41:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 31 Mar 2018 06:41:09 GMT
USER [memcache]
# Sat, 31 Mar 2018 06:41:09 GMT
EXPOSE 11211/tcp
# Sat, 31 Mar 2018 06:41:09 GMT
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
	-	`sha256:3ceb4479830f3b328f286059d5b5a5501102ca6b2d30150f559708c98a4ac9f5`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 1.7 MB (1738478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cebec455cae1d077e764359c71b6f9d39bac0b01a175b9d65378ae82160b2a5`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef77320f2982890e114bcda2df455c0f38e19e0b368755b3592ac3eaaddce0f`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:7944c37bb12209c7d55aab1e1ddfdb2fc021df281b8ff820dd0d83411897bab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:1.5-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:11157b52ee72427fe5d0fe457e8cecb01598653e9754319fa597a7361a33710a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3805664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44e151ee78377e0a02290c3eae21e5900b37cddb86d4c4ecc82b173a783cc2dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Sat, 31 Mar 2018 06:37:48 GMT
ENV MEMCACHED_VERSION=1.5.7
# Sat, 31 Mar 2018 06:37:48 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Sat, 31 Mar 2018 06:41:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 31 Mar 2018 06:41:07 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 31 Mar 2018 06:41:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 31 Mar 2018 06:41:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 31 Mar 2018 06:41:09 GMT
USER [memcache]
# Sat, 31 Mar 2018 06:41:09 GMT
EXPOSE 11211/tcp
# Sat, 31 Mar 2018 06:41:09 GMT
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
	-	`sha256:3ceb4479830f3b328f286059d5b5a5501102ca6b2d30150f559708c98a4ac9f5`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 1.7 MB (1738478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cebec455cae1d077e764359c71b6f9d39bac0b01a175b9d65378ae82160b2a5`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef77320f2982890e114bcda2df455c0f38e19e0b368755b3592ac3eaaddce0f`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:7944c37bb12209c7d55aab1e1ddfdb2fc021df281b8ff820dd0d83411897bab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:11157b52ee72427fe5d0fe457e8cecb01598653e9754319fa597a7361a33710a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3805664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44e151ee78377e0a02290c3eae21e5900b37cddb86d4c4ecc82b173a783cc2dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Sat, 31 Mar 2018 06:37:48 GMT
ENV MEMCACHED_VERSION=1.5.7
# Sat, 31 Mar 2018 06:37:48 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Sat, 31 Mar 2018 06:41:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 31 Mar 2018 06:41:07 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 31 Mar 2018 06:41:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 31 Mar 2018 06:41:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 31 Mar 2018 06:41:09 GMT
USER [memcache]
# Sat, 31 Mar 2018 06:41:09 GMT
EXPOSE 11211/tcp
# Sat, 31 Mar 2018 06:41:09 GMT
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
	-	`sha256:3ceb4479830f3b328f286059d5b5a5501102ca6b2d30150f559708c98a4ac9f5`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 1.7 MB (1738478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cebec455cae1d077e764359c71b6f9d39bac0b01a175b9d65378ae82160b2a5`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef77320f2982890e114bcda2df455c0f38e19e0b368755b3592ac3eaaddce0f`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:7944c37bb12209c7d55aab1e1ddfdb2fc021df281b8ff820dd0d83411897bab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

```console
$ docker pull memcached@sha256:11157b52ee72427fe5d0fe457e8cecb01598653e9754319fa597a7361a33710a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3805664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44e151ee78377e0a02290c3eae21e5900b37cddb86d4c4ecc82b173a783cc2dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Sat, 31 Mar 2018 06:37:48 GMT
ENV MEMCACHED_VERSION=1.5.7
# Sat, 31 Mar 2018 06:37:48 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Sat, 31 Mar 2018 06:41:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 31 Mar 2018 06:41:07 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 31 Mar 2018 06:41:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 31 Mar 2018 06:41:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 31 Mar 2018 06:41:09 GMT
USER [memcache]
# Sat, 31 Mar 2018 06:41:09 GMT
EXPOSE 11211/tcp
# Sat, 31 Mar 2018 06:41:09 GMT
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
	-	`sha256:3ceb4479830f3b328f286059d5b5a5501102ca6b2d30150f559708c98a4ac9f5`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 1.7 MB (1738478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cebec455cae1d077e764359c71b6f9d39bac0b01a175b9d65378ae82160b2a5`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef77320f2982890e114bcda2df455c0f38e19e0b368755b3592ac3eaaddce0f`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:01c97fa6030789268adf4c5827f04b7df1943ff8a703b558085fb0a6c32d62b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

```console
$ docker pull memcached@sha256:3690cfbe0d97d17f85dc38c13919816238363244555f453a0cdfff4b2d13c6ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23468534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:784b59c50820f8375de66148763f3a1503748866fc01143e7befcca468433127`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:22:54 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 31 Mar 2018 06:15:49 GMT
ENV MEMCACHED_VERSION=1.5.7
# Sat, 31 Mar 2018 06:15:49 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Sat, 31 Mar 2018 06:19:19 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 31 Mar 2018 06:19:19 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 31 Mar 2018 06:19:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 31 Mar 2018 06:19:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 31 Mar 2018 06:19:20 GMT
USER [memcache]
# Sat, 31 Mar 2018 06:19:21 GMT
EXPOSE 11211/tcp
# Sat, 31 Mar 2018 06:19:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d7f86ee24a8d57fa91e48cbc35a25711a84503b27d795922afe464ae984b77`  
		Last Modified: Wed, 14 Mar 2018 06:26:51 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d1a0ca9e18eab9c230ddd666fa7f18d2ded92517631a1c6b8e3bc279643b8e`  
		Last Modified: Sat, 31 Mar 2018 06:41:39 GMT  
		Size: 977.4 KB (977395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ea7792f94782f38195a5839774a4c8a409941333d788ba77440b9ca4256b56`  
		Last Modified: Sat, 31 Mar 2018 06:41:39 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6683ee625f6e4ea4fce6b6873a50d4885c92f96f044a4387e239682a78d8e1b`  
		Last Modified: Sat, 31 Mar 2018 06:41:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
