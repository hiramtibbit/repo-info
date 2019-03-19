<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redis`

-	[`redis:32bit`](#redis32bit)
-	[`redis:32bit-stretch`](#redis32bit-stretch)
-	[`redis:4`](#redis4)
-	[`redis:4.0`](#redis40)
-	[`redis:4.0.14`](#redis4014)
-	[`redis:4.0.14-32bit`](#redis4014-32bit)
-	[`redis:4.0.14-32bit-stretch`](#redis4014-32bit-stretch)
-	[`redis:4.0.14-alpine`](#redis4014-alpine)
-	[`redis:4.0.14-alpine3.9`](#redis4014-alpine39)
-	[`redis:4.0.14-stretch`](#redis4014-stretch)
-	[`redis:4.0-32bit`](#redis40-32bit)
-	[`redis:4.0-32bit-stretch`](#redis40-32bit-stretch)
-	[`redis:4.0-alpine`](#redis40-alpine)
-	[`redis:4.0-alpine3.9`](#redis40-alpine39)
-	[`redis:4.0-stretch`](#redis40-stretch)
-	[`redis:4-32bit`](#redis4-32bit)
-	[`redis:4-32bit-stretch`](#redis4-32bit-stretch)
-	[`redis:4-alpine`](#redis4-alpine)
-	[`redis:4-alpine3.9`](#redis4-alpine39)
-	[`redis:4-stretch`](#redis4-stretch)
-	[`redis:5`](#redis5)
-	[`redis:5.0`](#redis50)
-	[`redis:5.0-32bit`](#redis50-32bit)
-	[`redis:5.0-32bit-stretch`](#redis50-32bit-stretch)
-	[`redis:5.0.4`](#redis504)
-	[`redis:5.0.4-32bit`](#redis504-32bit)
-	[`redis:5.0.4-32bit-stretch`](#redis504-32bit-stretch)
-	[`redis:5.0.4-alpine`](#redis504-alpine)
-	[`redis:5.0.4-alpine3.9`](#redis504-alpine39)
-	[`redis:5.0.4-stretch`](#redis504-stretch)
-	[`redis:5.0-alpine`](#redis50-alpine)
-	[`redis:5.0-alpine3.9`](#redis50-alpine39)
-	[`redis:5.0-stretch`](#redis50-stretch)
-	[`redis:5-32bit`](#redis5-32bit)
-	[`redis:5-32bit-stretch`](#redis5-32bit-stretch)
-	[`redis:5-alpine`](#redis5-alpine)
-	[`redis:5-alpine3.9`](#redis5-alpine39)
-	[`redis:5-stretch`](#redis5-stretch)
-	[`redis:alpine`](#redisalpine)
-	[`redis:alpine3.9`](#redisalpine39)
-	[`redis:latest`](#redislatest)
-	[`redis:stretch`](#redisstretch)

## `redis:32bit`

```console
$ docker pull redis@sha256:5b1ef224856291dba253f816538be5e6f07b1592f6e6453e9e1045010784d56f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:ed67962763c6773b146659effd9248e98ced224015a3706c5cf9e4e43d3f4c00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39472586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b7ca9027b23a38d19241a40310c42606647ae48620c25414cc66d00ce3cf2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:59:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 03:59:08 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:59:22 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 03:59:22 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 04:00:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:02:20 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:02:20 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 04:02:21 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 04:02:21 GMT
WORKDIR /data
# Tue, 05 Mar 2019 04:02:21 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:02:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:02:21 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 04:02:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421427137c28f41acfcc3dfe20a5cf4fbcd69aec56df545a2be71e0dd9da428a`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af7ef63ef0fb172f652981ba6b70cbd9bbcac98a38fd878e084c0229729d1b5`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 941.4 KB (941372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db802777c86cbcb16178246477fec3ab18b4c20f1c2708c0f5623eebaa626651`  
		Last Modified: Tue, 05 Mar 2019 04:05:04 GMT  
		Size: 4.8 MB (4849445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a531f0eb35175d518d358a5c9ca83d5a7ac2cafb70a31c6479ee5d166c3cfbcc`  
		Last Modified: Tue, 05 Mar 2019 04:05:05 GMT  
		Size: 11.2 MB (11183471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3321b728b1c50f9a4aaecb15b4b05f54f6eb437d9315f756ac6dd9c132feea9`  
		Last Modified: Tue, 05 Mar 2019 04:05:03 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a85c52197efcdc27942c3bfcce19c3caffe893def5bbe0c379f603fc5a05fd7`  
		Last Modified: Tue, 05 Mar 2019 04:05:03 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit-stretch`

```console
$ docker pull redis@sha256:5b1ef224856291dba253f816538be5e6f07b1592f6e6453e9e1045010784d56f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:ed67962763c6773b146659effd9248e98ced224015a3706c5cf9e4e43d3f4c00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39472586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b7ca9027b23a38d19241a40310c42606647ae48620c25414cc66d00ce3cf2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:59:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 03:59:08 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:59:22 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 03:59:22 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 04:00:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:02:20 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:02:20 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 04:02:21 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 04:02:21 GMT
WORKDIR /data
# Tue, 05 Mar 2019 04:02:21 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:02:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:02:21 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 04:02:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421427137c28f41acfcc3dfe20a5cf4fbcd69aec56df545a2be71e0dd9da428a`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af7ef63ef0fb172f652981ba6b70cbd9bbcac98a38fd878e084c0229729d1b5`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 941.4 KB (941372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db802777c86cbcb16178246477fec3ab18b4c20f1c2708c0f5623eebaa626651`  
		Last Modified: Tue, 05 Mar 2019 04:05:04 GMT  
		Size: 4.8 MB (4849445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a531f0eb35175d518d358a5c9ca83d5a7ac2cafb70a31c6479ee5d166c3cfbcc`  
		Last Modified: Tue, 05 Mar 2019 04:05:05 GMT  
		Size: 11.2 MB (11183471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3321b728b1c50f9a4aaecb15b4b05f54f6eb437d9315f756ac6dd9c132feea9`  
		Last Modified: Tue, 05 Mar 2019 04:05:03 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a85c52197efcdc27942c3bfcce19c3caffe893def5bbe0c379f603fc5a05fd7`  
		Last Modified: Tue, 05 Mar 2019 04:05:03 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4`

```console
$ docker pull redis@sha256:7ba6704401d1d7e90d19e872c5095f7182dee59b0706eaa891e8eab836c790cd
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

### `redis:4` - linux; amd64

```console
$ docker pull redis@sha256:439cd74669626d0d8565fbd4f2435a4e2ca21f1ac22e94d4edd3614c8c2784d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32138387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1e8850a2b94403d712643d2a2cedb31956a1e1f211d9793410ee5e9547aa7eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:59:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 03:59:08 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:59:22 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 04:03:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:03:18 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 04:03:19 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 04:03:19 GMT
WORKDIR /data
# Tue, 05 Mar 2019 04:03:19 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:03:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:03:20 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 04:03:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421427137c28f41acfcc3dfe20a5cf4fbcd69aec56df545a2be71e0dd9da428a`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af7ef63ef0fb172f652981ba6b70cbd9bbcac98a38fd878e084c0229729d1b5`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 941.4 KB (941372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03eabafd1bb69d177168a524886e1bdb994967b19e14603b4595142a36ff3b7f`  
		Last Modified: Tue, 05 Mar 2019 04:05:16 GMT  
		Size: 8.7 MB (8698721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f696356736ee0378a9941a064c703b505e7846be779c63d53a8cb86a5901784`  
		Last Modified: Tue, 05 Mar 2019 04:05:15 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad401a86d976a0036e9e444ef8c8efe675a44644caed2c1d41e61f20d181f631`  
		Last Modified: Tue, 05 Mar 2019 04:05:14 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v5

```console
$ docker pull redis@sha256:c964b79b5b3ed0b695ec362bcea952787c7f93b10413550ca22786d7b6e97b86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30517114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9bad1129f14b06c17db46c87451ef3350897e0f164440673834552212300e2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:45:02 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 11:45:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 11:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 11:46:45 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 11:46:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 11:46:46 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 11:47:28 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 11:47:30 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 11:47:30 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 11:47:31 GMT
WORKDIR /data
# Tue, 05 Mar 2019 11:47:31 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 11:47:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 11:47:32 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 11:47:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbd521fe3c3b8745cd78cfc903410a213a70be03e6d6897acf6921637a8fd02`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bef52f90b9f47aca22e18cc348551d4005702e5ebbf95e07e064f7fa8089b74`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 931.2 KB (931203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bec6b3965c2fb7f1149992c428ec258dcf4217cb6ef49cdb952c9b8b68610e`  
		Last Modified: Tue, 05 Mar 2019 11:48:06 GMT  
		Size: 8.4 MB (8423078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48cbccd4a289386c60e1f7f7aeb5d867536e98754315c12e89f4b240419b3a63`  
		Last Modified: Tue, 05 Mar 2019 11:48:03 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257a76e998b4ee30455b201a61867bc0b6cf75133d2f35439ad5df4cee24dded`  
		Last Modified: Tue, 05 Mar 2019 11:48:03 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v7

```console
$ docker pull redis@sha256:9e8c76900f25ebf0ce7ef5c76c0b64910207ae4a91bfe15477a1fa9fa6db8145
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28397664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0c41b02b2da5fda0a55b0b1223ae94b878a6d8fff5b72820baaa62e30032773`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:49:15 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 14:49:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 14:49:44 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 14:51:12 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 14:51:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 14:51:13 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 14:51:52 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:51:54 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 14:51:54 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 14:51:54 GMT
WORKDIR /data
# Tue, 05 Mar 2019 14:51:55 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 14:51:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:51:56 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 14:51:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51627e8cf990e932bb4d6e82698464e990643c8b8a3adfd7a5a241d8035e7b9`  
		Last Modified: Tue, 05 Mar 2019 14:52:14 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944beb6c88fe13fd93f6cb369c558981060b9e3a2efa52700bf6335a036d2760`  
		Last Modified: Tue, 05 Mar 2019 14:52:15 GMT  
		Size: 915.8 KB (915825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936d276d53f89e4c1a338d64992c69b08944b07c1e21c0589aac189d819be4e7`  
		Last Modified: Tue, 05 Mar 2019 14:52:36 GMT  
		Size: 8.2 MB (8197058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2de88ba3eb513b3f447b625a64ab678fe2433b4fbd58178a0ed643c9f7879d5`  
		Last Modified: Tue, 05 Mar 2019 14:52:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737178ddc5535126cb2fa5b2921a1164d4f5ec5015fff536a31f1711a1fec8a7`  
		Last Modified: Tue, 05 Mar 2019 14:52:33 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:fc544b7b4d7dcfdc1f56c97f40afd1e0a0b977e59548e53a0245087060140180
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34042794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a98a11d3cf0a7d69fba725a77b60f253badb178f915ee04516434c2d36a6f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 18:11:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 18:11:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 18:13:21 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 22 Feb 2019 12:53:39 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 12:53:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 12:53:41 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 12:56:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Feb 2019 12:56:07 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 12:56:08 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 12:56:09 GMT
WORKDIR /data
# Fri, 22 Feb 2019 12:56:10 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:56:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 12:56:13 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 12:56:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb72a164d58b5166315d5754bcdf59a33aee72adc904d5211496ac53f2ebbe4`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c085d6d71272c51591b1d678e87f2ace6eb39288c33244a57650ac59e1b970a5`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 908.3 KB (908315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206b142388c8019b48deed7d78086601f50e305ea83753632ac5d997c8d3adc5`  
		Last Modified: Fri, 22 Feb 2019 12:59:26 GMT  
		Size: 12.8 MB (12782061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eac4b5fc40cf62188fa3ed40bfe2ba4d34dfa9edbca890b32eb36fbdbb75ef0`  
		Last Modified: Fri, 22 Feb 2019 12:59:18 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a2fcb6416603cfbe7684bd5eab906230e93e47fb389cebc1ddaaa37a35627d`  
		Last Modified: Fri, 22 Feb 2019 12:59:18 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; 386

```console
$ docker pull redis@sha256:da4bafed7e1a9dface5a39a2eb26899d588a2b904d2946b829c5a7aca37ed828
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df90bb0929594657db659dee775b624708be135336b513dd037372cee1c12ca7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:23:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 17:23:20 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 17:23:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 17:24:50 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 17:24:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 17:24:50 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 17:25:30 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 17:25:30 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 17:25:31 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 17:25:31 GMT
WORKDIR /data
# Tue, 05 Mar 2019 17:25:31 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 17:25:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:25:31 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 17:25:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbebd3af2fccd61e20f39f8fa596a1ccf3fa579a74676e5f92345a4212c23f9`  
		Last Modified: Tue, 05 Mar 2019 17:25:48 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c07fb518ec8e47edf4cec068a21f23b2dd663f2830af705ece740d0265c027`  
		Last Modified: Tue, 05 Mar 2019 17:25:48 GMT  
		Size: 920.1 KB (920126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a66038addd2b5476ddc292c383053fde718f6e119f19d7217cfcacc8e8303d`  
		Last Modified: Tue, 05 Mar 2019 17:25:59 GMT  
		Size: 8.3 MB (8258064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188326c9a6dc9cd1ed94f80fbcb0c7ebf14cf73583ebc37f1d9babc5c830c9d0`  
		Last Modified: Tue, 05 Mar 2019 17:25:58 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95140a8b20c1164a70cf7f25a62128122816f704e2ddfd6edf79d15d8fd532aa`  
		Last Modified: Tue, 05 Mar 2019 17:25:58 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; ppc64le

```console
$ docker pull redis@sha256:fb241dc084d38d64869793e415ce1874e66da94351859ed2f0eb3afc275ccf81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32536176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7115920cbed92686fdb2cac7eb9c6f09cb78e30ed8827522cb7a095568ea4ef3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:09:40 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 14:09:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 14:11:07 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 14:15:24 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 14:15:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 14:15:31 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 14:17:20 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:17:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 14:17:26 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 14:17:29 GMT
WORKDIR /data
# Tue, 05 Mar 2019 14:17:31 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 14:17:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:17:38 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 14:17:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cda49701fd84a29c848e779603b3f91332b9ce83a243759fd66bb51424459878`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9cf28aaaf9a9e50dec15d68918563f279b9b10e23a0f2a7632bc8847b64eed`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 909.8 KB (909774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d5c2c852093f691ff8af06458da716079462816bf937544d6dd3cd43464ae8`  
		Last Modified: Tue, 05 Mar 2019 14:18:49 GMT  
		Size: 8.9 MB (8872604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3418be914c6f1b906cb4d0a0ce45c42bb7e4c942a319f85f1409ca90aadb7ac2`  
		Last Modified: Tue, 05 Mar 2019 14:18:47 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efdfe6beedc8f5b9d2338437dd7fc0b5dfa36a6917de9707ac639effa3d9f911`  
		Last Modified: Tue, 05 Mar 2019 14:18:47 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; s390x

```console
$ docker pull redis@sha256:452ec17f29b8cf43e1ba46a66add5ea2b27b14496f90e5d6b3a644d9db02f27a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32365355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a8edf110ff2bd7a9f9cc6f9564295b509cc2862baa7342d69bb308f6095512a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:19:33 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 15:19:33 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 15:19:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 15:21:10 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 15:21:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 15:21:10 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 15:21:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 15:21:40 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 15:21:40 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 15:21:40 GMT
WORKDIR /data
# Tue, 05 Mar 2019 15:21:41 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:21:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:21:41 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 15:21:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdba89d07dcd37b41b497124053b83ce21c0b11a5c1248c56f4b8266d2dc10a`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b052af6696f3b620e4e2272edbd4d62de0b516c9d4577451027abe02b7c6c79f`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 926.8 KB (926782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee16d1c367efe39b2181d620333d318a2a6db33d54ab432ea904b0064ee8d2b5`  
		Last Modified: Tue, 05 Mar 2019 15:22:22 GMT  
		Size: 9.1 MB (9090927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1ee0e20b2c931dd669c2293a21542439a6ac39cae9b3f5ac768589675549ea`  
		Last Modified: Tue, 05 Mar 2019 15:22:20 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12aa8ea5358ed4e5355b222744b25d7c8709a70a3434f897f331799fc722c78`  
		Last Modified: Tue, 05 Mar 2019 15:22:20 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0`

```console
$ docker pull redis@sha256:7ba6704401d1d7e90d19e872c5095f7182dee59b0706eaa891e8eab836c790cd
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

### `redis:4.0` - linux; amd64

```console
$ docker pull redis@sha256:439cd74669626d0d8565fbd4f2435a4e2ca21f1ac22e94d4edd3614c8c2784d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32138387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1e8850a2b94403d712643d2a2cedb31956a1e1f211d9793410ee5e9547aa7eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:59:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 03:59:08 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:59:22 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 04:03:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:03:18 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 04:03:19 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 04:03:19 GMT
WORKDIR /data
# Tue, 05 Mar 2019 04:03:19 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:03:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:03:20 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 04:03:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421427137c28f41acfcc3dfe20a5cf4fbcd69aec56df545a2be71e0dd9da428a`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af7ef63ef0fb172f652981ba6b70cbd9bbcac98a38fd878e084c0229729d1b5`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 941.4 KB (941372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03eabafd1bb69d177168a524886e1bdb994967b19e14603b4595142a36ff3b7f`  
		Last Modified: Tue, 05 Mar 2019 04:05:16 GMT  
		Size: 8.7 MB (8698721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f696356736ee0378a9941a064c703b505e7846be779c63d53a8cb86a5901784`  
		Last Modified: Tue, 05 Mar 2019 04:05:15 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad401a86d976a0036e9e444ef8c8efe675a44644caed2c1d41e61f20d181f631`  
		Last Modified: Tue, 05 Mar 2019 04:05:14 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v5

```console
$ docker pull redis@sha256:c964b79b5b3ed0b695ec362bcea952787c7f93b10413550ca22786d7b6e97b86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30517114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9bad1129f14b06c17db46c87451ef3350897e0f164440673834552212300e2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:45:02 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 11:45:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 11:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 11:46:45 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 11:46:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 11:46:46 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 11:47:28 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 11:47:30 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 11:47:30 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 11:47:31 GMT
WORKDIR /data
# Tue, 05 Mar 2019 11:47:31 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 11:47:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 11:47:32 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 11:47:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbd521fe3c3b8745cd78cfc903410a213a70be03e6d6897acf6921637a8fd02`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bef52f90b9f47aca22e18cc348551d4005702e5ebbf95e07e064f7fa8089b74`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 931.2 KB (931203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bec6b3965c2fb7f1149992c428ec258dcf4217cb6ef49cdb952c9b8b68610e`  
		Last Modified: Tue, 05 Mar 2019 11:48:06 GMT  
		Size: 8.4 MB (8423078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48cbccd4a289386c60e1f7f7aeb5d867536e98754315c12e89f4b240419b3a63`  
		Last Modified: Tue, 05 Mar 2019 11:48:03 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257a76e998b4ee30455b201a61867bc0b6cf75133d2f35439ad5df4cee24dded`  
		Last Modified: Tue, 05 Mar 2019 11:48:03 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v7

```console
$ docker pull redis@sha256:9e8c76900f25ebf0ce7ef5c76c0b64910207ae4a91bfe15477a1fa9fa6db8145
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28397664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0c41b02b2da5fda0a55b0b1223ae94b878a6d8fff5b72820baaa62e30032773`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:49:15 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 14:49:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 14:49:44 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 14:51:12 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 14:51:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 14:51:13 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 14:51:52 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:51:54 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 14:51:54 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 14:51:54 GMT
WORKDIR /data
# Tue, 05 Mar 2019 14:51:55 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 14:51:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:51:56 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 14:51:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51627e8cf990e932bb4d6e82698464e990643c8b8a3adfd7a5a241d8035e7b9`  
		Last Modified: Tue, 05 Mar 2019 14:52:14 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944beb6c88fe13fd93f6cb369c558981060b9e3a2efa52700bf6335a036d2760`  
		Last Modified: Tue, 05 Mar 2019 14:52:15 GMT  
		Size: 915.8 KB (915825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936d276d53f89e4c1a338d64992c69b08944b07c1e21c0589aac189d819be4e7`  
		Last Modified: Tue, 05 Mar 2019 14:52:36 GMT  
		Size: 8.2 MB (8197058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2de88ba3eb513b3f447b625a64ab678fe2433b4fbd58178a0ed643c9f7879d5`  
		Last Modified: Tue, 05 Mar 2019 14:52:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737178ddc5535126cb2fa5b2921a1164d4f5ec5015fff536a31f1711a1fec8a7`  
		Last Modified: Tue, 05 Mar 2019 14:52:33 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:fc544b7b4d7dcfdc1f56c97f40afd1e0a0b977e59548e53a0245087060140180
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34042794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a98a11d3cf0a7d69fba725a77b60f253badb178f915ee04516434c2d36a6f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 18:11:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 18:11:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 18:13:21 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 22 Feb 2019 12:53:39 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 12:53:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 12:53:41 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 12:56:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Feb 2019 12:56:07 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 12:56:08 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 12:56:09 GMT
WORKDIR /data
# Fri, 22 Feb 2019 12:56:10 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:56:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 12:56:13 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 12:56:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb72a164d58b5166315d5754bcdf59a33aee72adc904d5211496ac53f2ebbe4`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c085d6d71272c51591b1d678e87f2ace6eb39288c33244a57650ac59e1b970a5`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 908.3 KB (908315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206b142388c8019b48deed7d78086601f50e305ea83753632ac5d997c8d3adc5`  
		Last Modified: Fri, 22 Feb 2019 12:59:26 GMT  
		Size: 12.8 MB (12782061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eac4b5fc40cf62188fa3ed40bfe2ba4d34dfa9edbca890b32eb36fbdbb75ef0`  
		Last Modified: Fri, 22 Feb 2019 12:59:18 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a2fcb6416603cfbe7684bd5eab906230e93e47fb389cebc1ddaaa37a35627d`  
		Last Modified: Fri, 22 Feb 2019 12:59:18 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; 386

```console
$ docker pull redis@sha256:da4bafed7e1a9dface5a39a2eb26899d588a2b904d2946b829c5a7aca37ed828
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df90bb0929594657db659dee775b624708be135336b513dd037372cee1c12ca7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:23:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 17:23:20 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 17:23:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 17:24:50 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 17:24:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 17:24:50 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 17:25:30 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 17:25:30 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 17:25:31 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 17:25:31 GMT
WORKDIR /data
# Tue, 05 Mar 2019 17:25:31 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 17:25:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:25:31 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 17:25:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbebd3af2fccd61e20f39f8fa596a1ccf3fa579a74676e5f92345a4212c23f9`  
		Last Modified: Tue, 05 Mar 2019 17:25:48 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c07fb518ec8e47edf4cec068a21f23b2dd663f2830af705ece740d0265c027`  
		Last Modified: Tue, 05 Mar 2019 17:25:48 GMT  
		Size: 920.1 KB (920126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a66038addd2b5476ddc292c383053fde718f6e119f19d7217cfcacc8e8303d`  
		Last Modified: Tue, 05 Mar 2019 17:25:59 GMT  
		Size: 8.3 MB (8258064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188326c9a6dc9cd1ed94f80fbcb0c7ebf14cf73583ebc37f1d9babc5c830c9d0`  
		Last Modified: Tue, 05 Mar 2019 17:25:58 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95140a8b20c1164a70cf7f25a62128122816f704e2ddfd6edf79d15d8fd532aa`  
		Last Modified: Tue, 05 Mar 2019 17:25:58 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; ppc64le

```console
$ docker pull redis@sha256:fb241dc084d38d64869793e415ce1874e66da94351859ed2f0eb3afc275ccf81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32536176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7115920cbed92686fdb2cac7eb9c6f09cb78e30ed8827522cb7a095568ea4ef3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:09:40 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 14:09:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 14:11:07 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 14:15:24 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 14:15:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 14:15:31 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 14:17:20 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:17:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 14:17:26 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 14:17:29 GMT
WORKDIR /data
# Tue, 05 Mar 2019 14:17:31 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 14:17:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:17:38 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 14:17:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cda49701fd84a29c848e779603b3f91332b9ce83a243759fd66bb51424459878`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9cf28aaaf9a9e50dec15d68918563f279b9b10e23a0f2a7632bc8847b64eed`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 909.8 KB (909774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d5c2c852093f691ff8af06458da716079462816bf937544d6dd3cd43464ae8`  
		Last Modified: Tue, 05 Mar 2019 14:18:49 GMT  
		Size: 8.9 MB (8872604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3418be914c6f1b906cb4d0a0ce45c42bb7e4c942a319f85f1409ca90aadb7ac2`  
		Last Modified: Tue, 05 Mar 2019 14:18:47 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efdfe6beedc8f5b9d2338437dd7fc0b5dfa36a6917de9707ac639effa3d9f911`  
		Last Modified: Tue, 05 Mar 2019 14:18:47 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; s390x

```console
$ docker pull redis@sha256:452ec17f29b8cf43e1ba46a66add5ea2b27b14496f90e5d6b3a644d9db02f27a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32365355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a8edf110ff2bd7a9f9cc6f9564295b509cc2862baa7342d69bb308f6095512a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:19:33 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 15:19:33 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 15:19:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 15:21:10 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 15:21:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 15:21:10 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 15:21:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 15:21:40 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 15:21:40 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 15:21:40 GMT
WORKDIR /data
# Tue, 05 Mar 2019 15:21:41 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:21:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:21:41 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 15:21:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdba89d07dcd37b41b497124053b83ce21c0b11a5c1248c56f4b8266d2dc10a`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b052af6696f3b620e4e2272edbd4d62de0b516c9d4577451027abe02b7c6c79f`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 926.8 KB (926782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee16d1c367efe39b2181d620333d318a2a6db33d54ab432ea904b0064ee8d2b5`  
		Last Modified: Tue, 05 Mar 2019 15:22:22 GMT  
		Size: 9.1 MB (9090927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1ee0e20b2c931dd669c2293a21542439a6ac39cae9b3f5ac768589675549ea`  
		Last Modified: Tue, 05 Mar 2019 15:22:20 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12aa8ea5358ed4e5355b222744b25d7c8709a70a3434f897f331799fc722c78`  
		Last Modified: Tue, 05 Mar 2019 15:22:20 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.14`

**does not exist** (yet?)

## `redis:4.0.14-32bit`

**does not exist** (yet?)

## `redis:4.0.14-32bit-stretch`

**does not exist** (yet?)

## `redis:4.0.14-alpine`

**does not exist** (yet?)

## `redis:4.0.14-alpine3.9`

**does not exist** (yet?)

## `redis:4.0.14-stretch`

**does not exist** (yet?)

## `redis:4.0-32bit`

```console
$ docker pull redis@sha256:efa2a886a18aada6ecb6019a807b0257516c9c316341ffddd9591958d9774c29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:1e858828987c3fc11788e8ffbefa8823ca3999bbf38754b840a5f1988b9a8010
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36551567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3965b339a68d8898790c7eb65c35abf87f582e86abc49851c6e294d31f70e8b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:59:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 03:59:08 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:59:22 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 04:03:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:04:20 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:04:20 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 04:04:20 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 04:04:21 GMT
WORKDIR /data
# Tue, 05 Mar 2019 04:04:21 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:04:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:04:21 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 04:04:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421427137c28f41acfcc3dfe20a5cf4fbcd69aec56df545a2be71e0dd9da428a`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af7ef63ef0fb172f652981ba6b70cbd9bbcac98a38fd878e084c0229729d1b5`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 941.4 KB (941372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2323aa845dbde059a924eac511d5f6124e893cf39ad1f430133ed7c317848e62`  
		Last Modified: Tue, 05 Mar 2019 04:05:24 GMT  
		Size: 4.8 MB (4849463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849f76411909e83d455a997f29363af60c961ab3072fc49b5f8325e57cb91ffb`  
		Last Modified: Tue, 05 Mar 2019 04:05:25 GMT  
		Size: 8.3 MB (8262432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41dea5659ee077a63150491da2efbdad16963a4f5ba178688d5dc5ed8b5eabcd`  
		Last Modified: Tue, 05 Mar 2019 04:05:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270129f2aca5b8594443b0f9fd7d98358ffdc0e0af5d00966159b0cfe15467f9`  
		Last Modified: Tue, 05 Mar 2019 04:05:23 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit-stretch`

```console
$ docker pull redis@sha256:efa2a886a18aada6ecb6019a807b0257516c9c316341ffddd9591958d9774c29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:1e858828987c3fc11788e8ffbefa8823ca3999bbf38754b840a5f1988b9a8010
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36551567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3965b339a68d8898790c7eb65c35abf87f582e86abc49851c6e294d31f70e8b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:59:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 03:59:08 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:59:22 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 04:03:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:04:20 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:04:20 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 04:04:20 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 04:04:21 GMT
WORKDIR /data
# Tue, 05 Mar 2019 04:04:21 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:04:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:04:21 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 04:04:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421427137c28f41acfcc3dfe20a5cf4fbcd69aec56df545a2be71e0dd9da428a`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af7ef63ef0fb172f652981ba6b70cbd9bbcac98a38fd878e084c0229729d1b5`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 941.4 KB (941372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2323aa845dbde059a924eac511d5f6124e893cf39ad1f430133ed7c317848e62`  
		Last Modified: Tue, 05 Mar 2019 04:05:24 GMT  
		Size: 4.8 MB (4849463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849f76411909e83d455a997f29363af60c961ab3072fc49b5f8325e57cb91ffb`  
		Last Modified: Tue, 05 Mar 2019 04:05:25 GMT  
		Size: 8.3 MB (8262432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41dea5659ee077a63150491da2efbdad16963a4f5ba178688d5dc5ed8b5eabcd`  
		Last Modified: Tue, 05 Mar 2019 04:05:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270129f2aca5b8594443b0f9fd7d98358ffdc0e0af5d00966159b0cfe15467f9`  
		Last Modified: Tue, 05 Mar 2019 04:05:23 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine`

```console
$ docker pull redis@sha256:2d82b0968340166dfbe2bd80c47520c3e13216d5658be972254623adbfa5bdcb
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

### `redis:4.0-alpine` - linux; amd64

```console
$ docker pull redis@sha256:7ba44c86c4129a0718d71f5d0ff453a8fe8875b9faf361d7d00e2cc56697421b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13919774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e985c88d45b4cd0af2c724ed39ab6034b923e267494200bce5214846acab722`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:52:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 02:52:31 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 02:54:38 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 02:54:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 02:54:39 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 02:55:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 02:55:35 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 02:55:35 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 02:55:35 GMT
WORKDIR /data
# Fri, 08 Mar 2019 02:55:35 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 02:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 02:55:36 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 02:55:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2113a1bbc9843426fc7f026f089b271956431c2dd2fcf36e814e155e7785ee`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b5ad98d1796ee4133c3b6ea962fe1faeca52492940e12c096a5fcdb8a35184`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 403.0 KB (402988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef17a2d5dfca94f697a84b394ec2ee9582a72c8a99aef3081aa177c37d3275c`  
		Last Modified: Fri, 08 Mar 2019 02:56:20 GMT  
		Size: 10.8 MB (10760288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0cfc6485c5b0342a730fea0f14f069f60963bb31f254f6d82ca0cb17e9ea5a`  
		Last Modified: Fri, 08 Mar 2019 02:56:18 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdc934cfc8d67b395f84b230d3920217602429515ce25ee8a66bfed7b7e949b`  
		Last Modified: Fri, 08 Mar 2019 02:56:18 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:1b14aeb2e479f6eb41c59778d5f2258693e5d45d8ecd6098338c7738caf76204
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v1+json`
-	Total Size: **13.3 MB (13297697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `03b8c192e26ff55e1767c44d2ae18934408cc61aeec8c7e86976292c80d9b69e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 05:39:43 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 05:39:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 05:39:44 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 05:40:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:40:15 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:40:15 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:40:15 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:40:16 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:40:17 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:40:17 GMT
RUN ["\/bin\/sh","-c","#(nop) ","CMD [\"redis-server\"]"]
```

-	Layers:
	-	`sha256:a3ed95caeb02ffe68cdd9fd84406680ae93d633cb16422d00e8a7c22955b46d4`  
		Last Modified: Sat, 14 Nov 2015 09:09:44 GMT  
		Size: 32.0 B  
		MIME: application/octet-stream
	-	`sha256:67996b16993c51f78353cbdd1055a1c3498fc632669bc92366acab8e1a556b6d`  
		Last Modified: Fri, 08 Mar 2019 05:40:52 GMT  
		Size: 414.0 B  
		MIME: application/octet-stream
	-	`sha256:337653b5a46b0e4ced55ea2aa65a0c97ed995573120db33e3573d3f5e3eb5864`  
		Last Modified: Fri, 08 Mar 2019 05:40:52 GMT  
		Size: 134.0 B  
		MIME: application/octet-stream
	-	`sha256:6e444a5f55dab6199bfeef843174991b00ea712ae56d1e3ed6e02b2c18499336`  
		Last Modified: Fri, 08 Mar 2019 05:40:55 GMT  
		Size: 10.3 MB (10349880 bytes)  
		MIME: application/octet-stream
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/octet-stream
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/octet-stream
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/octet-stream

### `redis:4.0-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:8fc48bdda8d70fd303eaac57653c3ee99bc3322862e03463a5be81b8166a20aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12943525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e50769736830c14ec6d3c400fd38a45cfaafcdaa51624223e0d88752c3103bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 12 Mar 2019 12:39:42 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 12 Mar 2019 12:39:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 12 Mar 2019 12:39:43 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 12 Mar 2019 12:40:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 12 Mar 2019 12:40:09 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Mar 2019 12:40:10 GMT
VOLUME [/data]
# Tue, 12 Mar 2019 12:40:11 GMT
WORKDIR /data
# Tue, 12 Mar 2019 12:40:11 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 12 Mar 2019 12:40:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 12:40:12 GMT
EXPOSE 6379
# Tue, 12 Mar 2019 12:40:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7864aecdc7c4d41af21eae8343adda58329831ab463802b8a05e8519e4115db9`  
		Last Modified: Tue, 12 Mar 2019 12:41:00 GMT  
		Size: 10.2 MB (10194540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0688cad6723600e1fe761377abfdfbf17752bfc367483e783322b3b17144f41c`  
		Last Modified: Tue, 12 Mar 2019 12:40:58 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73da2da5d7fdbcccd0ff90211f7aae885cfeb93d3c758f1579f04a23dfd572e4`  
		Last Modified: Tue, 12 Mar 2019 12:40:58 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:f334dc4a89d9a7643430be14a7692e2a284dd698d5be45f98f11c6daa8fb7b10
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13721015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b4abb70d7fb5499abbf0fe6afbbf04d428180141c3f4af4337b0349aa721cc1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 18:17:43 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 18:17:49 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 22 Feb 2019 12:56:26 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 12:56:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 12:56:29 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 12:58:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 22 Feb 2019 12:58:08 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 12:58:09 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 12:58:11 GMT
WORKDIR /data
# Fri, 22 Feb 2019 12:58:12 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 12:58:14 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 12:58:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d89e1a92041f845dc3bb220bfd64284cf421059b704b46609ec6152d66eae`  
		Last Modified: Wed, 06 Feb 2019 18:24:12 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc7ef0e4aad3218485fe01595abc6569264662cb193886d07c3e9c9b68cfdb9`  
		Last Modified: Wed, 06 Feb 2019 18:24:13 GMT  
		Size: 405.2 KB (405205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0478665633bac264e81a1e306dd9b0cf5dd4c5ac7c427440954b364bf9ef98f`  
		Last Modified: Fri, 22 Feb 2019 12:59:52 GMT  
		Size: 10.6 MB (10625980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0fa17b4ac5f0542712d276555709ca9e820d0e25ae14fd7a8ba3748497803d`  
		Last Modified: Fri, 22 Feb 2019 12:59:46 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6d43eeade9fa27c0c8dce61b61e65a05a8b9343980c330da8697e38fcf5e2d`  
		Last Modified: Fri, 22 Feb 2019 12:59:46 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; 386

```console
$ docker pull redis@sha256:9857c2aedb51cd095ba49a64f5932a2d2d762eca6a39bd6ba63b6f075b4527e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13415922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0d401e7cb0d426fa2c4e5eb8419e1bf3a08946ca25c3b04938862e04c07996`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:14:05 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 10:14:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 10:15:22 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 10:15:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 10:15:22 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 10:15:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 10:15:56 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 10:15:57 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 10:15:57 GMT
WORKDIR /data
# Fri, 08 Mar 2019 10:15:57 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 10:15:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 10:15:57 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 10:15:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2f32c3fa1b6c04a79ca05078e80927d1f1819bd561ce4b1ccb8a2f149d8356`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee3d69b92603c14c56cbff7eb925f16b36a83bda909ae7a9f75374d27186e0a`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 408.0 KB (408008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c894a6476836ef41fc87176575193e8fe4b1571ca8c242d6d3c1b22229824fd0`  
		Last Modified: Tue, 12 Mar 2019 11:07:48 GMT  
		Size: 10.3 MB (10256792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5103498b120b0729f21510b02ff9021ef130affac79db2592d61cb1cc7353bee`  
		Last Modified: Tue, 12 Mar 2019 11:07:46 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61aa0f09332920cca67642e87dcd00ffc7d8c6436189c297477a87dc0f54103f`  
		Last Modified: Tue, 12 Mar 2019 11:07:46 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:45389e503bd5bef9ec4519c8a6f8d1f8a4bda2265ad291aa0ca835b3314793a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14382184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5283f55671c5f1b2250f527c81b546b3e11753f6c72a7d328418d8210d71d50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 06:24:35 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 06:24:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 06:24:38 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 06:25:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 06:25:47 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 06:25:54 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 06:26:02 GMT
WORKDIR /data
# Fri, 08 Mar 2019 06:26:06 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 06:26:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 06:26:22 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 06:26:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f495d7be63ed2d741e47f54b0bd37ad38cd0996bb821fb2d9d557941f3c54d30`  
		Last Modified: Fri, 08 Mar 2019 06:27:46 GMT  
		Size: 11.2 MB (11191375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8051e4920a288358654e3c839b6a652ecf840d48169a5304fd713c4bf217b5d3`  
		Last Modified: Fri, 08 Mar 2019 06:27:43 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1ca381d8ab1e2b9c03bda2978790cf7ecec0d3c796eee4c413dcb2a711f881`  
		Last Modified: Fri, 08 Mar 2019 06:27:43 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; s390x

```console
$ docker pull redis@sha256:c00c0fd4eadf9b557918706556b7d4dab5d7fc822ac09f380fd6aadb5b3ab4f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13787289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a645dc699e168ecbc112290740f5ab21fd69ee4fb7b498cd63b143f5502bf978`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 05:36:46 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 05:36:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 05:36:47 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 05:37:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:37:09 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:37:09 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:37:09 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:37:10 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:37:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:37:10 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:37:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4014cfcf355c2775f4c3d1511ffaf39ca3e22c55e3fe98ac57bb1fca71266080`  
		Last Modified: Fri, 08 Mar 2019 05:38:04 GMT  
		Size: 10.8 MB (10836367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54218dd209b4a59025fc89f909f41a5ae3afe5dbddc706d4ededbda864ac4c03`  
		Last Modified: Fri, 08 Mar 2019 05:38:02 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c8907cfda6c44c908a0fdb885fdf93e6b1c1657da394cc18415cfae546a9d0`  
		Last Modified: Fri, 08 Mar 2019 05:38:02 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine3.9`

```console
$ docker pull redis@sha256:2d82b0968340166dfbe2bd80c47520c3e13216d5658be972254623adbfa5bdcb
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

### `redis:4.0-alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:7ba44c86c4129a0718d71f5d0ff453a8fe8875b9faf361d7d00e2cc56697421b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13919774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e985c88d45b4cd0af2c724ed39ab6034b923e267494200bce5214846acab722`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:52:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 02:52:31 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 02:54:38 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 02:54:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 02:54:39 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 02:55:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 02:55:35 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 02:55:35 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 02:55:35 GMT
WORKDIR /data
# Fri, 08 Mar 2019 02:55:35 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 02:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 02:55:36 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 02:55:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2113a1bbc9843426fc7f026f089b271956431c2dd2fcf36e814e155e7785ee`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b5ad98d1796ee4133c3b6ea962fe1faeca52492940e12c096a5fcdb8a35184`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 403.0 KB (402988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef17a2d5dfca94f697a84b394ec2ee9582a72c8a99aef3081aa177c37d3275c`  
		Last Modified: Fri, 08 Mar 2019 02:56:20 GMT  
		Size: 10.8 MB (10760288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0cfc6485c5b0342a730fea0f14f069f60963bb31f254f6d82ca0cb17e9ea5a`  
		Last Modified: Fri, 08 Mar 2019 02:56:18 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdc934cfc8d67b395f84b230d3920217602429515ce25ee8a66bfed7b7e949b`  
		Last Modified: Fri, 08 Mar 2019 02:56:18 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:1b14aeb2e479f6eb41c59778d5f2258693e5d45d8ecd6098338c7738caf76204
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v1+json`
-	Total Size: **13.3 MB (13297697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `03b8c192e26ff55e1767c44d2ae18934408cc61aeec8c7e86976292c80d9b69e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 05:39:43 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 05:39:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 05:39:44 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 05:40:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:40:15 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:40:15 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:40:15 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:40:16 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:40:17 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:40:17 GMT
RUN ["\/bin\/sh","-c","#(nop) ","CMD [\"redis-server\"]"]
```

-	Layers:
	-	`sha256:a3ed95caeb02ffe68cdd9fd84406680ae93d633cb16422d00e8a7c22955b46d4`  
		Last Modified: Sat, 14 Nov 2015 09:09:44 GMT  
		Size: 32.0 B  
		MIME: application/octet-stream
	-	`sha256:67996b16993c51f78353cbdd1055a1c3498fc632669bc92366acab8e1a556b6d`  
		Last Modified: Fri, 08 Mar 2019 05:40:52 GMT  
		Size: 414.0 B  
		MIME: application/octet-stream
	-	`sha256:337653b5a46b0e4ced55ea2aa65a0c97ed995573120db33e3573d3f5e3eb5864`  
		Last Modified: Fri, 08 Mar 2019 05:40:52 GMT  
		Size: 134.0 B  
		MIME: application/octet-stream
	-	`sha256:6e444a5f55dab6199bfeef843174991b00ea712ae56d1e3ed6e02b2c18499336`  
		Last Modified: Fri, 08 Mar 2019 05:40:55 GMT  
		Size: 10.3 MB (10349880 bytes)  
		MIME: application/octet-stream
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/octet-stream
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/octet-stream
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/octet-stream

### `redis:4.0-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:8fc48bdda8d70fd303eaac57653c3ee99bc3322862e03463a5be81b8166a20aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12943525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e50769736830c14ec6d3c400fd38a45cfaafcdaa51624223e0d88752c3103bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 12 Mar 2019 12:39:42 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 12 Mar 2019 12:39:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 12 Mar 2019 12:39:43 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 12 Mar 2019 12:40:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 12 Mar 2019 12:40:09 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Mar 2019 12:40:10 GMT
VOLUME [/data]
# Tue, 12 Mar 2019 12:40:11 GMT
WORKDIR /data
# Tue, 12 Mar 2019 12:40:11 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 12 Mar 2019 12:40:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 12:40:12 GMT
EXPOSE 6379
# Tue, 12 Mar 2019 12:40:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7864aecdc7c4d41af21eae8343adda58329831ab463802b8a05e8519e4115db9`  
		Last Modified: Tue, 12 Mar 2019 12:41:00 GMT  
		Size: 10.2 MB (10194540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0688cad6723600e1fe761377abfdfbf17752bfc367483e783322b3b17144f41c`  
		Last Modified: Tue, 12 Mar 2019 12:40:58 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73da2da5d7fdbcccd0ff90211f7aae885cfeb93d3c758f1579f04a23dfd572e4`  
		Last Modified: Tue, 12 Mar 2019 12:40:58 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:f334dc4a89d9a7643430be14a7692e2a284dd698d5be45f98f11c6daa8fb7b10
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13721015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b4abb70d7fb5499abbf0fe6afbbf04d428180141c3f4af4337b0349aa721cc1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 18:17:43 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 18:17:49 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 22 Feb 2019 12:56:26 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 12:56:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 12:56:29 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 12:58:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 22 Feb 2019 12:58:08 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 12:58:09 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 12:58:11 GMT
WORKDIR /data
# Fri, 22 Feb 2019 12:58:12 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 12:58:14 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 12:58:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d89e1a92041f845dc3bb220bfd64284cf421059b704b46609ec6152d66eae`  
		Last Modified: Wed, 06 Feb 2019 18:24:12 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc7ef0e4aad3218485fe01595abc6569264662cb193886d07c3e9c9b68cfdb9`  
		Last Modified: Wed, 06 Feb 2019 18:24:13 GMT  
		Size: 405.2 KB (405205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0478665633bac264e81a1e306dd9b0cf5dd4c5ac7c427440954b364bf9ef98f`  
		Last Modified: Fri, 22 Feb 2019 12:59:52 GMT  
		Size: 10.6 MB (10625980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0fa17b4ac5f0542712d276555709ca9e820d0e25ae14fd7a8ba3748497803d`  
		Last Modified: Fri, 22 Feb 2019 12:59:46 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6d43eeade9fa27c0c8dce61b61e65a05a8b9343980c330da8697e38fcf5e2d`  
		Last Modified: Fri, 22 Feb 2019 12:59:46 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:9857c2aedb51cd095ba49a64f5932a2d2d762eca6a39bd6ba63b6f075b4527e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13415922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0d401e7cb0d426fa2c4e5eb8419e1bf3a08946ca25c3b04938862e04c07996`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:14:05 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 10:14:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 10:15:22 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 10:15:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 10:15:22 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 10:15:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 10:15:56 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 10:15:57 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 10:15:57 GMT
WORKDIR /data
# Fri, 08 Mar 2019 10:15:57 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 10:15:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 10:15:57 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 10:15:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2f32c3fa1b6c04a79ca05078e80927d1f1819bd561ce4b1ccb8a2f149d8356`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee3d69b92603c14c56cbff7eb925f16b36a83bda909ae7a9f75374d27186e0a`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 408.0 KB (408008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c894a6476836ef41fc87176575193e8fe4b1571ca8c242d6d3c1b22229824fd0`  
		Last Modified: Tue, 12 Mar 2019 11:07:48 GMT  
		Size: 10.3 MB (10256792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5103498b120b0729f21510b02ff9021ef130affac79db2592d61cb1cc7353bee`  
		Last Modified: Tue, 12 Mar 2019 11:07:46 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61aa0f09332920cca67642e87dcd00ffc7d8c6436189c297477a87dc0f54103f`  
		Last Modified: Tue, 12 Mar 2019 11:07:46 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:45389e503bd5bef9ec4519c8a6f8d1f8a4bda2265ad291aa0ca835b3314793a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14382184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5283f55671c5f1b2250f527c81b546b3e11753f6c72a7d328418d8210d71d50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 06:24:35 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 06:24:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 06:24:38 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 06:25:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 06:25:47 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 06:25:54 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 06:26:02 GMT
WORKDIR /data
# Fri, 08 Mar 2019 06:26:06 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 06:26:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 06:26:22 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 06:26:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f495d7be63ed2d741e47f54b0bd37ad38cd0996bb821fb2d9d557941f3c54d30`  
		Last Modified: Fri, 08 Mar 2019 06:27:46 GMT  
		Size: 11.2 MB (11191375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8051e4920a288358654e3c839b6a652ecf840d48169a5304fd713c4bf217b5d3`  
		Last Modified: Fri, 08 Mar 2019 06:27:43 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1ca381d8ab1e2b9c03bda2978790cf7ecec0d3c796eee4c413dcb2a711f881`  
		Last Modified: Fri, 08 Mar 2019 06:27:43 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:c00c0fd4eadf9b557918706556b7d4dab5d7fc822ac09f380fd6aadb5b3ab4f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13787289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a645dc699e168ecbc112290740f5ab21fd69ee4fb7b498cd63b143f5502bf978`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 05:36:46 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 05:36:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 05:36:47 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 05:37:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:37:09 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:37:09 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:37:09 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:37:10 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:37:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:37:10 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:37:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4014cfcf355c2775f4c3d1511ffaf39ca3e22c55e3fe98ac57bb1fca71266080`  
		Last Modified: Fri, 08 Mar 2019 05:38:04 GMT  
		Size: 10.8 MB (10836367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54218dd209b4a59025fc89f909f41a5ae3afe5dbddc706d4ededbda864ac4c03`  
		Last Modified: Fri, 08 Mar 2019 05:38:02 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c8907cfda6c44c908a0fdb885fdf93e6b1c1657da394cc18415cfae546a9d0`  
		Last Modified: Fri, 08 Mar 2019 05:38:02 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-stretch`

```console
$ docker pull redis@sha256:7ba6704401d1d7e90d19e872c5095f7182dee59b0706eaa891e8eab836c790cd
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

### `redis:4.0-stretch` - linux; amd64

```console
$ docker pull redis@sha256:439cd74669626d0d8565fbd4f2435a4e2ca21f1ac22e94d4edd3614c8c2784d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32138387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1e8850a2b94403d712643d2a2cedb31956a1e1f211d9793410ee5e9547aa7eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:59:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 03:59:08 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:59:22 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 04:03:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:03:18 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 04:03:19 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 04:03:19 GMT
WORKDIR /data
# Tue, 05 Mar 2019 04:03:19 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:03:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:03:20 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 04:03:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421427137c28f41acfcc3dfe20a5cf4fbcd69aec56df545a2be71e0dd9da428a`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af7ef63ef0fb172f652981ba6b70cbd9bbcac98a38fd878e084c0229729d1b5`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 941.4 KB (941372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03eabafd1bb69d177168a524886e1bdb994967b19e14603b4595142a36ff3b7f`  
		Last Modified: Tue, 05 Mar 2019 04:05:16 GMT  
		Size: 8.7 MB (8698721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f696356736ee0378a9941a064c703b505e7846be779c63d53a8cb86a5901784`  
		Last Modified: Tue, 05 Mar 2019 04:05:15 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad401a86d976a0036e9e444ef8c8efe675a44644caed2c1d41e61f20d181f631`  
		Last Modified: Tue, 05 Mar 2019 04:05:14 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:c964b79b5b3ed0b695ec362bcea952787c7f93b10413550ca22786d7b6e97b86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30517114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9bad1129f14b06c17db46c87451ef3350897e0f164440673834552212300e2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:45:02 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 11:45:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 11:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 11:46:45 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 11:46:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 11:46:46 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 11:47:28 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 11:47:30 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 11:47:30 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 11:47:31 GMT
WORKDIR /data
# Tue, 05 Mar 2019 11:47:31 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 11:47:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 11:47:32 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 11:47:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbd521fe3c3b8745cd78cfc903410a213a70be03e6d6897acf6921637a8fd02`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bef52f90b9f47aca22e18cc348551d4005702e5ebbf95e07e064f7fa8089b74`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 931.2 KB (931203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bec6b3965c2fb7f1149992c428ec258dcf4217cb6ef49cdb952c9b8b68610e`  
		Last Modified: Tue, 05 Mar 2019 11:48:06 GMT  
		Size: 8.4 MB (8423078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48cbccd4a289386c60e1f7f7aeb5d867536e98754315c12e89f4b240419b3a63`  
		Last Modified: Tue, 05 Mar 2019 11:48:03 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257a76e998b4ee30455b201a61867bc0b6cf75133d2f35439ad5df4cee24dded`  
		Last Modified: Tue, 05 Mar 2019 11:48:03 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:9e8c76900f25ebf0ce7ef5c76c0b64910207ae4a91bfe15477a1fa9fa6db8145
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28397664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0c41b02b2da5fda0a55b0b1223ae94b878a6d8fff5b72820baaa62e30032773`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:49:15 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 14:49:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 14:49:44 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 14:51:12 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 14:51:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 14:51:13 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 14:51:52 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:51:54 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 14:51:54 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 14:51:54 GMT
WORKDIR /data
# Tue, 05 Mar 2019 14:51:55 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 14:51:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:51:56 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 14:51:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51627e8cf990e932bb4d6e82698464e990643c8b8a3adfd7a5a241d8035e7b9`  
		Last Modified: Tue, 05 Mar 2019 14:52:14 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944beb6c88fe13fd93f6cb369c558981060b9e3a2efa52700bf6335a036d2760`  
		Last Modified: Tue, 05 Mar 2019 14:52:15 GMT  
		Size: 915.8 KB (915825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936d276d53f89e4c1a338d64992c69b08944b07c1e21c0589aac189d819be4e7`  
		Last Modified: Tue, 05 Mar 2019 14:52:36 GMT  
		Size: 8.2 MB (8197058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2de88ba3eb513b3f447b625a64ab678fe2433b4fbd58178a0ed643c9f7879d5`  
		Last Modified: Tue, 05 Mar 2019 14:52:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737178ddc5535126cb2fa5b2921a1164d4f5ec5015fff536a31f1711a1fec8a7`  
		Last Modified: Tue, 05 Mar 2019 14:52:33 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:fc544b7b4d7dcfdc1f56c97f40afd1e0a0b977e59548e53a0245087060140180
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34042794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a98a11d3cf0a7d69fba725a77b60f253badb178f915ee04516434c2d36a6f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 18:11:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 18:11:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 18:13:21 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 22 Feb 2019 12:53:39 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 12:53:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 12:53:41 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 12:56:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Feb 2019 12:56:07 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 12:56:08 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 12:56:09 GMT
WORKDIR /data
# Fri, 22 Feb 2019 12:56:10 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:56:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 12:56:13 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 12:56:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb72a164d58b5166315d5754bcdf59a33aee72adc904d5211496ac53f2ebbe4`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c085d6d71272c51591b1d678e87f2ace6eb39288c33244a57650ac59e1b970a5`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 908.3 KB (908315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206b142388c8019b48deed7d78086601f50e305ea83753632ac5d997c8d3adc5`  
		Last Modified: Fri, 22 Feb 2019 12:59:26 GMT  
		Size: 12.8 MB (12782061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eac4b5fc40cf62188fa3ed40bfe2ba4d34dfa9edbca890b32eb36fbdbb75ef0`  
		Last Modified: Fri, 22 Feb 2019 12:59:18 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a2fcb6416603cfbe7684bd5eab906230e93e47fb389cebc1ddaaa37a35627d`  
		Last Modified: Fri, 22 Feb 2019 12:59:18 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; 386

```console
$ docker pull redis@sha256:da4bafed7e1a9dface5a39a2eb26899d588a2b904d2946b829c5a7aca37ed828
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df90bb0929594657db659dee775b624708be135336b513dd037372cee1c12ca7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:23:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 17:23:20 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 17:23:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 17:24:50 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 17:24:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 17:24:50 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 17:25:30 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 17:25:30 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 17:25:31 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 17:25:31 GMT
WORKDIR /data
# Tue, 05 Mar 2019 17:25:31 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 17:25:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:25:31 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 17:25:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbebd3af2fccd61e20f39f8fa596a1ccf3fa579a74676e5f92345a4212c23f9`  
		Last Modified: Tue, 05 Mar 2019 17:25:48 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c07fb518ec8e47edf4cec068a21f23b2dd663f2830af705ece740d0265c027`  
		Last Modified: Tue, 05 Mar 2019 17:25:48 GMT  
		Size: 920.1 KB (920126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a66038addd2b5476ddc292c383053fde718f6e119f19d7217cfcacc8e8303d`  
		Last Modified: Tue, 05 Mar 2019 17:25:59 GMT  
		Size: 8.3 MB (8258064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188326c9a6dc9cd1ed94f80fbcb0c7ebf14cf73583ebc37f1d9babc5c830c9d0`  
		Last Modified: Tue, 05 Mar 2019 17:25:58 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95140a8b20c1164a70cf7f25a62128122816f704e2ddfd6edf79d15d8fd532aa`  
		Last Modified: Tue, 05 Mar 2019 17:25:58 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:fb241dc084d38d64869793e415ce1874e66da94351859ed2f0eb3afc275ccf81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32536176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7115920cbed92686fdb2cac7eb9c6f09cb78e30ed8827522cb7a095568ea4ef3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:09:40 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 14:09:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 14:11:07 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 14:15:24 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 14:15:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 14:15:31 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 14:17:20 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:17:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 14:17:26 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 14:17:29 GMT
WORKDIR /data
# Tue, 05 Mar 2019 14:17:31 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 14:17:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:17:38 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 14:17:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cda49701fd84a29c848e779603b3f91332b9ce83a243759fd66bb51424459878`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9cf28aaaf9a9e50dec15d68918563f279b9b10e23a0f2a7632bc8847b64eed`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 909.8 KB (909774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d5c2c852093f691ff8af06458da716079462816bf937544d6dd3cd43464ae8`  
		Last Modified: Tue, 05 Mar 2019 14:18:49 GMT  
		Size: 8.9 MB (8872604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3418be914c6f1b906cb4d0a0ce45c42bb7e4c942a319f85f1409ca90aadb7ac2`  
		Last Modified: Tue, 05 Mar 2019 14:18:47 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efdfe6beedc8f5b9d2338437dd7fc0b5dfa36a6917de9707ac639effa3d9f911`  
		Last Modified: Tue, 05 Mar 2019 14:18:47 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; s390x

```console
$ docker pull redis@sha256:452ec17f29b8cf43e1ba46a66add5ea2b27b14496f90e5d6b3a644d9db02f27a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32365355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a8edf110ff2bd7a9f9cc6f9564295b509cc2862baa7342d69bb308f6095512a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:19:33 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 15:19:33 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 15:19:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 15:21:10 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 15:21:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 15:21:10 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 15:21:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 15:21:40 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 15:21:40 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 15:21:40 GMT
WORKDIR /data
# Tue, 05 Mar 2019 15:21:41 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:21:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:21:41 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 15:21:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdba89d07dcd37b41b497124053b83ce21c0b11a5c1248c56f4b8266d2dc10a`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b052af6696f3b620e4e2272edbd4d62de0b516c9d4577451027abe02b7c6c79f`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 926.8 KB (926782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee16d1c367efe39b2181d620333d318a2a6db33d54ab432ea904b0064ee8d2b5`  
		Last Modified: Tue, 05 Mar 2019 15:22:22 GMT  
		Size: 9.1 MB (9090927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1ee0e20b2c931dd669c2293a21542439a6ac39cae9b3f5ac768589675549ea`  
		Last Modified: Tue, 05 Mar 2019 15:22:20 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12aa8ea5358ed4e5355b222744b25d7c8709a70a3434f897f331799fc722c78`  
		Last Modified: Tue, 05 Mar 2019 15:22:20 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit`

```console
$ docker pull redis@sha256:efa2a886a18aada6ecb6019a807b0257516c9c316341ffddd9591958d9774c29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:1e858828987c3fc11788e8ffbefa8823ca3999bbf38754b840a5f1988b9a8010
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36551567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3965b339a68d8898790c7eb65c35abf87f582e86abc49851c6e294d31f70e8b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:59:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 03:59:08 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:59:22 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 04:03:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:04:20 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:04:20 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 04:04:20 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 04:04:21 GMT
WORKDIR /data
# Tue, 05 Mar 2019 04:04:21 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:04:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:04:21 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 04:04:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421427137c28f41acfcc3dfe20a5cf4fbcd69aec56df545a2be71e0dd9da428a`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af7ef63ef0fb172f652981ba6b70cbd9bbcac98a38fd878e084c0229729d1b5`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 941.4 KB (941372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2323aa845dbde059a924eac511d5f6124e893cf39ad1f430133ed7c317848e62`  
		Last Modified: Tue, 05 Mar 2019 04:05:24 GMT  
		Size: 4.8 MB (4849463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849f76411909e83d455a997f29363af60c961ab3072fc49b5f8325e57cb91ffb`  
		Last Modified: Tue, 05 Mar 2019 04:05:25 GMT  
		Size: 8.3 MB (8262432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41dea5659ee077a63150491da2efbdad16963a4f5ba178688d5dc5ed8b5eabcd`  
		Last Modified: Tue, 05 Mar 2019 04:05:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270129f2aca5b8594443b0f9fd7d98358ffdc0e0af5d00966159b0cfe15467f9`  
		Last Modified: Tue, 05 Mar 2019 04:05:23 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit-stretch`

```console
$ docker pull redis@sha256:efa2a886a18aada6ecb6019a807b0257516c9c316341ffddd9591958d9774c29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:1e858828987c3fc11788e8ffbefa8823ca3999bbf38754b840a5f1988b9a8010
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36551567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3965b339a68d8898790c7eb65c35abf87f582e86abc49851c6e294d31f70e8b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:59:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 03:59:08 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:59:22 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 04:03:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:04:20 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:04:20 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 04:04:20 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 04:04:21 GMT
WORKDIR /data
# Tue, 05 Mar 2019 04:04:21 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:04:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:04:21 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 04:04:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421427137c28f41acfcc3dfe20a5cf4fbcd69aec56df545a2be71e0dd9da428a`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af7ef63ef0fb172f652981ba6b70cbd9bbcac98a38fd878e084c0229729d1b5`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 941.4 KB (941372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2323aa845dbde059a924eac511d5f6124e893cf39ad1f430133ed7c317848e62`  
		Last Modified: Tue, 05 Mar 2019 04:05:24 GMT  
		Size: 4.8 MB (4849463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849f76411909e83d455a997f29363af60c961ab3072fc49b5f8325e57cb91ffb`  
		Last Modified: Tue, 05 Mar 2019 04:05:25 GMT  
		Size: 8.3 MB (8262432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41dea5659ee077a63150491da2efbdad16963a4f5ba178688d5dc5ed8b5eabcd`  
		Last Modified: Tue, 05 Mar 2019 04:05:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270129f2aca5b8594443b0f9fd7d98358ffdc0e0af5d00966159b0cfe15467f9`  
		Last Modified: Tue, 05 Mar 2019 04:05:23 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine`

```console
$ docker pull redis@sha256:2d82b0968340166dfbe2bd80c47520c3e13216d5658be972254623adbfa5bdcb
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

### `redis:4-alpine` - linux; amd64

```console
$ docker pull redis@sha256:7ba44c86c4129a0718d71f5d0ff453a8fe8875b9faf361d7d00e2cc56697421b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13919774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e985c88d45b4cd0af2c724ed39ab6034b923e267494200bce5214846acab722`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:52:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 02:52:31 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 02:54:38 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 02:54:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 02:54:39 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 02:55:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 02:55:35 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 02:55:35 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 02:55:35 GMT
WORKDIR /data
# Fri, 08 Mar 2019 02:55:35 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 02:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 02:55:36 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 02:55:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2113a1bbc9843426fc7f026f089b271956431c2dd2fcf36e814e155e7785ee`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b5ad98d1796ee4133c3b6ea962fe1faeca52492940e12c096a5fcdb8a35184`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 403.0 KB (402988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef17a2d5dfca94f697a84b394ec2ee9582a72c8a99aef3081aa177c37d3275c`  
		Last Modified: Fri, 08 Mar 2019 02:56:20 GMT  
		Size: 10.8 MB (10760288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0cfc6485c5b0342a730fea0f14f069f60963bb31f254f6d82ca0cb17e9ea5a`  
		Last Modified: Fri, 08 Mar 2019 02:56:18 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdc934cfc8d67b395f84b230d3920217602429515ce25ee8a66bfed7b7e949b`  
		Last Modified: Fri, 08 Mar 2019 02:56:18 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:1b14aeb2e479f6eb41c59778d5f2258693e5d45d8ecd6098338c7738caf76204
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v1+json`
-	Total Size: **13.3 MB (13297697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `03b8c192e26ff55e1767c44d2ae18934408cc61aeec8c7e86976292c80d9b69e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 05:39:43 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 05:39:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 05:39:44 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 05:40:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:40:15 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:40:15 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:40:15 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:40:16 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:40:17 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:40:17 GMT
RUN ["\/bin\/sh","-c","#(nop) ","CMD [\"redis-server\"]"]
```

-	Layers:
	-	`sha256:a3ed95caeb02ffe68cdd9fd84406680ae93d633cb16422d00e8a7c22955b46d4`  
		Last Modified: Sat, 14 Nov 2015 09:09:44 GMT  
		Size: 32.0 B  
		MIME: application/octet-stream
	-	`sha256:67996b16993c51f78353cbdd1055a1c3498fc632669bc92366acab8e1a556b6d`  
		Last Modified: Fri, 08 Mar 2019 05:40:52 GMT  
		Size: 414.0 B  
		MIME: application/octet-stream
	-	`sha256:337653b5a46b0e4ced55ea2aa65a0c97ed995573120db33e3573d3f5e3eb5864`  
		Last Modified: Fri, 08 Mar 2019 05:40:52 GMT  
		Size: 134.0 B  
		MIME: application/octet-stream
	-	`sha256:6e444a5f55dab6199bfeef843174991b00ea712ae56d1e3ed6e02b2c18499336`  
		Last Modified: Fri, 08 Mar 2019 05:40:55 GMT  
		Size: 10.3 MB (10349880 bytes)  
		MIME: application/octet-stream
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/octet-stream
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/octet-stream
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/octet-stream

### `redis:4-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:8fc48bdda8d70fd303eaac57653c3ee99bc3322862e03463a5be81b8166a20aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12943525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e50769736830c14ec6d3c400fd38a45cfaafcdaa51624223e0d88752c3103bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 12 Mar 2019 12:39:42 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 12 Mar 2019 12:39:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 12 Mar 2019 12:39:43 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 12 Mar 2019 12:40:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 12 Mar 2019 12:40:09 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Mar 2019 12:40:10 GMT
VOLUME [/data]
# Tue, 12 Mar 2019 12:40:11 GMT
WORKDIR /data
# Tue, 12 Mar 2019 12:40:11 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 12 Mar 2019 12:40:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 12:40:12 GMT
EXPOSE 6379
# Tue, 12 Mar 2019 12:40:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7864aecdc7c4d41af21eae8343adda58329831ab463802b8a05e8519e4115db9`  
		Last Modified: Tue, 12 Mar 2019 12:41:00 GMT  
		Size: 10.2 MB (10194540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0688cad6723600e1fe761377abfdfbf17752bfc367483e783322b3b17144f41c`  
		Last Modified: Tue, 12 Mar 2019 12:40:58 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73da2da5d7fdbcccd0ff90211f7aae885cfeb93d3c758f1579f04a23dfd572e4`  
		Last Modified: Tue, 12 Mar 2019 12:40:58 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:f334dc4a89d9a7643430be14a7692e2a284dd698d5be45f98f11c6daa8fb7b10
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13721015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b4abb70d7fb5499abbf0fe6afbbf04d428180141c3f4af4337b0349aa721cc1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 18:17:43 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 18:17:49 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 22 Feb 2019 12:56:26 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 12:56:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 12:56:29 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 12:58:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 22 Feb 2019 12:58:08 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 12:58:09 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 12:58:11 GMT
WORKDIR /data
# Fri, 22 Feb 2019 12:58:12 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 12:58:14 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 12:58:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d89e1a92041f845dc3bb220bfd64284cf421059b704b46609ec6152d66eae`  
		Last Modified: Wed, 06 Feb 2019 18:24:12 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc7ef0e4aad3218485fe01595abc6569264662cb193886d07c3e9c9b68cfdb9`  
		Last Modified: Wed, 06 Feb 2019 18:24:13 GMT  
		Size: 405.2 KB (405205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0478665633bac264e81a1e306dd9b0cf5dd4c5ac7c427440954b364bf9ef98f`  
		Last Modified: Fri, 22 Feb 2019 12:59:52 GMT  
		Size: 10.6 MB (10625980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0fa17b4ac5f0542712d276555709ca9e820d0e25ae14fd7a8ba3748497803d`  
		Last Modified: Fri, 22 Feb 2019 12:59:46 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6d43eeade9fa27c0c8dce61b61e65a05a8b9343980c330da8697e38fcf5e2d`  
		Last Modified: Fri, 22 Feb 2019 12:59:46 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; 386

```console
$ docker pull redis@sha256:9857c2aedb51cd095ba49a64f5932a2d2d762eca6a39bd6ba63b6f075b4527e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13415922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0d401e7cb0d426fa2c4e5eb8419e1bf3a08946ca25c3b04938862e04c07996`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:14:05 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 10:14:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 10:15:22 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 10:15:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 10:15:22 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 10:15:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 10:15:56 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 10:15:57 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 10:15:57 GMT
WORKDIR /data
# Fri, 08 Mar 2019 10:15:57 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 10:15:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 10:15:57 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 10:15:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2f32c3fa1b6c04a79ca05078e80927d1f1819bd561ce4b1ccb8a2f149d8356`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee3d69b92603c14c56cbff7eb925f16b36a83bda909ae7a9f75374d27186e0a`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 408.0 KB (408008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c894a6476836ef41fc87176575193e8fe4b1571ca8c242d6d3c1b22229824fd0`  
		Last Modified: Tue, 12 Mar 2019 11:07:48 GMT  
		Size: 10.3 MB (10256792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5103498b120b0729f21510b02ff9021ef130affac79db2592d61cb1cc7353bee`  
		Last Modified: Tue, 12 Mar 2019 11:07:46 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61aa0f09332920cca67642e87dcd00ffc7d8c6436189c297477a87dc0f54103f`  
		Last Modified: Tue, 12 Mar 2019 11:07:46 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:45389e503bd5bef9ec4519c8a6f8d1f8a4bda2265ad291aa0ca835b3314793a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14382184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5283f55671c5f1b2250f527c81b546b3e11753f6c72a7d328418d8210d71d50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 06:24:35 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 06:24:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 06:24:38 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 06:25:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 06:25:47 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 06:25:54 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 06:26:02 GMT
WORKDIR /data
# Fri, 08 Mar 2019 06:26:06 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 06:26:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 06:26:22 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 06:26:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f495d7be63ed2d741e47f54b0bd37ad38cd0996bb821fb2d9d557941f3c54d30`  
		Last Modified: Fri, 08 Mar 2019 06:27:46 GMT  
		Size: 11.2 MB (11191375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8051e4920a288358654e3c839b6a652ecf840d48169a5304fd713c4bf217b5d3`  
		Last Modified: Fri, 08 Mar 2019 06:27:43 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1ca381d8ab1e2b9c03bda2978790cf7ecec0d3c796eee4c413dcb2a711f881`  
		Last Modified: Fri, 08 Mar 2019 06:27:43 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; s390x

```console
$ docker pull redis@sha256:c00c0fd4eadf9b557918706556b7d4dab5d7fc822ac09f380fd6aadb5b3ab4f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13787289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a645dc699e168ecbc112290740f5ab21fd69ee4fb7b498cd63b143f5502bf978`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 05:36:46 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 05:36:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 05:36:47 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 05:37:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:37:09 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:37:09 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:37:09 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:37:10 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:37:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:37:10 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:37:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4014cfcf355c2775f4c3d1511ffaf39ca3e22c55e3fe98ac57bb1fca71266080`  
		Last Modified: Fri, 08 Mar 2019 05:38:04 GMT  
		Size: 10.8 MB (10836367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54218dd209b4a59025fc89f909f41a5ae3afe5dbddc706d4ededbda864ac4c03`  
		Last Modified: Fri, 08 Mar 2019 05:38:02 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c8907cfda6c44c908a0fdb885fdf93e6b1c1657da394cc18415cfae546a9d0`  
		Last Modified: Fri, 08 Mar 2019 05:38:02 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine3.9`

```console
$ docker pull redis@sha256:2d82b0968340166dfbe2bd80c47520c3e13216d5658be972254623adbfa5bdcb
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

### `redis:4-alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:7ba44c86c4129a0718d71f5d0ff453a8fe8875b9faf361d7d00e2cc56697421b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13919774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e985c88d45b4cd0af2c724ed39ab6034b923e267494200bce5214846acab722`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:52:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 02:52:31 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 02:54:38 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 02:54:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 02:54:39 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 02:55:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 02:55:35 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 02:55:35 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 02:55:35 GMT
WORKDIR /data
# Fri, 08 Mar 2019 02:55:35 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 02:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 02:55:36 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 02:55:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2113a1bbc9843426fc7f026f089b271956431c2dd2fcf36e814e155e7785ee`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b5ad98d1796ee4133c3b6ea962fe1faeca52492940e12c096a5fcdb8a35184`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 403.0 KB (402988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef17a2d5dfca94f697a84b394ec2ee9582a72c8a99aef3081aa177c37d3275c`  
		Last Modified: Fri, 08 Mar 2019 02:56:20 GMT  
		Size: 10.8 MB (10760288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0cfc6485c5b0342a730fea0f14f069f60963bb31f254f6d82ca0cb17e9ea5a`  
		Last Modified: Fri, 08 Mar 2019 02:56:18 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdc934cfc8d67b395f84b230d3920217602429515ce25ee8a66bfed7b7e949b`  
		Last Modified: Fri, 08 Mar 2019 02:56:18 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:1b14aeb2e479f6eb41c59778d5f2258693e5d45d8ecd6098338c7738caf76204
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v1+json`
-	Total Size: **13.3 MB (13297697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `03b8c192e26ff55e1767c44d2ae18934408cc61aeec8c7e86976292c80d9b69e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 05:39:43 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 05:39:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 05:39:44 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 05:40:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:40:15 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:40:15 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:40:15 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:40:16 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:40:17 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:40:17 GMT
RUN ["\/bin\/sh","-c","#(nop) ","CMD [\"redis-server\"]"]
```

-	Layers:
	-	`sha256:a3ed95caeb02ffe68cdd9fd84406680ae93d633cb16422d00e8a7c22955b46d4`  
		Last Modified: Sat, 14 Nov 2015 09:09:44 GMT  
		Size: 32.0 B  
		MIME: application/octet-stream
	-	`sha256:67996b16993c51f78353cbdd1055a1c3498fc632669bc92366acab8e1a556b6d`  
		Last Modified: Fri, 08 Mar 2019 05:40:52 GMT  
		Size: 414.0 B  
		MIME: application/octet-stream
	-	`sha256:337653b5a46b0e4ced55ea2aa65a0c97ed995573120db33e3573d3f5e3eb5864`  
		Last Modified: Fri, 08 Mar 2019 05:40:52 GMT  
		Size: 134.0 B  
		MIME: application/octet-stream
	-	`sha256:6e444a5f55dab6199bfeef843174991b00ea712ae56d1e3ed6e02b2c18499336`  
		Last Modified: Fri, 08 Mar 2019 05:40:55 GMT  
		Size: 10.3 MB (10349880 bytes)  
		MIME: application/octet-stream
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/octet-stream
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/octet-stream
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/octet-stream

### `redis:4-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:8fc48bdda8d70fd303eaac57653c3ee99bc3322862e03463a5be81b8166a20aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12943525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e50769736830c14ec6d3c400fd38a45cfaafcdaa51624223e0d88752c3103bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 12 Mar 2019 12:39:42 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 12 Mar 2019 12:39:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 12 Mar 2019 12:39:43 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 12 Mar 2019 12:40:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 12 Mar 2019 12:40:09 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Mar 2019 12:40:10 GMT
VOLUME [/data]
# Tue, 12 Mar 2019 12:40:11 GMT
WORKDIR /data
# Tue, 12 Mar 2019 12:40:11 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 12 Mar 2019 12:40:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 12:40:12 GMT
EXPOSE 6379
# Tue, 12 Mar 2019 12:40:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7864aecdc7c4d41af21eae8343adda58329831ab463802b8a05e8519e4115db9`  
		Last Modified: Tue, 12 Mar 2019 12:41:00 GMT  
		Size: 10.2 MB (10194540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0688cad6723600e1fe761377abfdfbf17752bfc367483e783322b3b17144f41c`  
		Last Modified: Tue, 12 Mar 2019 12:40:58 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73da2da5d7fdbcccd0ff90211f7aae885cfeb93d3c758f1579f04a23dfd572e4`  
		Last Modified: Tue, 12 Mar 2019 12:40:58 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:f334dc4a89d9a7643430be14a7692e2a284dd698d5be45f98f11c6daa8fb7b10
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13721015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b4abb70d7fb5499abbf0fe6afbbf04d428180141c3f4af4337b0349aa721cc1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 18:17:43 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 18:17:49 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 22 Feb 2019 12:56:26 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 12:56:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 12:56:29 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 12:58:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 22 Feb 2019 12:58:08 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 12:58:09 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 12:58:11 GMT
WORKDIR /data
# Fri, 22 Feb 2019 12:58:12 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 12:58:14 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 12:58:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d89e1a92041f845dc3bb220bfd64284cf421059b704b46609ec6152d66eae`  
		Last Modified: Wed, 06 Feb 2019 18:24:12 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc7ef0e4aad3218485fe01595abc6569264662cb193886d07c3e9c9b68cfdb9`  
		Last Modified: Wed, 06 Feb 2019 18:24:13 GMT  
		Size: 405.2 KB (405205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0478665633bac264e81a1e306dd9b0cf5dd4c5ac7c427440954b364bf9ef98f`  
		Last Modified: Fri, 22 Feb 2019 12:59:52 GMT  
		Size: 10.6 MB (10625980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0fa17b4ac5f0542712d276555709ca9e820d0e25ae14fd7a8ba3748497803d`  
		Last Modified: Fri, 22 Feb 2019 12:59:46 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6d43eeade9fa27c0c8dce61b61e65a05a8b9343980c330da8697e38fcf5e2d`  
		Last Modified: Fri, 22 Feb 2019 12:59:46 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:9857c2aedb51cd095ba49a64f5932a2d2d762eca6a39bd6ba63b6f075b4527e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13415922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0d401e7cb0d426fa2c4e5eb8419e1bf3a08946ca25c3b04938862e04c07996`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:14:05 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 10:14:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 10:15:22 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 10:15:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 10:15:22 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 10:15:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 10:15:56 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 10:15:57 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 10:15:57 GMT
WORKDIR /data
# Fri, 08 Mar 2019 10:15:57 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 10:15:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 10:15:57 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 10:15:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2f32c3fa1b6c04a79ca05078e80927d1f1819bd561ce4b1ccb8a2f149d8356`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee3d69b92603c14c56cbff7eb925f16b36a83bda909ae7a9f75374d27186e0a`  
		Last Modified: Fri, 08 Mar 2019 10:16:17 GMT  
		Size: 408.0 KB (408008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c894a6476836ef41fc87176575193e8fe4b1571ca8c242d6d3c1b22229824fd0`  
		Last Modified: Tue, 12 Mar 2019 11:07:48 GMT  
		Size: 10.3 MB (10256792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5103498b120b0729f21510b02ff9021ef130affac79db2592d61cb1cc7353bee`  
		Last Modified: Tue, 12 Mar 2019 11:07:46 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61aa0f09332920cca67642e87dcd00ffc7d8c6436189c297477a87dc0f54103f`  
		Last Modified: Tue, 12 Mar 2019 11:07:46 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:45389e503bd5bef9ec4519c8a6f8d1f8a4bda2265ad291aa0ca835b3314793a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14382184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5283f55671c5f1b2250f527c81b546b3e11753f6c72a7d328418d8210d71d50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 06:24:35 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 06:24:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 06:24:38 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 06:25:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 06:25:47 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 06:25:54 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 06:26:02 GMT
WORKDIR /data
# Fri, 08 Mar 2019 06:26:06 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 06:26:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 06:26:22 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 06:26:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f495d7be63ed2d741e47f54b0bd37ad38cd0996bb821fb2d9d557941f3c54d30`  
		Last Modified: Fri, 08 Mar 2019 06:27:46 GMT  
		Size: 11.2 MB (11191375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8051e4920a288358654e3c839b6a652ecf840d48169a5304fd713c4bf217b5d3`  
		Last Modified: Fri, 08 Mar 2019 06:27:43 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1ca381d8ab1e2b9c03bda2978790cf7ecec0d3c796eee4c413dcb2a711f881`  
		Last Modified: Fri, 08 Mar 2019 06:27:43 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:c00c0fd4eadf9b557918706556b7d4dab5d7fc822ac09f380fd6aadb5b3ab4f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13787289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a645dc699e168ecbc112290740f5ab21fd69ee4fb7b498cd63b143f5502bf978`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 05:36:46 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 08 Mar 2019 05:36:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 08 Mar 2019 05:36:47 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 08 Mar 2019 05:37:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:37:09 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:37:09 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:37:09 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:37:10 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:37:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:37:10 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:37:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4014cfcf355c2775f4c3d1511ffaf39ca3e22c55e3fe98ac57bb1fca71266080`  
		Last Modified: Fri, 08 Mar 2019 05:38:04 GMT  
		Size: 10.8 MB (10836367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54218dd209b4a59025fc89f909f41a5ae3afe5dbddc706d4ededbda864ac4c03`  
		Last Modified: Fri, 08 Mar 2019 05:38:02 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c8907cfda6c44c908a0fdb885fdf93e6b1c1657da394cc18415cfae546a9d0`  
		Last Modified: Fri, 08 Mar 2019 05:38:02 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-stretch`

```console
$ docker pull redis@sha256:7ba6704401d1d7e90d19e872c5095f7182dee59b0706eaa891e8eab836c790cd
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

### `redis:4-stretch` - linux; amd64

```console
$ docker pull redis@sha256:439cd74669626d0d8565fbd4f2435a4e2ca21f1ac22e94d4edd3614c8c2784d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32138387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1e8850a2b94403d712643d2a2cedb31956a1e1f211d9793410ee5e9547aa7eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:59:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 03:59:08 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:59:22 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 04:02:37 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 04:03:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:03:18 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 04:03:19 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 04:03:19 GMT
WORKDIR /data
# Tue, 05 Mar 2019 04:03:19 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:03:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:03:20 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 04:03:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421427137c28f41acfcc3dfe20a5cf4fbcd69aec56df545a2be71e0dd9da428a`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af7ef63ef0fb172f652981ba6b70cbd9bbcac98a38fd878e084c0229729d1b5`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 941.4 KB (941372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03eabafd1bb69d177168a524886e1bdb994967b19e14603b4595142a36ff3b7f`  
		Last Modified: Tue, 05 Mar 2019 04:05:16 GMT  
		Size: 8.7 MB (8698721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f696356736ee0378a9941a064c703b505e7846be779c63d53a8cb86a5901784`  
		Last Modified: Tue, 05 Mar 2019 04:05:15 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad401a86d976a0036e9e444ef8c8efe675a44644caed2c1d41e61f20d181f631`  
		Last Modified: Tue, 05 Mar 2019 04:05:14 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:c964b79b5b3ed0b695ec362bcea952787c7f93b10413550ca22786d7b6e97b86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30517114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9bad1129f14b06c17db46c87451ef3350897e0f164440673834552212300e2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:45:02 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 11:45:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 11:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 11:46:45 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 11:46:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 11:46:46 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 11:47:28 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 11:47:30 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 11:47:30 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 11:47:31 GMT
WORKDIR /data
# Tue, 05 Mar 2019 11:47:31 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 11:47:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 11:47:32 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 11:47:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbd521fe3c3b8745cd78cfc903410a213a70be03e6d6897acf6921637a8fd02`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bef52f90b9f47aca22e18cc348551d4005702e5ebbf95e07e064f7fa8089b74`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 931.2 KB (931203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bec6b3965c2fb7f1149992c428ec258dcf4217cb6ef49cdb952c9b8b68610e`  
		Last Modified: Tue, 05 Mar 2019 11:48:06 GMT  
		Size: 8.4 MB (8423078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48cbccd4a289386c60e1f7f7aeb5d867536e98754315c12e89f4b240419b3a63`  
		Last Modified: Tue, 05 Mar 2019 11:48:03 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257a76e998b4ee30455b201a61867bc0b6cf75133d2f35439ad5df4cee24dded`  
		Last Modified: Tue, 05 Mar 2019 11:48:03 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:9e8c76900f25ebf0ce7ef5c76c0b64910207ae4a91bfe15477a1fa9fa6db8145
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28397664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0c41b02b2da5fda0a55b0b1223ae94b878a6d8fff5b72820baaa62e30032773`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:49:15 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 14:49:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 14:49:44 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 14:51:12 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 14:51:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 14:51:13 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 14:51:52 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:51:54 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 14:51:54 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 14:51:54 GMT
WORKDIR /data
# Tue, 05 Mar 2019 14:51:55 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 14:51:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:51:56 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 14:51:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51627e8cf990e932bb4d6e82698464e990643c8b8a3adfd7a5a241d8035e7b9`  
		Last Modified: Tue, 05 Mar 2019 14:52:14 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944beb6c88fe13fd93f6cb369c558981060b9e3a2efa52700bf6335a036d2760`  
		Last Modified: Tue, 05 Mar 2019 14:52:15 GMT  
		Size: 915.8 KB (915825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936d276d53f89e4c1a338d64992c69b08944b07c1e21c0589aac189d819be4e7`  
		Last Modified: Tue, 05 Mar 2019 14:52:36 GMT  
		Size: 8.2 MB (8197058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2de88ba3eb513b3f447b625a64ab678fe2433b4fbd58178a0ed643c9f7879d5`  
		Last Modified: Tue, 05 Mar 2019 14:52:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737178ddc5535126cb2fa5b2921a1164d4f5ec5015fff536a31f1711a1fec8a7`  
		Last Modified: Tue, 05 Mar 2019 14:52:33 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:fc544b7b4d7dcfdc1f56c97f40afd1e0a0b977e59548e53a0245087060140180
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34042794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a98a11d3cf0a7d69fba725a77b60f253badb178f915ee04516434c2d36a6f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 18:11:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 18:11:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 18:13:21 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 22 Feb 2019 12:53:39 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 12:53:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 12:53:41 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 12:56:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Feb 2019 12:56:07 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 12:56:08 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 12:56:09 GMT
WORKDIR /data
# Fri, 22 Feb 2019 12:56:10 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:56:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 12:56:13 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 12:56:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb72a164d58b5166315d5754bcdf59a33aee72adc904d5211496ac53f2ebbe4`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c085d6d71272c51591b1d678e87f2ace6eb39288c33244a57650ac59e1b970a5`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 908.3 KB (908315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206b142388c8019b48deed7d78086601f50e305ea83753632ac5d997c8d3adc5`  
		Last Modified: Fri, 22 Feb 2019 12:59:26 GMT  
		Size: 12.8 MB (12782061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eac4b5fc40cf62188fa3ed40bfe2ba4d34dfa9edbca890b32eb36fbdbb75ef0`  
		Last Modified: Fri, 22 Feb 2019 12:59:18 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a2fcb6416603cfbe7684bd5eab906230e93e47fb389cebc1ddaaa37a35627d`  
		Last Modified: Fri, 22 Feb 2019 12:59:18 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; 386

```console
$ docker pull redis@sha256:da4bafed7e1a9dface5a39a2eb26899d588a2b904d2946b829c5a7aca37ed828
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df90bb0929594657db659dee775b624708be135336b513dd037372cee1c12ca7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:23:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 17:23:20 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 17:23:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 17:24:50 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 17:24:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 17:24:50 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 17:25:30 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 17:25:30 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 17:25:31 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 17:25:31 GMT
WORKDIR /data
# Tue, 05 Mar 2019 17:25:31 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 17:25:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:25:31 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 17:25:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbebd3af2fccd61e20f39f8fa596a1ccf3fa579a74676e5f92345a4212c23f9`  
		Last Modified: Tue, 05 Mar 2019 17:25:48 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c07fb518ec8e47edf4cec068a21f23b2dd663f2830af705ece740d0265c027`  
		Last Modified: Tue, 05 Mar 2019 17:25:48 GMT  
		Size: 920.1 KB (920126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a66038addd2b5476ddc292c383053fde718f6e119f19d7217cfcacc8e8303d`  
		Last Modified: Tue, 05 Mar 2019 17:25:59 GMT  
		Size: 8.3 MB (8258064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188326c9a6dc9cd1ed94f80fbcb0c7ebf14cf73583ebc37f1d9babc5c830c9d0`  
		Last Modified: Tue, 05 Mar 2019 17:25:58 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95140a8b20c1164a70cf7f25a62128122816f704e2ddfd6edf79d15d8fd532aa`  
		Last Modified: Tue, 05 Mar 2019 17:25:58 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:fb241dc084d38d64869793e415ce1874e66da94351859ed2f0eb3afc275ccf81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32536176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7115920cbed92686fdb2cac7eb9c6f09cb78e30ed8827522cb7a095568ea4ef3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:09:40 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 14:09:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 14:11:07 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 14:15:24 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 14:15:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 14:15:31 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 14:17:20 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:17:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 14:17:26 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 14:17:29 GMT
WORKDIR /data
# Tue, 05 Mar 2019 14:17:31 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 14:17:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:17:38 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 14:17:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cda49701fd84a29c848e779603b3f91332b9ce83a243759fd66bb51424459878`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9cf28aaaf9a9e50dec15d68918563f279b9b10e23a0f2a7632bc8847b64eed`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 909.8 KB (909774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d5c2c852093f691ff8af06458da716079462816bf937544d6dd3cd43464ae8`  
		Last Modified: Tue, 05 Mar 2019 14:18:49 GMT  
		Size: 8.9 MB (8872604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3418be914c6f1b906cb4d0a0ce45c42bb7e4c942a319f85f1409ca90aadb7ac2`  
		Last Modified: Tue, 05 Mar 2019 14:18:47 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efdfe6beedc8f5b9d2338437dd7fc0b5dfa36a6917de9707ac639effa3d9f911`  
		Last Modified: Tue, 05 Mar 2019 14:18:47 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; s390x

```console
$ docker pull redis@sha256:452ec17f29b8cf43e1ba46a66add5ea2b27b14496f90e5d6b3a644d9db02f27a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32365355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a8edf110ff2bd7a9f9cc6f9564295b509cc2862baa7342d69bb308f6095512a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:19:33 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 15:19:33 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 15:19:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 15:21:10 GMT
ENV REDIS_VERSION=4.0.13
# Tue, 05 Mar 2019 15:21:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Tue, 05 Mar 2019 15:21:10 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Tue, 05 Mar 2019 15:21:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 15:21:40 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 15:21:40 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 15:21:40 GMT
WORKDIR /data
# Tue, 05 Mar 2019 15:21:41 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:21:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:21:41 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 15:21:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdba89d07dcd37b41b497124053b83ce21c0b11a5c1248c56f4b8266d2dc10a`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b052af6696f3b620e4e2272edbd4d62de0b516c9d4577451027abe02b7c6c79f`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 926.8 KB (926782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee16d1c367efe39b2181d620333d318a2a6db33d54ab432ea904b0064ee8d2b5`  
		Last Modified: Tue, 05 Mar 2019 15:22:22 GMT  
		Size: 9.1 MB (9090927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1ee0e20b2c931dd669c2293a21542439a6ac39cae9b3f5ac768589675549ea`  
		Last Modified: Tue, 05 Mar 2019 15:22:20 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12aa8ea5358ed4e5355b222744b25d7c8709a70a3434f897f331799fc722c78`  
		Last Modified: Tue, 05 Mar 2019 15:22:20 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5`

```console
$ docker pull redis@sha256:4be7fdb131e76a6c6231e820c60b8b12938cf1ff3d437da4871b9b2440f4e385
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

### `redis:5` - linux; amd64

```console
$ docker pull redis@sha256:b33e5a3c00e5794324fad2fab650eadba0f65e625cc915e4e57995590502c269
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35208512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f88f9be58390a5d67c1a7dbcd08691e059fea2dba7cef42dfc41fab513f43bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:59:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 03:59:08 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:59:22 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 03:59:22 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 04:00:32 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:00:33 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 04:00:33 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 04:00:33 GMT
WORKDIR /data
# Tue, 05 Mar 2019 04:00:34 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:00:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:00:34 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 04:00:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421427137c28f41acfcc3dfe20a5cf4fbcd69aec56df545a2be71e0dd9da428a`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af7ef63ef0fb172f652981ba6b70cbd9bbcac98a38fd878e084c0229729d1b5`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 941.4 KB (941372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b858087b35178c572a86e672ec0227fdb6ef902de97ec6fc260e7cc83401a71c`  
		Last Modified: Tue, 05 Mar 2019 04:04:55 GMT  
		Size: 11.8 MB (11768847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf1944f5eb412c407057ca8d776c9d8ddf3323ed5b8f1ce140e0d0a75946bf`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8270b5c7b90d6433cd9c8f7e517ca3598de83743bd446685177e56c66e2f1fbc`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; arm variant v5

```console
$ docker pull redis@sha256:2e9042961afaa90435eddcf4d3c7d28638086773b76f13104e533797ca90abfa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33532073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cfefb520b35c8a3badac1fedc571cf2c6064f7019ed20d79b2746fd207b1932`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:45:02 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 11:45:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 11:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 11:45:29 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 11:45:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 11:45:29 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 11:46:32 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 11:46:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 11:46:34 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 11:46:35 GMT
WORKDIR /data
# Tue, 05 Mar 2019 11:46:36 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 11:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 11:46:37 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 11:46:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbd521fe3c3b8745cd78cfc903410a213a70be03e6d6897acf6921637a8fd02`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bef52f90b9f47aca22e18cc348551d4005702e5ebbf95e07e064f7fa8089b74`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 931.2 KB (931203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43dc92b0b06d46565f8550584f282d1278538cb39421d1c057aa018e5c307df7`  
		Last Modified: Tue, 05 Mar 2019 11:47:50 GMT  
		Size: 11.4 MB (11438036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0211c13bbf5ae9002b4256b3fabf82daec28eee1259a475bfcb0435d234f7427`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ca70b8cd86fe6b16fcbf922bac4f5435eef763511ce3108886d3ad065b2325`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; arm variant v7

```console
$ docker pull redis@sha256:ea26c268ce2d90aeb845ed76af2b2d9a38c6fa4d53742b44c129ee2ac7da2553
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31327947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4507fe201c7a19584655e1430c4150798c111dd406cf82def455f06baec5179e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:49:15 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 14:49:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 14:49:44 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 14:49:45 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 14:49:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 14:49:46 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 14:51:01 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:51:03 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 14:51:03 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 14:51:04 GMT
WORKDIR /data
# Tue, 05 Mar 2019 14:51:04 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 14:51:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:51:05 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 14:51:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51627e8cf990e932bb4d6e82698464e990643c8b8a3adfd7a5a241d8035e7b9`  
		Last Modified: Tue, 05 Mar 2019 14:52:14 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944beb6c88fe13fd93f6cb369c558981060b9e3a2efa52700bf6335a036d2760`  
		Last Modified: Tue, 05 Mar 2019 14:52:15 GMT  
		Size: 915.8 KB (915825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f057717d2c77d0587cbc640c0a7acdc95fe8f49ee31b2a8dbbf354e422451dc`  
		Last Modified: Tue, 05 Mar 2019 14:52:18 GMT  
		Size: 11.1 MB (11127343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2107cdb7ccec1d490390f4a1880073a08c139f1a43587c9f43b6fbac7be2aa8d`  
		Last Modified: Tue, 05 Mar 2019 14:52:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bdbaed531908cc602fe2dfc359807ced7f7eceadbb3cce0d331612538d6d6d`  
		Last Modified: Tue, 05 Mar 2019 14:52:14 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:33c4f41a3d6822ec1bbc7b94628c4e932b809dda844afce605b40f6bd889ec21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32843651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa3370d9d24629991d0a5f054d7dff8e01dff2cfee76afe3528794cf33fd0380`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 18:11:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 18:11:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 18:13:21 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 18:13:22 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 18:13:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 18:13:26 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 18:17:12 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 18:17:17 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:17:18 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:17:19 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:17:21 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:17:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:17:23 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:17:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb72a164d58b5166315d5754bcdf59a33aee72adc904d5211496ac53f2ebbe4`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c085d6d71272c51591b1d678e87f2ace6eb39288c33244a57650ac59e1b970a5`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 908.3 KB (908315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d59efa4834bd7ed97b6e192bacdabb585a1b7186aee85c949a81840201a27a`  
		Last Modified: Wed, 06 Feb 2019 18:23:48 GMT  
		Size: 11.6 MB (11582917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47035e322a8d13b4bd6d8843798ff3d419c302e38f36e4282023e9b88ecc4a0`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd1c970df77ef4f2a475a3bcdf79bac03158243371118d7faaf80ad8599f948`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; 386

```console
$ docker pull redis@sha256:a6a16755e6394b7b3021ae283f96e0fb70063446e9a690ac994d0fcb2829d12f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35226151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30cc1e946115faa07fa034d19006077ffd0661ff425851f11467aa91b1d28bd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:23:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 17:23:20 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 17:23:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 17:23:35 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 17:23:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 17:23:36 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 17:24:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 17:24:40 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 17:24:40 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 17:24:40 GMT
WORKDIR /data
# Tue, 05 Mar 2019 17:24:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 17:24:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:24:41 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 17:24:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbebd3af2fccd61e20f39f8fa596a1ccf3fa579a74676e5f92345a4212c23f9`  
		Last Modified: Tue, 05 Mar 2019 17:25:48 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c07fb518ec8e47edf4cec068a21f23b2dd663f2830af705ece740d0265c027`  
		Last Modified: Tue, 05 Mar 2019 17:25:48 GMT  
		Size: 920.1 KB (920126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a80aa54f293ac8d0a27a6039f43fa051ed98495f977c39c417727bcb1c341a`  
		Last Modified: Tue, 05 Mar 2019 17:25:50 GMT  
		Size: 11.2 MB (11178096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff94dd12a5604b1b0d726248ccdcceea6559322af2262eb5c43b832c72939fb3`  
		Last Modified: Tue, 05 Mar 2019 17:25:47 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef861093e39a9f94963c0861be825347d4f82e3d8d83c85abb5146aea9c974d`  
		Last Modified: Tue, 05 Mar 2019 17:25:49 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; ppc64le

```console
$ docker pull redis@sha256:8f644997c7d94f6277614fe0f956c25bd8f94ce5afa3c06e9438aeab4bcb79d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35620300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c068025f2c158ebf44bb2012c41152f119ba694dbc8de4a732e3dcf56d883514`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:09:40 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 14:09:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 14:11:07 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 14:11:11 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 14:11:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 14:11:20 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 14:14:26 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:14:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 14:14:38 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 14:14:42 GMT
WORKDIR /data
# Tue, 05 Mar 2019 14:14:44 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 14:14:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:14:51 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 14:14:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cda49701fd84a29c848e779603b3f91332b9ce83a243759fd66bb51424459878`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9cf28aaaf9a9e50dec15d68918563f279b9b10e23a0f2a7632bc8847b64eed`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 909.8 KB (909774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea027f83e1b0748fa57fb9b4db80ab33ffaa5bfe6c1c983480760950e013a38`  
		Last Modified: Tue, 05 Mar 2019 14:18:19 GMT  
		Size: 12.0 MB (11956727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae8524649bc51658e77a8f5cbd9bef56db7aede58a9e4a30cca4590bc4d3369`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0b5dff42369cfaa39f269927320163559de8967d4eb176a8ac01bae1c61493`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; s390x

```console
$ docker pull redis@sha256:2615be3d6c072a2c212149777526bc50a46e26ca4b8c23b9d770fa5084606d1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35499659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad5aee4bebe2d6a074a1957bd6713b275325f9ae6c6e13c3f7dbf4e4e64674ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:19:33 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 15:19:33 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 15:19:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 15:19:50 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 15:19:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 15:19:51 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 15:20:48 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 15:20:49 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 15:20:49 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 15:20:50 GMT
WORKDIR /data
# Tue, 05 Mar 2019 15:20:50 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:20:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:20:50 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 15:20:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdba89d07dcd37b41b497124053b83ce21c0b11a5c1248c56f4b8266d2dc10a`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b052af6696f3b620e4e2272edbd4d62de0b516c9d4577451027abe02b7c6c79f`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 926.8 KB (926782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1ade6dd699b86675c7f5e55a1f00ef1b902231b9f5d6ef42ec596e71e240e7`  
		Last Modified: Tue, 05 Mar 2019 15:22:08 GMT  
		Size: 12.2 MB (12225231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2e2d14ec6fb5af47556fb02ed24ed6920924dd6d86a6bae3415228c410dff0`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37af7a0fbab16b2f9cdff3f2c06c66f7796f5c5fbf1ae1429264dc12d90fc1ec`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0`

```console
$ docker pull redis@sha256:4be7fdb131e76a6c6231e820c60b8b12938cf1ff3d437da4871b9b2440f4e385
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

### `redis:5.0` - linux; amd64

```console
$ docker pull redis@sha256:b33e5a3c00e5794324fad2fab650eadba0f65e625cc915e4e57995590502c269
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35208512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f88f9be58390a5d67c1a7dbcd08691e059fea2dba7cef42dfc41fab513f43bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:59:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 03:59:08 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:59:22 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 03:59:22 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 04:00:32 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:00:33 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 04:00:33 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 04:00:33 GMT
WORKDIR /data
# Tue, 05 Mar 2019 04:00:34 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:00:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:00:34 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 04:00:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421427137c28f41acfcc3dfe20a5cf4fbcd69aec56df545a2be71e0dd9da428a`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af7ef63ef0fb172f652981ba6b70cbd9bbcac98a38fd878e084c0229729d1b5`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 941.4 KB (941372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b858087b35178c572a86e672ec0227fdb6ef902de97ec6fc260e7cc83401a71c`  
		Last Modified: Tue, 05 Mar 2019 04:04:55 GMT  
		Size: 11.8 MB (11768847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf1944f5eb412c407057ca8d776c9d8ddf3323ed5b8f1ce140e0d0a75946bf`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8270b5c7b90d6433cd9c8f7e517ca3598de83743bd446685177e56c66e2f1fbc`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; arm variant v5

```console
$ docker pull redis@sha256:2e9042961afaa90435eddcf4d3c7d28638086773b76f13104e533797ca90abfa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33532073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cfefb520b35c8a3badac1fedc571cf2c6064f7019ed20d79b2746fd207b1932`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:45:02 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 11:45:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 11:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 11:45:29 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 11:45:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 11:45:29 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 11:46:32 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 11:46:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 11:46:34 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 11:46:35 GMT
WORKDIR /data
# Tue, 05 Mar 2019 11:46:36 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 11:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 11:46:37 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 11:46:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbd521fe3c3b8745cd78cfc903410a213a70be03e6d6897acf6921637a8fd02`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bef52f90b9f47aca22e18cc348551d4005702e5ebbf95e07e064f7fa8089b74`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 931.2 KB (931203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43dc92b0b06d46565f8550584f282d1278538cb39421d1c057aa018e5c307df7`  
		Last Modified: Tue, 05 Mar 2019 11:47:50 GMT  
		Size: 11.4 MB (11438036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0211c13bbf5ae9002b4256b3fabf82daec28eee1259a475bfcb0435d234f7427`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ca70b8cd86fe6b16fcbf922bac4f5435eef763511ce3108886d3ad065b2325`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; arm variant v7

```console
$ docker pull redis@sha256:ea26c268ce2d90aeb845ed76af2b2d9a38c6fa4d53742b44c129ee2ac7da2553
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31327947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4507fe201c7a19584655e1430c4150798c111dd406cf82def455f06baec5179e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:49:15 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 14:49:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 14:49:44 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 14:49:45 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 14:49:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 14:49:46 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 14:51:01 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:51:03 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 14:51:03 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 14:51:04 GMT
WORKDIR /data
# Tue, 05 Mar 2019 14:51:04 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 14:51:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:51:05 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 14:51:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51627e8cf990e932bb4d6e82698464e990643c8b8a3adfd7a5a241d8035e7b9`  
		Last Modified: Tue, 05 Mar 2019 14:52:14 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944beb6c88fe13fd93f6cb369c558981060b9e3a2efa52700bf6335a036d2760`  
		Last Modified: Tue, 05 Mar 2019 14:52:15 GMT  
		Size: 915.8 KB (915825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f057717d2c77d0587cbc640c0a7acdc95fe8f49ee31b2a8dbbf354e422451dc`  
		Last Modified: Tue, 05 Mar 2019 14:52:18 GMT  
		Size: 11.1 MB (11127343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2107cdb7ccec1d490390f4a1880073a08c139f1a43587c9f43b6fbac7be2aa8d`  
		Last Modified: Tue, 05 Mar 2019 14:52:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bdbaed531908cc602fe2dfc359807ced7f7eceadbb3cce0d331612538d6d6d`  
		Last Modified: Tue, 05 Mar 2019 14:52:14 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:33c4f41a3d6822ec1bbc7b94628c4e932b809dda844afce605b40f6bd889ec21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32843651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa3370d9d24629991d0a5f054d7dff8e01dff2cfee76afe3528794cf33fd0380`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 18:11:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 18:11:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 18:13:21 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 18:13:22 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 18:13:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 18:13:26 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 18:17:12 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 18:17:17 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:17:18 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:17:19 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:17:21 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:17:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:17:23 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:17:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb72a164d58b5166315d5754bcdf59a33aee72adc904d5211496ac53f2ebbe4`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c085d6d71272c51591b1d678e87f2ace6eb39288c33244a57650ac59e1b970a5`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 908.3 KB (908315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d59efa4834bd7ed97b6e192bacdabb585a1b7186aee85c949a81840201a27a`  
		Last Modified: Wed, 06 Feb 2019 18:23:48 GMT  
		Size: 11.6 MB (11582917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47035e322a8d13b4bd6d8843798ff3d419c302e38f36e4282023e9b88ecc4a0`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd1c970df77ef4f2a475a3bcdf79bac03158243371118d7faaf80ad8599f948`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; 386

```console
$ docker pull redis@sha256:a6a16755e6394b7b3021ae283f96e0fb70063446e9a690ac994d0fcb2829d12f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35226151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30cc1e946115faa07fa034d19006077ffd0661ff425851f11467aa91b1d28bd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:23:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 17:23:20 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 17:23:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 17:23:35 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 17:23:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 17:23:36 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 17:24:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 17:24:40 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 17:24:40 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 17:24:40 GMT
WORKDIR /data
# Tue, 05 Mar 2019 17:24:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 17:24:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:24:41 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 17:24:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbebd3af2fccd61e20f39f8fa596a1ccf3fa579a74676e5f92345a4212c23f9`  
		Last Modified: Tue, 05 Mar 2019 17:25:48 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c07fb518ec8e47edf4cec068a21f23b2dd663f2830af705ece740d0265c027`  
		Last Modified: Tue, 05 Mar 2019 17:25:48 GMT  
		Size: 920.1 KB (920126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a80aa54f293ac8d0a27a6039f43fa051ed98495f977c39c417727bcb1c341a`  
		Last Modified: Tue, 05 Mar 2019 17:25:50 GMT  
		Size: 11.2 MB (11178096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff94dd12a5604b1b0d726248ccdcceea6559322af2262eb5c43b832c72939fb3`  
		Last Modified: Tue, 05 Mar 2019 17:25:47 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef861093e39a9f94963c0861be825347d4f82e3d8d83c85abb5146aea9c974d`  
		Last Modified: Tue, 05 Mar 2019 17:25:49 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; ppc64le

```console
$ docker pull redis@sha256:8f644997c7d94f6277614fe0f956c25bd8f94ce5afa3c06e9438aeab4bcb79d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35620300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c068025f2c158ebf44bb2012c41152f119ba694dbc8de4a732e3dcf56d883514`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:09:40 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 14:09:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 14:11:07 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 14:11:11 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 14:11:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 14:11:20 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 14:14:26 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:14:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 14:14:38 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 14:14:42 GMT
WORKDIR /data
# Tue, 05 Mar 2019 14:14:44 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 14:14:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:14:51 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 14:14:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cda49701fd84a29c848e779603b3f91332b9ce83a243759fd66bb51424459878`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9cf28aaaf9a9e50dec15d68918563f279b9b10e23a0f2a7632bc8847b64eed`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 909.8 KB (909774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea027f83e1b0748fa57fb9b4db80ab33ffaa5bfe6c1c983480760950e013a38`  
		Last Modified: Tue, 05 Mar 2019 14:18:19 GMT  
		Size: 12.0 MB (11956727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae8524649bc51658e77a8f5cbd9bef56db7aede58a9e4a30cca4590bc4d3369`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0b5dff42369cfaa39f269927320163559de8967d4eb176a8ac01bae1c61493`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; s390x

```console
$ docker pull redis@sha256:2615be3d6c072a2c212149777526bc50a46e26ca4b8c23b9d770fa5084606d1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35499659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad5aee4bebe2d6a074a1957bd6713b275325f9ae6c6e13c3f7dbf4e4e64674ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:19:33 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 15:19:33 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 15:19:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 15:19:50 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 15:19:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 15:19:51 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 15:20:48 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 15:20:49 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 15:20:49 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 15:20:50 GMT
WORKDIR /data
# Tue, 05 Mar 2019 15:20:50 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:20:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:20:50 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 15:20:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdba89d07dcd37b41b497124053b83ce21c0b11a5c1248c56f4b8266d2dc10a`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b052af6696f3b620e4e2272edbd4d62de0b516c9d4577451027abe02b7c6c79f`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 926.8 KB (926782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1ade6dd699b86675c7f5e55a1f00ef1b902231b9f5d6ef42ec596e71e240e7`  
		Last Modified: Tue, 05 Mar 2019 15:22:08 GMT  
		Size: 12.2 MB (12225231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2e2d14ec6fb5af47556fb02ed24ed6920924dd6d86a6bae3415228c410dff0`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37af7a0fbab16b2f9cdff3f2c06c66f7796f5c5fbf1ae1429264dc12d90fc1ec`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-32bit`

```console
$ docker pull redis@sha256:5b1ef224856291dba253f816538be5e6f07b1592f6e6453e9e1045010784d56f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:ed67962763c6773b146659effd9248e98ced224015a3706c5cf9e4e43d3f4c00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39472586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b7ca9027b23a38d19241a40310c42606647ae48620c25414cc66d00ce3cf2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:59:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 03:59:08 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:59:22 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 03:59:22 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 04:00:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:02:20 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:02:20 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 04:02:21 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 04:02:21 GMT
WORKDIR /data
# Tue, 05 Mar 2019 04:02:21 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:02:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:02:21 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 04:02:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421427137c28f41acfcc3dfe20a5cf4fbcd69aec56df545a2be71e0dd9da428a`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af7ef63ef0fb172f652981ba6b70cbd9bbcac98a38fd878e084c0229729d1b5`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 941.4 KB (941372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db802777c86cbcb16178246477fec3ab18b4c20f1c2708c0f5623eebaa626651`  
		Last Modified: Tue, 05 Mar 2019 04:05:04 GMT  
		Size: 4.8 MB (4849445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a531f0eb35175d518d358a5c9ca83d5a7ac2cafb70a31c6479ee5d166c3cfbcc`  
		Last Modified: Tue, 05 Mar 2019 04:05:05 GMT  
		Size: 11.2 MB (11183471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3321b728b1c50f9a4aaecb15b4b05f54f6eb437d9315f756ac6dd9c132feea9`  
		Last Modified: Tue, 05 Mar 2019 04:05:03 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a85c52197efcdc27942c3bfcce19c3caffe893def5bbe0c379f603fc5a05fd7`  
		Last Modified: Tue, 05 Mar 2019 04:05:03 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-32bit-stretch`

```console
$ docker pull redis@sha256:5b1ef224856291dba253f816538be5e6f07b1592f6e6453e9e1045010784d56f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:ed67962763c6773b146659effd9248e98ced224015a3706c5cf9e4e43d3f4c00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39472586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b7ca9027b23a38d19241a40310c42606647ae48620c25414cc66d00ce3cf2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:59:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 03:59:08 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:59:22 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 03:59:22 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 04:00:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:02:20 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:02:20 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 04:02:21 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 04:02:21 GMT
WORKDIR /data
# Tue, 05 Mar 2019 04:02:21 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:02:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:02:21 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 04:02:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421427137c28f41acfcc3dfe20a5cf4fbcd69aec56df545a2be71e0dd9da428a`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af7ef63ef0fb172f652981ba6b70cbd9bbcac98a38fd878e084c0229729d1b5`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 941.4 KB (941372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db802777c86cbcb16178246477fec3ab18b4c20f1c2708c0f5623eebaa626651`  
		Last Modified: Tue, 05 Mar 2019 04:05:04 GMT  
		Size: 4.8 MB (4849445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a531f0eb35175d518d358a5c9ca83d5a7ac2cafb70a31c6479ee5d166c3cfbcc`  
		Last Modified: Tue, 05 Mar 2019 04:05:05 GMT  
		Size: 11.2 MB (11183471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3321b728b1c50f9a4aaecb15b4b05f54f6eb437d9315f756ac6dd9c132feea9`  
		Last Modified: Tue, 05 Mar 2019 04:05:03 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a85c52197efcdc27942c3bfcce19c3caffe893def5bbe0c379f603fc5a05fd7`  
		Last Modified: Tue, 05 Mar 2019 04:05:03 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.4`

**does not exist** (yet?)

## `redis:5.0.4-32bit`

**does not exist** (yet?)

## `redis:5.0.4-32bit-stretch`

**does not exist** (yet?)

## `redis:5.0.4-alpine`

**does not exist** (yet?)

## `redis:5.0.4-alpine3.9`

**does not exist** (yet?)

## `redis:5.0.4-stretch`

**does not exist** (yet?)

## `redis:5.0-alpine`

```console
$ docker pull redis@sha256:f8c22abc77f3f9cc1c2516062e4a2a71375859d7922da3faf9e4160e6ba4c3c2
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

### `redis:5.0-alpine` - linux; amd64

```console
$ docker pull redis@sha256:9470e8715d17afa5e80ef6df3f71327b6a94d893f3cd65e40a2c63230eb64e3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.7 MB (17722275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d2a373f46ae28f3376c356d27210759aa9348fd94c517cf77e9df2a2c41c37f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:52:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 02:52:31 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 02:52:31 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 02:52:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 02:52:32 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 02:54:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 02:54:11 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 02:54:11 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 02:54:11 GMT
WORKDIR /data
# Fri, 08 Mar 2019 02:54:11 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 02:54:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 02:54:12 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 02:54:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2113a1bbc9843426fc7f026f089b271956431c2dd2fcf36e814e155e7785ee`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b5ad98d1796ee4133c3b6ea962fe1faeca52492940e12c096a5fcdb8a35184`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 403.0 KB (402988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db6e55a035b9e04666197903eaea1165e45840cca90b03253a02ec0f90bdeb1`  
		Last Modified: Fri, 08 Mar 2019 02:56:10 GMT  
		Size: 14.6 MB (14562788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec250a8373f412c85b643a1ef7166350aa0ce7b74d0e0f771d6e1f9fdc8907d8`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c03918a60af65b1cfb755b230111f3fb778fa68f3d46b2de495014c00befef`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:d3c5e39feeba9304f7096c78153f6190866859f125d06264b41899934e3bc444
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17108881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766dece240d92fa49b3fa3a0e8915d976ed9954624fb48e526895c66502e929d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 05:38:44 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 05:38:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 05:38:45 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 05:39:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:39:29 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:39:29 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:39:30 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:39:30 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:39:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:39:31 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:39:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6f611f98f72b65dc6900980e0d4c7d4fcec43653ffddc3941865c867f733c0`  
		Last Modified: Fri, 08 Mar 2019 05:40:36 GMT  
		Size: 14.2 MB (14161096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c178c0c46bec2f2399ca62d54ac1d556ce369780808f3fcd9302e3a231049558`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3aaff2c1a9d4814dfbd081b5b1dc3feafab94051d9fda57faa150ce1957d89`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:55126eb8780c44b6443720435353e7d40798bf362cc9ba9d2c0adefc24893a8d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16671379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485660acbd7fb515439989807b526cb070e583f3fcaa004c4b9fe9bbdcc6e39c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 12 Mar 2019 12:38:38 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 12 Mar 2019 12:38:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 12 Mar 2019 12:38:39 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 12 Mar 2019 12:39:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 12 Mar 2019 12:39:23 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Mar 2019 12:39:24 GMT
VOLUME [/data]
# Tue, 12 Mar 2019 12:39:24 GMT
WORKDIR /data
# Tue, 12 Mar 2019 12:39:24 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 12 Mar 2019 12:39:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 12:39:25 GMT
EXPOSE 6379
# Tue, 12 Mar 2019 12:39:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a10fcb5d3d369925b1cb45fdd3be599dfa5d5bb3de52f2a59b5ef9e4b0e823`  
		Last Modified: Tue, 12 Mar 2019 12:40:42 GMT  
		Size: 13.9 MB (13922393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df75bf956365872f643191e7c0f5aede912ada01120f0d68bf0d2a7372987978`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf2eb401ad54799db747abf685742fdcd1dfce29d36ee6381399a58704d2132`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:5135100311d63782ba32a92f8d46ae62bae1c6e85870cf833cf2d9c6294a3ffe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17583542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6dfd9f945a2b90bc7decf8723fa49a2b0f0be38e5c104b51bf22185b3cdf8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 11:43:54 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 11:43:57 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 11:43:58 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 11:43:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 11:43:59 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 11:46:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 11:46:25 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 11:46:26 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 11:46:27 GMT
WORKDIR /data
# Fri, 08 Mar 2019 11:46:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 11:46:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 11:46:31 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 11:46:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9399e6d0245cf7181b0da72bf72a7673a2cbd03df8e8d269a7f581072fe06d06`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f2f1a6525b6f6416d05654def28abb3f85447e8520aa1d50e95e5f74f8e48`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 405.2 KB (405226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa930d6c6ae8c5457b55e58e192975933e3e9ad90547a58815a17696a3a65a3a`  
		Last Modified: Fri, 08 Mar 2019 11:49:00 GMT  
		Size: 14.5 MB (14488609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903f3d4c59ad6ba33196bd5ba110f68c7e4ff17c29668c6d9c8d0ea7293941d7`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257aa0fc624a3f2af4d285c7bae5b93c80de3c5c356b228609fa610373ec32e8`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; 386

```console
$ docker pull redis@sha256:c99c1d979dc106c0adb1fd7af9b3ba80410dec1f6c58ac281869f8895d353596
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17099588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:280e5f9e610458b58e75a4ef40023d0d3aabe0d2aa5c58651a37aa466f50e761`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 23:41:06 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 23:41:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 23:41:07 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 23:41:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 23:41:08 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 23:42:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 23:42:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 23:42:11 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 23:42:11 GMT
WORKDIR /data
# Wed, 06 Feb 2019 23:42:12 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 23:42:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 23:42:12 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 23:42:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674a296497ebd416b2ea4f25685d393136e7c050aa9f40131a989dd1adef0df7`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2485495ab2e5b3bb49d4ee34a89cdbf4845c38bd6b6e91a2d786e4b5f9d07a59`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 408.0 KB (407996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc669db85fd94db885a05969024c2fe98dd5c24fcec3ec6d862e00ad74a3ab11`  
		Last Modified: Wed, 06 Feb 2019 23:44:11 GMT  
		Size: 13.9 MB (13940319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10f03309433ece380a8d54b8aff90742c444ba831ddd17aabf1eb935920aff2`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c502ff5c4e1dec67d99924f64e85c80106d273fc3a9baa08e6792e6a387506e3`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:8cec178a0bea3303c4c7b3d5681b2c1e3b6ae61f8acaa670411aeff51708b36f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18591914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57eaa83ea14b56cc6d63dcb6dec2931a628f1a2ef6a241f4e24a067fe5e68fc4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 06:22:10 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 06:22:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 06:22:14 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 06:23:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 06:23:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 06:23:49 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 06:24:00 GMT
WORKDIR /data
# Fri, 08 Mar 2019 06:24:04 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 06:24:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 06:24:11 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 06:24:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1cf51440511033fa9bdb096fce3e388ec6f35e8645c658c578500775427621`  
		Last Modified: Fri, 08 Mar 2019 06:27:14 GMT  
		Size: 15.4 MB (15401106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fea05b9f74e69f981c71672f6ba89bb049c821bc68f6b488fd67ba32650878`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c089a1d19ff8a7e10da455f6107b337f3922203340afbe5c551f0a91ba6129`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; s390x

```console
$ docker pull redis@sha256:882204235cbe933a053875c1443457ebd91316ceca5ebd042801449038f5fcd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17817006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cac3e0ee906fb18ec02596b5d00f1cf8185603b15670280b52b9175b5f94011`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 05:35:50 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 05:35:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 05:35:50 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 05:36:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:36:33 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:36:33 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:36:33 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:36:33 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:36:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:36:34 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:36:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fbd283297462513463363df4a4a3766809dc0eec117be2a10c1747fd0fea69`  
		Last Modified: Fri, 08 Mar 2019 05:37:33 GMT  
		Size: 14.9 MB (14866084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc7b45b4850310346e3275012d38284c97b2ddbac570d21ce353e165112c1fa`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0dabb8834dc79beb93f7bfb59cc12fb4917b07fcdc9711410543c57b2415ff`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-alpine3.9`

```console
$ docker pull redis@sha256:f8c22abc77f3f9cc1c2516062e4a2a71375859d7922da3faf9e4160e6ba4c3c2
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

### `redis:5.0-alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:9470e8715d17afa5e80ef6df3f71327b6a94d893f3cd65e40a2c63230eb64e3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.7 MB (17722275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d2a373f46ae28f3376c356d27210759aa9348fd94c517cf77e9df2a2c41c37f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:52:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 02:52:31 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 02:52:31 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 02:52:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 02:52:32 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 02:54:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 02:54:11 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 02:54:11 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 02:54:11 GMT
WORKDIR /data
# Fri, 08 Mar 2019 02:54:11 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 02:54:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 02:54:12 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 02:54:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2113a1bbc9843426fc7f026f089b271956431c2dd2fcf36e814e155e7785ee`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b5ad98d1796ee4133c3b6ea962fe1faeca52492940e12c096a5fcdb8a35184`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 403.0 KB (402988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db6e55a035b9e04666197903eaea1165e45840cca90b03253a02ec0f90bdeb1`  
		Last Modified: Fri, 08 Mar 2019 02:56:10 GMT  
		Size: 14.6 MB (14562788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec250a8373f412c85b643a1ef7166350aa0ce7b74d0e0f771d6e1f9fdc8907d8`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c03918a60af65b1cfb755b230111f3fb778fa68f3d46b2de495014c00befef`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:d3c5e39feeba9304f7096c78153f6190866859f125d06264b41899934e3bc444
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17108881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766dece240d92fa49b3fa3a0e8915d976ed9954624fb48e526895c66502e929d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 05:38:44 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 05:38:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 05:38:45 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 05:39:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:39:29 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:39:29 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:39:30 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:39:30 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:39:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:39:31 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:39:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6f611f98f72b65dc6900980e0d4c7d4fcec43653ffddc3941865c867f733c0`  
		Last Modified: Fri, 08 Mar 2019 05:40:36 GMT  
		Size: 14.2 MB (14161096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c178c0c46bec2f2399ca62d54ac1d556ce369780808f3fcd9302e3a231049558`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3aaff2c1a9d4814dfbd081b5b1dc3feafab94051d9fda57faa150ce1957d89`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:55126eb8780c44b6443720435353e7d40798bf362cc9ba9d2c0adefc24893a8d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16671379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485660acbd7fb515439989807b526cb070e583f3fcaa004c4b9fe9bbdcc6e39c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 12 Mar 2019 12:38:38 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 12 Mar 2019 12:38:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 12 Mar 2019 12:38:39 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 12 Mar 2019 12:39:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 12 Mar 2019 12:39:23 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Mar 2019 12:39:24 GMT
VOLUME [/data]
# Tue, 12 Mar 2019 12:39:24 GMT
WORKDIR /data
# Tue, 12 Mar 2019 12:39:24 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 12 Mar 2019 12:39:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 12:39:25 GMT
EXPOSE 6379
# Tue, 12 Mar 2019 12:39:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a10fcb5d3d369925b1cb45fdd3be599dfa5d5bb3de52f2a59b5ef9e4b0e823`  
		Last Modified: Tue, 12 Mar 2019 12:40:42 GMT  
		Size: 13.9 MB (13922393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df75bf956365872f643191e7c0f5aede912ada01120f0d68bf0d2a7372987978`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf2eb401ad54799db747abf685742fdcd1dfce29d36ee6381399a58704d2132`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:5135100311d63782ba32a92f8d46ae62bae1c6e85870cf833cf2d9c6294a3ffe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17583542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6dfd9f945a2b90bc7decf8723fa49a2b0f0be38e5c104b51bf22185b3cdf8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 11:43:54 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 11:43:57 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 11:43:58 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 11:43:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 11:43:59 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 11:46:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 11:46:25 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 11:46:26 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 11:46:27 GMT
WORKDIR /data
# Fri, 08 Mar 2019 11:46:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 11:46:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 11:46:31 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 11:46:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9399e6d0245cf7181b0da72bf72a7673a2cbd03df8e8d269a7f581072fe06d06`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f2f1a6525b6f6416d05654def28abb3f85447e8520aa1d50e95e5f74f8e48`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 405.2 KB (405226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa930d6c6ae8c5457b55e58e192975933e3e9ad90547a58815a17696a3a65a3a`  
		Last Modified: Fri, 08 Mar 2019 11:49:00 GMT  
		Size: 14.5 MB (14488609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903f3d4c59ad6ba33196bd5ba110f68c7e4ff17c29668c6d9c8d0ea7293941d7`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257aa0fc624a3f2af4d285c7bae5b93c80de3c5c356b228609fa610373ec32e8`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:c99c1d979dc106c0adb1fd7af9b3ba80410dec1f6c58ac281869f8895d353596
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17099588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:280e5f9e610458b58e75a4ef40023d0d3aabe0d2aa5c58651a37aa466f50e761`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 23:41:06 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 23:41:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 23:41:07 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 23:41:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 23:41:08 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 23:42:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 23:42:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 23:42:11 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 23:42:11 GMT
WORKDIR /data
# Wed, 06 Feb 2019 23:42:12 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 23:42:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 23:42:12 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 23:42:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674a296497ebd416b2ea4f25685d393136e7c050aa9f40131a989dd1adef0df7`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2485495ab2e5b3bb49d4ee34a89cdbf4845c38bd6b6e91a2d786e4b5f9d07a59`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 408.0 KB (407996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc669db85fd94db885a05969024c2fe98dd5c24fcec3ec6d862e00ad74a3ab11`  
		Last Modified: Wed, 06 Feb 2019 23:44:11 GMT  
		Size: 13.9 MB (13940319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10f03309433ece380a8d54b8aff90742c444ba831ddd17aabf1eb935920aff2`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c502ff5c4e1dec67d99924f64e85c80106d273fc3a9baa08e6792e6a387506e3`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:8cec178a0bea3303c4c7b3d5681b2c1e3b6ae61f8acaa670411aeff51708b36f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18591914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57eaa83ea14b56cc6d63dcb6dec2931a628f1a2ef6a241f4e24a067fe5e68fc4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 06:22:10 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 06:22:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 06:22:14 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 06:23:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 06:23:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 06:23:49 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 06:24:00 GMT
WORKDIR /data
# Fri, 08 Mar 2019 06:24:04 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 06:24:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 06:24:11 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 06:24:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1cf51440511033fa9bdb096fce3e388ec6f35e8645c658c578500775427621`  
		Last Modified: Fri, 08 Mar 2019 06:27:14 GMT  
		Size: 15.4 MB (15401106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fea05b9f74e69f981c71672f6ba89bb049c821bc68f6b488fd67ba32650878`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c089a1d19ff8a7e10da455f6107b337f3922203340afbe5c551f0a91ba6129`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:882204235cbe933a053875c1443457ebd91316ceca5ebd042801449038f5fcd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17817006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cac3e0ee906fb18ec02596b5d00f1cf8185603b15670280b52b9175b5f94011`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 05:35:50 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 05:35:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 05:35:50 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 05:36:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:36:33 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:36:33 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:36:33 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:36:33 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:36:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:36:34 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:36:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fbd283297462513463363df4a4a3766809dc0eec117be2a10c1747fd0fea69`  
		Last Modified: Fri, 08 Mar 2019 05:37:33 GMT  
		Size: 14.9 MB (14866084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc7b45b4850310346e3275012d38284c97b2ddbac570d21ce353e165112c1fa`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0dabb8834dc79beb93f7bfb59cc12fb4917b07fcdc9711410543c57b2415ff`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-stretch`

```console
$ docker pull redis@sha256:4be7fdb131e76a6c6231e820c60b8b12938cf1ff3d437da4871b9b2440f4e385
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

### `redis:5.0-stretch` - linux; amd64

```console
$ docker pull redis@sha256:b33e5a3c00e5794324fad2fab650eadba0f65e625cc915e4e57995590502c269
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35208512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f88f9be58390a5d67c1a7dbcd08691e059fea2dba7cef42dfc41fab513f43bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:59:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 03:59:08 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:59:22 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 03:59:22 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 04:00:32 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:00:33 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 04:00:33 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 04:00:33 GMT
WORKDIR /data
# Tue, 05 Mar 2019 04:00:34 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:00:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:00:34 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 04:00:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421427137c28f41acfcc3dfe20a5cf4fbcd69aec56df545a2be71e0dd9da428a`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af7ef63ef0fb172f652981ba6b70cbd9bbcac98a38fd878e084c0229729d1b5`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 941.4 KB (941372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b858087b35178c572a86e672ec0227fdb6ef902de97ec6fc260e7cc83401a71c`  
		Last Modified: Tue, 05 Mar 2019 04:04:55 GMT  
		Size: 11.8 MB (11768847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf1944f5eb412c407057ca8d776c9d8ddf3323ed5b8f1ce140e0d0a75946bf`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8270b5c7b90d6433cd9c8f7e517ca3598de83743bd446685177e56c66e2f1fbc`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:2e9042961afaa90435eddcf4d3c7d28638086773b76f13104e533797ca90abfa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33532073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cfefb520b35c8a3badac1fedc571cf2c6064f7019ed20d79b2746fd207b1932`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:45:02 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 11:45:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 11:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 11:45:29 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 11:45:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 11:45:29 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 11:46:32 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 11:46:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 11:46:34 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 11:46:35 GMT
WORKDIR /data
# Tue, 05 Mar 2019 11:46:36 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 11:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 11:46:37 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 11:46:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbd521fe3c3b8745cd78cfc903410a213a70be03e6d6897acf6921637a8fd02`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bef52f90b9f47aca22e18cc348551d4005702e5ebbf95e07e064f7fa8089b74`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 931.2 KB (931203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43dc92b0b06d46565f8550584f282d1278538cb39421d1c057aa018e5c307df7`  
		Last Modified: Tue, 05 Mar 2019 11:47:50 GMT  
		Size: 11.4 MB (11438036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0211c13bbf5ae9002b4256b3fabf82daec28eee1259a475bfcb0435d234f7427`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ca70b8cd86fe6b16fcbf922bac4f5435eef763511ce3108886d3ad065b2325`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:ea26c268ce2d90aeb845ed76af2b2d9a38c6fa4d53742b44c129ee2ac7da2553
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31327947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4507fe201c7a19584655e1430c4150798c111dd406cf82def455f06baec5179e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:49:15 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 14:49:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 14:49:44 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 14:49:45 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 14:49:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 14:49:46 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 14:51:01 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:51:03 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 14:51:03 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 14:51:04 GMT
WORKDIR /data
# Tue, 05 Mar 2019 14:51:04 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 14:51:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:51:05 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 14:51:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51627e8cf990e932bb4d6e82698464e990643c8b8a3adfd7a5a241d8035e7b9`  
		Last Modified: Tue, 05 Mar 2019 14:52:14 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944beb6c88fe13fd93f6cb369c558981060b9e3a2efa52700bf6335a036d2760`  
		Last Modified: Tue, 05 Mar 2019 14:52:15 GMT  
		Size: 915.8 KB (915825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f057717d2c77d0587cbc640c0a7acdc95fe8f49ee31b2a8dbbf354e422451dc`  
		Last Modified: Tue, 05 Mar 2019 14:52:18 GMT  
		Size: 11.1 MB (11127343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2107cdb7ccec1d490390f4a1880073a08c139f1a43587c9f43b6fbac7be2aa8d`  
		Last Modified: Tue, 05 Mar 2019 14:52:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bdbaed531908cc602fe2dfc359807ced7f7eceadbb3cce0d331612538d6d6d`  
		Last Modified: Tue, 05 Mar 2019 14:52:14 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:33c4f41a3d6822ec1bbc7b94628c4e932b809dda844afce605b40f6bd889ec21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32843651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa3370d9d24629991d0a5f054d7dff8e01dff2cfee76afe3528794cf33fd0380`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 18:11:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 18:11:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 18:13:21 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 18:13:22 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 18:13:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 18:13:26 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 18:17:12 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 18:17:17 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:17:18 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:17:19 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:17:21 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:17:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:17:23 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:17:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb72a164d58b5166315d5754bcdf59a33aee72adc904d5211496ac53f2ebbe4`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c085d6d71272c51591b1d678e87f2ace6eb39288c33244a57650ac59e1b970a5`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 908.3 KB (908315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d59efa4834bd7ed97b6e192bacdabb585a1b7186aee85c949a81840201a27a`  
		Last Modified: Wed, 06 Feb 2019 18:23:48 GMT  
		Size: 11.6 MB (11582917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47035e322a8d13b4bd6d8843798ff3d419c302e38f36e4282023e9b88ecc4a0`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd1c970df77ef4f2a475a3bcdf79bac03158243371118d7faaf80ad8599f948`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; 386

```console
$ docker pull redis@sha256:a6a16755e6394b7b3021ae283f96e0fb70063446e9a690ac994d0fcb2829d12f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35226151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30cc1e946115faa07fa034d19006077ffd0661ff425851f11467aa91b1d28bd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:23:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 17:23:20 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 17:23:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 17:23:35 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 17:23:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 17:23:36 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 17:24:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 17:24:40 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 17:24:40 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 17:24:40 GMT
WORKDIR /data
# Tue, 05 Mar 2019 17:24:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 17:24:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:24:41 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 17:24:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbebd3af2fccd61e20f39f8fa596a1ccf3fa579a74676e5f92345a4212c23f9`  
		Last Modified: Tue, 05 Mar 2019 17:25:48 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c07fb518ec8e47edf4cec068a21f23b2dd663f2830af705ece740d0265c027`  
		Last Modified: Tue, 05 Mar 2019 17:25:48 GMT  
		Size: 920.1 KB (920126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a80aa54f293ac8d0a27a6039f43fa051ed98495f977c39c417727bcb1c341a`  
		Last Modified: Tue, 05 Mar 2019 17:25:50 GMT  
		Size: 11.2 MB (11178096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff94dd12a5604b1b0d726248ccdcceea6559322af2262eb5c43b832c72939fb3`  
		Last Modified: Tue, 05 Mar 2019 17:25:47 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef861093e39a9f94963c0861be825347d4f82e3d8d83c85abb5146aea9c974d`  
		Last Modified: Tue, 05 Mar 2019 17:25:49 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:8f644997c7d94f6277614fe0f956c25bd8f94ce5afa3c06e9438aeab4bcb79d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35620300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c068025f2c158ebf44bb2012c41152f119ba694dbc8de4a732e3dcf56d883514`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:09:40 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 14:09:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 14:11:07 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 14:11:11 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 14:11:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 14:11:20 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 14:14:26 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:14:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 14:14:38 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 14:14:42 GMT
WORKDIR /data
# Tue, 05 Mar 2019 14:14:44 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 14:14:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:14:51 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 14:14:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cda49701fd84a29c848e779603b3f91332b9ce83a243759fd66bb51424459878`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9cf28aaaf9a9e50dec15d68918563f279b9b10e23a0f2a7632bc8847b64eed`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 909.8 KB (909774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea027f83e1b0748fa57fb9b4db80ab33ffaa5bfe6c1c983480760950e013a38`  
		Last Modified: Tue, 05 Mar 2019 14:18:19 GMT  
		Size: 12.0 MB (11956727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae8524649bc51658e77a8f5cbd9bef56db7aede58a9e4a30cca4590bc4d3369`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0b5dff42369cfaa39f269927320163559de8967d4eb176a8ac01bae1c61493`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; s390x

```console
$ docker pull redis@sha256:2615be3d6c072a2c212149777526bc50a46e26ca4b8c23b9d770fa5084606d1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35499659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad5aee4bebe2d6a074a1957bd6713b275325f9ae6c6e13c3f7dbf4e4e64674ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:19:33 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 15:19:33 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 15:19:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 15:19:50 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 15:19:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 15:19:51 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 15:20:48 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 15:20:49 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 15:20:49 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 15:20:50 GMT
WORKDIR /data
# Tue, 05 Mar 2019 15:20:50 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:20:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:20:50 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 15:20:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdba89d07dcd37b41b497124053b83ce21c0b11a5c1248c56f4b8266d2dc10a`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b052af6696f3b620e4e2272edbd4d62de0b516c9d4577451027abe02b7c6c79f`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 926.8 KB (926782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1ade6dd699b86675c7f5e55a1f00ef1b902231b9f5d6ef42ec596e71e240e7`  
		Last Modified: Tue, 05 Mar 2019 15:22:08 GMT  
		Size: 12.2 MB (12225231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2e2d14ec6fb5af47556fb02ed24ed6920924dd6d86a6bae3415228c410dff0`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37af7a0fbab16b2f9cdff3f2c06c66f7796f5c5fbf1ae1429264dc12d90fc1ec`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-32bit`

```console
$ docker pull redis@sha256:5b1ef224856291dba253f816538be5e6f07b1592f6e6453e9e1045010784d56f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-32bit` - linux; amd64

```console
$ docker pull redis@sha256:ed67962763c6773b146659effd9248e98ced224015a3706c5cf9e4e43d3f4c00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39472586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b7ca9027b23a38d19241a40310c42606647ae48620c25414cc66d00ce3cf2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:59:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 03:59:08 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:59:22 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 03:59:22 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 04:00:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:02:20 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:02:20 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 04:02:21 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 04:02:21 GMT
WORKDIR /data
# Tue, 05 Mar 2019 04:02:21 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:02:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:02:21 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 04:02:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421427137c28f41acfcc3dfe20a5cf4fbcd69aec56df545a2be71e0dd9da428a`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af7ef63ef0fb172f652981ba6b70cbd9bbcac98a38fd878e084c0229729d1b5`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 941.4 KB (941372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db802777c86cbcb16178246477fec3ab18b4c20f1c2708c0f5623eebaa626651`  
		Last Modified: Tue, 05 Mar 2019 04:05:04 GMT  
		Size: 4.8 MB (4849445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a531f0eb35175d518d358a5c9ca83d5a7ac2cafb70a31c6479ee5d166c3cfbcc`  
		Last Modified: Tue, 05 Mar 2019 04:05:05 GMT  
		Size: 11.2 MB (11183471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3321b728b1c50f9a4aaecb15b4b05f54f6eb437d9315f756ac6dd9c132feea9`  
		Last Modified: Tue, 05 Mar 2019 04:05:03 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a85c52197efcdc27942c3bfcce19c3caffe893def5bbe0c379f603fc5a05fd7`  
		Last Modified: Tue, 05 Mar 2019 04:05:03 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-32bit-stretch`

```console
$ docker pull redis@sha256:5b1ef224856291dba253f816538be5e6f07b1592f6e6453e9e1045010784d56f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:ed67962763c6773b146659effd9248e98ced224015a3706c5cf9e4e43d3f4c00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39472586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b7ca9027b23a38d19241a40310c42606647ae48620c25414cc66d00ce3cf2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:59:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 03:59:08 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:59:22 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 03:59:22 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 04:00:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:02:20 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:02:20 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 04:02:21 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 04:02:21 GMT
WORKDIR /data
# Tue, 05 Mar 2019 04:02:21 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:02:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:02:21 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 04:02:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421427137c28f41acfcc3dfe20a5cf4fbcd69aec56df545a2be71e0dd9da428a`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af7ef63ef0fb172f652981ba6b70cbd9bbcac98a38fd878e084c0229729d1b5`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 941.4 KB (941372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db802777c86cbcb16178246477fec3ab18b4c20f1c2708c0f5623eebaa626651`  
		Last Modified: Tue, 05 Mar 2019 04:05:04 GMT  
		Size: 4.8 MB (4849445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a531f0eb35175d518d358a5c9ca83d5a7ac2cafb70a31c6479ee5d166c3cfbcc`  
		Last Modified: Tue, 05 Mar 2019 04:05:05 GMT  
		Size: 11.2 MB (11183471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3321b728b1c50f9a4aaecb15b4b05f54f6eb437d9315f756ac6dd9c132feea9`  
		Last Modified: Tue, 05 Mar 2019 04:05:03 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a85c52197efcdc27942c3bfcce19c3caffe893def5bbe0c379f603fc5a05fd7`  
		Last Modified: Tue, 05 Mar 2019 04:05:03 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-alpine`

```console
$ docker pull redis@sha256:f8c22abc77f3f9cc1c2516062e4a2a71375859d7922da3faf9e4160e6ba4c3c2
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

### `redis:5-alpine` - linux; amd64

```console
$ docker pull redis@sha256:9470e8715d17afa5e80ef6df3f71327b6a94d893f3cd65e40a2c63230eb64e3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.7 MB (17722275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d2a373f46ae28f3376c356d27210759aa9348fd94c517cf77e9df2a2c41c37f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:52:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 02:52:31 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 02:52:31 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 02:52:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 02:52:32 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 02:54:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 02:54:11 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 02:54:11 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 02:54:11 GMT
WORKDIR /data
# Fri, 08 Mar 2019 02:54:11 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 02:54:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 02:54:12 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 02:54:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2113a1bbc9843426fc7f026f089b271956431c2dd2fcf36e814e155e7785ee`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b5ad98d1796ee4133c3b6ea962fe1faeca52492940e12c096a5fcdb8a35184`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 403.0 KB (402988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db6e55a035b9e04666197903eaea1165e45840cca90b03253a02ec0f90bdeb1`  
		Last Modified: Fri, 08 Mar 2019 02:56:10 GMT  
		Size: 14.6 MB (14562788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec250a8373f412c85b643a1ef7166350aa0ce7b74d0e0f771d6e1f9fdc8907d8`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c03918a60af65b1cfb755b230111f3fb778fa68f3d46b2de495014c00befef`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:d3c5e39feeba9304f7096c78153f6190866859f125d06264b41899934e3bc444
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17108881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766dece240d92fa49b3fa3a0e8915d976ed9954624fb48e526895c66502e929d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 05:38:44 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 05:38:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 05:38:45 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 05:39:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:39:29 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:39:29 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:39:30 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:39:30 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:39:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:39:31 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:39:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6f611f98f72b65dc6900980e0d4c7d4fcec43653ffddc3941865c867f733c0`  
		Last Modified: Fri, 08 Mar 2019 05:40:36 GMT  
		Size: 14.2 MB (14161096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c178c0c46bec2f2399ca62d54ac1d556ce369780808f3fcd9302e3a231049558`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3aaff2c1a9d4814dfbd081b5b1dc3feafab94051d9fda57faa150ce1957d89`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:55126eb8780c44b6443720435353e7d40798bf362cc9ba9d2c0adefc24893a8d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16671379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485660acbd7fb515439989807b526cb070e583f3fcaa004c4b9fe9bbdcc6e39c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 12 Mar 2019 12:38:38 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 12 Mar 2019 12:38:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 12 Mar 2019 12:38:39 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 12 Mar 2019 12:39:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 12 Mar 2019 12:39:23 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Mar 2019 12:39:24 GMT
VOLUME [/data]
# Tue, 12 Mar 2019 12:39:24 GMT
WORKDIR /data
# Tue, 12 Mar 2019 12:39:24 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 12 Mar 2019 12:39:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 12:39:25 GMT
EXPOSE 6379
# Tue, 12 Mar 2019 12:39:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a10fcb5d3d369925b1cb45fdd3be599dfa5d5bb3de52f2a59b5ef9e4b0e823`  
		Last Modified: Tue, 12 Mar 2019 12:40:42 GMT  
		Size: 13.9 MB (13922393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df75bf956365872f643191e7c0f5aede912ada01120f0d68bf0d2a7372987978`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf2eb401ad54799db747abf685742fdcd1dfce29d36ee6381399a58704d2132`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:5135100311d63782ba32a92f8d46ae62bae1c6e85870cf833cf2d9c6294a3ffe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17583542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6dfd9f945a2b90bc7decf8723fa49a2b0f0be38e5c104b51bf22185b3cdf8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 11:43:54 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 11:43:57 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 11:43:58 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 11:43:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 11:43:59 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 11:46:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 11:46:25 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 11:46:26 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 11:46:27 GMT
WORKDIR /data
# Fri, 08 Mar 2019 11:46:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 11:46:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 11:46:31 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 11:46:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9399e6d0245cf7181b0da72bf72a7673a2cbd03df8e8d269a7f581072fe06d06`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f2f1a6525b6f6416d05654def28abb3f85447e8520aa1d50e95e5f74f8e48`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 405.2 KB (405226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa930d6c6ae8c5457b55e58e192975933e3e9ad90547a58815a17696a3a65a3a`  
		Last Modified: Fri, 08 Mar 2019 11:49:00 GMT  
		Size: 14.5 MB (14488609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903f3d4c59ad6ba33196bd5ba110f68c7e4ff17c29668c6d9c8d0ea7293941d7`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257aa0fc624a3f2af4d285c7bae5b93c80de3c5c356b228609fa610373ec32e8`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; 386

```console
$ docker pull redis@sha256:c99c1d979dc106c0adb1fd7af9b3ba80410dec1f6c58ac281869f8895d353596
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17099588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:280e5f9e610458b58e75a4ef40023d0d3aabe0d2aa5c58651a37aa466f50e761`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 23:41:06 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 23:41:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 23:41:07 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 23:41:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 23:41:08 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 23:42:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 23:42:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 23:42:11 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 23:42:11 GMT
WORKDIR /data
# Wed, 06 Feb 2019 23:42:12 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 23:42:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 23:42:12 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 23:42:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674a296497ebd416b2ea4f25685d393136e7c050aa9f40131a989dd1adef0df7`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2485495ab2e5b3bb49d4ee34a89cdbf4845c38bd6b6e91a2d786e4b5f9d07a59`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 408.0 KB (407996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc669db85fd94db885a05969024c2fe98dd5c24fcec3ec6d862e00ad74a3ab11`  
		Last Modified: Wed, 06 Feb 2019 23:44:11 GMT  
		Size: 13.9 MB (13940319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10f03309433ece380a8d54b8aff90742c444ba831ddd17aabf1eb935920aff2`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c502ff5c4e1dec67d99924f64e85c80106d273fc3a9baa08e6792e6a387506e3`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:8cec178a0bea3303c4c7b3d5681b2c1e3b6ae61f8acaa670411aeff51708b36f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18591914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57eaa83ea14b56cc6d63dcb6dec2931a628f1a2ef6a241f4e24a067fe5e68fc4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 06:22:10 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 06:22:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 06:22:14 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 06:23:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 06:23:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 06:23:49 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 06:24:00 GMT
WORKDIR /data
# Fri, 08 Mar 2019 06:24:04 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 06:24:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 06:24:11 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 06:24:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1cf51440511033fa9bdb096fce3e388ec6f35e8645c658c578500775427621`  
		Last Modified: Fri, 08 Mar 2019 06:27:14 GMT  
		Size: 15.4 MB (15401106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fea05b9f74e69f981c71672f6ba89bb049c821bc68f6b488fd67ba32650878`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c089a1d19ff8a7e10da455f6107b337f3922203340afbe5c551f0a91ba6129`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; s390x

```console
$ docker pull redis@sha256:882204235cbe933a053875c1443457ebd91316ceca5ebd042801449038f5fcd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17817006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cac3e0ee906fb18ec02596b5d00f1cf8185603b15670280b52b9175b5f94011`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 05:35:50 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 05:35:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 05:35:50 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 05:36:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:36:33 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:36:33 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:36:33 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:36:33 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:36:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:36:34 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:36:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fbd283297462513463363df4a4a3766809dc0eec117be2a10c1747fd0fea69`  
		Last Modified: Fri, 08 Mar 2019 05:37:33 GMT  
		Size: 14.9 MB (14866084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc7b45b4850310346e3275012d38284c97b2ddbac570d21ce353e165112c1fa`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0dabb8834dc79beb93f7bfb59cc12fb4917b07fcdc9711410543c57b2415ff`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-alpine3.9`

```console
$ docker pull redis@sha256:f8c22abc77f3f9cc1c2516062e4a2a71375859d7922da3faf9e4160e6ba4c3c2
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

### `redis:5-alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:9470e8715d17afa5e80ef6df3f71327b6a94d893f3cd65e40a2c63230eb64e3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.7 MB (17722275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d2a373f46ae28f3376c356d27210759aa9348fd94c517cf77e9df2a2c41c37f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:52:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 02:52:31 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 02:52:31 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 02:52:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 02:52:32 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 02:54:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 02:54:11 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 02:54:11 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 02:54:11 GMT
WORKDIR /data
# Fri, 08 Mar 2019 02:54:11 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 02:54:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 02:54:12 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 02:54:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2113a1bbc9843426fc7f026f089b271956431c2dd2fcf36e814e155e7785ee`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b5ad98d1796ee4133c3b6ea962fe1faeca52492940e12c096a5fcdb8a35184`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 403.0 KB (402988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db6e55a035b9e04666197903eaea1165e45840cca90b03253a02ec0f90bdeb1`  
		Last Modified: Fri, 08 Mar 2019 02:56:10 GMT  
		Size: 14.6 MB (14562788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec250a8373f412c85b643a1ef7166350aa0ce7b74d0e0f771d6e1f9fdc8907d8`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c03918a60af65b1cfb755b230111f3fb778fa68f3d46b2de495014c00befef`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:d3c5e39feeba9304f7096c78153f6190866859f125d06264b41899934e3bc444
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17108881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766dece240d92fa49b3fa3a0e8915d976ed9954624fb48e526895c66502e929d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 05:38:44 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 05:38:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 05:38:45 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 05:39:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:39:29 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:39:29 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:39:30 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:39:30 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:39:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:39:31 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:39:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6f611f98f72b65dc6900980e0d4c7d4fcec43653ffddc3941865c867f733c0`  
		Last Modified: Fri, 08 Mar 2019 05:40:36 GMT  
		Size: 14.2 MB (14161096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c178c0c46bec2f2399ca62d54ac1d556ce369780808f3fcd9302e3a231049558`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3aaff2c1a9d4814dfbd081b5b1dc3feafab94051d9fda57faa150ce1957d89`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:55126eb8780c44b6443720435353e7d40798bf362cc9ba9d2c0adefc24893a8d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16671379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485660acbd7fb515439989807b526cb070e583f3fcaa004c4b9fe9bbdcc6e39c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 12 Mar 2019 12:38:38 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 12 Mar 2019 12:38:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 12 Mar 2019 12:38:39 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 12 Mar 2019 12:39:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 12 Mar 2019 12:39:23 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Mar 2019 12:39:24 GMT
VOLUME [/data]
# Tue, 12 Mar 2019 12:39:24 GMT
WORKDIR /data
# Tue, 12 Mar 2019 12:39:24 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 12 Mar 2019 12:39:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 12:39:25 GMT
EXPOSE 6379
# Tue, 12 Mar 2019 12:39:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a10fcb5d3d369925b1cb45fdd3be599dfa5d5bb3de52f2a59b5ef9e4b0e823`  
		Last Modified: Tue, 12 Mar 2019 12:40:42 GMT  
		Size: 13.9 MB (13922393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df75bf956365872f643191e7c0f5aede912ada01120f0d68bf0d2a7372987978`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf2eb401ad54799db747abf685742fdcd1dfce29d36ee6381399a58704d2132`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:5135100311d63782ba32a92f8d46ae62bae1c6e85870cf833cf2d9c6294a3ffe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17583542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6dfd9f945a2b90bc7decf8723fa49a2b0f0be38e5c104b51bf22185b3cdf8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 11:43:54 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 11:43:57 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 11:43:58 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 11:43:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 11:43:59 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 11:46:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 11:46:25 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 11:46:26 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 11:46:27 GMT
WORKDIR /data
# Fri, 08 Mar 2019 11:46:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 11:46:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 11:46:31 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 11:46:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9399e6d0245cf7181b0da72bf72a7673a2cbd03df8e8d269a7f581072fe06d06`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f2f1a6525b6f6416d05654def28abb3f85447e8520aa1d50e95e5f74f8e48`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 405.2 KB (405226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa930d6c6ae8c5457b55e58e192975933e3e9ad90547a58815a17696a3a65a3a`  
		Last Modified: Fri, 08 Mar 2019 11:49:00 GMT  
		Size: 14.5 MB (14488609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903f3d4c59ad6ba33196bd5ba110f68c7e4ff17c29668c6d9c8d0ea7293941d7`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257aa0fc624a3f2af4d285c7bae5b93c80de3c5c356b228609fa610373ec32e8`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:c99c1d979dc106c0adb1fd7af9b3ba80410dec1f6c58ac281869f8895d353596
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17099588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:280e5f9e610458b58e75a4ef40023d0d3aabe0d2aa5c58651a37aa466f50e761`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 23:41:06 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 23:41:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 23:41:07 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 23:41:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 23:41:08 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 23:42:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 23:42:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 23:42:11 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 23:42:11 GMT
WORKDIR /data
# Wed, 06 Feb 2019 23:42:12 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 23:42:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 23:42:12 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 23:42:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674a296497ebd416b2ea4f25685d393136e7c050aa9f40131a989dd1adef0df7`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2485495ab2e5b3bb49d4ee34a89cdbf4845c38bd6b6e91a2d786e4b5f9d07a59`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 408.0 KB (407996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc669db85fd94db885a05969024c2fe98dd5c24fcec3ec6d862e00ad74a3ab11`  
		Last Modified: Wed, 06 Feb 2019 23:44:11 GMT  
		Size: 13.9 MB (13940319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10f03309433ece380a8d54b8aff90742c444ba831ddd17aabf1eb935920aff2`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c502ff5c4e1dec67d99924f64e85c80106d273fc3a9baa08e6792e6a387506e3`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:8cec178a0bea3303c4c7b3d5681b2c1e3b6ae61f8acaa670411aeff51708b36f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18591914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57eaa83ea14b56cc6d63dcb6dec2931a628f1a2ef6a241f4e24a067fe5e68fc4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 06:22:10 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 06:22:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 06:22:14 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 06:23:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 06:23:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 06:23:49 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 06:24:00 GMT
WORKDIR /data
# Fri, 08 Mar 2019 06:24:04 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 06:24:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 06:24:11 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 06:24:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1cf51440511033fa9bdb096fce3e388ec6f35e8645c658c578500775427621`  
		Last Modified: Fri, 08 Mar 2019 06:27:14 GMT  
		Size: 15.4 MB (15401106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fea05b9f74e69f981c71672f6ba89bb049c821bc68f6b488fd67ba32650878`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c089a1d19ff8a7e10da455f6107b337f3922203340afbe5c551f0a91ba6129`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:882204235cbe933a053875c1443457ebd91316ceca5ebd042801449038f5fcd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17817006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cac3e0ee906fb18ec02596b5d00f1cf8185603b15670280b52b9175b5f94011`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 05:35:50 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 05:35:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 05:35:50 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 05:36:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:36:33 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:36:33 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:36:33 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:36:33 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:36:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:36:34 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:36:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fbd283297462513463363df4a4a3766809dc0eec117be2a10c1747fd0fea69`  
		Last Modified: Fri, 08 Mar 2019 05:37:33 GMT  
		Size: 14.9 MB (14866084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc7b45b4850310346e3275012d38284c97b2ddbac570d21ce353e165112c1fa`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0dabb8834dc79beb93f7bfb59cc12fb4917b07fcdc9711410543c57b2415ff`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-stretch`

```console
$ docker pull redis@sha256:4be7fdb131e76a6c6231e820c60b8b12938cf1ff3d437da4871b9b2440f4e385
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

### `redis:5-stretch` - linux; amd64

```console
$ docker pull redis@sha256:b33e5a3c00e5794324fad2fab650eadba0f65e625cc915e4e57995590502c269
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35208512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f88f9be58390a5d67c1a7dbcd08691e059fea2dba7cef42dfc41fab513f43bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:59:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 03:59:08 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:59:22 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 03:59:22 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 04:00:32 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:00:33 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 04:00:33 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 04:00:33 GMT
WORKDIR /data
# Tue, 05 Mar 2019 04:00:34 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:00:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:00:34 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 04:00:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421427137c28f41acfcc3dfe20a5cf4fbcd69aec56df545a2be71e0dd9da428a`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af7ef63ef0fb172f652981ba6b70cbd9bbcac98a38fd878e084c0229729d1b5`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 941.4 KB (941372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b858087b35178c572a86e672ec0227fdb6ef902de97ec6fc260e7cc83401a71c`  
		Last Modified: Tue, 05 Mar 2019 04:04:55 GMT  
		Size: 11.8 MB (11768847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf1944f5eb412c407057ca8d776c9d8ddf3323ed5b8f1ce140e0d0a75946bf`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8270b5c7b90d6433cd9c8f7e517ca3598de83743bd446685177e56c66e2f1fbc`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:2e9042961afaa90435eddcf4d3c7d28638086773b76f13104e533797ca90abfa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33532073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cfefb520b35c8a3badac1fedc571cf2c6064f7019ed20d79b2746fd207b1932`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:45:02 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 11:45:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 11:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 11:45:29 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 11:45:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 11:45:29 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 11:46:32 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 11:46:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 11:46:34 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 11:46:35 GMT
WORKDIR /data
# Tue, 05 Mar 2019 11:46:36 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 11:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 11:46:37 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 11:46:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbd521fe3c3b8745cd78cfc903410a213a70be03e6d6897acf6921637a8fd02`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bef52f90b9f47aca22e18cc348551d4005702e5ebbf95e07e064f7fa8089b74`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 931.2 KB (931203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43dc92b0b06d46565f8550584f282d1278538cb39421d1c057aa018e5c307df7`  
		Last Modified: Tue, 05 Mar 2019 11:47:50 GMT  
		Size: 11.4 MB (11438036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0211c13bbf5ae9002b4256b3fabf82daec28eee1259a475bfcb0435d234f7427`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ca70b8cd86fe6b16fcbf922bac4f5435eef763511ce3108886d3ad065b2325`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:ea26c268ce2d90aeb845ed76af2b2d9a38c6fa4d53742b44c129ee2ac7da2553
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31327947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4507fe201c7a19584655e1430c4150798c111dd406cf82def455f06baec5179e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:49:15 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 14:49:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 14:49:44 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 14:49:45 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 14:49:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 14:49:46 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 14:51:01 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:51:03 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 14:51:03 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 14:51:04 GMT
WORKDIR /data
# Tue, 05 Mar 2019 14:51:04 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 14:51:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:51:05 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 14:51:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51627e8cf990e932bb4d6e82698464e990643c8b8a3adfd7a5a241d8035e7b9`  
		Last Modified: Tue, 05 Mar 2019 14:52:14 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944beb6c88fe13fd93f6cb369c558981060b9e3a2efa52700bf6335a036d2760`  
		Last Modified: Tue, 05 Mar 2019 14:52:15 GMT  
		Size: 915.8 KB (915825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f057717d2c77d0587cbc640c0a7acdc95fe8f49ee31b2a8dbbf354e422451dc`  
		Last Modified: Tue, 05 Mar 2019 14:52:18 GMT  
		Size: 11.1 MB (11127343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2107cdb7ccec1d490390f4a1880073a08c139f1a43587c9f43b6fbac7be2aa8d`  
		Last Modified: Tue, 05 Mar 2019 14:52:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bdbaed531908cc602fe2dfc359807ced7f7eceadbb3cce0d331612538d6d6d`  
		Last Modified: Tue, 05 Mar 2019 14:52:14 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:33c4f41a3d6822ec1bbc7b94628c4e932b809dda844afce605b40f6bd889ec21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32843651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa3370d9d24629991d0a5f054d7dff8e01dff2cfee76afe3528794cf33fd0380`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 18:11:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 18:11:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 18:13:21 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 18:13:22 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 18:13:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 18:13:26 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 18:17:12 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 18:17:17 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:17:18 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:17:19 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:17:21 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:17:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:17:23 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:17:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb72a164d58b5166315d5754bcdf59a33aee72adc904d5211496ac53f2ebbe4`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c085d6d71272c51591b1d678e87f2ace6eb39288c33244a57650ac59e1b970a5`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 908.3 KB (908315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d59efa4834bd7ed97b6e192bacdabb585a1b7186aee85c949a81840201a27a`  
		Last Modified: Wed, 06 Feb 2019 18:23:48 GMT  
		Size: 11.6 MB (11582917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47035e322a8d13b4bd6d8843798ff3d419c302e38f36e4282023e9b88ecc4a0`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd1c970df77ef4f2a475a3bcdf79bac03158243371118d7faaf80ad8599f948`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; 386

```console
$ docker pull redis@sha256:a6a16755e6394b7b3021ae283f96e0fb70063446e9a690ac994d0fcb2829d12f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35226151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30cc1e946115faa07fa034d19006077ffd0661ff425851f11467aa91b1d28bd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:23:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 17:23:20 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 17:23:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 17:23:35 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 17:23:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 17:23:36 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 17:24:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 17:24:40 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 17:24:40 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 17:24:40 GMT
WORKDIR /data
# Tue, 05 Mar 2019 17:24:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 17:24:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:24:41 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 17:24:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbebd3af2fccd61e20f39f8fa596a1ccf3fa579a74676e5f92345a4212c23f9`  
		Last Modified: Tue, 05 Mar 2019 17:25:48 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c07fb518ec8e47edf4cec068a21f23b2dd663f2830af705ece740d0265c027`  
		Last Modified: Tue, 05 Mar 2019 17:25:48 GMT  
		Size: 920.1 KB (920126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a80aa54f293ac8d0a27a6039f43fa051ed98495f977c39c417727bcb1c341a`  
		Last Modified: Tue, 05 Mar 2019 17:25:50 GMT  
		Size: 11.2 MB (11178096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff94dd12a5604b1b0d726248ccdcceea6559322af2262eb5c43b832c72939fb3`  
		Last Modified: Tue, 05 Mar 2019 17:25:47 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef861093e39a9f94963c0861be825347d4f82e3d8d83c85abb5146aea9c974d`  
		Last Modified: Tue, 05 Mar 2019 17:25:49 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:8f644997c7d94f6277614fe0f956c25bd8f94ce5afa3c06e9438aeab4bcb79d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35620300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c068025f2c158ebf44bb2012c41152f119ba694dbc8de4a732e3dcf56d883514`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:09:40 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 14:09:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 14:11:07 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 14:11:11 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 14:11:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 14:11:20 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 14:14:26 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:14:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 14:14:38 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 14:14:42 GMT
WORKDIR /data
# Tue, 05 Mar 2019 14:14:44 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 14:14:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:14:51 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 14:14:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cda49701fd84a29c848e779603b3f91332b9ce83a243759fd66bb51424459878`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9cf28aaaf9a9e50dec15d68918563f279b9b10e23a0f2a7632bc8847b64eed`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 909.8 KB (909774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea027f83e1b0748fa57fb9b4db80ab33ffaa5bfe6c1c983480760950e013a38`  
		Last Modified: Tue, 05 Mar 2019 14:18:19 GMT  
		Size: 12.0 MB (11956727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae8524649bc51658e77a8f5cbd9bef56db7aede58a9e4a30cca4590bc4d3369`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0b5dff42369cfaa39f269927320163559de8967d4eb176a8ac01bae1c61493`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; s390x

```console
$ docker pull redis@sha256:2615be3d6c072a2c212149777526bc50a46e26ca4b8c23b9d770fa5084606d1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35499659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad5aee4bebe2d6a074a1957bd6713b275325f9ae6c6e13c3f7dbf4e4e64674ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:19:33 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 15:19:33 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 15:19:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 15:19:50 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 15:19:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 15:19:51 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 15:20:48 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 15:20:49 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 15:20:49 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 15:20:50 GMT
WORKDIR /data
# Tue, 05 Mar 2019 15:20:50 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:20:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:20:50 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 15:20:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdba89d07dcd37b41b497124053b83ce21c0b11a5c1248c56f4b8266d2dc10a`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b052af6696f3b620e4e2272edbd4d62de0b516c9d4577451027abe02b7c6c79f`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 926.8 KB (926782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1ade6dd699b86675c7f5e55a1f00ef1b902231b9f5d6ef42ec596e71e240e7`  
		Last Modified: Tue, 05 Mar 2019 15:22:08 GMT  
		Size: 12.2 MB (12225231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2e2d14ec6fb5af47556fb02ed24ed6920924dd6d86a6bae3415228c410dff0`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37af7a0fbab16b2f9cdff3f2c06c66f7796f5c5fbf1ae1429264dc12d90fc1ec`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:f8c22abc77f3f9cc1c2516062e4a2a71375859d7922da3faf9e4160e6ba4c3c2
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

### `redis:alpine` - linux; amd64

```console
$ docker pull redis@sha256:9470e8715d17afa5e80ef6df3f71327b6a94d893f3cd65e40a2c63230eb64e3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.7 MB (17722275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d2a373f46ae28f3376c356d27210759aa9348fd94c517cf77e9df2a2c41c37f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:52:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 02:52:31 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 02:52:31 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 02:52:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 02:52:32 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 02:54:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 02:54:11 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 02:54:11 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 02:54:11 GMT
WORKDIR /data
# Fri, 08 Mar 2019 02:54:11 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 02:54:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 02:54:12 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 02:54:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2113a1bbc9843426fc7f026f089b271956431c2dd2fcf36e814e155e7785ee`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b5ad98d1796ee4133c3b6ea962fe1faeca52492940e12c096a5fcdb8a35184`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 403.0 KB (402988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db6e55a035b9e04666197903eaea1165e45840cca90b03253a02ec0f90bdeb1`  
		Last Modified: Fri, 08 Mar 2019 02:56:10 GMT  
		Size: 14.6 MB (14562788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec250a8373f412c85b643a1ef7166350aa0ce7b74d0e0f771d6e1f9fdc8907d8`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c03918a60af65b1cfb755b230111f3fb778fa68f3d46b2de495014c00befef`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:d3c5e39feeba9304f7096c78153f6190866859f125d06264b41899934e3bc444
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17108881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766dece240d92fa49b3fa3a0e8915d976ed9954624fb48e526895c66502e929d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 05:38:44 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 05:38:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 05:38:45 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 05:39:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:39:29 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:39:29 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:39:30 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:39:30 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:39:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:39:31 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:39:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6f611f98f72b65dc6900980e0d4c7d4fcec43653ffddc3941865c867f733c0`  
		Last Modified: Fri, 08 Mar 2019 05:40:36 GMT  
		Size: 14.2 MB (14161096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c178c0c46bec2f2399ca62d54ac1d556ce369780808f3fcd9302e3a231049558`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3aaff2c1a9d4814dfbd081b5b1dc3feafab94051d9fda57faa150ce1957d89`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:55126eb8780c44b6443720435353e7d40798bf362cc9ba9d2c0adefc24893a8d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16671379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485660acbd7fb515439989807b526cb070e583f3fcaa004c4b9fe9bbdcc6e39c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 12 Mar 2019 12:38:38 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 12 Mar 2019 12:38:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 12 Mar 2019 12:38:39 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 12 Mar 2019 12:39:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 12 Mar 2019 12:39:23 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Mar 2019 12:39:24 GMT
VOLUME [/data]
# Tue, 12 Mar 2019 12:39:24 GMT
WORKDIR /data
# Tue, 12 Mar 2019 12:39:24 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 12 Mar 2019 12:39:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 12:39:25 GMT
EXPOSE 6379
# Tue, 12 Mar 2019 12:39:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a10fcb5d3d369925b1cb45fdd3be599dfa5d5bb3de52f2a59b5ef9e4b0e823`  
		Last Modified: Tue, 12 Mar 2019 12:40:42 GMT  
		Size: 13.9 MB (13922393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df75bf956365872f643191e7c0f5aede912ada01120f0d68bf0d2a7372987978`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf2eb401ad54799db747abf685742fdcd1dfce29d36ee6381399a58704d2132`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:5135100311d63782ba32a92f8d46ae62bae1c6e85870cf833cf2d9c6294a3ffe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17583542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6dfd9f945a2b90bc7decf8723fa49a2b0f0be38e5c104b51bf22185b3cdf8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 11:43:54 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 11:43:57 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 11:43:58 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 11:43:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 11:43:59 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 11:46:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 11:46:25 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 11:46:26 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 11:46:27 GMT
WORKDIR /data
# Fri, 08 Mar 2019 11:46:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 11:46:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 11:46:31 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 11:46:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9399e6d0245cf7181b0da72bf72a7673a2cbd03df8e8d269a7f581072fe06d06`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f2f1a6525b6f6416d05654def28abb3f85447e8520aa1d50e95e5f74f8e48`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 405.2 KB (405226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa930d6c6ae8c5457b55e58e192975933e3e9ad90547a58815a17696a3a65a3a`  
		Last Modified: Fri, 08 Mar 2019 11:49:00 GMT  
		Size: 14.5 MB (14488609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903f3d4c59ad6ba33196bd5ba110f68c7e4ff17c29668c6d9c8d0ea7293941d7`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257aa0fc624a3f2af4d285c7bae5b93c80de3c5c356b228609fa610373ec32e8`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; 386

```console
$ docker pull redis@sha256:c99c1d979dc106c0adb1fd7af9b3ba80410dec1f6c58ac281869f8895d353596
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17099588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:280e5f9e610458b58e75a4ef40023d0d3aabe0d2aa5c58651a37aa466f50e761`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 23:41:06 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 23:41:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 23:41:07 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 23:41:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 23:41:08 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 23:42:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 23:42:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 23:42:11 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 23:42:11 GMT
WORKDIR /data
# Wed, 06 Feb 2019 23:42:12 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 23:42:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 23:42:12 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 23:42:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674a296497ebd416b2ea4f25685d393136e7c050aa9f40131a989dd1adef0df7`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2485495ab2e5b3bb49d4ee34a89cdbf4845c38bd6b6e91a2d786e4b5f9d07a59`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 408.0 KB (407996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc669db85fd94db885a05969024c2fe98dd5c24fcec3ec6d862e00ad74a3ab11`  
		Last Modified: Wed, 06 Feb 2019 23:44:11 GMT  
		Size: 13.9 MB (13940319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10f03309433ece380a8d54b8aff90742c444ba831ddd17aabf1eb935920aff2`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c502ff5c4e1dec67d99924f64e85c80106d273fc3a9baa08e6792e6a387506e3`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:8cec178a0bea3303c4c7b3d5681b2c1e3b6ae61f8acaa670411aeff51708b36f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18591914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57eaa83ea14b56cc6d63dcb6dec2931a628f1a2ef6a241f4e24a067fe5e68fc4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 06:22:10 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 06:22:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 06:22:14 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 06:23:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 06:23:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 06:23:49 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 06:24:00 GMT
WORKDIR /data
# Fri, 08 Mar 2019 06:24:04 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 06:24:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 06:24:11 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 06:24:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1cf51440511033fa9bdb096fce3e388ec6f35e8645c658c578500775427621`  
		Last Modified: Fri, 08 Mar 2019 06:27:14 GMT  
		Size: 15.4 MB (15401106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fea05b9f74e69f981c71672f6ba89bb049c821bc68f6b488fd67ba32650878`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c089a1d19ff8a7e10da455f6107b337f3922203340afbe5c551f0a91ba6129`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; s390x

```console
$ docker pull redis@sha256:882204235cbe933a053875c1443457ebd91316ceca5ebd042801449038f5fcd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17817006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cac3e0ee906fb18ec02596b5d00f1cf8185603b15670280b52b9175b5f94011`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 05:35:50 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 05:35:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 05:35:50 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 05:36:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:36:33 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:36:33 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:36:33 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:36:33 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:36:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:36:34 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:36:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fbd283297462513463363df4a4a3766809dc0eec117be2a10c1747fd0fea69`  
		Last Modified: Fri, 08 Mar 2019 05:37:33 GMT  
		Size: 14.9 MB (14866084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc7b45b4850310346e3275012d38284c97b2ddbac570d21ce353e165112c1fa`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0dabb8834dc79beb93f7bfb59cc12fb4917b07fcdc9711410543c57b2415ff`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine3.9`

```console
$ docker pull redis@sha256:f8c22abc77f3f9cc1c2516062e4a2a71375859d7922da3faf9e4160e6ba4c3c2
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

### `redis:alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:9470e8715d17afa5e80ef6df3f71327b6a94d893f3cd65e40a2c63230eb64e3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.7 MB (17722275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d2a373f46ae28f3376c356d27210759aa9348fd94c517cf77e9df2a2c41c37f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:52:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 02:52:31 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 02:52:31 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 02:52:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 02:52:32 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 02:54:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 02:54:11 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 02:54:11 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 02:54:11 GMT
WORKDIR /data
# Fri, 08 Mar 2019 02:54:11 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 02:54:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 02:54:12 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 02:54:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2113a1bbc9843426fc7f026f089b271956431c2dd2fcf36e814e155e7785ee`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b5ad98d1796ee4133c3b6ea962fe1faeca52492940e12c096a5fcdb8a35184`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 403.0 KB (402988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db6e55a035b9e04666197903eaea1165e45840cca90b03253a02ec0f90bdeb1`  
		Last Modified: Fri, 08 Mar 2019 02:56:10 GMT  
		Size: 14.6 MB (14562788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec250a8373f412c85b643a1ef7166350aa0ce7b74d0e0f771d6e1f9fdc8907d8`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c03918a60af65b1cfb755b230111f3fb778fa68f3d46b2de495014c00befef`  
		Last Modified: Fri, 08 Mar 2019 02:56:07 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:d3c5e39feeba9304f7096c78153f6190866859f125d06264b41899934e3bc444
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17108881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766dece240d92fa49b3fa3a0e8915d976ed9954624fb48e526895c66502e929d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:38:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:38:44 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 05:38:44 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 05:38:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 05:38:45 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 05:39:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:39:29 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:39:29 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:39:30 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:39:30 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:39:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:39:31 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:39:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba0c1f7e5a3f3ed61244f636c2d0a994092d082d619f402abd66e2d9a112e6c`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b8b2a00ff26d6561bdd7a5a984e982700a4875d6c405669665f4a1690ca6eb`  
		Last Modified: Fri, 08 Mar 2019 05:40:32 GMT  
		Size: 405.3 KB (405282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6f611f98f72b65dc6900980e0d4c7d4fcec43653ffddc3941865c867f733c0`  
		Last Modified: Fri, 08 Mar 2019 05:40:36 GMT  
		Size: 14.2 MB (14161096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c178c0c46bec2f2399ca62d54ac1d556ce369780808f3fcd9302e3a231049558`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3aaff2c1a9d4814dfbd081b5b1dc3feafab94051d9fda57faa150ce1957d89`  
		Last Modified: Fri, 08 Mar 2019 05:40:31 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:55126eb8780c44b6443720435353e7d40798bf362cc9ba9d2c0adefc24893a8d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16671379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485660acbd7fb515439989807b526cb070e583f3fcaa004c4b9fe9bbdcc6e39c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:38:36 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 12 Mar 2019 12:38:38 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 12 Mar 2019 12:38:38 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 12 Mar 2019 12:38:39 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 12 Mar 2019 12:38:39 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 12 Mar 2019 12:39:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 12 Mar 2019 12:39:23 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Mar 2019 12:39:24 GMT
VOLUME [/data]
# Tue, 12 Mar 2019 12:39:24 GMT
WORKDIR /data
# Tue, 12 Mar 2019 12:39:24 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 12 Mar 2019 12:39:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 12:39:25 GMT
EXPOSE 6379
# Tue, 12 Mar 2019 12:39:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148b4b0bab4816ad532c54415c960ce71044f82bad2883bee5f7a92549976b00`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65ef83e1480c00e4c632b5c256740f5286e126c96c2d10771be08b010dff0f`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 398.6 KB (398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a10fcb5d3d369925b1cb45fdd3be599dfa5d5bb3de52f2a59b5ef9e4b0e823`  
		Last Modified: Tue, 12 Mar 2019 12:40:42 GMT  
		Size: 13.9 MB (13922393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df75bf956365872f643191e7c0f5aede912ada01120f0d68bf0d2a7372987978`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf2eb401ad54799db747abf685742fdcd1dfce29d36ee6381399a58704d2132`  
		Last Modified: Tue, 12 Mar 2019 12:40:38 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:5135100311d63782ba32a92f8d46ae62bae1c6e85870cf833cf2d9c6294a3ffe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17583542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6dfd9f945a2b90bc7decf8723fa49a2b0f0be38e5c104b51bf22185b3cdf8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 11:43:54 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 11:43:57 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 11:43:58 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 11:43:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 11:43:59 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 11:46:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 11:46:25 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 11:46:26 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 11:46:27 GMT
WORKDIR /data
# Fri, 08 Mar 2019 11:46:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 11:46:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 11:46:31 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 11:46:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9399e6d0245cf7181b0da72bf72a7673a2cbd03df8e8d269a7f581072fe06d06`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f2f1a6525b6f6416d05654def28abb3f85447e8520aa1d50e95e5f74f8e48`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 405.2 KB (405226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa930d6c6ae8c5457b55e58e192975933e3e9ad90547a58815a17696a3a65a3a`  
		Last Modified: Fri, 08 Mar 2019 11:49:00 GMT  
		Size: 14.5 MB (14488609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903f3d4c59ad6ba33196bd5ba110f68c7e4ff17c29668c6d9c8d0ea7293941d7`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257aa0fc624a3f2af4d285c7bae5b93c80de3c5c356b228609fa610373ec32e8`  
		Last Modified: Fri, 08 Mar 2019 11:48:54 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:c99c1d979dc106c0adb1fd7af9b3ba80410dec1f6c58ac281869f8895d353596
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17099588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:280e5f9e610458b58e75a4ef40023d0d3aabe0d2aa5c58651a37aa466f50e761`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 23:41:06 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 23:41:07 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 23:41:07 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 23:41:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 23:41:08 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 23:42:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 23:42:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 23:42:11 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 23:42:11 GMT
WORKDIR /data
# Wed, 06 Feb 2019 23:42:12 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 23:42:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 23:42:12 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 23:42:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674a296497ebd416b2ea4f25685d393136e7c050aa9f40131a989dd1adef0df7`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2485495ab2e5b3bb49d4ee34a89cdbf4845c38bd6b6e91a2d786e4b5f9d07a59`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 408.0 KB (407996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc669db85fd94db885a05969024c2fe98dd5c24fcec3ec6d862e00ad74a3ab11`  
		Last Modified: Wed, 06 Feb 2019 23:44:11 GMT  
		Size: 13.9 MB (13940319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10f03309433ece380a8d54b8aff90742c444ba831ddd17aabf1eb935920aff2`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c502ff5c4e1dec67d99924f64e85c80106d273fc3a9baa08e6792e6a387506e3`  
		Last Modified: Wed, 06 Feb 2019 23:44:07 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:8cec178a0bea3303c4c7b3d5681b2c1e3b6ae61f8acaa670411aeff51708b36f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18591914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57eaa83ea14b56cc6d63dcb6dec2931a628f1a2ef6a241f4e24a067fe5e68fc4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:21:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 06:22:04 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 06:22:10 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 06:22:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 06:22:14 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 06:23:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 06:23:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 06:23:49 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 06:24:00 GMT
WORKDIR /data
# Fri, 08 Mar 2019 06:24:04 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 06:24:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 06:24:11 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 06:24:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25449434ca2fa6ccc1883d472a26a792336aa1e27c229839f973d583c91a00fe`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec248071ec2459c6ae88a0190e574312e021aeb70c18e5058f9878489c0e00b`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 410.3 KB (410336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1cf51440511033fa9bdb096fce3e388ec6f35e8645c658c578500775427621`  
		Last Modified: Fri, 08 Mar 2019 06:27:14 GMT  
		Size: 15.4 MB (15401106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fea05b9f74e69f981c71672f6ba89bb049c821bc68f6b488fd67ba32650878`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c089a1d19ff8a7e10da455f6107b337f3922203340afbe5c551f0a91ba6129`  
		Last Modified: Fri, 08 Mar 2019 06:27:10 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:882204235cbe933a053875c1443457ebd91316ceca5ebd042801449038f5fcd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17817006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cac3e0ee906fb18ec02596b5d00f1cf8185603b15670280b52b9175b5f94011`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:35:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 08 Mar 2019 05:35:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 08 Mar 2019 05:35:50 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 08 Mar 2019 05:35:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 08 Mar 2019 05:35:50 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 08 Mar 2019 05:36:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 08 Mar 2019 05:36:33 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Mar 2019 05:36:33 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 05:36:33 GMT
WORKDIR /data
# Fri, 08 Mar 2019 05:36:33 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:36:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:36:34 GMT
EXPOSE 6379
# Fri, 08 Mar 2019 05:36:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668dbb1da38bf6b755c53ced346a702cc89f825fae11e7c280c4937d86c6052f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9bb4447ea68836f7469bf09fbdaf11252c6449487839e8864900ba4b92d03f`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 407.9 KB (407852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fbd283297462513463363df4a4a3766809dc0eec117be2a10c1747fd0fea69`  
		Last Modified: Fri, 08 Mar 2019 05:37:33 GMT  
		Size: 14.9 MB (14866084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc7b45b4850310346e3275012d38284c97b2ddbac570d21ce353e165112c1fa`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0dabb8834dc79beb93f7bfb59cc12fb4917b07fcdc9711410543c57b2415ff`  
		Last Modified: Fri, 08 Mar 2019 05:37:28 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:4be7fdb131e76a6c6231e820c60b8b12938cf1ff3d437da4871b9b2440f4e385
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

### `redis:latest` - linux; amd64

```console
$ docker pull redis@sha256:b33e5a3c00e5794324fad2fab650eadba0f65e625cc915e4e57995590502c269
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35208512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f88f9be58390a5d67c1a7dbcd08691e059fea2dba7cef42dfc41fab513f43bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:59:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 03:59:08 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:59:22 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 03:59:22 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 04:00:32 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:00:33 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 04:00:33 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 04:00:33 GMT
WORKDIR /data
# Tue, 05 Mar 2019 04:00:34 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:00:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:00:34 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 04:00:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421427137c28f41acfcc3dfe20a5cf4fbcd69aec56df545a2be71e0dd9da428a`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af7ef63ef0fb172f652981ba6b70cbd9bbcac98a38fd878e084c0229729d1b5`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 941.4 KB (941372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b858087b35178c572a86e672ec0227fdb6ef902de97ec6fc260e7cc83401a71c`  
		Last Modified: Tue, 05 Mar 2019 04:04:55 GMT  
		Size: 11.8 MB (11768847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf1944f5eb412c407057ca8d776c9d8ddf3323ed5b8f1ce140e0d0a75946bf`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8270b5c7b90d6433cd9c8f7e517ca3598de83743bd446685177e56c66e2f1fbc`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v5

```console
$ docker pull redis@sha256:2e9042961afaa90435eddcf4d3c7d28638086773b76f13104e533797ca90abfa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33532073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cfefb520b35c8a3badac1fedc571cf2c6064f7019ed20d79b2746fd207b1932`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:45:02 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 11:45:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 11:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 11:45:29 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 11:45:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 11:45:29 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 11:46:32 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 11:46:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 11:46:34 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 11:46:35 GMT
WORKDIR /data
# Tue, 05 Mar 2019 11:46:36 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 11:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 11:46:37 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 11:46:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbd521fe3c3b8745cd78cfc903410a213a70be03e6d6897acf6921637a8fd02`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bef52f90b9f47aca22e18cc348551d4005702e5ebbf95e07e064f7fa8089b74`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 931.2 KB (931203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43dc92b0b06d46565f8550584f282d1278538cb39421d1c057aa018e5c307df7`  
		Last Modified: Tue, 05 Mar 2019 11:47:50 GMT  
		Size: 11.4 MB (11438036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0211c13bbf5ae9002b4256b3fabf82daec28eee1259a475bfcb0435d234f7427`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ca70b8cd86fe6b16fcbf922bac4f5435eef763511ce3108886d3ad065b2325`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v7

```console
$ docker pull redis@sha256:ea26c268ce2d90aeb845ed76af2b2d9a38c6fa4d53742b44c129ee2ac7da2553
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31327947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4507fe201c7a19584655e1430c4150798c111dd406cf82def455f06baec5179e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:49:15 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 14:49:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 14:49:44 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 14:49:45 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 14:49:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 14:49:46 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 14:51:01 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:51:03 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 14:51:03 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 14:51:04 GMT
WORKDIR /data
# Tue, 05 Mar 2019 14:51:04 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 14:51:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:51:05 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 14:51:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51627e8cf990e932bb4d6e82698464e990643c8b8a3adfd7a5a241d8035e7b9`  
		Last Modified: Tue, 05 Mar 2019 14:52:14 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944beb6c88fe13fd93f6cb369c558981060b9e3a2efa52700bf6335a036d2760`  
		Last Modified: Tue, 05 Mar 2019 14:52:15 GMT  
		Size: 915.8 KB (915825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f057717d2c77d0587cbc640c0a7acdc95fe8f49ee31b2a8dbbf354e422451dc`  
		Last Modified: Tue, 05 Mar 2019 14:52:18 GMT  
		Size: 11.1 MB (11127343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2107cdb7ccec1d490390f4a1880073a08c139f1a43587c9f43b6fbac7be2aa8d`  
		Last Modified: Tue, 05 Mar 2019 14:52:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bdbaed531908cc602fe2dfc359807ced7f7eceadbb3cce0d331612538d6d6d`  
		Last Modified: Tue, 05 Mar 2019 14:52:14 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:33c4f41a3d6822ec1bbc7b94628c4e932b809dda844afce605b40f6bd889ec21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32843651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa3370d9d24629991d0a5f054d7dff8e01dff2cfee76afe3528794cf33fd0380`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 18:11:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 18:11:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 18:13:21 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 18:13:22 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 18:13:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 18:13:26 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 18:17:12 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 18:17:17 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:17:18 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:17:19 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:17:21 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:17:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:17:23 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:17:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb72a164d58b5166315d5754bcdf59a33aee72adc904d5211496ac53f2ebbe4`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c085d6d71272c51591b1d678e87f2ace6eb39288c33244a57650ac59e1b970a5`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 908.3 KB (908315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d59efa4834bd7ed97b6e192bacdabb585a1b7186aee85c949a81840201a27a`  
		Last Modified: Wed, 06 Feb 2019 18:23:48 GMT  
		Size: 11.6 MB (11582917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47035e322a8d13b4bd6d8843798ff3d419c302e38f36e4282023e9b88ecc4a0`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd1c970df77ef4f2a475a3bcdf79bac03158243371118d7faaf80ad8599f948`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; 386

```console
$ docker pull redis@sha256:a6a16755e6394b7b3021ae283f96e0fb70063446e9a690ac994d0fcb2829d12f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35226151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30cc1e946115faa07fa034d19006077ffd0661ff425851f11467aa91b1d28bd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:23:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 17:23:20 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 17:23:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 17:23:35 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 17:23:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 17:23:36 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 17:24:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 17:24:40 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 17:24:40 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 17:24:40 GMT
WORKDIR /data
# Tue, 05 Mar 2019 17:24:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 17:24:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:24:41 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 17:24:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbebd3af2fccd61e20f39f8fa596a1ccf3fa579a74676e5f92345a4212c23f9`  
		Last Modified: Tue, 05 Mar 2019 17:25:48 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c07fb518ec8e47edf4cec068a21f23b2dd663f2830af705ece740d0265c027`  
		Last Modified: Tue, 05 Mar 2019 17:25:48 GMT  
		Size: 920.1 KB (920126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a80aa54f293ac8d0a27a6039f43fa051ed98495f977c39c417727bcb1c341a`  
		Last Modified: Tue, 05 Mar 2019 17:25:50 GMT  
		Size: 11.2 MB (11178096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff94dd12a5604b1b0d726248ccdcceea6559322af2262eb5c43b832c72939fb3`  
		Last Modified: Tue, 05 Mar 2019 17:25:47 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef861093e39a9f94963c0861be825347d4f82e3d8d83c85abb5146aea9c974d`  
		Last Modified: Tue, 05 Mar 2019 17:25:49 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; ppc64le

```console
$ docker pull redis@sha256:8f644997c7d94f6277614fe0f956c25bd8f94ce5afa3c06e9438aeab4bcb79d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35620300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c068025f2c158ebf44bb2012c41152f119ba694dbc8de4a732e3dcf56d883514`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:09:40 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 14:09:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 14:11:07 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 14:11:11 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 14:11:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 14:11:20 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 14:14:26 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:14:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 14:14:38 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 14:14:42 GMT
WORKDIR /data
# Tue, 05 Mar 2019 14:14:44 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 14:14:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:14:51 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 14:14:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cda49701fd84a29c848e779603b3f91332b9ce83a243759fd66bb51424459878`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9cf28aaaf9a9e50dec15d68918563f279b9b10e23a0f2a7632bc8847b64eed`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 909.8 KB (909774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea027f83e1b0748fa57fb9b4db80ab33ffaa5bfe6c1c983480760950e013a38`  
		Last Modified: Tue, 05 Mar 2019 14:18:19 GMT  
		Size: 12.0 MB (11956727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae8524649bc51658e77a8f5cbd9bef56db7aede58a9e4a30cca4590bc4d3369`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0b5dff42369cfaa39f269927320163559de8967d4eb176a8ac01bae1c61493`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; s390x

```console
$ docker pull redis@sha256:2615be3d6c072a2c212149777526bc50a46e26ca4b8c23b9d770fa5084606d1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35499659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad5aee4bebe2d6a074a1957bd6713b275325f9ae6c6e13c3f7dbf4e4e64674ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:19:33 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 15:19:33 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 15:19:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 15:19:50 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 15:19:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 15:19:51 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 15:20:48 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 15:20:49 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 15:20:49 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 15:20:50 GMT
WORKDIR /data
# Tue, 05 Mar 2019 15:20:50 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:20:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:20:50 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 15:20:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdba89d07dcd37b41b497124053b83ce21c0b11a5c1248c56f4b8266d2dc10a`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b052af6696f3b620e4e2272edbd4d62de0b516c9d4577451027abe02b7c6c79f`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 926.8 KB (926782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1ade6dd699b86675c7f5e55a1f00ef1b902231b9f5d6ef42ec596e71e240e7`  
		Last Modified: Tue, 05 Mar 2019 15:22:08 GMT  
		Size: 12.2 MB (12225231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2e2d14ec6fb5af47556fb02ed24ed6920924dd6d86a6bae3415228c410dff0`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37af7a0fbab16b2f9cdff3f2c06c66f7796f5c5fbf1ae1429264dc12d90fc1ec`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:stretch`

```console
$ docker pull redis@sha256:4be7fdb131e76a6c6231e820c60b8b12938cf1ff3d437da4871b9b2440f4e385
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

### `redis:stretch` - linux; amd64

```console
$ docker pull redis@sha256:b33e5a3c00e5794324fad2fab650eadba0f65e625cc915e4e57995590502c269
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35208512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f88f9be58390a5d67c1a7dbcd08691e059fea2dba7cef42dfc41fab513f43bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:59:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 03:59:08 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:59:22 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 03:59:22 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 03:59:23 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 04:00:32 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 04:00:33 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 04:00:33 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 04:00:33 GMT
WORKDIR /data
# Tue, 05 Mar 2019 04:00:34 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 04:00:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 04:00:34 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 04:00:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421427137c28f41acfcc3dfe20a5cf4fbcd69aec56df545a2be71e0dd9da428a`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af7ef63ef0fb172f652981ba6b70cbd9bbcac98a38fd878e084c0229729d1b5`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 941.4 KB (941372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b858087b35178c572a86e672ec0227fdb6ef902de97ec6fc260e7cc83401a71c`  
		Last Modified: Tue, 05 Mar 2019 04:04:55 GMT  
		Size: 11.8 MB (11768847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf1944f5eb412c407057ca8d776c9d8ddf3323ed5b8f1ce140e0d0a75946bf`  
		Last Modified: Tue, 05 Mar 2019 04:04:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8270b5c7b90d6433cd9c8f7e517ca3598de83743bd446685177e56c66e2f1fbc`  
		Last Modified: Tue, 05 Mar 2019 04:04:52 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:2e9042961afaa90435eddcf4d3c7d28638086773b76f13104e533797ca90abfa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33532073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cfefb520b35c8a3badac1fedc571cf2c6064f7019ed20d79b2746fd207b1932`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:45:02 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 11:45:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 11:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 11:45:29 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 11:45:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 11:45:29 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 11:46:32 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 11:46:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 11:46:34 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 11:46:35 GMT
WORKDIR /data
# Tue, 05 Mar 2019 11:46:36 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 11:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 11:46:37 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 11:46:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbd521fe3c3b8745cd78cfc903410a213a70be03e6d6897acf6921637a8fd02`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bef52f90b9f47aca22e18cc348551d4005702e5ebbf95e07e064f7fa8089b74`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 931.2 KB (931203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43dc92b0b06d46565f8550584f282d1278538cb39421d1c057aa018e5c307df7`  
		Last Modified: Tue, 05 Mar 2019 11:47:50 GMT  
		Size: 11.4 MB (11438036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0211c13bbf5ae9002b4256b3fabf82daec28eee1259a475bfcb0435d234f7427`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ca70b8cd86fe6b16fcbf922bac4f5435eef763511ce3108886d3ad065b2325`  
		Last Modified: Tue, 05 Mar 2019 11:47:47 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:ea26c268ce2d90aeb845ed76af2b2d9a38c6fa4d53742b44c129ee2ac7da2553
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31327947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4507fe201c7a19584655e1430c4150798c111dd406cf82def455f06baec5179e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:49:15 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 14:49:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 14:49:44 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 14:49:45 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 14:49:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 14:49:46 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 14:51:01 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:51:03 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 14:51:03 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 14:51:04 GMT
WORKDIR /data
# Tue, 05 Mar 2019 14:51:04 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 14:51:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:51:05 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 14:51:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51627e8cf990e932bb4d6e82698464e990643c8b8a3adfd7a5a241d8035e7b9`  
		Last Modified: Tue, 05 Mar 2019 14:52:14 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944beb6c88fe13fd93f6cb369c558981060b9e3a2efa52700bf6335a036d2760`  
		Last Modified: Tue, 05 Mar 2019 14:52:15 GMT  
		Size: 915.8 KB (915825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f057717d2c77d0587cbc640c0a7acdc95fe8f49ee31b2a8dbbf354e422451dc`  
		Last Modified: Tue, 05 Mar 2019 14:52:18 GMT  
		Size: 11.1 MB (11127343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2107cdb7ccec1d490390f4a1880073a08c139f1a43587c9f43b6fbac7be2aa8d`  
		Last Modified: Tue, 05 Mar 2019 14:52:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bdbaed531908cc602fe2dfc359807ced7f7eceadbb3cce0d331612538d6d6d`  
		Last Modified: Tue, 05 Mar 2019 14:52:14 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:33c4f41a3d6822ec1bbc7b94628c4e932b809dda844afce605b40f6bd889ec21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32843651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa3370d9d24629991d0a5f054d7dff8e01dff2cfee76afe3528794cf33fd0380`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 18:11:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 18:11:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 18:13:21 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 18:13:22 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 18:13:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 18:13:26 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 18:17:12 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 18:17:17 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:17:18 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:17:19 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:17:21 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:17:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:17:23 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:17:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb72a164d58b5166315d5754bcdf59a33aee72adc904d5211496ac53f2ebbe4`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c085d6d71272c51591b1d678e87f2ace6eb39288c33244a57650ac59e1b970a5`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 908.3 KB (908315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d59efa4834bd7ed97b6e192bacdabb585a1b7186aee85c949a81840201a27a`  
		Last Modified: Wed, 06 Feb 2019 18:23:48 GMT  
		Size: 11.6 MB (11582917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47035e322a8d13b4bd6d8843798ff3d419c302e38f36e4282023e9b88ecc4a0`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd1c970df77ef4f2a475a3bcdf79bac03158243371118d7faaf80ad8599f948`  
		Last Modified: Wed, 06 Feb 2019 18:23:42 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; 386

```console
$ docker pull redis@sha256:a6a16755e6394b7b3021ae283f96e0fb70063446e9a690ac994d0fcb2829d12f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35226151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30cc1e946115faa07fa034d19006077ffd0661ff425851f11467aa91b1d28bd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:23:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 17:23:20 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 17:23:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 17:23:35 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 17:23:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 17:23:36 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 17:24:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 17:24:40 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 17:24:40 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 17:24:40 GMT
WORKDIR /data
# Tue, 05 Mar 2019 17:24:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 17:24:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:24:41 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 17:24:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbebd3af2fccd61e20f39f8fa596a1ccf3fa579a74676e5f92345a4212c23f9`  
		Last Modified: Tue, 05 Mar 2019 17:25:48 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c07fb518ec8e47edf4cec068a21f23b2dd663f2830af705ece740d0265c027`  
		Last Modified: Tue, 05 Mar 2019 17:25:48 GMT  
		Size: 920.1 KB (920126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a80aa54f293ac8d0a27a6039f43fa051ed98495f977c39c417727bcb1c341a`  
		Last Modified: Tue, 05 Mar 2019 17:25:50 GMT  
		Size: 11.2 MB (11178096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff94dd12a5604b1b0d726248ccdcceea6559322af2262eb5c43b832c72939fb3`  
		Last Modified: Tue, 05 Mar 2019 17:25:47 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef861093e39a9f94963c0861be825347d4f82e3d8d83c85abb5146aea9c974d`  
		Last Modified: Tue, 05 Mar 2019 17:25:49 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:8f644997c7d94f6277614fe0f956c25bd8f94ce5afa3c06e9438aeab4bcb79d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35620300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c068025f2c158ebf44bb2012c41152f119ba694dbc8de4a732e3dcf56d883514`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:09:40 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 14:09:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 14:11:07 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 14:11:11 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 14:11:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 14:11:20 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 14:14:26 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:14:34 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 14:14:38 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 14:14:42 GMT
WORKDIR /data
# Tue, 05 Mar 2019 14:14:44 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 14:14:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:14:51 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 14:14:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cda49701fd84a29c848e779603b3f91332b9ce83a243759fd66bb51424459878`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9cf28aaaf9a9e50dec15d68918563f279b9b10e23a0f2a7632bc8847b64eed`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 909.8 KB (909774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea027f83e1b0748fa57fb9b4db80ab33ffaa5bfe6c1c983480760950e013a38`  
		Last Modified: Tue, 05 Mar 2019 14:18:19 GMT  
		Size: 12.0 MB (11956727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae8524649bc51658e77a8f5cbd9bef56db7aede58a9e4a30cca4590bc4d3369`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0b5dff42369cfaa39f269927320163559de8967d4eb176a8ac01bae1c61493`  
		Last Modified: Tue, 05 Mar 2019 14:18:16 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; s390x

```console
$ docker pull redis@sha256:2615be3d6c072a2c212149777526bc50a46e26ca4b8c23b9d770fa5084606d1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35499659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad5aee4bebe2d6a074a1957bd6713b275325f9ae6c6e13c3f7dbf4e4e64674ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:19:33 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 05 Mar 2019 15:19:33 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 15:19:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 05 Mar 2019 15:19:50 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Mar 2019 15:19:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Mar 2019 15:19:51 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Mar 2019 15:20:48 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 15:20:49 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Mar 2019 15:20:49 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 15:20:50 GMT
WORKDIR /data
# Tue, 05 Mar 2019 15:20:50 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:20:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:20:50 GMT
EXPOSE 6379
# Tue, 05 Mar 2019 15:20:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdba89d07dcd37b41b497124053b83ce21c0b11a5c1248c56f4b8266d2dc10a`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b052af6696f3b620e4e2272edbd4d62de0b516c9d4577451027abe02b7c6c79f`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 926.8 KB (926782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1ade6dd699b86675c7f5e55a1f00ef1b902231b9f5d6ef42ec596e71e240e7`  
		Last Modified: Tue, 05 Mar 2019 15:22:08 GMT  
		Size: 12.2 MB (12225231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2e2d14ec6fb5af47556fb02ed24ed6920924dd6d86a6bae3415228c410dff0`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37af7a0fbab16b2f9cdff3f2c06c66f7796f5c5fbf1ae1429264dc12d90fc1ec`  
		Last Modified: Tue, 05 Mar 2019 15:22:05 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
