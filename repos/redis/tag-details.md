<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redis`

-	[`redis:32bit`](#redis32bit)
-	[`redis:32bit-stretch`](#redis32bit-stretch)
-	[`redis:4`](#redis4)
-	[`redis:4.0`](#redis40)
-	[`redis:4.0.12`](#redis4012)
-	[`redis:4.0.12-32bit`](#redis4012-32bit)
-	[`redis:4.0.12-32bit-stretch`](#redis4012-32bit-stretch)
-	[`redis:4.0.12-alpine`](#redis4012-alpine)
-	[`redis:4.0.12-alpine3.9`](#redis4012-alpine39)
-	[`redis:4.0.12-stretch`](#redis4012-stretch)
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
-	[`redis:5.0.3`](#redis503)
-	[`redis:5.0-32bit`](#redis50-32bit)
-	[`redis:5.0-32bit-stretch`](#redis50-32bit-stretch)
-	[`redis:5.0.3-32bit`](#redis503-32bit)
-	[`redis:5.0.3-32bit-stretch`](#redis503-32bit-stretch)
-	[`redis:5.0.3-alpine`](#redis503-alpine)
-	[`redis:5.0.3-alpine3.9`](#redis503-alpine39)
-	[`redis:5.0.3-stretch`](#redis503-stretch)
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
$ docker pull redis@sha256:030feb09311b97f8b3bce0d1ba3f0a20002b93213933debf1577c024d1e0d3d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:9d3f298ac92ab934044793a6addbc41c92261a131cddf9bf3a099a7913d981a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39475793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5c5854734365dad78dc583e82d09f7dced217682c09868da4370f633fb3a25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 09:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:04:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:04:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:04:48 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:04:49 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:04:49 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:04:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:04:49 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:04:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898e6740eb9cc2ab7646094ca8bb90cf71eb1d2c8c07ee186dbf6284723a1f1c`  
		Last Modified: Wed, 06 Feb 2019 09:08:44 GMT  
		Size: 4.8 MB (4848339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda33995a5fb887ab8b3fdefa5f7184698a456af9c0cef2e224934dddb91aa0b`  
		Last Modified: Wed, 06 Feb 2019 09:08:46 GMT  
		Size: 11.2 MB (11183537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f172f8e8922cf60d1849fa78fe2713173ae436349b316bb8ff4550529c02afc7`  
		Last Modified: Wed, 06 Feb 2019 09:08:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a78894a3a8f868e9c4005ae8423f5156856f3867b1aa7186e5fdedcb6d28d3`  
		Last Modified: Wed, 06 Feb 2019 09:08:43 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit-stretch`

```console
$ docker pull redis@sha256:030feb09311b97f8b3bce0d1ba3f0a20002b93213933debf1577c024d1e0d3d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:9d3f298ac92ab934044793a6addbc41c92261a131cddf9bf3a099a7913d981a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39475793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5c5854734365dad78dc583e82d09f7dced217682c09868da4370f633fb3a25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 09:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:04:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:04:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:04:48 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:04:49 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:04:49 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:04:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:04:49 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:04:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898e6740eb9cc2ab7646094ca8bb90cf71eb1d2c8c07ee186dbf6284723a1f1c`  
		Last Modified: Wed, 06 Feb 2019 09:08:44 GMT  
		Size: 4.8 MB (4848339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda33995a5fb887ab8b3fdefa5f7184698a456af9c0cef2e224934dddb91aa0b`  
		Last Modified: Wed, 06 Feb 2019 09:08:46 GMT  
		Size: 11.2 MB (11183537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f172f8e8922cf60d1849fa78fe2713173ae436349b316bb8ff4550529c02afc7`  
		Last Modified: Wed, 06 Feb 2019 09:08:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a78894a3a8f868e9c4005ae8423f5156856f3867b1aa7186e5fdedcb6d28d3`  
		Last Modified: Wed, 06 Feb 2019 09:08:43 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4`

```console
$ docker pull redis@sha256:b01bfb4a86f85b66473cdcc46da90b2c35e8f39993448f321b858f6fb3683af2
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
$ docker pull redis@sha256:a79165a289dd044bb2ea88e20c04a78064849e84832f7d5e8f04ad471d79c10f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32140189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddb7885a5e075ba8ed414d0706059999aa73fceb4249bef7cb293c1ec559dfc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 09:06:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:06:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:06:10 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:06:11 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:06:11 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:06:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:06:12 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:06:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7546c1dafc0a5fb808bdb61836e32ddfffe01c0cf2b852244af11a7d3b32850e`  
		Last Modified: Wed, 06 Feb 2019 09:09:00 GMT  
		Size: 8.7 MB (8696275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6db952ef962c76ba0cab1ecb72183bd6bab29ba8faad21ff4dcc739f9949a6`  
		Last Modified: Wed, 06 Feb 2019 09:08:58 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee23a34df7b0beb70e14e2c7bfa87ac29b4d87903745277343f4130c9f3b5e0a`  
		Last Modified: Wed, 06 Feb 2019 09:08:58 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v5

```console
$ docker pull redis@sha256:cbedb310d5ad050c9c6abf7c52658de90c276af0a2ae37cfd2fc0556f25d405c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30537675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec8623c4bd344354301ed32ef6c4e10667bf14e79c6afc77803ff237e0d5bec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:03:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 11:03:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:04:20 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 11:05:35 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 11:05:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 11:05:35 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 11:06:19 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 11:06:20 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 11:06:20 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 11:06:21 GMT
WORKDIR /data
# Wed, 23 Jan 2019 11:06:21 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:06:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:06:22 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 11:06:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95036a3e89326a8f4c92d7b003ade74e1dc6119c716d3eba91525208decab719`  
		Last Modified: Wed, 23 Jan 2019 11:06:37 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baca5a0010d5b56e9a8882d2a03e7773ff400841a6c447b4607d09d73e4fa68`  
		Last Modified: Wed, 23 Jan 2019 11:06:38 GMT  
		Size: 931.2 KB (931174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0ff28875dac0086a733aabc024cf50565065ae95b38e160996e8e2ed44b8af`  
		Last Modified: Wed, 23 Jan 2019 11:06:58 GMT  
		Size: 8.4 MB (8422386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d15bf43aaaf5bc06047e9ccd5634a6a1708963480040296423fdcb390dc04f`  
		Last Modified: Wed, 23 Jan 2019 11:06:55 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31573456d9ee4b3e17cc5585ab9b10efe1605e80f5bfc7f92c24bae52c8a641d`  
		Last Modified: Wed, 23 Jan 2019 11:06:55 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v7

```console
$ docker pull redis@sha256:4312d1a169f9cf4e73736f97fb362fb94b5517c7103981add9f63d47d364aaf5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28403690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7c0d43b8abd59ba46fe27c32aed91cf9b928f0df22a3278b7c06a0430dc197`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:10:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 15:10:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 15:10:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 15:12:22 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 15:12:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 15:12:24 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 15:13:05 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 15:13:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 15:13:09 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 15:13:09 GMT
WORKDIR /data
# Wed, 23 Jan 2019 15:13:10 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 15:13:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 15:13:11 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 15:13:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfe83343c5e1e5b661ae0cf82627f2a90cbd7cb08c800b7337e9d714156e0f0`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e17ba9c527459ecfa72e59cc8e381c3a9667c200af0dd579ee109c19d055a1`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 915.8 KB (915843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:456975d3b7e848739e0b596ce09518cb429fcc22f5da5d27b60623af9b6cd6f4`  
		Last Modified: Wed, 23 Jan 2019 15:14:04 GMT  
		Size: 8.2 MB (8195278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102a125b2e57af83d02d7ab68e564aaa46018af025b531f03f4f508b2a911bba`  
		Last Modified: Wed, 23 Jan 2019 15:14:01 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367d309bb1cbcc883a34754ddef2d16f4e3da3490f7ce92a0ded4ac3a60e6634`  
		Last Modified: Wed, 23 Jan 2019 15:14:00 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:029b83ab63e8a9c186b0eb7264856d37493116049fe50c26189da53377f7d561
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.8 MB (29757620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90b650a82f3070b6e3f79a7957bc1b0cc556636f3aa07313ddd84e1a9ba71492`
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
# Wed, 06 Feb 2019 18:19:53 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 18:19:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 18:19:56 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 18:21:45 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 18:21:49 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:21:50 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:21:51 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:21:53 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:21:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:21:55 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:21:58 GMT
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
	-	`sha256:236b2053354615506e3cccbbd2aa63b9231696d3e64d8a424be78f9b21cf7c1a`  
		Last Modified: Wed, 06 Feb 2019 18:24:46 GMT  
		Size: 8.5 MB (8496889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d447649960a10acf8e47a4bd34ecf1af3df3664ee383f7dcfbd9fd81171a57`  
		Last Modified: Wed, 06 Feb 2019 18:24:43 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f6852cfb287298c6058c67614f7ec8c0f04f040c742e33fda74658dda8135c`  
		Last Modified: Wed, 06 Feb 2019 18:24:43 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; 386

```console
$ docker pull redis@sha256:7816d5aa7140869c9f1a3307953e7d72c1eb6f2b7082429b659a5463fb499b34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32327193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e927c4d0467a8b549b53e02600670687f544b3a0cdfba1acb09a324c11487cab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:58:14 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:58:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:58:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:00:14 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 14:00:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 14:00:15 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 14:00:57 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:00:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:00:58 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:00:58 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:00:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:00:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:00:59 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:00:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f073067f1925015bef7333d173b916e2e36e6b2a9be0e8e409c92a914a459c23`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231e88ea2e22d423059304481650a1a646cd344ff23c70d5b364c31ddaf073eb`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 920.1 KB (920102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cf690cf21a137c60da9b9ef8f5707355c2ff88318b9f70eac21c18bc579186`  
		Last Modified: Wed, 23 Jan 2019 14:01:35 GMT  
		Size: 8.3 MB (8257724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a39b2ce2d5bae85e9e98212ead5e63fac8a1f9803038bb95ba6d80a726e520b`  
		Last Modified: Wed, 23 Jan 2019 14:01:33 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:658d581ba48a03e76b6e4e6f1d853bbdd97ff23ceac0c414a7de4718098397ca`  
		Last Modified: Wed, 23 Jan 2019 14:01:33 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; ppc64le

```console
$ docker pull redis@sha256:8254eee3b7ac2dfc42740b3cc1f8546770f961c605539ed60ac46288574ea4c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32539684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83b0b317e1881d078d8e3c04ae3111cac8bd3a33400dcecf67f22d358c91c607`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:22:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:22:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:23:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:27:32 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:27:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:27:36 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:28:54 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:28:59 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:29:01 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:29:02 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:29:03 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:29:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:29:09 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:29:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20321bec709a1fb1b4332af6e7af0c9c1629fb86adfeb8c4ec41f6486d22a55`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474693152966afd031e558316092ddbd7b3b7a97df46e5b1234a8c832a559522`  
		Last Modified: Wed, 06 Feb 2019 14:30:36 GMT  
		Size: 909.7 KB (909710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cfca3f0f7573a265853e3b5b380e32a324415726d23665324d2bdb4e2d469d4`  
		Last Modified: Wed, 06 Feb 2019 14:32:01 GMT  
		Size: 8.9 MB (8872287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e847e93156986e86c4d3d70cc53660e16680ffff27533d978e22fb3c0da320`  
		Last Modified: Wed, 06 Feb 2019 14:31:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902e9521e6edd482141d0c1d24a7bd64d6e6f28c124fda66a41081b5392e3f07`  
		Last Modified: Wed, 06 Feb 2019 14:31:35 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; s390x

```console
$ docker pull redis@sha256:41a8e4ec1efff212df17fa758a5b4a72ba5e3dc6ef9ee9f66cbc6186b74d4045
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32372697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e14b7a48fb04acadd8deabac97fd749b5643fa42f51a8cd741694d3f8e20d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:46:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:46:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:46:45 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:48:16 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:48:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:48:16 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:48:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:48:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:48:39 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:48:40 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:48:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:48:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:48:40 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:48:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7372cde11bc20743e4b18508d5a43d0c4b135c13aaf2bdd4201e590f18c4ae`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce30edbe6a65e2dd54fa17ab9d73575aa91e5354fe7f650dca6fc639164c8e69`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 926.8 KB (926789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92f8d10d674105c3b645675060fe0b126f202bde10d69456b9bdbdbd3ebc459`  
		Last Modified: Wed, 06 Feb 2019 14:49:50 GMT  
		Size: 9.1 MB (9090316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5477b344ec9dd59a6dd2a7fddd9b885f309d39e9008ea1a94eae211ec75266df`  
		Last Modified: Wed, 06 Feb 2019 14:49:47 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e624ef28c1fb6dee03a6f327c3bfec332d922e663591712c589850022ec882d8`  
		Last Modified: Wed, 06 Feb 2019 14:49:47 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0`

```console
$ docker pull redis@sha256:b01bfb4a86f85b66473cdcc46da90b2c35e8f39993448f321b858f6fb3683af2
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
$ docker pull redis@sha256:a79165a289dd044bb2ea88e20c04a78064849e84832f7d5e8f04ad471d79c10f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32140189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddb7885a5e075ba8ed414d0706059999aa73fceb4249bef7cb293c1ec559dfc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 09:06:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:06:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:06:10 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:06:11 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:06:11 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:06:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:06:12 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:06:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7546c1dafc0a5fb808bdb61836e32ddfffe01c0cf2b852244af11a7d3b32850e`  
		Last Modified: Wed, 06 Feb 2019 09:09:00 GMT  
		Size: 8.7 MB (8696275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6db952ef962c76ba0cab1ecb72183bd6bab29ba8faad21ff4dcc739f9949a6`  
		Last Modified: Wed, 06 Feb 2019 09:08:58 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee23a34df7b0beb70e14e2c7bfa87ac29b4d87903745277343f4130c9f3b5e0a`  
		Last Modified: Wed, 06 Feb 2019 09:08:58 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v5

```console
$ docker pull redis@sha256:cbedb310d5ad050c9c6abf7c52658de90c276af0a2ae37cfd2fc0556f25d405c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30537675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec8623c4bd344354301ed32ef6c4e10667bf14e79c6afc77803ff237e0d5bec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:03:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 11:03:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:04:20 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 11:05:35 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 11:05:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 11:05:35 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 11:06:19 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 11:06:20 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 11:06:20 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 11:06:21 GMT
WORKDIR /data
# Wed, 23 Jan 2019 11:06:21 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:06:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:06:22 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 11:06:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95036a3e89326a8f4c92d7b003ade74e1dc6119c716d3eba91525208decab719`  
		Last Modified: Wed, 23 Jan 2019 11:06:37 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baca5a0010d5b56e9a8882d2a03e7773ff400841a6c447b4607d09d73e4fa68`  
		Last Modified: Wed, 23 Jan 2019 11:06:38 GMT  
		Size: 931.2 KB (931174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0ff28875dac0086a733aabc024cf50565065ae95b38e160996e8e2ed44b8af`  
		Last Modified: Wed, 23 Jan 2019 11:06:58 GMT  
		Size: 8.4 MB (8422386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d15bf43aaaf5bc06047e9ccd5634a6a1708963480040296423fdcb390dc04f`  
		Last Modified: Wed, 23 Jan 2019 11:06:55 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31573456d9ee4b3e17cc5585ab9b10efe1605e80f5bfc7f92c24bae52c8a641d`  
		Last Modified: Wed, 23 Jan 2019 11:06:55 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v7

```console
$ docker pull redis@sha256:4312d1a169f9cf4e73736f97fb362fb94b5517c7103981add9f63d47d364aaf5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28403690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7c0d43b8abd59ba46fe27c32aed91cf9b928f0df22a3278b7c06a0430dc197`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:10:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 15:10:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 15:10:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 15:12:22 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 15:12:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 15:12:24 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 15:13:05 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 15:13:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 15:13:09 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 15:13:09 GMT
WORKDIR /data
# Wed, 23 Jan 2019 15:13:10 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 15:13:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 15:13:11 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 15:13:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfe83343c5e1e5b661ae0cf82627f2a90cbd7cb08c800b7337e9d714156e0f0`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e17ba9c527459ecfa72e59cc8e381c3a9667c200af0dd579ee109c19d055a1`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 915.8 KB (915843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:456975d3b7e848739e0b596ce09518cb429fcc22f5da5d27b60623af9b6cd6f4`  
		Last Modified: Wed, 23 Jan 2019 15:14:04 GMT  
		Size: 8.2 MB (8195278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102a125b2e57af83d02d7ab68e564aaa46018af025b531f03f4f508b2a911bba`  
		Last Modified: Wed, 23 Jan 2019 15:14:01 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367d309bb1cbcc883a34754ddef2d16f4e3da3490f7ce92a0ded4ac3a60e6634`  
		Last Modified: Wed, 23 Jan 2019 15:14:00 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:029b83ab63e8a9c186b0eb7264856d37493116049fe50c26189da53377f7d561
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.8 MB (29757620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90b650a82f3070b6e3f79a7957bc1b0cc556636f3aa07313ddd84e1a9ba71492`
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
# Wed, 06 Feb 2019 18:19:53 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 18:19:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 18:19:56 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 18:21:45 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 18:21:49 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:21:50 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:21:51 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:21:53 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:21:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:21:55 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:21:58 GMT
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
	-	`sha256:236b2053354615506e3cccbbd2aa63b9231696d3e64d8a424be78f9b21cf7c1a`  
		Last Modified: Wed, 06 Feb 2019 18:24:46 GMT  
		Size: 8.5 MB (8496889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d447649960a10acf8e47a4bd34ecf1af3df3664ee383f7dcfbd9fd81171a57`  
		Last Modified: Wed, 06 Feb 2019 18:24:43 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f6852cfb287298c6058c67614f7ec8c0f04f040c742e33fda74658dda8135c`  
		Last Modified: Wed, 06 Feb 2019 18:24:43 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; 386

```console
$ docker pull redis@sha256:7816d5aa7140869c9f1a3307953e7d72c1eb6f2b7082429b659a5463fb499b34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32327193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e927c4d0467a8b549b53e02600670687f544b3a0cdfba1acb09a324c11487cab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:58:14 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:58:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:58:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:00:14 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 14:00:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 14:00:15 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 14:00:57 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:00:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:00:58 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:00:58 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:00:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:00:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:00:59 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:00:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f073067f1925015bef7333d173b916e2e36e6b2a9be0e8e409c92a914a459c23`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231e88ea2e22d423059304481650a1a646cd344ff23c70d5b364c31ddaf073eb`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 920.1 KB (920102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cf690cf21a137c60da9b9ef8f5707355c2ff88318b9f70eac21c18bc579186`  
		Last Modified: Wed, 23 Jan 2019 14:01:35 GMT  
		Size: 8.3 MB (8257724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a39b2ce2d5bae85e9e98212ead5e63fac8a1f9803038bb95ba6d80a726e520b`  
		Last Modified: Wed, 23 Jan 2019 14:01:33 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:658d581ba48a03e76b6e4e6f1d853bbdd97ff23ceac0c414a7de4718098397ca`  
		Last Modified: Wed, 23 Jan 2019 14:01:33 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; ppc64le

```console
$ docker pull redis@sha256:8254eee3b7ac2dfc42740b3cc1f8546770f961c605539ed60ac46288574ea4c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32539684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83b0b317e1881d078d8e3c04ae3111cac8bd3a33400dcecf67f22d358c91c607`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:22:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:22:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:23:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:27:32 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:27:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:27:36 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:28:54 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:28:59 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:29:01 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:29:02 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:29:03 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:29:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:29:09 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:29:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20321bec709a1fb1b4332af6e7af0c9c1629fb86adfeb8c4ec41f6486d22a55`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474693152966afd031e558316092ddbd7b3b7a97df46e5b1234a8c832a559522`  
		Last Modified: Wed, 06 Feb 2019 14:30:36 GMT  
		Size: 909.7 KB (909710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cfca3f0f7573a265853e3b5b380e32a324415726d23665324d2bdb4e2d469d4`  
		Last Modified: Wed, 06 Feb 2019 14:32:01 GMT  
		Size: 8.9 MB (8872287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e847e93156986e86c4d3d70cc53660e16680ffff27533d978e22fb3c0da320`  
		Last Modified: Wed, 06 Feb 2019 14:31:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902e9521e6edd482141d0c1d24a7bd64d6e6f28c124fda66a41081b5392e3f07`  
		Last Modified: Wed, 06 Feb 2019 14:31:35 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; s390x

```console
$ docker pull redis@sha256:41a8e4ec1efff212df17fa758a5b4a72ba5e3dc6ef9ee9f66cbc6186b74d4045
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32372697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e14b7a48fb04acadd8deabac97fd749b5643fa42f51a8cd741694d3f8e20d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:46:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:46:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:46:45 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:48:16 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:48:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:48:16 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:48:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:48:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:48:39 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:48:40 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:48:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:48:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:48:40 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:48:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7372cde11bc20743e4b18508d5a43d0c4b135c13aaf2bdd4201e590f18c4ae`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce30edbe6a65e2dd54fa17ab9d73575aa91e5354fe7f650dca6fc639164c8e69`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 926.8 KB (926789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92f8d10d674105c3b645675060fe0b126f202bde10d69456b9bdbdbd3ebc459`  
		Last Modified: Wed, 06 Feb 2019 14:49:50 GMT  
		Size: 9.1 MB (9090316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5477b344ec9dd59a6dd2a7fddd9b885f309d39e9008ea1a94eae211ec75266df`  
		Last Modified: Wed, 06 Feb 2019 14:49:47 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e624ef28c1fb6dee03a6f327c3bfec332d922e663591712c589850022ec882d8`  
		Last Modified: Wed, 06 Feb 2019 14:49:47 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.12`

```console
$ docker pull redis@sha256:b01bfb4a86f85b66473cdcc46da90b2c35e8f39993448f321b858f6fb3683af2
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

### `redis:4.0.12` - linux; amd64

```console
$ docker pull redis@sha256:a79165a289dd044bb2ea88e20c04a78064849e84832f7d5e8f04ad471d79c10f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32140189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddb7885a5e075ba8ed414d0706059999aa73fceb4249bef7cb293c1ec559dfc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 09:06:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:06:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:06:10 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:06:11 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:06:11 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:06:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:06:12 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:06:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7546c1dafc0a5fb808bdb61836e32ddfffe01c0cf2b852244af11a7d3b32850e`  
		Last Modified: Wed, 06 Feb 2019 09:09:00 GMT  
		Size: 8.7 MB (8696275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6db952ef962c76ba0cab1ecb72183bd6bab29ba8faad21ff4dcc739f9949a6`  
		Last Modified: Wed, 06 Feb 2019 09:08:58 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee23a34df7b0beb70e14e2c7bfa87ac29b4d87903745277343f4130c9f3b5e0a`  
		Last Modified: Wed, 06 Feb 2019 09:08:58 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12` - linux; arm variant v5

```console
$ docker pull redis@sha256:cbedb310d5ad050c9c6abf7c52658de90c276af0a2ae37cfd2fc0556f25d405c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30537675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec8623c4bd344354301ed32ef6c4e10667bf14e79c6afc77803ff237e0d5bec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:03:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 11:03:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:04:20 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 11:05:35 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 11:05:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 11:05:35 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 11:06:19 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 11:06:20 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 11:06:20 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 11:06:21 GMT
WORKDIR /data
# Wed, 23 Jan 2019 11:06:21 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:06:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:06:22 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 11:06:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95036a3e89326a8f4c92d7b003ade74e1dc6119c716d3eba91525208decab719`  
		Last Modified: Wed, 23 Jan 2019 11:06:37 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baca5a0010d5b56e9a8882d2a03e7773ff400841a6c447b4607d09d73e4fa68`  
		Last Modified: Wed, 23 Jan 2019 11:06:38 GMT  
		Size: 931.2 KB (931174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0ff28875dac0086a733aabc024cf50565065ae95b38e160996e8e2ed44b8af`  
		Last Modified: Wed, 23 Jan 2019 11:06:58 GMT  
		Size: 8.4 MB (8422386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d15bf43aaaf5bc06047e9ccd5634a6a1708963480040296423fdcb390dc04f`  
		Last Modified: Wed, 23 Jan 2019 11:06:55 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31573456d9ee4b3e17cc5585ab9b10efe1605e80f5bfc7f92c24bae52c8a641d`  
		Last Modified: Wed, 23 Jan 2019 11:06:55 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12` - linux; arm variant v7

```console
$ docker pull redis@sha256:4312d1a169f9cf4e73736f97fb362fb94b5517c7103981add9f63d47d364aaf5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28403690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7c0d43b8abd59ba46fe27c32aed91cf9b928f0df22a3278b7c06a0430dc197`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:10:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 15:10:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 15:10:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 15:12:22 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 15:12:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 15:12:24 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 15:13:05 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 15:13:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 15:13:09 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 15:13:09 GMT
WORKDIR /data
# Wed, 23 Jan 2019 15:13:10 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 15:13:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 15:13:11 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 15:13:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfe83343c5e1e5b661ae0cf82627f2a90cbd7cb08c800b7337e9d714156e0f0`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e17ba9c527459ecfa72e59cc8e381c3a9667c200af0dd579ee109c19d055a1`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 915.8 KB (915843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:456975d3b7e848739e0b596ce09518cb429fcc22f5da5d27b60623af9b6cd6f4`  
		Last Modified: Wed, 23 Jan 2019 15:14:04 GMT  
		Size: 8.2 MB (8195278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102a125b2e57af83d02d7ab68e564aaa46018af025b531f03f4f508b2a911bba`  
		Last Modified: Wed, 23 Jan 2019 15:14:01 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367d309bb1cbcc883a34754ddef2d16f4e3da3490f7ce92a0ded4ac3a60e6634`  
		Last Modified: Wed, 23 Jan 2019 15:14:00 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:029b83ab63e8a9c186b0eb7264856d37493116049fe50c26189da53377f7d561
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.8 MB (29757620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90b650a82f3070b6e3f79a7957bc1b0cc556636f3aa07313ddd84e1a9ba71492`
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
# Wed, 06 Feb 2019 18:19:53 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 18:19:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 18:19:56 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 18:21:45 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 18:21:49 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:21:50 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:21:51 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:21:53 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:21:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:21:55 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:21:58 GMT
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
	-	`sha256:236b2053354615506e3cccbbd2aa63b9231696d3e64d8a424be78f9b21cf7c1a`  
		Last Modified: Wed, 06 Feb 2019 18:24:46 GMT  
		Size: 8.5 MB (8496889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d447649960a10acf8e47a4bd34ecf1af3df3664ee383f7dcfbd9fd81171a57`  
		Last Modified: Wed, 06 Feb 2019 18:24:43 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f6852cfb287298c6058c67614f7ec8c0f04f040c742e33fda74658dda8135c`  
		Last Modified: Wed, 06 Feb 2019 18:24:43 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12` - linux; 386

```console
$ docker pull redis@sha256:7816d5aa7140869c9f1a3307953e7d72c1eb6f2b7082429b659a5463fb499b34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32327193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e927c4d0467a8b549b53e02600670687f544b3a0cdfba1acb09a324c11487cab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:58:14 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:58:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:58:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:00:14 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 14:00:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 14:00:15 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 14:00:57 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:00:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:00:58 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:00:58 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:00:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:00:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:00:59 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:00:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f073067f1925015bef7333d173b916e2e36e6b2a9be0e8e409c92a914a459c23`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231e88ea2e22d423059304481650a1a646cd344ff23c70d5b364c31ddaf073eb`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 920.1 KB (920102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cf690cf21a137c60da9b9ef8f5707355c2ff88318b9f70eac21c18bc579186`  
		Last Modified: Wed, 23 Jan 2019 14:01:35 GMT  
		Size: 8.3 MB (8257724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a39b2ce2d5bae85e9e98212ead5e63fac8a1f9803038bb95ba6d80a726e520b`  
		Last Modified: Wed, 23 Jan 2019 14:01:33 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:658d581ba48a03e76b6e4e6f1d853bbdd97ff23ceac0c414a7de4718098397ca`  
		Last Modified: Wed, 23 Jan 2019 14:01:33 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12` - linux; ppc64le

```console
$ docker pull redis@sha256:8254eee3b7ac2dfc42740b3cc1f8546770f961c605539ed60ac46288574ea4c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32539684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83b0b317e1881d078d8e3c04ae3111cac8bd3a33400dcecf67f22d358c91c607`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:22:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:22:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:23:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:27:32 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:27:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:27:36 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:28:54 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:28:59 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:29:01 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:29:02 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:29:03 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:29:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:29:09 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:29:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20321bec709a1fb1b4332af6e7af0c9c1629fb86adfeb8c4ec41f6486d22a55`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474693152966afd031e558316092ddbd7b3b7a97df46e5b1234a8c832a559522`  
		Last Modified: Wed, 06 Feb 2019 14:30:36 GMT  
		Size: 909.7 KB (909710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cfca3f0f7573a265853e3b5b380e32a324415726d23665324d2bdb4e2d469d4`  
		Last Modified: Wed, 06 Feb 2019 14:32:01 GMT  
		Size: 8.9 MB (8872287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e847e93156986e86c4d3d70cc53660e16680ffff27533d978e22fb3c0da320`  
		Last Modified: Wed, 06 Feb 2019 14:31:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902e9521e6edd482141d0c1d24a7bd64d6e6f28c124fda66a41081b5392e3f07`  
		Last Modified: Wed, 06 Feb 2019 14:31:35 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12` - linux; s390x

```console
$ docker pull redis@sha256:41a8e4ec1efff212df17fa758a5b4a72ba5e3dc6ef9ee9f66cbc6186b74d4045
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32372697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e14b7a48fb04acadd8deabac97fd749b5643fa42f51a8cd741694d3f8e20d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:46:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:46:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:46:45 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:48:16 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:48:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:48:16 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:48:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:48:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:48:39 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:48:40 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:48:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:48:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:48:40 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:48:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7372cde11bc20743e4b18508d5a43d0c4b135c13aaf2bdd4201e590f18c4ae`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce30edbe6a65e2dd54fa17ab9d73575aa91e5354fe7f650dca6fc639164c8e69`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 926.8 KB (926789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92f8d10d674105c3b645675060fe0b126f202bde10d69456b9bdbdbd3ebc459`  
		Last Modified: Wed, 06 Feb 2019 14:49:50 GMT  
		Size: 9.1 MB (9090316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5477b344ec9dd59a6dd2a7fddd9b885f309d39e9008ea1a94eae211ec75266df`  
		Last Modified: Wed, 06 Feb 2019 14:49:47 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e624ef28c1fb6dee03a6f327c3bfec332d922e663591712c589850022ec882d8`  
		Last Modified: Wed, 06 Feb 2019 14:49:47 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.12-32bit`

```console
$ docker pull redis@sha256:ec685b9818c0d7b05b2f4a03289200e9ee28f033e177ff2b711f633e21639f92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.12-32bit` - linux; amd64

```console
$ docker pull redis@sha256:e8d853bf49a091af3c261555f2e9783d286dbda6fd40d0b0c46f4eee82f22b90
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36554311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:335c59560281e4f9e0c70beabe7bcb23dd66198175895948192b625693253c21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 09:06:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:07:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:07:38 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:07:39 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:07:39 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:07:39 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:07:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:07:40 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:07:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c8c6eeace38932a270c55cd7148f3c0e7fb60be937cfa977d7f21972f4a903`  
		Last Modified: Wed, 06 Feb 2019 09:09:09 GMT  
		Size: 4.8 MB (4848338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6c7632b1ac850fbf38aae6b52775fdef94d545dfcf7d47eebd7321729964f2`  
		Last Modified: Wed, 06 Feb 2019 09:09:09 GMT  
		Size: 8.3 MB (8262055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9a30bced3c76f612ae1db0d4d4c4a2836ca9a723c25c8c3d7c43b90b4b3750`  
		Last Modified: Wed, 06 Feb 2019 09:09:07 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012d1c5eacecbca147d7dcd6deed033fa222c6fcbd7ee3e2e27a3f71ceb3049`  
		Last Modified: Wed, 06 Feb 2019 09:09:08 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.12-32bit-stretch`

```console
$ docker pull redis@sha256:ec685b9818c0d7b05b2f4a03289200e9ee28f033e177ff2b711f633e21639f92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.12-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:e8d853bf49a091af3c261555f2e9783d286dbda6fd40d0b0c46f4eee82f22b90
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36554311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:335c59560281e4f9e0c70beabe7bcb23dd66198175895948192b625693253c21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 09:06:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:07:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:07:38 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:07:39 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:07:39 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:07:39 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:07:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:07:40 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:07:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c8c6eeace38932a270c55cd7148f3c0e7fb60be937cfa977d7f21972f4a903`  
		Last Modified: Wed, 06 Feb 2019 09:09:09 GMT  
		Size: 4.8 MB (4848338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6c7632b1ac850fbf38aae6b52775fdef94d545dfcf7d47eebd7321729964f2`  
		Last Modified: Wed, 06 Feb 2019 09:09:09 GMT  
		Size: 8.3 MB (8262055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9a30bced3c76f612ae1db0d4d4c4a2836ca9a723c25c8c3d7c43b90b4b3750`  
		Last Modified: Wed, 06 Feb 2019 09:09:07 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012d1c5eacecbca147d7dcd6deed033fa222c6fcbd7ee3e2e27a3f71ceb3049`  
		Last Modified: Wed, 06 Feb 2019 09:09:08 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.12-alpine`

```console
$ docker pull redis@sha256:0752fe746447ac45dbcf572840f30220ebdcfe75dda5b1576d2d493606a5d5bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4.0.12-alpine` - linux; amd64

```console
$ docker pull redis@sha256:ae017f8d136099e528be49e05f9a55d69cac8c00c5a740c15b53c1cfbf11200f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13917355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d561d12e920d0ce347df8d75476b7a8aebad14150e18daf8940bde5856ca4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 21:24:04 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 05 Feb 2019 21:24:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 05 Feb 2019 21:26:07 GMT
ENV REDIS_VERSION=4.0.12
# Tue, 05 Feb 2019 21:26:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Tue, 05 Feb 2019 21:26:07 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Tue, 05 Feb 2019 21:26:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 05 Feb 2019 21:26:43 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Feb 2019 21:26:43 GMT
VOLUME [/data]
# Tue, 05 Feb 2019 21:26:44 GMT
WORKDIR /data
# Tue, 05 Feb 2019 21:26:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 05 Feb 2019 21:26:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Feb 2019 21:26:44 GMT
EXPOSE 6379
# Tue, 05 Feb 2019 21:26:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42672a2ca6a1cc999c70a5b2db9eb57ba0345688799ad310cac5d9b77a5c236`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823e4275fef65b480f1c028b2623db710d7e826ef20de02e98c593c5bf5262cb`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 403.0 KB (402995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c49a8a142d313433f3004838847ed161fa8cac7ca238afae5cd918dab15e319`  
		Last Modified: Tue, 05 Feb 2019 21:27:22 GMT  
		Size: 10.8 MB (10757869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c3ab7a67afe62c3e1774d5609d679949ef949210454284fc79cc7f100e7c07`  
		Last Modified: Tue, 05 Feb 2019 21:27:20 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e4fee2dbc26384fa3929eb8fc8e058a82f0db19e53249a8cb2c164b5d3c02d`  
		Last Modified: Tue, 05 Feb 2019 21:27:20 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:6a68026c150bc68303199464ed2cc377e7c2753dba723402b90ffcceec15abc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13295722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:513f79abb1fe737af001ddbd46b166af02fbe33a2bb947d5dd61a9c0100d03ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:16:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 10:16:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 10:32:15 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 10:32:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 10:32:16 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 10:32:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 10:32:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 10:32:41 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 10:32:41 GMT
WORKDIR /data
# Wed, 06 Feb 2019 10:32:42 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 10:32:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:32:42 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 10:32:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db155d5bc367ae1ada685256caf7955a00a1b440daa6baea21a7df52af6d54d`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39dea0a54c6fc7c6603864723aa6c41c9d1ce32365bee967fc3f75fdeef4121`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 405.2 KB (405250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1d0c8d2b0065c76d2906973ea2f384cda5aa3088630483fa97fb8ee4bfe8d4`  
		Last Modified: Wed, 06 Feb 2019 10:32:55 GMT  
		Size: 10.3 MB (10347731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51fe4add8863d9590d3959e2ff70c25627f4a47cc3f86550554845139cf56d04`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b91690038e88eb8197909cd472265ecf0634de75675aa80ce75163d5f95599`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:e44b364d10d7690e05b06aceeacea839b2ac800128bd5871dfb8327ad8e06288
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13717996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3910640bb778a33fe40fd73222efc258bceace69e6cd2c13f137a895019b06f1`
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
# Wed, 06 Feb 2019 18:22:07 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 18:22:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 18:22:10 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 18:23:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 18:23:04 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:23:05 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:23:06 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:23:07 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:23:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:23:08 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:23:09 GMT
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
	-	`sha256:4f5949d2a7a5d4de0a3ddd939cef011daff0f1a51da3acff6000305e41fcc80d`  
		Last Modified: Wed, 06 Feb 2019 18:25:10 GMT  
		Size: 10.6 MB (10622961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d043b31319e8dfefd66de4443713a704306631ed5e0f90c7dd931219feea944`  
		Last Modified: Wed, 06 Feb 2019 18:25:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c442d71d459c33a74eb13d272fbee152f6e72c3f540537d761bcaf976b9a1a`  
		Last Modified: Wed, 06 Feb 2019 18:25:06 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-alpine` - linux; 386

```console
$ docker pull redis@sha256:29f97fd9f2f44e90f8d0cfa9c3260dbbc4ca3b91c23235cf13a2de1203149ebf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11661692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee41d31c27c245ef286a542e33ea083d1d7d661dfd695dc27ffe3348d9f0c8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:23:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 12:23:13 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 12:24:28 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 12:24:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 12:24:28 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 12:24:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 12:25:00 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 12:25:00 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:25:00 GMT
WORKDIR /data
# Fri, 21 Dec 2018 12:25:01 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:25:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:25:01 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 12:25:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05dcaf7e3a5f71f671a74e623bb9abe78af5ef495965ba44fa2467cb6428516`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9314a25830c13371be7bb35c347e70d7a8b44c928b5d2fc0e1712c30f80da31`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 407.1 KB (407101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a386fc03bcfacef0df01928e437a193a603fd79989f5c460eba602fa84c668f8`  
		Last Modified: Fri, 21 Dec 2018 12:25:33 GMT  
		Size: 9.0 MB (8981088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae382ba88f31a1396c9f7ee7a4e6277aa694eb5ca8f269f58df75e1a3465642a`  
		Last Modified: Fri, 21 Dec 2018 12:25:28 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d391f6605612f0ba0b50ffc9fca6d12806681b2bec9050f7a611861e66984e`  
		Last Modified: Fri, 21 Dec 2018 12:25:28 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:fdae0fe82fc9d0e048a250aec41c453a62750499e3d3d9b13e0839762d5a3cb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14379726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccaaf9fbdf9b1e7a8499d309eea37e658093b2d74aadb2d85da9e60b8c049941`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:26:00 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:26:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:29:27 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:29:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:29:30 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:29:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:30:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:30:02 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:30:04 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:30:04 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:30:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:30:07 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:30:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38611b6a52af54e6a88187c1f138f076668eafe25d524d4c76b6670716073e7f`  
		Last Modified: Wed, 06 Feb 2019 14:31:07 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a40fe5968cb8f23b3ca4cef68f3083205d535be4fa7925583252b92e164774`  
		Last Modified: Wed, 06 Feb 2019 14:31:05 GMT  
		Size: 410.3 KB (410323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a50c840c991ac74e227b9019caf165f8d6af7b1123523cacd6877bf7c088c02`  
		Last Modified: Wed, 06 Feb 2019 14:32:25 GMT  
		Size: 11.2 MB (11188738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e80e6e7159a6561ad87babc6bd177df5bf3b591352d0b66c14e291f6d969ee8`  
		Last Modified: Wed, 06 Feb 2019 14:32:22 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b42d8ef1f8c5d2dfbdfd26982f0d89a472101d598db79f569ea05179d8f55f0`  
		Last Modified: Wed, 06 Feb 2019 14:32:22 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-alpine` - linux; s390x

```console
$ docker pull redis@sha256:d7336be95e91c5109d4efa4febaad39bf639d920c122f20e8001a9c9a46358cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13784067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f89fd6b48e988edaae9c88e837cb1af4f4dfd3236de8c7f6b6cad590a003b39a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:47:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:47:32 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:48:46 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:48:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:48:47 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:49:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:49:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:49:05 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:49:05 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:49:06 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:49:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:49:06 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:49:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c035dc3a25ffacd002e6a9e9f5599a475e589432aa2380567d2fc6d0a8eb7be5`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432cab9de09143d51b3e4494c80bc9d4f25df2a6cac8bdd71f821ba40630dedf`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 407.8 KB (407822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09393f2c43024a6fdc3e8ee936307ef79afa3b2b3560418c8b714cc3ef1fac55`  
		Last Modified: Wed, 06 Feb 2019 14:50:01 GMT  
		Size: 10.8 MB (10832962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee4c43c672fa9343f8a97254adc76d9afd519d02b78882db1cbd8baf5e0f3e6`  
		Last Modified: Wed, 06 Feb 2019 14:49:58 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72892d01f4cca69932a6b7156534bd4929ed284dfb6a120755d47ba6ed4af890`  
		Last Modified: Wed, 06 Feb 2019 14:49:58 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.12-alpine3.9`

```console
$ docker pull redis@sha256:0752fe746447ac45dbcf572840f30220ebdcfe75dda5b1576d2d493606a5d5bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4.0.12-alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:ae017f8d136099e528be49e05f9a55d69cac8c00c5a740c15b53c1cfbf11200f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13917355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d561d12e920d0ce347df8d75476b7a8aebad14150e18daf8940bde5856ca4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 21:24:04 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 05 Feb 2019 21:24:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 05 Feb 2019 21:26:07 GMT
ENV REDIS_VERSION=4.0.12
# Tue, 05 Feb 2019 21:26:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Tue, 05 Feb 2019 21:26:07 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Tue, 05 Feb 2019 21:26:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 05 Feb 2019 21:26:43 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Feb 2019 21:26:43 GMT
VOLUME [/data]
# Tue, 05 Feb 2019 21:26:44 GMT
WORKDIR /data
# Tue, 05 Feb 2019 21:26:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 05 Feb 2019 21:26:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Feb 2019 21:26:44 GMT
EXPOSE 6379
# Tue, 05 Feb 2019 21:26:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42672a2ca6a1cc999c70a5b2db9eb57ba0345688799ad310cac5d9b77a5c236`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823e4275fef65b480f1c028b2623db710d7e826ef20de02e98c593c5bf5262cb`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 403.0 KB (402995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c49a8a142d313433f3004838847ed161fa8cac7ca238afae5cd918dab15e319`  
		Last Modified: Tue, 05 Feb 2019 21:27:22 GMT  
		Size: 10.8 MB (10757869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c3ab7a67afe62c3e1774d5609d679949ef949210454284fc79cc7f100e7c07`  
		Last Modified: Tue, 05 Feb 2019 21:27:20 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e4fee2dbc26384fa3929eb8fc8e058a82f0db19e53249a8cb2c164b5d3c02d`  
		Last Modified: Tue, 05 Feb 2019 21:27:20 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:6a68026c150bc68303199464ed2cc377e7c2753dba723402b90ffcceec15abc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13295722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:513f79abb1fe737af001ddbd46b166af02fbe33a2bb947d5dd61a9c0100d03ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:16:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 10:16:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 10:32:15 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 10:32:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 10:32:16 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 10:32:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 10:32:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 10:32:41 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 10:32:41 GMT
WORKDIR /data
# Wed, 06 Feb 2019 10:32:42 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 10:32:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:32:42 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 10:32:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db155d5bc367ae1ada685256caf7955a00a1b440daa6baea21a7df52af6d54d`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39dea0a54c6fc7c6603864723aa6c41c9d1ce32365bee967fc3f75fdeef4121`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 405.2 KB (405250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1d0c8d2b0065c76d2906973ea2f384cda5aa3088630483fa97fb8ee4bfe8d4`  
		Last Modified: Wed, 06 Feb 2019 10:32:55 GMT  
		Size: 10.3 MB (10347731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51fe4add8863d9590d3959e2ff70c25627f4a47cc3f86550554845139cf56d04`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b91690038e88eb8197909cd472265ecf0634de75675aa80ce75163d5f95599`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:e44b364d10d7690e05b06aceeacea839b2ac800128bd5871dfb8327ad8e06288
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13717996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3910640bb778a33fe40fd73222efc258bceace69e6cd2c13f137a895019b06f1`
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
# Wed, 06 Feb 2019 18:22:07 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 18:22:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 18:22:10 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 18:23:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 18:23:04 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:23:05 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:23:06 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:23:07 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:23:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:23:08 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:23:09 GMT
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
	-	`sha256:4f5949d2a7a5d4de0a3ddd939cef011daff0f1a51da3acff6000305e41fcc80d`  
		Last Modified: Wed, 06 Feb 2019 18:25:10 GMT  
		Size: 10.6 MB (10622961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d043b31319e8dfefd66de4443713a704306631ed5e0f90c7dd931219feea944`  
		Last Modified: Wed, 06 Feb 2019 18:25:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c442d71d459c33a74eb13d272fbee152f6e72c3f540537d761bcaf976b9a1a`  
		Last Modified: Wed, 06 Feb 2019 18:25:06 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:29f97fd9f2f44e90f8d0cfa9c3260dbbc4ca3b91c23235cf13a2de1203149ebf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11661692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee41d31c27c245ef286a542e33ea083d1d7d661dfd695dc27ffe3348d9f0c8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:23:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 12:23:13 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 12:24:28 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 12:24:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 12:24:28 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 12:24:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 12:25:00 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 12:25:00 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:25:00 GMT
WORKDIR /data
# Fri, 21 Dec 2018 12:25:01 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:25:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:25:01 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 12:25:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05dcaf7e3a5f71f671a74e623bb9abe78af5ef495965ba44fa2467cb6428516`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9314a25830c13371be7bb35c347e70d7a8b44c928b5d2fc0e1712c30f80da31`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 407.1 KB (407101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a386fc03bcfacef0df01928e437a193a603fd79989f5c460eba602fa84c668f8`  
		Last Modified: Fri, 21 Dec 2018 12:25:33 GMT  
		Size: 9.0 MB (8981088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae382ba88f31a1396c9f7ee7a4e6277aa694eb5ca8f269f58df75e1a3465642a`  
		Last Modified: Fri, 21 Dec 2018 12:25:28 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d391f6605612f0ba0b50ffc9fca6d12806681b2bec9050f7a611861e66984e`  
		Last Modified: Fri, 21 Dec 2018 12:25:28 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:fdae0fe82fc9d0e048a250aec41c453a62750499e3d3d9b13e0839762d5a3cb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14379726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccaaf9fbdf9b1e7a8499d309eea37e658093b2d74aadb2d85da9e60b8c049941`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:26:00 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:26:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:29:27 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:29:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:29:30 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:29:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:30:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:30:02 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:30:04 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:30:04 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:30:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:30:07 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:30:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38611b6a52af54e6a88187c1f138f076668eafe25d524d4c76b6670716073e7f`  
		Last Modified: Wed, 06 Feb 2019 14:31:07 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a40fe5968cb8f23b3ca4cef68f3083205d535be4fa7925583252b92e164774`  
		Last Modified: Wed, 06 Feb 2019 14:31:05 GMT  
		Size: 410.3 KB (410323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a50c840c991ac74e227b9019caf165f8d6af7b1123523cacd6877bf7c088c02`  
		Last Modified: Wed, 06 Feb 2019 14:32:25 GMT  
		Size: 11.2 MB (11188738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e80e6e7159a6561ad87babc6bd177df5bf3b591352d0b66c14e291f6d969ee8`  
		Last Modified: Wed, 06 Feb 2019 14:32:22 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b42d8ef1f8c5d2dfbdfd26982f0d89a472101d598db79f569ea05179d8f55f0`  
		Last Modified: Wed, 06 Feb 2019 14:32:22 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:d7336be95e91c5109d4efa4febaad39bf639d920c122f20e8001a9c9a46358cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13784067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f89fd6b48e988edaae9c88e837cb1af4f4dfd3236de8c7f6b6cad590a003b39a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:47:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:47:32 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:48:46 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:48:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:48:47 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:49:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:49:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:49:05 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:49:05 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:49:06 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:49:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:49:06 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:49:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c035dc3a25ffacd002e6a9e9f5599a475e589432aa2380567d2fc6d0a8eb7be5`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432cab9de09143d51b3e4494c80bc9d4f25df2a6cac8bdd71f821ba40630dedf`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 407.8 KB (407822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09393f2c43024a6fdc3e8ee936307ef79afa3b2b3560418c8b714cc3ef1fac55`  
		Last Modified: Wed, 06 Feb 2019 14:50:01 GMT  
		Size: 10.8 MB (10832962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee4c43c672fa9343f8a97254adc76d9afd519d02b78882db1cbd8baf5e0f3e6`  
		Last Modified: Wed, 06 Feb 2019 14:49:58 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72892d01f4cca69932a6b7156534bd4929ed284dfb6a120755d47ba6ed4af890`  
		Last Modified: Wed, 06 Feb 2019 14:49:58 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.12-stretch`

```console
$ docker pull redis@sha256:b01bfb4a86f85b66473cdcc46da90b2c35e8f39993448f321b858f6fb3683af2
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

### `redis:4.0.12-stretch` - linux; amd64

```console
$ docker pull redis@sha256:a79165a289dd044bb2ea88e20c04a78064849e84832f7d5e8f04ad471d79c10f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32140189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddb7885a5e075ba8ed414d0706059999aa73fceb4249bef7cb293c1ec559dfc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 09:06:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:06:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:06:10 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:06:11 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:06:11 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:06:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:06:12 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:06:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7546c1dafc0a5fb808bdb61836e32ddfffe01c0cf2b852244af11a7d3b32850e`  
		Last Modified: Wed, 06 Feb 2019 09:09:00 GMT  
		Size: 8.7 MB (8696275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6db952ef962c76ba0cab1ecb72183bd6bab29ba8faad21ff4dcc739f9949a6`  
		Last Modified: Wed, 06 Feb 2019 09:08:58 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee23a34df7b0beb70e14e2c7bfa87ac29b4d87903745277343f4130c9f3b5e0a`  
		Last Modified: Wed, 06 Feb 2019 09:08:58 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:cbedb310d5ad050c9c6abf7c52658de90c276af0a2ae37cfd2fc0556f25d405c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30537675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec8623c4bd344354301ed32ef6c4e10667bf14e79c6afc77803ff237e0d5bec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:03:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 11:03:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:04:20 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 11:05:35 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 11:05:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 11:05:35 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 11:06:19 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 11:06:20 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 11:06:20 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 11:06:21 GMT
WORKDIR /data
# Wed, 23 Jan 2019 11:06:21 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:06:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:06:22 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 11:06:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95036a3e89326a8f4c92d7b003ade74e1dc6119c716d3eba91525208decab719`  
		Last Modified: Wed, 23 Jan 2019 11:06:37 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baca5a0010d5b56e9a8882d2a03e7773ff400841a6c447b4607d09d73e4fa68`  
		Last Modified: Wed, 23 Jan 2019 11:06:38 GMT  
		Size: 931.2 KB (931174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0ff28875dac0086a733aabc024cf50565065ae95b38e160996e8e2ed44b8af`  
		Last Modified: Wed, 23 Jan 2019 11:06:58 GMT  
		Size: 8.4 MB (8422386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d15bf43aaaf5bc06047e9ccd5634a6a1708963480040296423fdcb390dc04f`  
		Last Modified: Wed, 23 Jan 2019 11:06:55 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31573456d9ee4b3e17cc5585ab9b10efe1605e80f5bfc7f92c24bae52c8a641d`  
		Last Modified: Wed, 23 Jan 2019 11:06:55 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:4312d1a169f9cf4e73736f97fb362fb94b5517c7103981add9f63d47d364aaf5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28403690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7c0d43b8abd59ba46fe27c32aed91cf9b928f0df22a3278b7c06a0430dc197`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:10:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 15:10:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 15:10:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 15:12:22 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 15:12:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 15:12:24 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 15:13:05 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 15:13:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 15:13:09 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 15:13:09 GMT
WORKDIR /data
# Wed, 23 Jan 2019 15:13:10 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 15:13:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 15:13:11 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 15:13:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfe83343c5e1e5b661ae0cf82627f2a90cbd7cb08c800b7337e9d714156e0f0`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e17ba9c527459ecfa72e59cc8e381c3a9667c200af0dd579ee109c19d055a1`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 915.8 KB (915843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:456975d3b7e848739e0b596ce09518cb429fcc22f5da5d27b60623af9b6cd6f4`  
		Last Modified: Wed, 23 Jan 2019 15:14:04 GMT  
		Size: 8.2 MB (8195278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102a125b2e57af83d02d7ab68e564aaa46018af025b531f03f4f508b2a911bba`  
		Last Modified: Wed, 23 Jan 2019 15:14:01 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367d309bb1cbcc883a34754ddef2d16f4e3da3490f7ce92a0ded4ac3a60e6634`  
		Last Modified: Wed, 23 Jan 2019 15:14:00 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:029b83ab63e8a9c186b0eb7264856d37493116049fe50c26189da53377f7d561
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.8 MB (29757620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90b650a82f3070b6e3f79a7957bc1b0cc556636f3aa07313ddd84e1a9ba71492`
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
# Wed, 06 Feb 2019 18:19:53 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 18:19:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 18:19:56 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 18:21:45 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 18:21:49 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:21:50 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:21:51 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:21:53 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:21:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:21:55 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:21:58 GMT
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
	-	`sha256:236b2053354615506e3cccbbd2aa63b9231696d3e64d8a424be78f9b21cf7c1a`  
		Last Modified: Wed, 06 Feb 2019 18:24:46 GMT  
		Size: 8.5 MB (8496889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d447649960a10acf8e47a4bd34ecf1af3df3664ee383f7dcfbd9fd81171a57`  
		Last Modified: Wed, 06 Feb 2019 18:24:43 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f6852cfb287298c6058c67614f7ec8c0f04f040c742e33fda74658dda8135c`  
		Last Modified: Wed, 06 Feb 2019 18:24:43 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-stretch` - linux; 386

```console
$ docker pull redis@sha256:7816d5aa7140869c9f1a3307953e7d72c1eb6f2b7082429b659a5463fb499b34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32327193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e927c4d0467a8b549b53e02600670687f544b3a0cdfba1acb09a324c11487cab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:58:14 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:58:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:58:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:00:14 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 14:00:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 14:00:15 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 14:00:57 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:00:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:00:58 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:00:58 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:00:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:00:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:00:59 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:00:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f073067f1925015bef7333d173b916e2e36e6b2a9be0e8e409c92a914a459c23`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231e88ea2e22d423059304481650a1a646cd344ff23c70d5b364c31ddaf073eb`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 920.1 KB (920102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cf690cf21a137c60da9b9ef8f5707355c2ff88318b9f70eac21c18bc579186`  
		Last Modified: Wed, 23 Jan 2019 14:01:35 GMT  
		Size: 8.3 MB (8257724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a39b2ce2d5bae85e9e98212ead5e63fac8a1f9803038bb95ba6d80a726e520b`  
		Last Modified: Wed, 23 Jan 2019 14:01:33 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:658d581ba48a03e76b6e4e6f1d853bbdd97ff23ceac0c414a7de4718098397ca`  
		Last Modified: Wed, 23 Jan 2019 14:01:33 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:8254eee3b7ac2dfc42740b3cc1f8546770f961c605539ed60ac46288574ea4c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32539684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83b0b317e1881d078d8e3c04ae3111cac8bd3a33400dcecf67f22d358c91c607`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:22:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:22:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:23:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:27:32 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:27:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:27:36 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:28:54 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:28:59 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:29:01 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:29:02 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:29:03 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:29:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:29:09 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:29:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20321bec709a1fb1b4332af6e7af0c9c1629fb86adfeb8c4ec41f6486d22a55`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474693152966afd031e558316092ddbd7b3b7a97df46e5b1234a8c832a559522`  
		Last Modified: Wed, 06 Feb 2019 14:30:36 GMT  
		Size: 909.7 KB (909710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cfca3f0f7573a265853e3b5b380e32a324415726d23665324d2bdb4e2d469d4`  
		Last Modified: Wed, 06 Feb 2019 14:32:01 GMT  
		Size: 8.9 MB (8872287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e847e93156986e86c4d3d70cc53660e16680ffff27533d978e22fb3c0da320`  
		Last Modified: Wed, 06 Feb 2019 14:31:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902e9521e6edd482141d0c1d24a7bd64d6e6f28c124fda66a41081b5392e3f07`  
		Last Modified: Wed, 06 Feb 2019 14:31:35 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-stretch` - linux; s390x

```console
$ docker pull redis@sha256:41a8e4ec1efff212df17fa758a5b4a72ba5e3dc6ef9ee9f66cbc6186b74d4045
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32372697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e14b7a48fb04acadd8deabac97fd749b5643fa42f51a8cd741694d3f8e20d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:46:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:46:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:46:45 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:48:16 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:48:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:48:16 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:48:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:48:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:48:39 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:48:40 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:48:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:48:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:48:40 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:48:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7372cde11bc20743e4b18508d5a43d0c4b135c13aaf2bdd4201e590f18c4ae`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce30edbe6a65e2dd54fa17ab9d73575aa91e5354fe7f650dca6fc639164c8e69`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 926.8 KB (926789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92f8d10d674105c3b645675060fe0b126f202bde10d69456b9bdbdbd3ebc459`  
		Last Modified: Wed, 06 Feb 2019 14:49:50 GMT  
		Size: 9.1 MB (9090316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5477b344ec9dd59a6dd2a7fddd9b885f309d39e9008ea1a94eae211ec75266df`  
		Last Modified: Wed, 06 Feb 2019 14:49:47 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e624ef28c1fb6dee03a6f327c3bfec332d922e663591712c589850022ec882d8`  
		Last Modified: Wed, 06 Feb 2019 14:49:47 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit`

```console
$ docker pull redis@sha256:ec685b9818c0d7b05b2f4a03289200e9ee28f033e177ff2b711f633e21639f92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:e8d853bf49a091af3c261555f2e9783d286dbda6fd40d0b0c46f4eee82f22b90
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36554311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:335c59560281e4f9e0c70beabe7bcb23dd66198175895948192b625693253c21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 09:06:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:07:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:07:38 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:07:39 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:07:39 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:07:39 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:07:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:07:40 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:07:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c8c6eeace38932a270c55cd7148f3c0e7fb60be937cfa977d7f21972f4a903`  
		Last Modified: Wed, 06 Feb 2019 09:09:09 GMT  
		Size: 4.8 MB (4848338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6c7632b1ac850fbf38aae6b52775fdef94d545dfcf7d47eebd7321729964f2`  
		Last Modified: Wed, 06 Feb 2019 09:09:09 GMT  
		Size: 8.3 MB (8262055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9a30bced3c76f612ae1db0d4d4c4a2836ca9a723c25c8c3d7c43b90b4b3750`  
		Last Modified: Wed, 06 Feb 2019 09:09:07 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012d1c5eacecbca147d7dcd6deed033fa222c6fcbd7ee3e2e27a3f71ceb3049`  
		Last Modified: Wed, 06 Feb 2019 09:09:08 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit-stretch`

```console
$ docker pull redis@sha256:ec685b9818c0d7b05b2f4a03289200e9ee28f033e177ff2b711f633e21639f92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:e8d853bf49a091af3c261555f2e9783d286dbda6fd40d0b0c46f4eee82f22b90
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36554311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:335c59560281e4f9e0c70beabe7bcb23dd66198175895948192b625693253c21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 09:06:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:07:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:07:38 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:07:39 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:07:39 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:07:39 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:07:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:07:40 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:07:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c8c6eeace38932a270c55cd7148f3c0e7fb60be937cfa977d7f21972f4a903`  
		Last Modified: Wed, 06 Feb 2019 09:09:09 GMT  
		Size: 4.8 MB (4848338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6c7632b1ac850fbf38aae6b52775fdef94d545dfcf7d47eebd7321729964f2`  
		Last Modified: Wed, 06 Feb 2019 09:09:09 GMT  
		Size: 8.3 MB (8262055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9a30bced3c76f612ae1db0d4d4c4a2836ca9a723c25c8c3d7c43b90b4b3750`  
		Last Modified: Wed, 06 Feb 2019 09:09:07 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012d1c5eacecbca147d7dcd6deed033fa222c6fcbd7ee3e2e27a3f71ceb3049`  
		Last Modified: Wed, 06 Feb 2019 09:09:08 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine`

```console
$ docker pull redis@sha256:0752fe746447ac45dbcf572840f30220ebdcfe75dda5b1576d2d493606a5d5bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4.0-alpine` - linux; amd64

```console
$ docker pull redis@sha256:ae017f8d136099e528be49e05f9a55d69cac8c00c5a740c15b53c1cfbf11200f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13917355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d561d12e920d0ce347df8d75476b7a8aebad14150e18daf8940bde5856ca4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 21:24:04 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 05 Feb 2019 21:24:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 05 Feb 2019 21:26:07 GMT
ENV REDIS_VERSION=4.0.12
# Tue, 05 Feb 2019 21:26:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Tue, 05 Feb 2019 21:26:07 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Tue, 05 Feb 2019 21:26:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 05 Feb 2019 21:26:43 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Feb 2019 21:26:43 GMT
VOLUME [/data]
# Tue, 05 Feb 2019 21:26:44 GMT
WORKDIR /data
# Tue, 05 Feb 2019 21:26:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 05 Feb 2019 21:26:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Feb 2019 21:26:44 GMT
EXPOSE 6379
# Tue, 05 Feb 2019 21:26:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42672a2ca6a1cc999c70a5b2db9eb57ba0345688799ad310cac5d9b77a5c236`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823e4275fef65b480f1c028b2623db710d7e826ef20de02e98c593c5bf5262cb`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 403.0 KB (402995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c49a8a142d313433f3004838847ed161fa8cac7ca238afae5cd918dab15e319`  
		Last Modified: Tue, 05 Feb 2019 21:27:22 GMT  
		Size: 10.8 MB (10757869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c3ab7a67afe62c3e1774d5609d679949ef949210454284fc79cc7f100e7c07`  
		Last Modified: Tue, 05 Feb 2019 21:27:20 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e4fee2dbc26384fa3929eb8fc8e058a82f0db19e53249a8cb2c164b5d3c02d`  
		Last Modified: Tue, 05 Feb 2019 21:27:20 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:6a68026c150bc68303199464ed2cc377e7c2753dba723402b90ffcceec15abc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13295722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:513f79abb1fe737af001ddbd46b166af02fbe33a2bb947d5dd61a9c0100d03ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:16:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 10:16:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 10:32:15 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 10:32:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 10:32:16 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 10:32:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 10:32:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 10:32:41 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 10:32:41 GMT
WORKDIR /data
# Wed, 06 Feb 2019 10:32:42 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 10:32:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:32:42 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 10:32:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db155d5bc367ae1ada685256caf7955a00a1b440daa6baea21a7df52af6d54d`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39dea0a54c6fc7c6603864723aa6c41c9d1ce32365bee967fc3f75fdeef4121`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 405.2 KB (405250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1d0c8d2b0065c76d2906973ea2f384cda5aa3088630483fa97fb8ee4bfe8d4`  
		Last Modified: Wed, 06 Feb 2019 10:32:55 GMT  
		Size: 10.3 MB (10347731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51fe4add8863d9590d3959e2ff70c25627f4a47cc3f86550554845139cf56d04`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b91690038e88eb8197909cd472265ecf0634de75675aa80ce75163d5f95599`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:e44b364d10d7690e05b06aceeacea839b2ac800128bd5871dfb8327ad8e06288
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13717996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3910640bb778a33fe40fd73222efc258bceace69e6cd2c13f137a895019b06f1`
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
# Wed, 06 Feb 2019 18:22:07 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 18:22:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 18:22:10 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 18:23:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 18:23:04 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:23:05 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:23:06 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:23:07 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:23:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:23:08 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:23:09 GMT
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
	-	`sha256:4f5949d2a7a5d4de0a3ddd939cef011daff0f1a51da3acff6000305e41fcc80d`  
		Last Modified: Wed, 06 Feb 2019 18:25:10 GMT  
		Size: 10.6 MB (10622961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d043b31319e8dfefd66de4443713a704306631ed5e0f90c7dd931219feea944`  
		Last Modified: Wed, 06 Feb 2019 18:25:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c442d71d459c33a74eb13d272fbee152f6e72c3f540537d761bcaf976b9a1a`  
		Last Modified: Wed, 06 Feb 2019 18:25:06 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; 386

```console
$ docker pull redis@sha256:29f97fd9f2f44e90f8d0cfa9c3260dbbc4ca3b91c23235cf13a2de1203149ebf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11661692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee41d31c27c245ef286a542e33ea083d1d7d661dfd695dc27ffe3348d9f0c8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:23:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 12:23:13 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 12:24:28 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 12:24:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 12:24:28 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 12:24:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 12:25:00 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 12:25:00 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:25:00 GMT
WORKDIR /data
# Fri, 21 Dec 2018 12:25:01 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:25:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:25:01 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 12:25:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05dcaf7e3a5f71f671a74e623bb9abe78af5ef495965ba44fa2467cb6428516`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9314a25830c13371be7bb35c347e70d7a8b44c928b5d2fc0e1712c30f80da31`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 407.1 KB (407101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a386fc03bcfacef0df01928e437a193a603fd79989f5c460eba602fa84c668f8`  
		Last Modified: Fri, 21 Dec 2018 12:25:33 GMT  
		Size: 9.0 MB (8981088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae382ba88f31a1396c9f7ee7a4e6277aa694eb5ca8f269f58df75e1a3465642a`  
		Last Modified: Fri, 21 Dec 2018 12:25:28 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d391f6605612f0ba0b50ffc9fca6d12806681b2bec9050f7a611861e66984e`  
		Last Modified: Fri, 21 Dec 2018 12:25:28 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:fdae0fe82fc9d0e048a250aec41c453a62750499e3d3d9b13e0839762d5a3cb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14379726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccaaf9fbdf9b1e7a8499d309eea37e658093b2d74aadb2d85da9e60b8c049941`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:26:00 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:26:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:29:27 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:29:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:29:30 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:29:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:30:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:30:02 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:30:04 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:30:04 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:30:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:30:07 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:30:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38611b6a52af54e6a88187c1f138f076668eafe25d524d4c76b6670716073e7f`  
		Last Modified: Wed, 06 Feb 2019 14:31:07 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a40fe5968cb8f23b3ca4cef68f3083205d535be4fa7925583252b92e164774`  
		Last Modified: Wed, 06 Feb 2019 14:31:05 GMT  
		Size: 410.3 KB (410323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a50c840c991ac74e227b9019caf165f8d6af7b1123523cacd6877bf7c088c02`  
		Last Modified: Wed, 06 Feb 2019 14:32:25 GMT  
		Size: 11.2 MB (11188738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e80e6e7159a6561ad87babc6bd177df5bf3b591352d0b66c14e291f6d969ee8`  
		Last Modified: Wed, 06 Feb 2019 14:32:22 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b42d8ef1f8c5d2dfbdfd26982f0d89a472101d598db79f569ea05179d8f55f0`  
		Last Modified: Wed, 06 Feb 2019 14:32:22 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; s390x

```console
$ docker pull redis@sha256:d7336be95e91c5109d4efa4febaad39bf639d920c122f20e8001a9c9a46358cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13784067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f89fd6b48e988edaae9c88e837cb1af4f4dfd3236de8c7f6b6cad590a003b39a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:47:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:47:32 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:48:46 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:48:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:48:47 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:49:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:49:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:49:05 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:49:05 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:49:06 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:49:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:49:06 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:49:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c035dc3a25ffacd002e6a9e9f5599a475e589432aa2380567d2fc6d0a8eb7be5`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432cab9de09143d51b3e4494c80bc9d4f25df2a6cac8bdd71f821ba40630dedf`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 407.8 KB (407822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09393f2c43024a6fdc3e8ee936307ef79afa3b2b3560418c8b714cc3ef1fac55`  
		Last Modified: Wed, 06 Feb 2019 14:50:01 GMT  
		Size: 10.8 MB (10832962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee4c43c672fa9343f8a97254adc76d9afd519d02b78882db1cbd8baf5e0f3e6`  
		Last Modified: Wed, 06 Feb 2019 14:49:58 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72892d01f4cca69932a6b7156534bd4929ed284dfb6a120755d47ba6ed4af890`  
		Last Modified: Wed, 06 Feb 2019 14:49:58 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine3.9`

```console
$ docker pull redis@sha256:0752fe746447ac45dbcf572840f30220ebdcfe75dda5b1576d2d493606a5d5bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4.0-alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:ae017f8d136099e528be49e05f9a55d69cac8c00c5a740c15b53c1cfbf11200f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13917355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d561d12e920d0ce347df8d75476b7a8aebad14150e18daf8940bde5856ca4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 21:24:04 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 05 Feb 2019 21:24:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 05 Feb 2019 21:26:07 GMT
ENV REDIS_VERSION=4.0.12
# Tue, 05 Feb 2019 21:26:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Tue, 05 Feb 2019 21:26:07 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Tue, 05 Feb 2019 21:26:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 05 Feb 2019 21:26:43 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Feb 2019 21:26:43 GMT
VOLUME [/data]
# Tue, 05 Feb 2019 21:26:44 GMT
WORKDIR /data
# Tue, 05 Feb 2019 21:26:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 05 Feb 2019 21:26:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Feb 2019 21:26:44 GMT
EXPOSE 6379
# Tue, 05 Feb 2019 21:26:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42672a2ca6a1cc999c70a5b2db9eb57ba0345688799ad310cac5d9b77a5c236`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823e4275fef65b480f1c028b2623db710d7e826ef20de02e98c593c5bf5262cb`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 403.0 KB (402995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c49a8a142d313433f3004838847ed161fa8cac7ca238afae5cd918dab15e319`  
		Last Modified: Tue, 05 Feb 2019 21:27:22 GMT  
		Size: 10.8 MB (10757869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c3ab7a67afe62c3e1774d5609d679949ef949210454284fc79cc7f100e7c07`  
		Last Modified: Tue, 05 Feb 2019 21:27:20 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e4fee2dbc26384fa3929eb8fc8e058a82f0db19e53249a8cb2c164b5d3c02d`  
		Last Modified: Tue, 05 Feb 2019 21:27:20 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:6a68026c150bc68303199464ed2cc377e7c2753dba723402b90ffcceec15abc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13295722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:513f79abb1fe737af001ddbd46b166af02fbe33a2bb947d5dd61a9c0100d03ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:16:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 10:16:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 10:32:15 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 10:32:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 10:32:16 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 10:32:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 10:32:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 10:32:41 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 10:32:41 GMT
WORKDIR /data
# Wed, 06 Feb 2019 10:32:42 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 10:32:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:32:42 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 10:32:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db155d5bc367ae1ada685256caf7955a00a1b440daa6baea21a7df52af6d54d`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39dea0a54c6fc7c6603864723aa6c41c9d1ce32365bee967fc3f75fdeef4121`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 405.2 KB (405250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1d0c8d2b0065c76d2906973ea2f384cda5aa3088630483fa97fb8ee4bfe8d4`  
		Last Modified: Wed, 06 Feb 2019 10:32:55 GMT  
		Size: 10.3 MB (10347731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51fe4add8863d9590d3959e2ff70c25627f4a47cc3f86550554845139cf56d04`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b91690038e88eb8197909cd472265ecf0634de75675aa80ce75163d5f95599`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:e44b364d10d7690e05b06aceeacea839b2ac800128bd5871dfb8327ad8e06288
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13717996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3910640bb778a33fe40fd73222efc258bceace69e6cd2c13f137a895019b06f1`
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
# Wed, 06 Feb 2019 18:22:07 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 18:22:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 18:22:10 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 18:23:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 18:23:04 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:23:05 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:23:06 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:23:07 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:23:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:23:08 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:23:09 GMT
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
	-	`sha256:4f5949d2a7a5d4de0a3ddd939cef011daff0f1a51da3acff6000305e41fcc80d`  
		Last Modified: Wed, 06 Feb 2019 18:25:10 GMT  
		Size: 10.6 MB (10622961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d043b31319e8dfefd66de4443713a704306631ed5e0f90c7dd931219feea944`  
		Last Modified: Wed, 06 Feb 2019 18:25:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c442d71d459c33a74eb13d272fbee152f6e72c3f540537d761bcaf976b9a1a`  
		Last Modified: Wed, 06 Feb 2019 18:25:06 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:29f97fd9f2f44e90f8d0cfa9c3260dbbc4ca3b91c23235cf13a2de1203149ebf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11661692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee41d31c27c245ef286a542e33ea083d1d7d661dfd695dc27ffe3348d9f0c8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:23:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 12:23:13 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 12:24:28 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 12:24:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 12:24:28 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 12:24:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 12:25:00 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 12:25:00 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:25:00 GMT
WORKDIR /data
# Fri, 21 Dec 2018 12:25:01 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:25:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:25:01 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 12:25:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05dcaf7e3a5f71f671a74e623bb9abe78af5ef495965ba44fa2467cb6428516`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9314a25830c13371be7bb35c347e70d7a8b44c928b5d2fc0e1712c30f80da31`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 407.1 KB (407101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a386fc03bcfacef0df01928e437a193a603fd79989f5c460eba602fa84c668f8`  
		Last Modified: Fri, 21 Dec 2018 12:25:33 GMT  
		Size: 9.0 MB (8981088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae382ba88f31a1396c9f7ee7a4e6277aa694eb5ca8f269f58df75e1a3465642a`  
		Last Modified: Fri, 21 Dec 2018 12:25:28 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d391f6605612f0ba0b50ffc9fca6d12806681b2bec9050f7a611861e66984e`  
		Last Modified: Fri, 21 Dec 2018 12:25:28 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:fdae0fe82fc9d0e048a250aec41c453a62750499e3d3d9b13e0839762d5a3cb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14379726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccaaf9fbdf9b1e7a8499d309eea37e658093b2d74aadb2d85da9e60b8c049941`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:26:00 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:26:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:29:27 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:29:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:29:30 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:29:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:30:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:30:02 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:30:04 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:30:04 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:30:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:30:07 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:30:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38611b6a52af54e6a88187c1f138f076668eafe25d524d4c76b6670716073e7f`  
		Last Modified: Wed, 06 Feb 2019 14:31:07 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a40fe5968cb8f23b3ca4cef68f3083205d535be4fa7925583252b92e164774`  
		Last Modified: Wed, 06 Feb 2019 14:31:05 GMT  
		Size: 410.3 KB (410323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a50c840c991ac74e227b9019caf165f8d6af7b1123523cacd6877bf7c088c02`  
		Last Modified: Wed, 06 Feb 2019 14:32:25 GMT  
		Size: 11.2 MB (11188738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e80e6e7159a6561ad87babc6bd177df5bf3b591352d0b66c14e291f6d969ee8`  
		Last Modified: Wed, 06 Feb 2019 14:32:22 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b42d8ef1f8c5d2dfbdfd26982f0d89a472101d598db79f569ea05179d8f55f0`  
		Last Modified: Wed, 06 Feb 2019 14:32:22 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:d7336be95e91c5109d4efa4febaad39bf639d920c122f20e8001a9c9a46358cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13784067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f89fd6b48e988edaae9c88e837cb1af4f4dfd3236de8c7f6b6cad590a003b39a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:47:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:47:32 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:48:46 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:48:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:48:47 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:49:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:49:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:49:05 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:49:05 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:49:06 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:49:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:49:06 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:49:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c035dc3a25ffacd002e6a9e9f5599a475e589432aa2380567d2fc6d0a8eb7be5`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432cab9de09143d51b3e4494c80bc9d4f25df2a6cac8bdd71f821ba40630dedf`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 407.8 KB (407822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09393f2c43024a6fdc3e8ee936307ef79afa3b2b3560418c8b714cc3ef1fac55`  
		Last Modified: Wed, 06 Feb 2019 14:50:01 GMT  
		Size: 10.8 MB (10832962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee4c43c672fa9343f8a97254adc76d9afd519d02b78882db1cbd8baf5e0f3e6`  
		Last Modified: Wed, 06 Feb 2019 14:49:58 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72892d01f4cca69932a6b7156534bd4929ed284dfb6a120755d47ba6ed4af890`  
		Last Modified: Wed, 06 Feb 2019 14:49:58 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-stretch`

```console
$ docker pull redis@sha256:b01bfb4a86f85b66473cdcc46da90b2c35e8f39993448f321b858f6fb3683af2
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
$ docker pull redis@sha256:a79165a289dd044bb2ea88e20c04a78064849e84832f7d5e8f04ad471d79c10f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32140189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddb7885a5e075ba8ed414d0706059999aa73fceb4249bef7cb293c1ec559dfc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 09:06:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:06:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:06:10 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:06:11 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:06:11 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:06:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:06:12 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:06:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7546c1dafc0a5fb808bdb61836e32ddfffe01c0cf2b852244af11a7d3b32850e`  
		Last Modified: Wed, 06 Feb 2019 09:09:00 GMT  
		Size: 8.7 MB (8696275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6db952ef962c76ba0cab1ecb72183bd6bab29ba8faad21ff4dcc739f9949a6`  
		Last Modified: Wed, 06 Feb 2019 09:08:58 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee23a34df7b0beb70e14e2c7bfa87ac29b4d87903745277343f4130c9f3b5e0a`  
		Last Modified: Wed, 06 Feb 2019 09:08:58 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:cbedb310d5ad050c9c6abf7c52658de90c276af0a2ae37cfd2fc0556f25d405c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30537675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec8623c4bd344354301ed32ef6c4e10667bf14e79c6afc77803ff237e0d5bec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:03:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 11:03:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:04:20 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 11:05:35 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 11:05:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 11:05:35 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 11:06:19 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 11:06:20 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 11:06:20 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 11:06:21 GMT
WORKDIR /data
# Wed, 23 Jan 2019 11:06:21 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:06:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:06:22 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 11:06:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95036a3e89326a8f4c92d7b003ade74e1dc6119c716d3eba91525208decab719`  
		Last Modified: Wed, 23 Jan 2019 11:06:37 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baca5a0010d5b56e9a8882d2a03e7773ff400841a6c447b4607d09d73e4fa68`  
		Last Modified: Wed, 23 Jan 2019 11:06:38 GMT  
		Size: 931.2 KB (931174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0ff28875dac0086a733aabc024cf50565065ae95b38e160996e8e2ed44b8af`  
		Last Modified: Wed, 23 Jan 2019 11:06:58 GMT  
		Size: 8.4 MB (8422386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d15bf43aaaf5bc06047e9ccd5634a6a1708963480040296423fdcb390dc04f`  
		Last Modified: Wed, 23 Jan 2019 11:06:55 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31573456d9ee4b3e17cc5585ab9b10efe1605e80f5bfc7f92c24bae52c8a641d`  
		Last Modified: Wed, 23 Jan 2019 11:06:55 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:4312d1a169f9cf4e73736f97fb362fb94b5517c7103981add9f63d47d364aaf5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28403690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7c0d43b8abd59ba46fe27c32aed91cf9b928f0df22a3278b7c06a0430dc197`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:10:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 15:10:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 15:10:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 15:12:22 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 15:12:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 15:12:24 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 15:13:05 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 15:13:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 15:13:09 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 15:13:09 GMT
WORKDIR /data
# Wed, 23 Jan 2019 15:13:10 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 15:13:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 15:13:11 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 15:13:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfe83343c5e1e5b661ae0cf82627f2a90cbd7cb08c800b7337e9d714156e0f0`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e17ba9c527459ecfa72e59cc8e381c3a9667c200af0dd579ee109c19d055a1`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 915.8 KB (915843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:456975d3b7e848739e0b596ce09518cb429fcc22f5da5d27b60623af9b6cd6f4`  
		Last Modified: Wed, 23 Jan 2019 15:14:04 GMT  
		Size: 8.2 MB (8195278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102a125b2e57af83d02d7ab68e564aaa46018af025b531f03f4f508b2a911bba`  
		Last Modified: Wed, 23 Jan 2019 15:14:01 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367d309bb1cbcc883a34754ddef2d16f4e3da3490f7ce92a0ded4ac3a60e6634`  
		Last Modified: Wed, 23 Jan 2019 15:14:00 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:029b83ab63e8a9c186b0eb7264856d37493116049fe50c26189da53377f7d561
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.8 MB (29757620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90b650a82f3070b6e3f79a7957bc1b0cc556636f3aa07313ddd84e1a9ba71492`
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
# Wed, 06 Feb 2019 18:19:53 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 18:19:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 18:19:56 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 18:21:45 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 18:21:49 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:21:50 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:21:51 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:21:53 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:21:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:21:55 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:21:58 GMT
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
	-	`sha256:236b2053354615506e3cccbbd2aa63b9231696d3e64d8a424be78f9b21cf7c1a`  
		Last Modified: Wed, 06 Feb 2019 18:24:46 GMT  
		Size: 8.5 MB (8496889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d447649960a10acf8e47a4bd34ecf1af3df3664ee383f7dcfbd9fd81171a57`  
		Last Modified: Wed, 06 Feb 2019 18:24:43 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f6852cfb287298c6058c67614f7ec8c0f04f040c742e33fda74658dda8135c`  
		Last Modified: Wed, 06 Feb 2019 18:24:43 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; 386

```console
$ docker pull redis@sha256:7816d5aa7140869c9f1a3307953e7d72c1eb6f2b7082429b659a5463fb499b34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32327193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e927c4d0467a8b549b53e02600670687f544b3a0cdfba1acb09a324c11487cab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:58:14 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:58:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:58:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:00:14 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 14:00:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 14:00:15 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 14:00:57 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:00:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:00:58 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:00:58 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:00:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:00:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:00:59 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:00:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f073067f1925015bef7333d173b916e2e36e6b2a9be0e8e409c92a914a459c23`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231e88ea2e22d423059304481650a1a646cd344ff23c70d5b364c31ddaf073eb`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 920.1 KB (920102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cf690cf21a137c60da9b9ef8f5707355c2ff88318b9f70eac21c18bc579186`  
		Last Modified: Wed, 23 Jan 2019 14:01:35 GMT  
		Size: 8.3 MB (8257724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a39b2ce2d5bae85e9e98212ead5e63fac8a1f9803038bb95ba6d80a726e520b`  
		Last Modified: Wed, 23 Jan 2019 14:01:33 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:658d581ba48a03e76b6e4e6f1d853bbdd97ff23ceac0c414a7de4718098397ca`  
		Last Modified: Wed, 23 Jan 2019 14:01:33 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:8254eee3b7ac2dfc42740b3cc1f8546770f961c605539ed60ac46288574ea4c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32539684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83b0b317e1881d078d8e3c04ae3111cac8bd3a33400dcecf67f22d358c91c607`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:22:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:22:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:23:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:27:32 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:27:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:27:36 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:28:54 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:28:59 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:29:01 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:29:02 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:29:03 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:29:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:29:09 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:29:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20321bec709a1fb1b4332af6e7af0c9c1629fb86adfeb8c4ec41f6486d22a55`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474693152966afd031e558316092ddbd7b3b7a97df46e5b1234a8c832a559522`  
		Last Modified: Wed, 06 Feb 2019 14:30:36 GMT  
		Size: 909.7 KB (909710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cfca3f0f7573a265853e3b5b380e32a324415726d23665324d2bdb4e2d469d4`  
		Last Modified: Wed, 06 Feb 2019 14:32:01 GMT  
		Size: 8.9 MB (8872287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e847e93156986e86c4d3d70cc53660e16680ffff27533d978e22fb3c0da320`  
		Last Modified: Wed, 06 Feb 2019 14:31:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902e9521e6edd482141d0c1d24a7bd64d6e6f28c124fda66a41081b5392e3f07`  
		Last Modified: Wed, 06 Feb 2019 14:31:35 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; s390x

```console
$ docker pull redis@sha256:41a8e4ec1efff212df17fa758a5b4a72ba5e3dc6ef9ee9f66cbc6186b74d4045
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32372697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e14b7a48fb04acadd8deabac97fd749b5643fa42f51a8cd741694d3f8e20d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:46:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:46:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:46:45 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:48:16 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:48:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:48:16 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:48:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:48:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:48:39 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:48:40 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:48:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:48:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:48:40 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:48:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7372cde11bc20743e4b18508d5a43d0c4b135c13aaf2bdd4201e590f18c4ae`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce30edbe6a65e2dd54fa17ab9d73575aa91e5354fe7f650dca6fc639164c8e69`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 926.8 KB (926789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92f8d10d674105c3b645675060fe0b126f202bde10d69456b9bdbdbd3ebc459`  
		Last Modified: Wed, 06 Feb 2019 14:49:50 GMT  
		Size: 9.1 MB (9090316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5477b344ec9dd59a6dd2a7fddd9b885f309d39e9008ea1a94eae211ec75266df`  
		Last Modified: Wed, 06 Feb 2019 14:49:47 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e624ef28c1fb6dee03a6f327c3bfec332d922e663591712c589850022ec882d8`  
		Last Modified: Wed, 06 Feb 2019 14:49:47 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit`

```console
$ docker pull redis@sha256:ec685b9818c0d7b05b2f4a03289200e9ee28f033e177ff2b711f633e21639f92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:e8d853bf49a091af3c261555f2e9783d286dbda6fd40d0b0c46f4eee82f22b90
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36554311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:335c59560281e4f9e0c70beabe7bcb23dd66198175895948192b625693253c21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 09:06:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:07:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:07:38 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:07:39 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:07:39 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:07:39 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:07:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:07:40 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:07:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c8c6eeace38932a270c55cd7148f3c0e7fb60be937cfa977d7f21972f4a903`  
		Last Modified: Wed, 06 Feb 2019 09:09:09 GMT  
		Size: 4.8 MB (4848338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6c7632b1ac850fbf38aae6b52775fdef94d545dfcf7d47eebd7321729964f2`  
		Last Modified: Wed, 06 Feb 2019 09:09:09 GMT  
		Size: 8.3 MB (8262055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9a30bced3c76f612ae1db0d4d4c4a2836ca9a723c25c8c3d7c43b90b4b3750`  
		Last Modified: Wed, 06 Feb 2019 09:09:07 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012d1c5eacecbca147d7dcd6deed033fa222c6fcbd7ee3e2e27a3f71ceb3049`  
		Last Modified: Wed, 06 Feb 2019 09:09:08 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit-stretch`

```console
$ docker pull redis@sha256:ec685b9818c0d7b05b2f4a03289200e9ee28f033e177ff2b711f633e21639f92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:e8d853bf49a091af3c261555f2e9783d286dbda6fd40d0b0c46f4eee82f22b90
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36554311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:335c59560281e4f9e0c70beabe7bcb23dd66198175895948192b625693253c21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 09:06:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:07:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:07:38 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:07:39 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:07:39 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:07:39 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:07:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:07:40 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:07:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c8c6eeace38932a270c55cd7148f3c0e7fb60be937cfa977d7f21972f4a903`  
		Last Modified: Wed, 06 Feb 2019 09:09:09 GMT  
		Size: 4.8 MB (4848338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6c7632b1ac850fbf38aae6b52775fdef94d545dfcf7d47eebd7321729964f2`  
		Last Modified: Wed, 06 Feb 2019 09:09:09 GMT  
		Size: 8.3 MB (8262055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9a30bced3c76f612ae1db0d4d4c4a2836ca9a723c25c8c3d7c43b90b4b3750`  
		Last Modified: Wed, 06 Feb 2019 09:09:07 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012d1c5eacecbca147d7dcd6deed033fa222c6fcbd7ee3e2e27a3f71ceb3049`  
		Last Modified: Wed, 06 Feb 2019 09:09:08 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine`

```console
$ docker pull redis@sha256:0752fe746447ac45dbcf572840f30220ebdcfe75dda5b1576d2d493606a5d5bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4-alpine` - linux; amd64

```console
$ docker pull redis@sha256:ae017f8d136099e528be49e05f9a55d69cac8c00c5a740c15b53c1cfbf11200f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13917355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d561d12e920d0ce347df8d75476b7a8aebad14150e18daf8940bde5856ca4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 21:24:04 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 05 Feb 2019 21:24:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 05 Feb 2019 21:26:07 GMT
ENV REDIS_VERSION=4.0.12
# Tue, 05 Feb 2019 21:26:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Tue, 05 Feb 2019 21:26:07 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Tue, 05 Feb 2019 21:26:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 05 Feb 2019 21:26:43 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Feb 2019 21:26:43 GMT
VOLUME [/data]
# Tue, 05 Feb 2019 21:26:44 GMT
WORKDIR /data
# Tue, 05 Feb 2019 21:26:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 05 Feb 2019 21:26:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Feb 2019 21:26:44 GMT
EXPOSE 6379
# Tue, 05 Feb 2019 21:26:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42672a2ca6a1cc999c70a5b2db9eb57ba0345688799ad310cac5d9b77a5c236`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823e4275fef65b480f1c028b2623db710d7e826ef20de02e98c593c5bf5262cb`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 403.0 KB (402995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c49a8a142d313433f3004838847ed161fa8cac7ca238afae5cd918dab15e319`  
		Last Modified: Tue, 05 Feb 2019 21:27:22 GMT  
		Size: 10.8 MB (10757869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c3ab7a67afe62c3e1774d5609d679949ef949210454284fc79cc7f100e7c07`  
		Last Modified: Tue, 05 Feb 2019 21:27:20 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e4fee2dbc26384fa3929eb8fc8e058a82f0db19e53249a8cb2c164b5d3c02d`  
		Last Modified: Tue, 05 Feb 2019 21:27:20 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:6a68026c150bc68303199464ed2cc377e7c2753dba723402b90ffcceec15abc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13295722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:513f79abb1fe737af001ddbd46b166af02fbe33a2bb947d5dd61a9c0100d03ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:16:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 10:16:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 10:32:15 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 10:32:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 10:32:16 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 10:32:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 10:32:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 10:32:41 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 10:32:41 GMT
WORKDIR /data
# Wed, 06 Feb 2019 10:32:42 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 10:32:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:32:42 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 10:32:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db155d5bc367ae1ada685256caf7955a00a1b440daa6baea21a7df52af6d54d`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39dea0a54c6fc7c6603864723aa6c41c9d1ce32365bee967fc3f75fdeef4121`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 405.2 KB (405250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1d0c8d2b0065c76d2906973ea2f384cda5aa3088630483fa97fb8ee4bfe8d4`  
		Last Modified: Wed, 06 Feb 2019 10:32:55 GMT  
		Size: 10.3 MB (10347731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51fe4add8863d9590d3959e2ff70c25627f4a47cc3f86550554845139cf56d04`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b91690038e88eb8197909cd472265ecf0634de75675aa80ce75163d5f95599`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:e44b364d10d7690e05b06aceeacea839b2ac800128bd5871dfb8327ad8e06288
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13717996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3910640bb778a33fe40fd73222efc258bceace69e6cd2c13f137a895019b06f1`
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
# Wed, 06 Feb 2019 18:22:07 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 18:22:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 18:22:10 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 18:23:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 18:23:04 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:23:05 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:23:06 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:23:07 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:23:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:23:08 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:23:09 GMT
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
	-	`sha256:4f5949d2a7a5d4de0a3ddd939cef011daff0f1a51da3acff6000305e41fcc80d`  
		Last Modified: Wed, 06 Feb 2019 18:25:10 GMT  
		Size: 10.6 MB (10622961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d043b31319e8dfefd66de4443713a704306631ed5e0f90c7dd931219feea944`  
		Last Modified: Wed, 06 Feb 2019 18:25:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c442d71d459c33a74eb13d272fbee152f6e72c3f540537d761bcaf976b9a1a`  
		Last Modified: Wed, 06 Feb 2019 18:25:06 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; 386

```console
$ docker pull redis@sha256:29f97fd9f2f44e90f8d0cfa9c3260dbbc4ca3b91c23235cf13a2de1203149ebf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11661692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee41d31c27c245ef286a542e33ea083d1d7d661dfd695dc27ffe3348d9f0c8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:23:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 12:23:13 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 12:24:28 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 12:24:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 12:24:28 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 12:24:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 12:25:00 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 12:25:00 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:25:00 GMT
WORKDIR /data
# Fri, 21 Dec 2018 12:25:01 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:25:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:25:01 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 12:25:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05dcaf7e3a5f71f671a74e623bb9abe78af5ef495965ba44fa2467cb6428516`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9314a25830c13371be7bb35c347e70d7a8b44c928b5d2fc0e1712c30f80da31`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 407.1 KB (407101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a386fc03bcfacef0df01928e437a193a603fd79989f5c460eba602fa84c668f8`  
		Last Modified: Fri, 21 Dec 2018 12:25:33 GMT  
		Size: 9.0 MB (8981088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae382ba88f31a1396c9f7ee7a4e6277aa694eb5ca8f269f58df75e1a3465642a`  
		Last Modified: Fri, 21 Dec 2018 12:25:28 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d391f6605612f0ba0b50ffc9fca6d12806681b2bec9050f7a611861e66984e`  
		Last Modified: Fri, 21 Dec 2018 12:25:28 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:fdae0fe82fc9d0e048a250aec41c453a62750499e3d3d9b13e0839762d5a3cb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14379726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccaaf9fbdf9b1e7a8499d309eea37e658093b2d74aadb2d85da9e60b8c049941`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:26:00 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:26:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:29:27 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:29:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:29:30 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:29:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:30:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:30:02 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:30:04 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:30:04 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:30:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:30:07 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:30:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38611b6a52af54e6a88187c1f138f076668eafe25d524d4c76b6670716073e7f`  
		Last Modified: Wed, 06 Feb 2019 14:31:07 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a40fe5968cb8f23b3ca4cef68f3083205d535be4fa7925583252b92e164774`  
		Last Modified: Wed, 06 Feb 2019 14:31:05 GMT  
		Size: 410.3 KB (410323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a50c840c991ac74e227b9019caf165f8d6af7b1123523cacd6877bf7c088c02`  
		Last Modified: Wed, 06 Feb 2019 14:32:25 GMT  
		Size: 11.2 MB (11188738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e80e6e7159a6561ad87babc6bd177df5bf3b591352d0b66c14e291f6d969ee8`  
		Last Modified: Wed, 06 Feb 2019 14:32:22 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b42d8ef1f8c5d2dfbdfd26982f0d89a472101d598db79f569ea05179d8f55f0`  
		Last Modified: Wed, 06 Feb 2019 14:32:22 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; s390x

```console
$ docker pull redis@sha256:d7336be95e91c5109d4efa4febaad39bf639d920c122f20e8001a9c9a46358cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13784067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f89fd6b48e988edaae9c88e837cb1af4f4dfd3236de8c7f6b6cad590a003b39a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:47:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:47:32 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:48:46 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:48:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:48:47 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:49:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:49:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:49:05 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:49:05 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:49:06 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:49:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:49:06 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:49:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c035dc3a25ffacd002e6a9e9f5599a475e589432aa2380567d2fc6d0a8eb7be5`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432cab9de09143d51b3e4494c80bc9d4f25df2a6cac8bdd71f821ba40630dedf`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 407.8 KB (407822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09393f2c43024a6fdc3e8ee936307ef79afa3b2b3560418c8b714cc3ef1fac55`  
		Last Modified: Wed, 06 Feb 2019 14:50:01 GMT  
		Size: 10.8 MB (10832962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee4c43c672fa9343f8a97254adc76d9afd519d02b78882db1cbd8baf5e0f3e6`  
		Last Modified: Wed, 06 Feb 2019 14:49:58 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72892d01f4cca69932a6b7156534bd4929ed284dfb6a120755d47ba6ed4af890`  
		Last Modified: Wed, 06 Feb 2019 14:49:58 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine3.9`

```console
$ docker pull redis@sha256:0752fe746447ac45dbcf572840f30220ebdcfe75dda5b1576d2d493606a5d5bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4-alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:ae017f8d136099e528be49e05f9a55d69cac8c00c5a740c15b53c1cfbf11200f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13917355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d561d12e920d0ce347df8d75476b7a8aebad14150e18daf8940bde5856ca4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 21:24:04 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 05 Feb 2019 21:24:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 05 Feb 2019 21:26:07 GMT
ENV REDIS_VERSION=4.0.12
# Tue, 05 Feb 2019 21:26:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Tue, 05 Feb 2019 21:26:07 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Tue, 05 Feb 2019 21:26:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 05 Feb 2019 21:26:43 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Feb 2019 21:26:43 GMT
VOLUME [/data]
# Tue, 05 Feb 2019 21:26:44 GMT
WORKDIR /data
# Tue, 05 Feb 2019 21:26:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 05 Feb 2019 21:26:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Feb 2019 21:26:44 GMT
EXPOSE 6379
# Tue, 05 Feb 2019 21:26:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42672a2ca6a1cc999c70a5b2db9eb57ba0345688799ad310cac5d9b77a5c236`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823e4275fef65b480f1c028b2623db710d7e826ef20de02e98c593c5bf5262cb`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 403.0 KB (402995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c49a8a142d313433f3004838847ed161fa8cac7ca238afae5cd918dab15e319`  
		Last Modified: Tue, 05 Feb 2019 21:27:22 GMT  
		Size: 10.8 MB (10757869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c3ab7a67afe62c3e1774d5609d679949ef949210454284fc79cc7f100e7c07`  
		Last Modified: Tue, 05 Feb 2019 21:27:20 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e4fee2dbc26384fa3929eb8fc8e058a82f0db19e53249a8cb2c164b5d3c02d`  
		Last Modified: Tue, 05 Feb 2019 21:27:20 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:6a68026c150bc68303199464ed2cc377e7c2753dba723402b90ffcceec15abc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13295722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:513f79abb1fe737af001ddbd46b166af02fbe33a2bb947d5dd61a9c0100d03ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:16:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 10:16:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 10:32:15 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 10:32:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 10:32:16 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 10:32:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 10:32:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 10:32:41 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 10:32:41 GMT
WORKDIR /data
# Wed, 06 Feb 2019 10:32:42 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 10:32:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:32:42 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 10:32:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db155d5bc367ae1ada685256caf7955a00a1b440daa6baea21a7df52af6d54d`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39dea0a54c6fc7c6603864723aa6c41c9d1ce32365bee967fc3f75fdeef4121`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 405.2 KB (405250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1d0c8d2b0065c76d2906973ea2f384cda5aa3088630483fa97fb8ee4bfe8d4`  
		Last Modified: Wed, 06 Feb 2019 10:32:55 GMT  
		Size: 10.3 MB (10347731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51fe4add8863d9590d3959e2ff70c25627f4a47cc3f86550554845139cf56d04`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b91690038e88eb8197909cd472265ecf0634de75675aa80ce75163d5f95599`  
		Last Modified: Wed, 06 Feb 2019 10:32:53 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:e44b364d10d7690e05b06aceeacea839b2ac800128bd5871dfb8327ad8e06288
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13717996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3910640bb778a33fe40fd73222efc258bceace69e6cd2c13f137a895019b06f1`
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
# Wed, 06 Feb 2019 18:22:07 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 18:22:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 18:22:10 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 18:23:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 18:23:04 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:23:05 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:23:06 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:23:07 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:23:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:23:08 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:23:09 GMT
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
	-	`sha256:4f5949d2a7a5d4de0a3ddd939cef011daff0f1a51da3acff6000305e41fcc80d`  
		Last Modified: Wed, 06 Feb 2019 18:25:10 GMT  
		Size: 10.6 MB (10622961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d043b31319e8dfefd66de4443713a704306631ed5e0f90c7dd931219feea944`  
		Last Modified: Wed, 06 Feb 2019 18:25:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c442d71d459c33a74eb13d272fbee152f6e72c3f540537d761bcaf976b9a1a`  
		Last Modified: Wed, 06 Feb 2019 18:25:06 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:29f97fd9f2f44e90f8d0cfa9c3260dbbc4ca3b91c23235cf13a2de1203149ebf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11661692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee41d31c27c245ef286a542e33ea083d1d7d661dfd695dc27ffe3348d9f0c8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:23:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 12:23:13 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 12:24:28 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 12:24:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 12:24:28 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 12:24:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 12:25:00 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 12:25:00 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:25:00 GMT
WORKDIR /data
# Fri, 21 Dec 2018 12:25:01 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:25:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:25:01 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 12:25:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05dcaf7e3a5f71f671a74e623bb9abe78af5ef495965ba44fa2467cb6428516`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9314a25830c13371be7bb35c347e70d7a8b44c928b5d2fc0e1712c30f80da31`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 407.1 KB (407101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a386fc03bcfacef0df01928e437a193a603fd79989f5c460eba602fa84c668f8`  
		Last Modified: Fri, 21 Dec 2018 12:25:33 GMT  
		Size: 9.0 MB (8981088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae382ba88f31a1396c9f7ee7a4e6277aa694eb5ca8f269f58df75e1a3465642a`  
		Last Modified: Fri, 21 Dec 2018 12:25:28 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d391f6605612f0ba0b50ffc9fca6d12806681b2bec9050f7a611861e66984e`  
		Last Modified: Fri, 21 Dec 2018 12:25:28 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:fdae0fe82fc9d0e048a250aec41c453a62750499e3d3d9b13e0839762d5a3cb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14379726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccaaf9fbdf9b1e7a8499d309eea37e658093b2d74aadb2d85da9e60b8c049941`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:26:00 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:26:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:29:27 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:29:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:29:30 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:29:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:30:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:30:02 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:30:04 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:30:04 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:30:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:30:07 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:30:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38611b6a52af54e6a88187c1f138f076668eafe25d524d4c76b6670716073e7f`  
		Last Modified: Wed, 06 Feb 2019 14:31:07 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a40fe5968cb8f23b3ca4cef68f3083205d535be4fa7925583252b92e164774`  
		Last Modified: Wed, 06 Feb 2019 14:31:05 GMT  
		Size: 410.3 KB (410323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a50c840c991ac74e227b9019caf165f8d6af7b1123523cacd6877bf7c088c02`  
		Last Modified: Wed, 06 Feb 2019 14:32:25 GMT  
		Size: 11.2 MB (11188738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e80e6e7159a6561ad87babc6bd177df5bf3b591352d0b66c14e291f6d969ee8`  
		Last Modified: Wed, 06 Feb 2019 14:32:22 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b42d8ef1f8c5d2dfbdfd26982f0d89a472101d598db79f569ea05179d8f55f0`  
		Last Modified: Wed, 06 Feb 2019 14:32:22 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:d7336be95e91c5109d4efa4febaad39bf639d920c122f20e8001a9c9a46358cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13784067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f89fd6b48e988edaae9c88e837cb1af4f4dfd3236de8c7f6b6cad590a003b39a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:47:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:47:32 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:48:46 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:48:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:48:47 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:49:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:49:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:49:05 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:49:05 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:49:06 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:49:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:49:06 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:49:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c035dc3a25ffacd002e6a9e9f5599a475e589432aa2380567d2fc6d0a8eb7be5`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432cab9de09143d51b3e4494c80bc9d4f25df2a6cac8bdd71f821ba40630dedf`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 407.8 KB (407822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09393f2c43024a6fdc3e8ee936307ef79afa3b2b3560418c8b714cc3ef1fac55`  
		Last Modified: Wed, 06 Feb 2019 14:50:01 GMT  
		Size: 10.8 MB (10832962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee4c43c672fa9343f8a97254adc76d9afd519d02b78882db1cbd8baf5e0f3e6`  
		Last Modified: Wed, 06 Feb 2019 14:49:58 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72892d01f4cca69932a6b7156534bd4929ed284dfb6a120755d47ba6ed4af890`  
		Last Modified: Wed, 06 Feb 2019 14:49:58 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-stretch`

```console
$ docker pull redis@sha256:b01bfb4a86f85b66473cdcc46da90b2c35e8f39993448f321b858f6fb3683af2
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
$ docker pull redis@sha256:a79165a289dd044bb2ea88e20c04a78064849e84832f7d5e8f04ad471d79c10f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32140189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddb7885a5e075ba8ed414d0706059999aa73fceb4249bef7cb293c1ec559dfc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 09:05:11 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 09:06:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:06:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:06:10 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:06:11 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:06:11 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:06:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:06:12 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:06:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7546c1dafc0a5fb808bdb61836e32ddfffe01c0cf2b852244af11a7d3b32850e`  
		Last Modified: Wed, 06 Feb 2019 09:09:00 GMT  
		Size: 8.7 MB (8696275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6db952ef962c76ba0cab1ecb72183bd6bab29ba8faad21ff4dcc739f9949a6`  
		Last Modified: Wed, 06 Feb 2019 09:08:58 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee23a34df7b0beb70e14e2c7bfa87ac29b4d87903745277343f4130c9f3b5e0a`  
		Last Modified: Wed, 06 Feb 2019 09:08:58 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:cbedb310d5ad050c9c6abf7c52658de90c276af0a2ae37cfd2fc0556f25d405c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30537675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec8623c4bd344354301ed32ef6c4e10667bf14e79c6afc77803ff237e0d5bec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:03:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 11:03:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:04:20 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 11:05:35 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 11:05:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 11:05:35 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 11:06:19 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 11:06:20 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 11:06:20 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 11:06:21 GMT
WORKDIR /data
# Wed, 23 Jan 2019 11:06:21 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:06:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:06:22 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 11:06:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95036a3e89326a8f4c92d7b003ade74e1dc6119c716d3eba91525208decab719`  
		Last Modified: Wed, 23 Jan 2019 11:06:37 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baca5a0010d5b56e9a8882d2a03e7773ff400841a6c447b4607d09d73e4fa68`  
		Last Modified: Wed, 23 Jan 2019 11:06:38 GMT  
		Size: 931.2 KB (931174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0ff28875dac0086a733aabc024cf50565065ae95b38e160996e8e2ed44b8af`  
		Last Modified: Wed, 23 Jan 2019 11:06:58 GMT  
		Size: 8.4 MB (8422386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d15bf43aaaf5bc06047e9ccd5634a6a1708963480040296423fdcb390dc04f`  
		Last Modified: Wed, 23 Jan 2019 11:06:55 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31573456d9ee4b3e17cc5585ab9b10efe1605e80f5bfc7f92c24bae52c8a641d`  
		Last Modified: Wed, 23 Jan 2019 11:06:55 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:4312d1a169f9cf4e73736f97fb362fb94b5517c7103981add9f63d47d364aaf5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28403690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7c0d43b8abd59ba46fe27c32aed91cf9b928f0df22a3278b7c06a0430dc197`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:10:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 15:10:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 15:10:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 15:12:22 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 15:12:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 15:12:24 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 15:13:05 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 15:13:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 15:13:09 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 15:13:09 GMT
WORKDIR /data
# Wed, 23 Jan 2019 15:13:10 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 15:13:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 15:13:11 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 15:13:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfe83343c5e1e5b661ae0cf82627f2a90cbd7cb08c800b7337e9d714156e0f0`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e17ba9c527459ecfa72e59cc8e381c3a9667c200af0dd579ee109c19d055a1`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 915.8 KB (915843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:456975d3b7e848739e0b596ce09518cb429fcc22f5da5d27b60623af9b6cd6f4`  
		Last Modified: Wed, 23 Jan 2019 15:14:04 GMT  
		Size: 8.2 MB (8195278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102a125b2e57af83d02d7ab68e564aaa46018af025b531f03f4f508b2a911bba`  
		Last Modified: Wed, 23 Jan 2019 15:14:01 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367d309bb1cbcc883a34754ddef2d16f4e3da3490f7ce92a0ded4ac3a60e6634`  
		Last Modified: Wed, 23 Jan 2019 15:14:00 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:029b83ab63e8a9c186b0eb7264856d37493116049fe50c26189da53377f7d561
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.8 MB (29757620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90b650a82f3070b6e3f79a7957bc1b0cc556636f3aa07313ddd84e1a9ba71492`
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
# Wed, 06 Feb 2019 18:19:53 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 18:19:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 18:19:56 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 18:21:45 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 18:21:49 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:21:50 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:21:51 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:21:53 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:21:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:21:55 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:21:58 GMT
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
	-	`sha256:236b2053354615506e3cccbbd2aa63b9231696d3e64d8a424be78f9b21cf7c1a`  
		Last Modified: Wed, 06 Feb 2019 18:24:46 GMT  
		Size: 8.5 MB (8496889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d447649960a10acf8e47a4bd34ecf1af3df3664ee383f7dcfbd9fd81171a57`  
		Last Modified: Wed, 06 Feb 2019 18:24:43 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f6852cfb287298c6058c67614f7ec8c0f04f040c742e33fda74658dda8135c`  
		Last Modified: Wed, 06 Feb 2019 18:24:43 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; 386

```console
$ docker pull redis@sha256:7816d5aa7140869c9f1a3307953e7d72c1eb6f2b7082429b659a5463fb499b34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32327193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e927c4d0467a8b549b53e02600670687f544b3a0cdfba1acb09a324c11487cab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:58:14 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:58:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:58:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:00:14 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 14:00:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 14:00:15 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 14:00:57 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:00:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:00:58 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:00:58 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:00:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:00:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:00:59 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:00:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f073067f1925015bef7333d173b916e2e36e6b2a9be0e8e409c92a914a459c23`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231e88ea2e22d423059304481650a1a646cd344ff23c70d5b364c31ddaf073eb`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 920.1 KB (920102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cf690cf21a137c60da9b9ef8f5707355c2ff88318b9f70eac21c18bc579186`  
		Last Modified: Wed, 23 Jan 2019 14:01:35 GMT  
		Size: 8.3 MB (8257724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a39b2ce2d5bae85e9e98212ead5e63fac8a1f9803038bb95ba6d80a726e520b`  
		Last Modified: Wed, 23 Jan 2019 14:01:33 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:658d581ba48a03e76b6e4e6f1d853bbdd97ff23ceac0c414a7de4718098397ca`  
		Last Modified: Wed, 23 Jan 2019 14:01:33 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:8254eee3b7ac2dfc42740b3cc1f8546770f961c605539ed60ac46288574ea4c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32539684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83b0b317e1881d078d8e3c04ae3111cac8bd3a33400dcecf67f22d358c91c607`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:22:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:22:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:23:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:27:32 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:27:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:27:36 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:28:54 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:28:59 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:29:01 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:29:02 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:29:03 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:29:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:29:09 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:29:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20321bec709a1fb1b4332af6e7af0c9c1629fb86adfeb8c4ec41f6486d22a55`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474693152966afd031e558316092ddbd7b3b7a97df46e5b1234a8c832a559522`  
		Last Modified: Wed, 06 Feb 2019 14:30:36 GMT  
		Size: 909.7 KB (909710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cfca3f0f7573a265853e3b5b380e32a324415726d23665324d2bdb4e2d469d4`  
		Last Modified: Wed, 06 Feb 2019 14:32:01 GMT  
		Size: 8.9 MB (8872287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e847e93156986e86c4d3d70cc53660e16680ffff27533d978e22fb3c0da320`  
		Last Modified: Wed, 06 Feb 2019 14:31:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902e9521e6edd482141d0c1d24a7bd64d6e6f28c124fda66a41081b5392e3f07`  
		Last Modified: Wed, 06 Feb 2019 14:31:35 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; s390x

```console
$ docker pull redis@sha256:41a8e4ec1efff212df17fa758a5b4a72ba5e3dc6ef9ee9f66cbc6186b74d4045
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32372697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e14b7a48fb04acadd8deabac97fd749b5643fa42f51a8cd741694d3f8e20d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:46:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:46:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:46:45 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:48:16 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 06 Feb 2019 14:48:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 06 Feb 2019 14:48:16 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 06 Feb 2019 14:48:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:48:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:48:39 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:48:40 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:48:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:48:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:48:40 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:48:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7372cde11bc20743e4b18508d5a43d0c4b135c13aaf2bdd4201e590f18c4ae`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce30edbe6a65e2dd54fa17ab9d73575aa91e5354fe7f650dca6fc639164c8e69`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 926.8 KB (926789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92f8d10d674105c3b645675060fe0b126f202bde10d69456b9bdbdbd3ebc459`  
		Last Modified: Wed, 06 Feb 2019 14:49:50 GMT  
		Size: 9.1 MB (9090316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5477b344ec9dd59a6dd2a7fddd9b885f309d39e9008ea1a94eae211ec75266df`  
		Last Modified: Wed, 06 Feb 2019 14:49:47 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e624ef28c1fb6dee03a6f327c3bfec332d922e663591712c589850022ec882d8`  
		Last Modified: Wed, 06 Feb 2019 14:49:47 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5`

```console
$ docker pull redis@sha256:7aeb0f44dcbe9a87c4282dccf27d241e3b251acc1ba1513ead6de28a682b478a
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
$ docker pull redis@sha256:d7371d6c24ec0dd4b0834cfdf08789eee95c648198180be5b0eff64754b027ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35212744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f55cf3661e92cc44014f9d93e6f7cbd2a59b7220a26edcdb0828289cf6a361f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 09:02:40 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:02:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:02:42 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:02:42 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:02:42 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:02:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:02:43 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:02:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f84ab76ce60e445f215f063b20e78199ddd3a0f0fcae499d5fd9fb022183e25`  
		Last Modified: Wed, 06 Feb 2019 09:08:32 GMT  
		Size: 11.8 MB (11768829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0903bdecada21bf7808e21d6e5e492d4b7f2e0e5b1dadbd4e8734345af57bea2`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492876061fbda6fb891eff7a586e2aec8307c64c8bc161a4bdc47678a502a940`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; arm variant v5

```console
$ docker pull redis@sha256:3db6bd766954e6f5dd8f841578385b6813c59cf31cc25e56c46f0c07a6c0e6fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33552844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d40efa7719da5e6ab0afbcecf22ae384a236fcd9554180d77b59abef717d69`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 09:55:47 GMT
ADD file:e870bf9826436c9d50093c17a45bffdf2dbfb3fb4fa73595ec02fdf0767f8c1b in / 
# Wed, 06 Feb 2019 09:55:48 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 13:41:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 13:41:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 13:41:52 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 13:41:52 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 13:41:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 13:41:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 13:42:56 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 13:42:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 13:42:58 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 13:42:58 GMT
WORKDIR /data
# Wed, 06 Feb 2019 13:42:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 13:42:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 13:42:59 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 13:42:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9b1495315079a4327f28a5ece699ace3f2e12af21ab453e345feae7e22d718bf`  
		Last Modified: Wed, 06 Feb 2019 10:03:48 GMT  
		Size: 21.2 MB (21181339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a94fd0c81c05add8c76633297d684f52220e92e405e15e314c23821de3b4572`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41c689abd16f19fe4af42af8c734545e9fe188b87851eb28d1f5f4f469f9c60`  
		Last Modified: Wed, 06 Feb 2019 13:43:57 GMT  
		Size: 931.2 KB (931157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca09b29c0253f77c11f15d98110aa6251abaf5f4b2b0fb556687ea3a3b906ad0`  
		Last Modified: Wed, 06 Feb 2019 13:44:00 GMT  
		Size: 11.4 MB (11438062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b21e3728066badc0566f8fb26f1e74c2e2021f635cf715ad97927b7e5369a5`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1bdf8cec53a09758589aa969e16493c0e16c1faa2d23b03aef6d742309c8fc`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; arm variant v7

```console
$ docker pull redis@sha256:bde51f2079f2387996319cae5810670c2394dcfa6a10a53adc284e08b63a8f4f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31335589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fad7675d00c618c1285c322d4ab913b1f51d852abf6ef099022519df00fd519`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:10:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 15:10:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 15:10:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 15:10:51 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 15:10:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 15:10:52 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 15:11:54 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 15:11:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 15:11:59 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 15:12:00 GMT
WORKDIR /data
# Wed, 23 Jan 2019 15:12:01 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 15:12:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 15:12:03 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 15:12:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfe83343c5e1e5b661ae0cf82627f2a90cbd7cb08c800b7337e9d714156e0f0`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e17ba9c527459ecfa72e59cc8e381c3a9667c200af0dd579ee109c19d055a1`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 915.8 KB (915843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a825542656992a22df1680e892813ab0ac03bef78ddbb192f439c04c5bcaec2b`  
		Last Modified: Wed, 23 Jan 2019 15:13:36 GMT  
		Size: 11.1 MB (11127177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbfd7fb16a4c33bee085e3f8048c80e33a9cf8f2988a518d70f9cfb467ecf77`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c790758254dd36cc30068dc344c2b4c1959b9b232e3fc498476f593966eff05a`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 419.0 B  
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
$ docker pull redis@sha256:49630a5efd02b75c09d4158f3d370718f128cefdb2277f061e28168bb0ccabd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35247591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:929d377e0fcdd507905087124a25a74f583063b9b2671b68964e00525c15c4a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:58:14 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:58:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:58:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 14:00:01 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:00:02 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:00:02 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:00:02 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:00:02 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:00:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:00:03 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:00:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f073067f1925015bef7333d173b916e2e36e6b2a9be0e8e409c92a914a459c23`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231e88ea2e22d423059304481650a1a646cd344ff23c70d5b364c31ddaf073eb`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 920.1 KB (920102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda4eb6f517ccdf388c63cb22acb04654eaf143b27072fedf011a0357e2a3d46`  
		Last Modified: Wed, 23 Jan 2019 14:01:23 GMT  
		Size: 11.2 MB (11178123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f547806ddcd0ac855b6e47296590718bfc259a83048a3cfea5ac42cca61554`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f9e137763ae9f62222dcf675e1fb8281c704aae236435ec02a41cfea6bdaed`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; ppc64le

```console
$ docker pull redis@sha256:2fdde05a0844dda9bfd72ae122660ba6444b8d18f5e1819a63b9b55524f0d2bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35623663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7991b9fff60afd70765cfb1729d82cc8cc24f254fbe0609cbd58151ed2582043`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:22:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:22:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:23:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:23:31 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:23:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:23:36 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:25:26 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:25:31 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:25:33 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:25:35 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:25:36 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:25:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:25:40 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:25:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20321bec709a1fb1b4332af6e7af0c9c1629fb86adfeb8c4ec41f6486d22a55`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474693152966afd031e558316092ddbd7b3b7a97df46e5b1234a8c832a559522`  
		Last Modified: Wed, 06 Feb 2019 14:30:36 GMT  
		Size: 909.7 KB (909710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2387738ae5dc718c698f1cc5314eca6c32d31a194a08f04eb656e2a3b6656c`  
		Last Modified: Wed, 06 Feb 2019 14:30:39 GMT  
		Size: 12.0 MB (11956265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab96e7f10021ee67298aff7fbebc66497918064f2daecafbf469a2e125ab014b`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8546034482b52ae6de6a814e39e385b484d7d9ccfa894e80738ab484ac96e519`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; s390x

```console
$ docker pull redis@sha256:678de945095c4ebe1872fcf9fddd568e8df76e66fc0fb8a7d39f8ad2d74db411
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35507564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac3ae0dc791f04e1e2f8f7537a0113d862c26893a9fe5156892c341ebe3bfb54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:46:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:46:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:46:45 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:46:45 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:46:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:46:46 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:47:22 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:47:23 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:47:23 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:47:23 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:47:24 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:47:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:47:24 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:47:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7372cde11bc20743e4b18508d5a43d0c4b135c13aaf2bdd4201e590f18c4ae`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce30edbe6a65e2dd54fa17ab9d73575aa91e5354fe7f650dca6fc639164c8e69`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 926.8 KB (926789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7284ce8539409925a3cd1aeda53ce35ec65a3b07f2e2ffd4b024434e14fd030`  
		Last Modified: Wed, 06 Feb 2019 14:49:24 GMT  
		Size: 12.2 MB (12225183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f84d997b1f112d8a46786e9d13c5f8d5aca3333167e4a6a95c6e90e8ace25f`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf52d878af2a05cb0421a79783133f6c5785414504c4644364654e3b94b00e48`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0`

```console
$ docker pull redis@sha256:7aeb0f44dcbe9a87c4282dccf27d241e3b251acc1ba1513ead6de28a682b478a
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
$ docker pull redis@sha256:d7371d6c24ec0dd4b0834cfdf08789eee95c648198180be5b0eff64754b027ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35212744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f55cf3661e92cc44014f9d93e6f7cbd2a59b7220a26edcdb0828289cf6a361f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 09:02:40 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:02:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:02:42 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:02:42 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:02:42 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:02:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:02:43 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:02:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f84ab76ce60e445f215f063b20e78199ddd3a0f0fcae499d5fd9fb022183e25`  
		Last Modified: Wed, 06 Feb 2019 09:08:32 GMT  
		Size: 11.8 MB (11768829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0903bdecada21bf7808e21d6e5e492d4b7f2e0e5b1dadbd4e8734345af57bea2`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492876061fbda6fb891eff7a586e2aec8307c64c8bc161a4bdc47678a502a940`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; arm variant v5

```console
$ docker pull redis@sha256:3db6bd766954e6f5dd8f841578385b6813c59cf31cc25e56c46f0c07a6c0e6fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33552844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d40efa7719da5e6ab0afbcecf22ae384a236fcd9554180d77b59abef717d69`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 09:55:47 GMT
ADD file:e870bf9826436c9d50093c17a45bffdf2dbfb3fb4fa73595ec02fdf0767f8c1b in / 
# Wed, 06 Feb 2019 09:55:48 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 13:41:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 13:41:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 13:41:52 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 13:41:52 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 13:41:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 13:41:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 13:42:56 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 13:42:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 13:42:58 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 13:42:58 GMT
WORKDIR /data
# Wed, 06 Feb 2019 13:42:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 13:42:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 13:42:59 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 13:42:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9b1495315079a4327f28a5ece699ace3f2e12af21ab453e345feae7e22d718bf`  
		Last Modified: Wed, 06 Feb 2019 10:03:48 GMT  
		Size: 21.2 MB (21181339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a94fd0c81c05add8c76633297d684f52220e92e405e15e314c23821de3b4572`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41c689abd16f19fe4af42af8c734545e9fe188b87851eb28d1f5f4f469f9c60`  
		Last Modified: Wed, 06 Feb 2019 13:43:57 GMT  
		Size: 931.2 KB (931157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca09b29c0253f77c11f15d98110aa6251abaf5f4b2b0fb556687ea3a3b906ad0`  
		Last Modified: Wed, 06 Feb 2019 13:44:00 GMT  
		Size: 11.4 MB (11438062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b21e3728066badc0566f8fb26f1e74c2e2021f635cf715ad97927b7e5369a5`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1bdf8cec53a09758589aa969e16493c0e16c1faa2d23b03aef6d742309c8fc`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; arm variant v7

```console
$ docker pull redis@sha256:bde51f2079f2387996319cae5810670c2394dcfa6a10a53adc284e08b63a8f4f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31335589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fad7675d00c618c1285c322d4ab913b1f51d852abf6ef099022519df00fd519`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:10:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 15:10:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 15:10:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 15:10:51 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 15:10:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 15:10:52 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 15:11:54 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 15:11:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 15:11:59 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 15:12:00 GMT
WORKDIR /data
# Wed, 23 Jan 2019 15:12:01 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 15:12:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 15:12:03 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 15:12:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfe83343c5e1e5b661ae0cf82627f2a90cbd7cb08c800b7337e9d714156e0f0`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e17ba9c527459ecfa72e59cc8e381c3a9667c200af0dd579ee109c19d055a1`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 915.8 KB (915843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a825542656992a22df1680e892813ab0ac03bef78ddbb192f439c04c5bcaec2b`  
		Last Modified: Wed, 23 Jan 2019 15:13:36 GMT  
		Size: 11.1 MB (11127177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbfd7fb16a4c33bee085e3f8048c80e33a9cf8f2988a518d70f9cfb467ecf77`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c790758254dd36cc30068dc344c2b4c1959b9b232e3fc498476f593966eff05a`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 419.0 B  
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
$ docker pull redis@sha256:49630a5efd02b75c09d4158f3d370718f128cefdb2277f061e28168bb0ccabd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35247591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:929d377e0fcdd507905087124a25a74f583063b9b2671b68964e00525c15c4a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:58:14 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:58:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:58:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 14:00:01 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:00:02 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:00:02 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:00:02 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:00:02 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:00:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:00:03 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:00:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f073067f1925015bef7333d173b916e2e36e6b2a9be0e8e409c92a914a459c23`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231e88ea2e22d423059304481650a1a646cd344ff23c70d5b364c31ddaf073eb`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 920.1 KB (920102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda4eb6f517ccdf388c63cb22acb04654eaf143b27072fedf011a0357e2a3d46`  
		Last Modified: Wed, 23 Jan 2019 14:01:23 GMT  
		Size: 11.2 MB (11178123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f547806ddcd0ac855b6e47296590718bfc259a83048a3cfea5ac42cca61554`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f9e137763ae9f62222dcf675e1fb8281c704aae236435ec02a41cfea6bdaed`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; ppc64le

```console
$ docker pull redis@sha256:2fdde05a0844dda9bfd72ae122660ba6444b8d18f5e1819a63b9b55524f0d2bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35623663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7991b9fff60afd70765cfb1729d82cc8cc24f254fbe0609cbd58151ed2582043`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:22:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:22:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:23:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:23:31 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:23:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:23:36 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:25:26 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:25:31 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:25:33 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:25:35 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:25:36 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:25:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:25:40 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:25:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20321bec709a1fb1b4332af6e7af0c9c1629fb86adfeb8c4ec41f6486d22a55`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474693152966afd031e558316092ddbd7b3b7a97df46e5b1234a8c832a559522`  
		Last Modified: Wed, 06 Feb 2019 14:30:36 GMT  
		Size: 909.7 KB (909710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2387738ae5dc718c698f1cc5314eca6c32d31a194a08f04eb656e2a3b6656c`  
		Last Modified: Wed, 06 Feb 2019 14:30:39 GMT  
		Size: 12.0 MB (11956265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab96e7f10021ee67298aff7fbebc66497918064f2daecafbf469a2e125ab014b`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8546034482b52ae6de6a814e39e385b484d7d9ccfa894e80738ab484ac96e519`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; s390x

```console
$ docker pull redis@sha256:678de945095c4ebe1872fcf9fddd568e8df76e66fc0fb8a7d39f8ad2d74db411
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35507564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac3ae0dc791f04e1e2f8f7537a0113d862c26893a9fe5156892c341ebe3bfb54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:46:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:46:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:46:45 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:46:45 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:46:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:46:46 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:47:22 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:47:23 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:47:23 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:47:23 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:47:24 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:47:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:47:24 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:47:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7372cde11bc20743e4b18508d5a43d0c4b135c13aaf2bdd4201e590f18c4ae`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce30edbe6a65e2dd54fa17ab9d73575aa91e5354fe7f650dca6fc639164c8e69`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 926.8 KB (926789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7284ce8539409925a3cd1aeda53ce35ec65a3b07f2e2ffd4b024434e14fd030`  
		Last Modified: Wed, 06 Feb 2019 14:49:24 GMT  
		Size: 12.2 MB (12225183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f84d997b1f112d8a46786e9d13c5f8d5aca3333167e4a6a95c6e90e8ace25f`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf52d878af2a05cb0421a79783133f6c5785414504c4644364654e3b94b00e48`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.3`

```console
$ docker pull redis@sha256:7aeb0f44dcbe9a87c4282dccf27d241e3b251acc1ba1513ead6de28a682b478a
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

### `redis:5.0.3` - linux; amd64

```console
$ docker pull redis@sha256:d7371d6c24ec0dd4b0834cfdf08789eee95c648198180be5b0eff64754b027ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35212744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f55cf3661e92cc44014f9d93e6f7cbd2a59b7220a26edcdb0828289cf6a361f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 09:02:40 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:02:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:02:42 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:02:42 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:02:42 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:02:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:02:43 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:02:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f84ab76ce60e445f215f063b20e78199ddd3a0f0fcae499d5fd9fb022183e25`  
		Last Modified: Wed, 06 Feb 2019 09:08:32 GMT  
		Size: 11.8 MB (11768829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0903bdecada21bf7808e21d6e5e492d4b7f2e0e5b1dadbd4e8734345af57bea2`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492876061fbda6fb891eff7a586e2aec8307c64c8bc161a4bdc47678a502a940`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3` - linux; arm variant v5

```console
$ docker pull redis@sha256:3db6bd766954e6f5dd8f841578385b6813c59cf31cc25e56c46f0c07a6c0e6fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33552844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d40efa7719da5e6ab0afbcecf22ae384a236fcd9554180d77b59abef717d69`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 09:55:47 GMT
ADD file:e870bf9826436c9d50093c17a45bffdf2dbfb3fb4fa73595ec02fdf0767f8c1b in / 
# Wed, 06 Feb 2019 09:55:48 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 13:41:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 13:41:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 13:41:52 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 13:41:52 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 13:41:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 13:41:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 13:42:56 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 13:42:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 13:42:58 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 13:42:58 GMT
WORKDIR /data
# Wed, 06 Feb 2019 13:42:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 13:42:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 13:42:59 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 13:42:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9b1495315079a4327f28a5ece699ace3f2e12af21ab453e345feae7e22d718bf`  
		Last Modified: Wed, 06 Feb 2019 10:03:48 GMT  
		Size: 21.2 MB (21181339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a94fd0c81c05add8c76633297d684f52220e92e405e15e314c23821de3b4572`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41c689abd16f19fe4af42af8c734545e9fe188b87851eb28d1f5f4f469f9c60`  
		Last Modified: Wed, 06 Feb 2019 13:43:57 GMT  
		Size: 931.2 KB (931157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca09b29c0253f77c11f15d98110aa6251abaf5f4b2b0fb556687ea3a3b906ad0`  
		Last Modified: Wed, 06 Feb 2019 13:44:00 GMT  
		Size: 11.4 MB (11438062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b21e3728066badc0566f8fb26f1e74c2e2021f635cf715ad97927b7e5369a5`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1bdf8cec53a09758589aa969e16493c0e16c1faa2d23b03aef6d742309c8fc`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3` - linux; arm variant v7

```console
$ docker pull redis@sha256:bde51f2079f2387996319cae5810670c2394dcfa6a10a53adc284e08b63a8f4f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31335589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fad7675d00c618c1285c322d4ab913b1f51d852abf6ef099022519df00fd519`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:10:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 15:10:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 15:10:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 15:10:51 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 15:10:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 15:10:52 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 15:11:54 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 15:11:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 15:11:59 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 15:12:00 GMT
WORKDIR /data
# Wed, 23 Jan 2019 15:12:01 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 15:12:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 15:12:03 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 15:12:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfe83343c5e1e5b661ae0cf82627f2a90cbd7cb08c800b7337e9d714156e0f0`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e17ba9c527459ecfa72e59cc8e381c3a9667c200af0dd579ee109c19d055a1`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 915.8 KB (915843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a825542656992a22df1680e892813ab0ac03bef78ddbb192f439c04c5bcaec2b`  
		Last Modified: Wed, 23 Jan 2019 15:13:36 GMT  
		Size: 11.1 MB (11127177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbfd7fb16a4c33bee085e3f8048c80e33a9cf8f2988a518d70f9cfb467ecf77`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c790758254dd36cc30068dc344c2b4c1959b9b232e3fc498476f593966eff05a`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3` - linux; arm64 variant v8

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

### `redis:5.0.3` - linux; 386

```console
$ docker pull redis@sha256:49630a5efd02b75c09d4158f3d370718f128cefdb2277f061e28168bb0ccabd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35247591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:929d377e0fcdd507905087124a25a74f583063b9b2671b68964e00525c15c4a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:58:14 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:58:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:58:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 14:00:01 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:00:02 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:00:02 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:00:02 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:00:02 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:00:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:00:03 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:00:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f073067f1925015bef7333d173b916e2e36e6b2a9be0e8e409c92a914a459c23`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231e88ea2e22d423059304481650a1a646cd344ff23c70d5b364c31ddaf073eb`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 920.1 KB (920102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda4eb6f517ccdf388c63cb22acb04654eaf143b27072fedf011a0357e2a3d46`  
		Last Modified: Wed, 23 Jan 2019 14:01:23 GMT  
		Size: 11.2 MB (11178123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f547806ddcd0ac855b6e47296590718bfc259a83048a3cfea5ac42cca61554`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f9e137763ae9f62222dcf675e1fb8281c704aae236435ec02a41cfea6bdaed`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3` - linux; ppc64le

```console
$ docker pull redis@sha256:2fdde05a0844dda9bfd72ae122660ba6444b8d18f5e1819a63b9b55524f0d2bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35623663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7991b9fff60afd70765cfb1729d82cc8cc24f254fbe0609cbd58151ed2582043`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:22:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:22:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:23:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:23:31 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:23:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:23:36 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:25:26 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:25:31 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:25:33 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:25:35 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:25:36 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:25:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:25:40 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:25:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20321bec709a1fb1b4332af6e7af0c9c1629fb86adfeb8c4ec41f6486d22a55`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474693152966afd031e558316092ddbd7b3b7a97df46e5b1234a8c832a559522`  
		Last Modified: Wed, 06 Feb 2019 14:30:36 GMT  
		Size: 909.7 KB (909710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2387738ae5dc718c698f1cc5314eca6c32d31a194a08f04eb656e2a3b6656c`  
		Last Modified: Wed, 06 Feb 2019 14:30:39 GMT  
		Size: 12.0 MB (11956265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab96e7f10021ee67298aff7fbebc66497918064f2daecafbf469a2e125ab014b`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8546034482b52ae6de6a814e39e385b484d7d9ccfa894e80738ab484ac96e519`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3` - linux; s390x

```console
$ docker pull redis@sha256:678de945095c4ebe1872fcf9fddd568e8df76e66fc0fb8a7d39f8ad2d74db411
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35507564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac3ae0dc791f04e1e2f8f7537a0113d862c26893a9fe5156892c341ebe3bfb54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:46:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:46:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:46:45 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:46:45 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:46:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:46:46 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:47:22 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:47:23 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:47:23 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:47:23 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:47:24 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:47:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:47:24 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:47:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7372cde11bc20743e4b18508d5a43d0c4b135c13aaf2bdd4201e590f18c4ae`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce30edbe6a65e2dd54fa17ab9d73575aa91e5354fe7f650dca6fc639164c8e69`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 926.8 KB (926789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7284ce8539409925a3cd1aeda53ce35ec65a3b07f2e2ffd4b024434e14fd030`  
		Last Modified: Wed, 06 Feb 2019 14:49:24 GMT  
		Size: 12.2 MB (12225183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f84d997b1f112d8a46786e9d13c5f8d5aca3333167e4a6a95c6e90e8ace25f`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf52d878af2a05cb0421a79783133f6c5785414504c4644364654e3b94b00e48`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-32bit`

```console
$ docker pull redis@sha256:030feb09311b97f8b3bce0d1ba3f0a20002b93213933debf1577c024d1e0d3d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:9d3f298ac92ab934044793a6addbc41c92261a131cddf9bf3a099a7913d981a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39475793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5c5854734365dad78dc583e82d09f7dced217682c09868da4370f633fb3a25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 09:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:04:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:04:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:04:48 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:04:49 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:04:49 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:04:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:04:49 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:04:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898e6740eb9cc2ab7646094ca8bb90cf71eb1d2c8c07ee186dbf6284723a1f1c`  
		Last Modified: Wed, 06 Feb 2019 09:08:44 GMT  
		Size: 4.8 MB (4848339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda33995a5fb887ab8b3fdefa5f7184698a456af9c0cef2e224934dddb91aa0b`  
		Last Modified: Wed, 06 Feb 2019 09:08:46 GMT  
		Size: 11.2 MB (11183537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f172f8e8922cf60d1849fa78fe2713173ae436349b316bb8ff4550529c02afc7`  
		Last Modified: Wed, 06 Feb 2019 09:08:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a78894a3a8f868e9c4005ae8423f5156856f3867b1aa7186e5fdedcb6d28d3`  
		Last Modified: Wed, 06 Feb 2019 09:08:43 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-32bit-stretch`

```console
$ docker pull redis@sha256:030feb09311b97f8b3bce0d1ba3f0a20002b93213933debf1577c024d1e0d3d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:9d3f298ac92ab934044793a6addbc41c92261a131cddf9bf3a099a7913d981a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39475793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5c5854734365dad78dc583e82d09f7dced217682c09868da4370f633fb3a25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 09:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:04:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:04:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:04:48 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:04:49 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:04:49 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:04:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:04:49 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:04:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898e6740eb9cc2ab7646094ca8bb90cf71eb1d2c8c07ee186dbf6284723a1f1c`  
		Last Modified: Wed, 06 Feb 2019 09:08:44 GMT  
		Size: 4.8 MB (4848339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda33995a5fb887ab8b3fdefa5f7184698a456af9c0cef2e224934dddb91aa0b`  
		Last Modified: Wed, 06 Feb 2019 09:08:46 GMT  
		Size: 11.2 MB (11183537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f172f8e8922cf60d1849fa78fe2713173ae436349b316bb8ff4550529c02afc7`  
		Last Modified: Wed, 06 Feb 2019 09:08:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a78894a3a8f868e9c4005ae8423f5156856f3867b1aa7186e5fdedcb6d28d3`  
		Last Modified: Wed, 06 Feb 2019 09:08:43 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.3-32bit`

```console
$ docker pull redis@sha256:030feb09311b97f8b3bce0d1ba3f0a20002b93213933debf1577c024d1e0d3d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.3-32bit` - linux; amd64

```console
$ docker pull redis@sha256:9d3f298ac92ab934044793a6addbc41c92261a131cddf9bf3a099a7913d981a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39475793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5c5854734365dad78dc583e82d09f7dced217682c09868da4370f633fb3a25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 09:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:04:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:04:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:04:48 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:04:49 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:04:49 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:04:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:04:49 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:04:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898e6740eb9cc2ab7646094ca8bb90cf71eb1d2c8c07ee186dbf6284723a1f1c`  
		Last Modified: Wed, 06 Feb 2019 09:08:44 GMT  
		Size: 4.8 MB (4848339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda33995a5fb887ab8b3fdefa5f7184698a456af9c0cef2e224934dddb91aa0b`  
		Last Modified: Wed, 06 Feb 2019 09:08:46 GMT  
		Size: 11.2 MB (11183537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f172f8e8922cf60d1849fa78fe2713173ae436349b316bb8ff4550529c02afc7`  
		Last Modified: Wed, 06 Feb 2019 09:08:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a78894a3a8f868e9c4005ae8423f5156856f3867b1aa7186e5fdedcb6d28d3`  
		Last Modified: Wed, 06 Feb 2019 09:08:43 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.3-32bit-stretch`

```console
$ docker pull redis@sha256:030feb09311b97f8b3bce0d1ba3f0a20002b93213933debf1577c024d1e0d3d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.3-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:9d3f298ac92ab934044793a6addbc41c92261a131cddf9bf3a099a7913d981a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39475793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5c5854734365dad78dc583e82d09f7dced217682c09868da4370f633fb3a25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 09:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:04:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:04:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:04:48 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:04:49 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:04:49 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:04:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:04:49 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:04:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898e6740eb9cc2ab7646094ca8bb90cf71eb1d2c8c07ee186dbf6284723a1f1c`  
		Last Modified: Wed, 06 Feb 2019 09:08:44 GMT  
		Size: 4.8 MB (4848339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda33995a5fb887ab8b3fdefa5f7184698a456af9c0cef2e224934dddb91aa0b`  
		Last Modified: Wed, 06 Feb 2019 09:08:46 GMT  
		Size: 11.2 MB (11183537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f172f8e8922cf60d1849fa78fe2713173ae436349b316bb8ff4550529c02afc7`  
		Last Modified: Wed, 06 Feb 2019 09:08:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a78894a3a8f868e9c4005ae8423f5156856f3867b1aa7186e5fdedcb6d28d3`  
		Last Modified: Wed, 06 Feb 2019 09:08:43 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.3-alpine`

```console
$ docker pull redis@sha256:1424dc7e22ed42faab4451205ebf879b26ab4846fc96c813818d105614b903ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:5.0.3-alpine` - linux; amd64

```console
$ docker pull redis@sha256:49c68b2ddb87cb21336d5e14a5b0874e539c6a5c1d5f51fb4b025513acc3316d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.7 MB (17722069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5cff96d7b8f5d3332b43922e424d448172f68b118e0e32cb26270227faec083`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 21:24:04 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 05 Feb 2019 21:24:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 05 Feb 2019 21:24:06 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Feb 2019 21:24:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Feb 2019 21:24:07 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Feb 2019 21:25:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 05 Feb 2019 21:25:48 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Feb 2019 21:25:48 GMT
VOLUME [/data]
# Tue, 05 Feb 2019 21:25:48 GMT
WORKDIR /data
# Tue, 05 Feb 2019 21:25:49 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 05 Feb 2019 21:25:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Feb 2019 21:25:49 GMT
EXPOSE 6379
# Tue, 05 Feb 2019 21:25:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42672a2ca6a1cc999c70a5b2db9eb57ba0345688799ad310cac5d9b77a5c236`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823e4275fef65b480f1c028b2623db710d7e826ef20de02e98c593c5bf5262cb`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 403.0 KB (402995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ad7a3b6c3fb2ef4fe32aa1535eb063abd70e0f5aec29c248d8b0d3d08a6f47`  
		Last Modified: Tue, 05 Feb 2019 21:27:10 GMT  
		Size: 14.6 MB (14562585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327e62bcfef7879ca648717d3b9377978a7ff2b5ac7cca277ba284f16ea85883`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5997a801f56098c177a275af36d5d7522b93a2ceadee22d389e4ce688ac8da`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:4a8cceff87821658eb72eda851ecf3160862cd525d2467ffb024052227ef608d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14410911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27f0b43ee61cbd94908c71808fe407f6714a64001e989fb670649f0d93927338`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 09:20:24 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 31 Jan 2019 09:20:27 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 31 Jan 2019 09:20:27 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 31 Jan 2019 09:20:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 31 Jan 2019 09:20:28 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 31 Jan 2019 09:21:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 31 Jan 2019 09:21:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 31 Jan 2019 09:21:10 GMT
VOLUME [/data]
# Thu, 31 Jan 2019 09:21:10 GMT
WORKDIR /data
# Thu, 31 Jan 2019 09:21:10 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 31 Jan 2019 09:21:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Jan 2019 09:21:11 GMT
EXPOSE 6379
# Thu, 31 Jan 2019 09:21:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebd28418fd718508b5fea4fb3b8a8df1880c032415bdf7fa05f6597553a9ce2`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e60c2b63aeba0034740dec220f6276e15be443cc503640a0aa178c7292e423b`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 405.2 KB (405186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b11ec1f5d016feef776fdfdc0bead46e3846f9b52c981b09ca93f5a5b44380`  
		Last Modified: Thu, 31 Jan 2019 09:22:07 GMT  
		Size: 11.9 MB (11857940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa89be15ad241e70aedfdde10501eebb5813af38dbf705ca1c7229a2741d65fb`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f158534113595b8720c48303354c88614909c9f367ad7939f87d82e60a1033`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:3c4664968d743aa1eb3a620fbefc4ec5437b1b546949d5f5748ea81b28aa0111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17581823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee32ec92d0ca472c91bdd4b964aebdcd5d83086e5d6a7d90a2fe55dad20c01d8`
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
# Wed, 06 Feb 2019 18:17:51 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 18:17:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 18:17:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 18:19:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 18:19:25 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:19:26 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:19:28 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:19:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:19:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:19:33 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:19:34 GMT
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
	-	`sha256:d2d8f1330b4e18a61eaa48b69a64e9571ddc410f64627100685e8aef86d57d5f`  
		Last Modified: Wed, 06 Feb 2019 18:24:18 GMT  
		Size: 14.5 MB (14486787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547c26f78fe1552993da874bd5862d2cee112f2d28102d70d4d96f1fc1efe352`  
		Last Modified: Wed, 06 Feb 2019 18:24:12 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cd7ebfe3a7d3f1050ff7ffb38057cd6c946cd0f7dccde7309472ba488c9811`  
		Last Modified: Wed, 06 Feb 2019 18:24:12 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3-alpine` - linux; 386

```console
$ docker pull redis@sha256:5700245b6141ead4e63534baa834c003ba9fd21c5d1ed56bfc701b41e81efcf3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14394463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fdc983919be8d9bc4cc9da8d3358e073ddd18cbc6a206dfa958bbedfd895526`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:23:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 12:23:13 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 12:23:13 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 12:23:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 12:23:14 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 12:24:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 12:24:10 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 12:24:11 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:24:11 GMT
WORKDIR /data
# Fri, 21 Dec 2018 12:24:11 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:24:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:24:11 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 12:24:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05dcaf7e3a5f71f671a74e623bb9abe78af5ef495965ba44fa2467cb6428516`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9314a25830c13371be7bb35c347e70d7a8b44c928b5d2fc0e1712c30f80da31`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 407.1 KB (407101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0406db36d53387c44da802338654a6f8bc1e6544757d08ea1b5e6f8cc5bade16`  
		Last Modified: Fri, 21 Dec 2018 12:25:19 GMT  
		Size: 11.7 MB (11713858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfeb7deba05006ba5e06a8f4297fbd22e17ffa0e9942ef32e85a88cec1203746`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5390e07d4e9cc2c99bc0664b1d194e7a1ee5f37cd22208977c29438009e4ed`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:be299124e656892bb56afcc09506f6957d411a4bbc39c1209b0d3e75cec36008
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18590646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5b76bf4aca8426d505ef86bec287919f0b92c4f7c239e0044a008148213690`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:26:00 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:26:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:26:07 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:26:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:26:12 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:27:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:27:17 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:27:18 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:27:19 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:27:20 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:27:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:27:22 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:27:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38611b6a52af54e6a88187c1f138f076668eafe25d524d4c76b6670716073e7f`  
		Last Modified: Wed, 06 Feb 2019 14:31:07 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a40fe5968cb8f23b3ca4cef68f3083205d535be4fa7925583252b92e164774`  
		Last Modified: Wed, 06 Feb 2019 14:31:05 GMT  
		Size: 410.3 KB (410323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532b3ba7430c305b332c4beb288b906b6ab44eabbad08ec949a906248cb15bdf`  
		Last Modified: Wed, 06 Feb 2019 14:31:09 GMT  
		Size: 15.4 MB (15399656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255abeb131a5a1901cc5bda852358ee7bb91a54177469d6e6aa2de0c44117a97`  
		Last Modified: Wed, 06 Feb 2019 14:31:04 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d58a4dfb4949de81c39a4c06cdf49dc55704f1bd518599c25e8337a1b77b0b0`  
		Last Modified: Wed, 06 Feb 2019 14:31:04 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3-alpine` - linux; s390x

```console
$ docker pull redis@sha256:87269f077c094415c1734693d39421c25af6a7648a3044cfe858cec34cb9fa72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17815155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01dbed52b1fe89a4f506f5dc344c396298ad1795f126677db04bac43b78f8a5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:47:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:47:32 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:48:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:48:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:48:06 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:48:06 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:48:06 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:48:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:48:06 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:48:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c035dc3a25ffacd002e6a9e9f5599a475e589432aa2380567d2fc6d0a8eb7be5`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432cab9de09143d51b3e4494c80bc9d4f25df2a6cac8bdd71f821ba40630dedf`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 407.8 KB (407822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd6c926611b41ffb7f13e05ea818d9a88034f80e8953f3fab26622e7c471639`  
		Last Modified: Wed, 06 Feb 2019 14:49:37 GMT  
		Size: 14.9 MB (14864051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8324d4829065d40fd5cca78a8bdcb0150584d066e67c93219a63288b31f8a263`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546bd4d8cb455d013e9b7082c064074acda38e28440df02d448d44a0ae29e902`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.3-alpine3.9`

```console
$ docker pull redis@sha256:1424dc7e22ed42faab4451205ebf879b26ab4846fc96c813818d105614b903ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:5.0.3-alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:49c68b2ddb87cb21336d5e14a5b0874e539c6a5c1d5f51fb4b025513acc3316d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.7 MB (17722069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5cff96d7b8f5d3332b43922e424d448172f68b118e0e32cb26270227faec083`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 21:24:04 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 05 Feb 2019 21:24:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 05 Feb 2019 21:24:06 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Feb 2019 21:24:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Feb 2019 21:24:07 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Feb 2019 21:25:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 05 Feb 2019 21:25:48 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Feb 2019 21:25:48 GMT
VOLUME [/data]
# Tue, 05 Feb 2019 21:25:48 GMT
WORKDIR /data
# Tue, 05 Feb 2019 21:25:49 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 05 Feb 2019 21:25:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Feb 2019 21:25:49 GMT
EXPOSE 6379
# Tue, 05 Feb 2019 21:25:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42672a2ca6a1cc999c70a5b2db9eb57ba0345688799ad310cac5d9b77a5c236`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823e4275fef65b480f1c028b2623db710d7e826ef20de02e98c593c5bf5262cb`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 403.0 KB (402995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ad7a3b6c3fb2ef4fe32aa1535eb063abd70e0f5aec29c248d8b0d3d08a6f47`  
		Last Modified: Tue, 05 Feb 2019 21:27:10 GMT  
		Size: 14.6 MB (14562585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327e62bcfef7879ca648717d3b9377978a7ff2b5ac7cca277ba284f16ea85883`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5997a801f56098c177a275af36d5d7522b93a2ceadee22d389e4ce688ac8da`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:4a8cceff87821658eb72eda851ecf3160862cd525d2467ffb024052227ef608d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14410911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27f0b43ee61cbd94908c71808fe407f6714a64001e989fb670649f0d93927338`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 09:20:24 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 31 Jan 2019 09:20:27 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 31 Jan 2019 09:20:27 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 31 Jan 2019 09:20:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 31 Jan 2019 09:20:28 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 31 Jan 2019 09:21:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 31 Jan 2019 09:21:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 31 Jan 2019 09:21:10 GMT
VOLUME [/data]
# Thu, 31 Jan 2019 09:21:10 GMT
WORKDIR /data
# Thu, 31 Jan 2019 09:21:10 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 31 Jan 2019 09:21:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Jan 2019 09:21:11 GMT
EXPOSE 6379
# Thu, 31 Jan 2019 09:21:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebd28418fd718508b5fea4fb3b8a8df1880c032415bdf7fa05f6597553a9ce2`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e60c2b63aeba0034740dec220f6276e15be443cc503640a0aa178c7292e423b`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 405.2 KB (405186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b11ec1f5d016feef776fdfdc0bead46e3846f9b52c981b09ca93f5a5b44380`  
		Last Modified: Thu, 31 Jan 2019 09:22:07 GMT  
		Size: 11.9 MB (11857940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa89be15ad241e70aedfdde10501eebb5813af38dbf705ca1c7229a2741d65fb`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f158534113595b8720c48303354c88614909c9f367ad7939f87d82e60a1033`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:3c4664968d743aa1eb3a620fbefc4ec5437b1b546949d5f5748ea81b28aa0111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17581823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee32ec92d0ca472c91bdd4b964aebdcd5d83086e5d6a7d90a2fe55dad20c01d8`
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
# Wed, 06 Feb 2019 18:17:51 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 18:17:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 18:17:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 18:19:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 18:19:25 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:19:26 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:19:28 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:19:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:19:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:19:33 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:19:34 GMT
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
	-	`sha256:d2d8f1330b4e18a61eaa48b69a64e9571ddc410f64627100685e8aef86d57d5f`  
		Last Modified: Wed, 06 Feb 2019 18:24:18 GMT  
		Size: 14.5 MB (14486787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547c26f78fe1552993da874bd5862d2cee112f2d28102d70d4d96f1fc1efe352`  
		Last Modified: Wed, 06 Feb 2019 18:24:12 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cd7ebfe3a7d3f1050ff7ffb38057cd6c946cd0f7dccde7309472ba488c9811`  
		Last Modified: Wed, 06 Feb 2019 18:24:12 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:5700245b6141ead4e63534baa834c003ba9fd21c5d1ed56bfc701b41e81efcf3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14394463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fdc983919be8d9bc4cc9da8d3358e073ddd18cbc6a206dfa958bbedfd895526`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:23:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 12:23:13 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 12:23:13 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 12:23:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 12:23:14 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 12:24:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 12:24:10 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 12:24:11 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:24:11 GMT
WORKDIR /data
# Fri, 21 Dec 2018 12:24:11 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:24:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:24:11 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 12:24:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05dcaf7e3a5f71f671a74e623bb9abe78af5ef495965ba44fa2467cb6428516`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9314a25830c13371be7bb35c347e70d7a8b44c928b5d2fc0e1712c30f80da31`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 407.1 KB (407101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0406db36d53387c44da802338654a6f8bc1e6544757d08ea1b5e6f8cc5bade16`  
		Last Modified: Fri, 21 Dec 2018 12:25:19 GMT  
		Size: 11.7 MB (11713858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfeb7deba05006ba5e06a8f4297fbd22e17ffa0e9942ef32e85a88cec1203746`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5390e07d4e9cc2c99bc0664b1d194e7a1ee5f37cd22208977c29438009e4ed`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:be299124e656892bb56afcc09506f6957d411a4bbc39c1209b0d3e75cec36008
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18590646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5b76bf4aca8426d505ef86bec287919f0b92c4f7c239e0044a008148213690`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:26:00 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:26:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:26:07 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:26:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:26:12 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:27:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:27:17 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:27:18 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:27:19 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:27:20 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:27:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:27:22 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:27:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38611b6a52af54e6a88187c1f138f076668eafe25d524d4c76b6670716073e7f`  
		Last Modified: Wed, 06 Feb 2019 14:31:07 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a40fe5968cb8f23b3ca4cef68f3083205d535be4fa7925583252b92e164774`  
		Last Modified: Wed, 06 Feb 2019 14:31:05 GMT  
		Size: 410.3 KB (410323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532b3ba7430c305b332c4beb288b906b6ab44eabbad08ec949a906248cb15bdf`  
		Last Modified: Wed, 06 Feb 2019 14:31:09 GMT  
		Size: 15.4 MB (15399656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255abeb131a5a1901cc5bda852358ee7bb91a54177469d6e6aa2de0c44117a97`  
		Last Modified: Wed, 06 Feb 2019 14:31:04 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d58a4dfb4949de81c39a4c06cdf49dc55704f1bd518599c25e8337a1b77b0b0`  
		Last Modified: Wed, 06 Feb 2019 14:31:04 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:87269f077c094415c1734693d39421c25af6a7648a3044cfe858cec34cb9fa72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17815155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01dbed52b1fe89a4f506f5dc344c396298ad1795f126677db04bac43b78f8a5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:47:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:47:32 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:48:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:48:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:48:06 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:48:06 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:48:06 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:48:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:48:06 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:48:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c035dc3a25ffacd002e6a9e9f5599a475e589432aa2380567d2fc6d0a8eb7be5`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432cab9de09143d51b3e4494c80bc9d4f25df2a6cac8bdd71f821ba40630dedf`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 407.8 KB (407822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd6c926611b41ffb7f13e05ea818d9a88034f80e8953f3fab26622e7c471639`  
		Last Modified: Wed, 06 Feb 2019 14:49:37 GMT  
		Size: 14.9 MB (14864051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8324d4829065d40fd5cca78a8bdcb0150584d066e67c93219a63288b31f8a263`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546bd4d8cb455d013e9b7082c064074acda38e28440df02d448d44a0ae29e902`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.3-stretch`

```console
$ docker pull redis@sha256:7aeb0f44dcbe9a87c4282dccf27d241e3b251acc1ba1513ead6de28a682b478a
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

### `redis:5.0.3-stretch` - linux; amd64

```console
$ docker pull redis@sha256:d7371d6c24ec0dd4b0834cfdf08789eee95c648198180be5b0eff64754b027ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35212744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f55cf3661e92cc44014f9d93e6f7cbd2a59b7220a26edcdb0828289cf6a361f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 09:02:40 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:02:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:02:42 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:02:42 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:02:42 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:02:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:02:43 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:02:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f84ab76ce60e445f215f063b20e78199ddd3a0f0fcae499d5fd9fb022183e25`  
		Last Modified: Wed, 06 Feb 2019 09:08:32 GMT  
		Size: 11.8 MB (11768829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0903bdecada21bf7808e21d6e5e492d4b7f2e0e5b1dadbd4e8734345af57bea2`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492876061fbda6fb891eff7a586e2aec8307c64c8bc161a4bdc47678a502a940`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:3db6bd766954e6f5dd8f841578385b6813c59cf31cc25e56c46f0c07a6c0e6fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33552844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d40efa7719da5e6ab0afbcecf22ae384a236fcd9554180d77b59abef717d69`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 09:55:47 GMT
ADD file:e870bf9826436c9d50093c17a45bffdf2dbfb3fb4fa73595ec02fdf0767f8c1b in / 
# Wed, 06 Feb 2019 09:55:48 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 13:41:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 13:41:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 13:41:52 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 13:41:52 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 13:41:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 13:41:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 13:42:56 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 13:42:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 13:42:58 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 13:42:58 GMT
WORKDIR /data
# Wed, 06 Feb 2019 13:42:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 13:42:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 13:42:59 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 13:42:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9b1495315079a4327f28a5ece699ace3f2e12af21ab453e345feae7e22d718bf`  
		Last Modified: Wed, 06 Feb 2019 10:03:48 GMT  
		Size: 21.2 MB (21181339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a94fd0c81c05add8c76633297d684f52220e92e405e15e314c23821de3b4572`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41c689abd16f19fe4af42af8c734545e9fe188b87851eb28d1f5f4f469f9c60`  
		Last Modified: Wed, 06 Feb 2019 13:43:57 GMT  
		Size: 931.2 KB (931157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca09b29c0253f77c11f15d98110aa6251abaf5f4b2b0fb556687ea3a3b906ad0`  
		Last Modified: Wed, 06 Feb 2019 13:44:00 GMT  
		Size: 11.4 MB (11438062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b21e3728066badc0566f8fb26f1e74c2e2021f635cf715ad97927b7e5369a5`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1bdf8cec53a09758589aa969e16493c0e16c1faa2d23b03aef6d742309c8fc`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:bde51f2079f2387996319cae5810670c2394dcfa6a10a53adc284e08b63a8f4f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31335589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fad7675d00c618c1285c322d4ab913b1f51d852abf6ef099022519df00fd519`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:10:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 15:10:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 15:10:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 15:10:51 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 15:10:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 15:10:52 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 15:11:54 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 15:11:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 15:11:59 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 15:12:00 GMT
WORKDIR /data
# Wed, 23 Jan 2019 15:12:01 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 15:12:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 15:12:03 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 15:12:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfe83343c5e1e5b661ae0cf82627f2a90cbd7cb08c800b7337e9d714156e0f0`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e17ba9c527459ecfa72e59cc8e381c3a9667c200af0dd579ee109c19d055a1`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 915.8 KB (915843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a825542656992a22df1680e892813ab0ac03bef78ddbb192f439c04c5bcaec2b`  
		Last Modified: Wed, 23 Jan 2019 15:13:36 GMT  
		Size: 11.1 MB (11127177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbfd7fb16a4c33bee085e3f8048c80e33a9cf8f2988a518d70f9cfb467ecf77`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c790758254dd36cc30068dc344c2b4c1959b9b232e3fc498476f593966eff05a`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3-stretch` - linux; arm64 variant v8

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

### `redis:5.0.3-stretch` - linux; 386

```console
$ docker pull redis@sha256:49630a5efd02b75c09d4158f3d370718f128cefdb2277f061e28168bb0ccabd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35247591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:929d377e0fcdd507905087124a25a74f583063b9b2671b68964e00525c15c4a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:58:14 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:58:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:58:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 14:00:01 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:00:02 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:00:02 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:00:02 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:00:02 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:00:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:00:03 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:00:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f073067f1925015bef7333d173b916e2e36e6b2a9be0e8e409c92a914a459c23`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231e88ea2e22d423059304481650a1a646cd344ff23c70d5b364c31ddaf073eb`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 920.1 KB (920102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda4eb6f517ccdf388c63cb22acb04654eaf143b27072fedf011a0357e2a3d46`  
		Last Modified: Wed, 23 Jan 2019 14:01:23 GMT  
		Size: 11.2 MB (11178123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f547806ddcd0ac855b6e47296590718bfc259a83048a3cfea5ac42cca61554`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f9e137763ae9f62222dcf675e1fb8281c704aae236435ec02a41cfea6bdaed`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:2fdde05a0844dda9bfd72ae122660ba6444b8d18f5e1819a63b9b55524f0d2bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35623663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7991b9fff60afd70765cfb1729d82cc8cc24f254fbe0609cbd58151ed2582043`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:22:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:22:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:23:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:23:31 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:23:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:23:36 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:25:26 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:25:31 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:25:33 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:25:35 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:25:36 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:25:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:25:40 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:25:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20321bec709a1fb1b4332af6e7af0c9c1629fb86adfeb8c4ec41f6486d22a55`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474693152966afd031e558316092ddbd7b3b7a97df46e5b1234a8c832a559522`  
		Last Modified: Wed, 06 Feb 2019 14:30:36 GMT  
		Size: 909.7 KB (909710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2387738ae5dc718c698f1cc5314eca6c32d31a194a08f04eb656e2a3b6656c`  
		Last Modified: Wed, 06 Feb 2019 14:30:39 GMT  
		Size: 12.0 MB (11956265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab96e7f10021ee67298aff7fbebc66497918064f2daecafbf469a2e125ab014b`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8546034482b52ae6de6a814e39e385b484d7d9ccfa894e80738ab484ac96e519`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3-stretch` - linux; s390x

```console
$ docker pull redis@sha256:678de945095c4ebe1872fcf9fddd568e8df76e66fc0fb8a7d39f8ad2d74db411
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35507564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac3ae0dc791f04e1e2f8f7537a0113d862c26893a9fe5156892c341ebe3bfb54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:46:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:46:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:46:45 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:46:45 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:46:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:46:46 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:47:22 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:47:23 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:47:23 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:47:23 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:47:24 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:47:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:47:24 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:47:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7372cde11bc20743e4b18508d5a43d0c4b135c13aaf2bdd4201e590f18c4ae`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce30edbe6a65e2dd54fa17ab9d73575aa91e5354fe7f650dca6fc639164c8e69`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 926.8 KB (926789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7284ce8539409925a3cd1aeda53ce35ec65a3b07f2e2ffd4b024434e14fd030`  
		Last Modified: Wed, 06 Feb 2019 14:49:24 GMT  
		Size: 12.2 MB (12225183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f84d997b1f112d8a46786e9d13c5f8d5aca3333167e4a6a95c6e90e8ace25f`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf52d878af2a05cb0421a79783133f6c5785414504c4644364654e3b94b00e48`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-alpine`

```console
$ docker pull redis@sha256:1424dc7e22ed42faab4451205ebf879b26ab4846fc96c813818d105614b903ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:5.0-alpine` - linux; amd64

```console
$ docker pull redis@sha256:49c68b2ddb87cb21336d5e14a5b0874e539c6a5c1d5f51fb4b025513acc3316d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.7 MB (17722069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5cff96d7b8f5d3332b43922e424d448172f68b118e0e32cb26270227faec083`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 21:24:04 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 05 Feb 2019 21:24:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 05 Feb 2019 21:24:06 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Feb 2019 21:24:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Feb 2019 21:24:07 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Feb 2019 21:25:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 05 Feb 2019 21:25:48 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Feb 2019 21:25:48 GMT
VOLUME [/data]
# Tue, 05 Feb 2019 21:25:48 GMT
WORKDIR /data
# Tue, 05 Feb 2019 21:25:49 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 05 Feb 2019 21:25:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Feb 2019 21:25:49 GMT
EXPOSE 6379
# Tue, 05 Feb 2019 21:25:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42672a2ca6a1cc999c70a5b2db9eb57ba0345688799ad310cac5d9b77a5c236`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823e4275fef65b480f1c028b2623db710d7e826ef20de02e98c593c5bf5262cb`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 403.0 KB (402995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ad7a3b6c3fb2ef4fe32aa1535eb063abd70e0f5aec29c248d8b0d3d08a6f47`  
		Last Modified: Tue, 05 Feb 2019 21:27:10 GMT  
		Size: 14.6 MB (14562585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327e62bcfef7879ca648717d3b9377978a7ff2b5ac7cca277ba284f16ea85883`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5997a801f56098c177a275af36d5d7522b93a2ceadee22d389e4ce688ac8da`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:4a8cceff87821658eb72eda851ecf3160862cd525d2467ffb024052227ef608d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14410911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27f0b43ee61cbd94908c71808fe407f6714a64001e989fb670649f0d93927338`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 09:20:24 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 31 Jan 2019 09:20:27 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 31 Jan 2019 09:20:27 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 31 Jan 2019 09:20:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 31 Jan 2019 09:20:28 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 31 Jan 2019 09:21:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 31 Jan 2019 09:21:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 31 Jan 2019 09:21:10 GMT
VOLUME [/data]
# Thu, 31 Jan 2019 09:21:10 GMT
WORKDIR /data
# Thu, 31 Jan 2019 09:21:10 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 31 Jan 2019 09:21:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Jan 2019 09:21:11 GMT
EXPOSE 6379
# Thu, 31 Jan 2019 09:21:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebd28418fd718508b5fea4fb3b8a8df1880c032415bdf7fa05f6597553a9ce2`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e60c2b63aeba0034740dec220f6276e15be443cc503640a0aa178c7292e423b`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 405.2 KB (405186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b11ec1f5d016feef776fdfdc0bead46e3846f9b52c981b09ca93f5a5b44380`  
		Last Modified: Thu, 31 Jan 2019 09:22:07 GMT  
		Size: 11.9 MB (11857940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa89be15ad241e70aedfdde10501eebb5813af38dbf705ca1c7229a2741d65fb`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f158534113595b8720c48303354c88614909c9f367ad7939f87d82e60a1033`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:3c4664968d743aa1eb3a620fbefc4ec5437b1b546949d5f5748ea81b28aa0111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17581823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee32ec92d0ca472c91bdd4b964aebdcd5d83086e5d6a7d90a2fe55dad20c01d8`
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
# Wed, 06 Feb 2019 18:17:51 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 18:17:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 18:17:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 18:19:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 18:19:25 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:19:26 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:19:28 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:19:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:19:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:19:33 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:19:34 GMT
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
	-	`sha256:d2d8f1330b4e18a61eaa48b69a64e9571ddc410f64627100685e8aef86d57d5f`  
		Last Modified: Wed, 06 Feb 2019 18:24:18 GMT  
		Size: 14.5 MB (14486787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547c26f78fe1552993da874bd5862d2cee112f2d28102d70d4d96f1fc1efe352`  
		Last Modified: Wed, 06 Feb 2019 18:24:12 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cd7ebfe3a7d3f1050ff7ffb38057cd6c946cd0f7dccde7309472ba488c9811`  
		Last Modified: Wed, 06 Feb 2019 18:24:12 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; 386

```console
$ docker pull redis@sha256:5700245b6141ead4e63534baa834c003ba9fd21c5d1ed56bfc701b41e81efcf3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14394463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fdc983919be8d9bc4cc9da8d3358e073ddd18cbc6a206dfa958bbedfd895526`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:23:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 12:23:13 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 12:23:13 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 12:23:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 12:23:14 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 12:24:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 12:24:10 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 12:24:11 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:24:11 GMT
WORKDIR /data
# Fri, 21 Dec 2018 12:24:11 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:24:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:24:11 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 12:24:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05dcaf7e3a5f71f671a74e623bb9abe78af5ef495965ba44fa2467cb6428516`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9314a25830c13371be7bb35c347e70d7a8b44c928b5d2fc0e1712c30f80da31`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 407.1 KB (407101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0406db36d53387c44da802338654a6f8bc1e6544757d08ea1b5e6f8cc5bade16`  
		Last Modified: Fri, 21 Dec 2018 12:25:19 GMT  
		Size: 11.7 MB (11713858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfeb7deba05006ba5e06a8f4297fbd22e17ffa0e9942ef32e85a88cec1203746`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5390e07d4e9cc2c99bc0664b1d194e7a1ee5f37cd22208977c29438009e4ed`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:be299124e656892bb56afcc09506f6957d411a4bbc39c1209b0d3e75cec36008
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18590646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5b76bf4aca8426d505ef86bec287919f0b92c4f7c239e0044a008148213690`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:26:00 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:26:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:26:07 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:26:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:26:12 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:27:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:27:17 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:27:18 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:27:19 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:27:20 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:27:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:27:22 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:27:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38611b6a52af54e6a88187c1f138f076668eafe25d524d4c76b6670716073e7f`  
		Last Modified: Wed, 06 Feb 2019 14:31:07 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a40fe5968cb8f23b3ca4cef68f3083205d535be4fa7925583252b92e164774`  
		Last Modified: Wed, 06 Feb 2019 14:31:05 GMT  
		Size: 410.3 KB (410323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532b3ba7430c305b332c4beb288b906b6ab44eabbad08ec949a906248cb15bdf`  
		Last Modified: Wed, 06 Feb 2019 14:31:09 GMT  
		Size: 15.4 MB (15399656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255abeb131a5a1901cc5bda852358ee7bb91a54177469d6e6aa2de0c44117a97`  
		Last Modified: Wed, 06 Feb 2019 14:31:04 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d58a4dfb4949de81c39a4c06cdf49dc55704f1bd518599c25e8337a1b77b0b0`  
		Last Modified: Wed, 06 Feb 2019 14:31:04 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; s390x

```console
$ docker pull redis@sha256:87269f077c094415c1734693d39421c25af6a7648a3044cfe858cec34cb9fa72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17815155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01dbed52b1fe89a4f506f5dc344c396298ad1795f126677db04bac43b78f8a5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:47:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:47:32 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:48:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:48:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:48:06 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:48:06 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:48:06 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:48:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:48:06 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:48:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c035dc3a25ffacd002e6a9e9f5599a475e589432aa2380567d2fc6d0a8eb7be5`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432cab9de09143d51b3e4494c80bc9d4f25df2a6cac8bdd71f821ba40630dedf`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 407.8 KB (407822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd6c926611b41ffb7f13e05ea818d9a88034f80e8953f3fab26622e7c471639`  
		Last Modified: Wed, 06 Feb 2019 14:49:37 GMT  
		Size: 14.9 MB (14864051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8324d4829065d40fd5cca78a8bdcb0150584d066e67c93219a63288b31f8a263`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546bd4d8cb455d013e9b7082c064074acda38e28440df02d448d44a0ae29e902`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-alpine3.9`

```console
$ docker pull redis@sha256:1424dc7e22ed42faab4451205ebf879b26ab4846fc96c813818d105614b903ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:5.0-alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:49c68b2ddb87cb21336d5e14a5b0874e539c6a5c1d5f51fb4b025513acc3316d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.7 MB (17722069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5cff96d7b8f5d3332b43922e424d448172f68b118e0e32cb26270227faec083`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 21:24:04 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 05 Feb 2019 21:24:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 05 Feb 2019 21:24:06 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Feb 2019 21:24:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Feb 2019 21:24:07 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Feb 2019 21:25:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 05 Feb 2019 21:25:48 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Feb 2019 21:25:48 GMT
VOLUME [/data]
# Tue, 05 Feb 2019 21:25:48 GMT
WORKDIR /data
# Tue, 05 Feb 2019 21:25:49 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 05 Feb 2019 21:25:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Feb 2019 21:25:49 GMT
EXPOSE 6379
# Tue, 05 Feb 2019 21:25:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42672a2ca6a1cc999c70a5b2db9eb57ba0345688799ad310cac5d9b77a5c236`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823e4275fef65b480f1c028b2623db710d7e826ef20de02e98c593c5bf5262cb`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 403.0 KB (402995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ad7a3b6c3fb2ef4fe32aa1535eb063abd70e0f5aec29c248d8b0d3d08a6f47`  
		Last Modified: Tue, 05 Feb 2019 21:27:10 GMT  
		Size: 14.6 MB (14562585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327e62bcfef7879ca648717d3b9377978a7ff2b5ac7cca277ba284f16ea85883`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5997a801f56098c177a275af36d5d7522b93a2ceadee22d389e4ce688ac8da`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:4a8cceff87821658eb72eda851ecf3160862cd525d2467ffb024052227ef608d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14410911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27f0b43ee61cbd94908c71808fe407f6714a64001e989fb670649f0d93927338`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 09:20:24 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 31 Jan 2019 09:20:27 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 31 Jan 2019 09:20:27 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 31 Jan 2019 09:20:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 31 Jan 2019 09:20:28 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 31 Jan 2019 09:21:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 31 Jan 2019 09:21:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 31 Jan 2019 09:21:10 GMT
VOLUME [/data]
# Thu, 31 Jan 2019 09:21:10 GMT
WORKDIR /data
# Thu, 31 Jan 2019 09:21:10 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 31 Jan 2019 09:21:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Jan 2019 09:21:11 GMT
EXPOSE 6379
# Thu, 31 Jan 2019 09:21:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebd28418fd718508b5fea4fb3b8a8df1880c032415bdf7fa05f6597553a9ce2`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e60c2b63aeba0034740dec220f6276e15be443cc503640a0aa178c7292e423b`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 405.2 KB (405186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b11ec1f5d016feef776fdfdc0bead46e3846f9b52c981b09ca93f5a5b44380`  
		Last Modified: Thu, 31 Jan 2019 09:22:07 GMT  
		Size: 11.9 MB (11857940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa89be15ad241e70aedfdde10501eebb5813af38dbf705ca1c7229a2741d65fb`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f158534113595b8720c48303354c88614909c9f367ad7939f87d82e60a1033`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:3c4664968d743aa1eb3a620fbefc4ec5437b1b546949d5f5748ea81b28aa0111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17581823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee32ec92d0ca472c91bdd4b964aebdcd5d83086e5d6a7d90a2fe55dad20c01d8`
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
# Wed, 06 Feb 2019 18:17:51 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 18:17:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 18:17:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 18:19:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 18:19:25 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:19:26 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:19:28 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:19:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:19:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:19:33 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:19:34 GMT
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
	-	`sha256:d2d8f1330b4e18a61eaa48b69a64e9571ddc410f64627100685e8aef86d57d5f`  
		Last Modified: Wed, 06 Feb 2019 18:24:18 GMT  
		Size: 14.5 MB (14486787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547c26f78fe1552993da874bd5862d2cee112f2d28102d70d4d96f1fc1efe352`  
		Last Modified: Wed, 06 Feb 2019 18:24:12 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cd7ebfe3a7d3f1050ff7ffb38057cd6c946cd0f7dccde7309472ba488c9811`  
		Last Modified: Wed, 06 Feb 2019 18:24:12 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:5700245b6141ead4e63534baa834c003ba9fd21c5d1ed56bfc701b41e81efcf3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14394463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fdc983919be8d9bc4cc9da8d3358e073ddd18cbc6a206dfa958bbedfd895526`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:23:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 12:23:13 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 12:23:13 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 12:23:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 12:23:14 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 12:24:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 12:24:10 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 12:24:11 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:24:11 GMT
WORKDIR /data
# Fri, 21 Dec 2018 12:24:11 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:24:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:24:11 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 12:24:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05dcaf7e3a5f71f671a74e623bb9abe78af5ef495965ba44fa2467cb6428516`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9314a25830c13371be7bb35c347e70d7a8b44c928b5d2fc0e1712c30f80da31`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 407.1 KB (407101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0406db36d53387c44da802338654a6f8bc1e6544757d08ea1b5e6f8cc5bade16`  
		Last Modified: Fri, 21 Dec 2018 12:25:19 GMT  
		Size: 11.7 MB (11713858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfeb7deba05006ba5e06a8f4297fbd22e17ffa0e9942ef32e85a88cec1203746`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5390e07d4e9cc2c99bc0664b1d194e7a1ee5f37cd22208977c29438009e4ed`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:be299124e656892bb56afcc09506f6957d411a4bbc39c1209b0d3e75cec36008
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18590646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5b76bf4aca8426d505ef86bec287919f0b92c4f7c239e0044a008148213690`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:26:00 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:26:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:26:07 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:26:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:26:12 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:27:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:27:17 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:27:18 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:27:19 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:27:20 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:27:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:27:22 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:27:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38611b6a52af54e6a88187c1f138f076668eafe25d524d4c76b6670716073e7f`  
		Last Modified: Wed, 06 Feb 2019 14:31:07 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a40fe5968cb8f23b3ca4cef68f3083205d535be4fa7925583252b92e164774`  
		Last Modified: Wed, 06 Feb 2019 14:31:05 GMT  
		Size: 410.3 KB (410323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532b3ba7430c305b332c4beb288b906b6ab44eabbad08ec949a906248cb15bdf`  
		Last Modified: Wed, 06 Feb 2019 14:31:09 GMT  
		Size: 15.4 MB (15399656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255abeb131a5a1901cc5bda852358ee7bb91a54177469d6e6aa2de0c44117a97`  
		Last Modified: Wed, 06 Feb 2019 14:31:04 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d58a4dfb4949de81c39a4c06cdf49dc55704f1bd518599c25e8337a1b77b0b0`  
		Last Modified: Wed, 06 Feb 2019 14:31:04 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:87269f077c094415c1734693d39421c25af6a7648a3044cfe858cec34cb9fa72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17815155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01dbed52b1fe89a4f506f5dc344c396298ad1795f126677db04bac43b78f8a5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:47:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:47:32 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:48:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:48:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:48:06 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:48:06 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:48:06 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:48:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:48:06 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:48:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c035dc3a25ffacd002e6a9e9f5599a475e589432aa2380567d2fc6d0a8eb7be5`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432cab9de09143d51b3e4494c80bc9d4f25df2a6cac8bdd71f821ba40630dedf`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 407.8 KB (407822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd6c926611b41ffb7f13e05ea818d9a88034f80e8953f3fab26622e7c471639`  
		Last Modified: Wed, 06 Feb 2019 14:49:37 GMT  
		Size: 14.9 MB (14864051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8324d4829065d40fd5cca78a8bdcb0150584d066e67c93219a63288b31f8a263`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546bd4d8cb455d013e9b7082c064074acda38e28440df02d448d44a0ae29e902`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-stretch`

```console
$ docker pull redis@sha256:7aeb0f44dcbe9a87c4282dccf27d241e3b251acc1ba1513ead6de28a682b478a
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
$ docker pull redis@sha256:d7371d6c24ec0dd4b0834cfdf08789eee95c648198180be5b0eff64754b027ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35212744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f55cf3661e92cc44014f9d93e6f7cbd2a59b7220a26edcdb0828289cf6a361f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 09:02:40 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:02:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:02:42 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:02:42 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:02:42 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:02:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:02:43 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:02:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f84ab76ce60e445f215f063b20e78199ddd3a0f0fcae499d5fd9fb022183e25`  
		Last Modified: Wed, 06 Feb 2019 09:08:32 GMT  
		Size: 11.8 MB (11768829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0903bdecada21bf7808e21d6e5e492d4b7f2e0e5b1dadbd4e8734345af57bea2`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492876061fbda6fb891eff7a586e2aec8307c64c8bc161a4bdc47678a502a940`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:3db6bd766954e6f5dd8f841578385b6813c59cf31cc25e56c46f0c07a6c0e6fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33552844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d40efa7719da5e6ab0afbcecf22ae384a236fcd9554180d77b59abef717d69`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 09:55:47 GMT
ADD file:e870bf9826436c9d50093c17a45bffdf2dbfb3fb4fa73595ec02fdf0767f8c1b in / 
# Wed, 06 Feb 2019 09:55:48 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 13:41:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 13:41:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 13:41:52 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 13:41:52 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 13:41:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 13:41:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 13:42:56 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 13:42:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 13:42:58 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 13:42:58 GMT
WORKDIR /data
# Wed, 06 Feb 2019 13:42:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 13:42:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 13:42:59 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 13:42:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9b1495315079a4327f28a5ece699ace3f2e12af21ab453e345feae7e22d718bf`  
		Last Modified: Wed, 06 Feb 2019 10:03:48 GMT  
		Size: 21.2 MB (21181339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a94fd0c81c05add8c76633297d684f52220e92e405e15e314c23821de3b4572`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41c689abd16f19fe4af42af8c734545e9fe188b87851eb28d1f5f4f469f9c60`  
		Last Modified: Wed, 06 Feb 2019 13:43:57 GMT  
		Size: 931.2 KB (931157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca09b29c0253f77c11f15d98110aa6251abaf5f4b2b0fb556687ea3a3b906ad0`  
		Last Modified: Wed, 06 Feb 2019 13:44:00 GMT  
		Size: 11.4 MB (11438062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b21e3728066badc0566f8fb26f1e74c2e2021f635cf715ad97927b7e5369a5`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1bdf8cec53a09758589aa969e16493c0e16c1faa2d23b03aef6d742309c8fc`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:bde51f2079f2387996319cae5810670c2394dcfa6a10a53adc284e08b63a8f4f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31335589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fad7675d00c618c1285c322d4ab913b1f51d852abf6ef099022519df00fd519`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:10:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 15:10:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 15:10:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 15:10:51 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 15:10:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 15:10:52 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 15:11:54 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 15:11:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 15:11:59 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 15:12:00 GMT
WORKDIR /data
# Wed, 23 Jan 2019 15:12:01 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 15:12:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 15:12:03 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 15:12:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfe83343c5e1e5b661ae0cf82627f2a90cbd7cb08c800b7337e9d714156e0f0`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e17ba9c527459ecfa72e59cc8e381c3a9667c200af0dd579ee109c19d055a1`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 915.8 KB (915843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a825542656992a22df1680e892813ab0ac03bef78ddbb192f439c04c5bcaec2b`  
		Last Modified: Wed, 23 Jan 2019 15:13:36 GMT  
		Size: 11.1 MB (11127177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbfd7fb16a4c33bee085e3f8048c80e33a9cf8f2988a518d70f9cfb467ecf77`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c790758254dd36cc30068dc344c2b4c1959b9b232e3fc498476f593966eff05a`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 419.0 B  
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
$ docker pull redis@sha256:49630a5efd02b75c09d4158f3d370718f128cefdb2277f061e28168bb0ccabd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35247591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:929d377e0fcdd507905087124a25a74f583063b9b2671b68964e00525c15c4a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:58:14 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:58:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:58:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 14:00:01 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:00:02 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:00:02 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:00:02 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:00:02 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:00:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:00:03 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:00:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f073067f1925015bef7333d173b916e2e36e6b2a9be0e8e409c92a914a459c23`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231e88ea2e22d423059304481650a1a646cd344ff23c70d5b364c31ddaf073eb`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 920.1 KB (920102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda4eb6f517ccdf388c63cb22acb04654eaf143b27072fedf011a0357e2a3d46`  
		Last Modified: Wed, 23 Jan 2019 14:01:23 GMT  
		Size: 11.2 MB (11178123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f547806ddcd0ac855b6e47296590718bfc259a83048a3cfea5ac42cca61554`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f9e137763ae9f62222dcf675e1fb8281c704aae236435ec02a41cfea6bdaed`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:2fdde05a0844dda9bfd72ae122660ba6444b8d18f5e1819a63b9b55524f0d2bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35623663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7991b9fff60afd70765cfb1729d82cc8cc24f254fbe0609cbd58151ed2582043`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:22:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:22:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:23:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:23:31 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:23:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:23:36 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:25:26 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:25:31 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:25:33 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:25:35 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:25:36 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:25:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:25:40 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:25:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20321bec709a1fb1b4332af6e7af0c9c1629fb86adfeb8c4ec41f6486d22a55`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474693152966afd031e558316092ddbd7b3b7a97df46e5b1234a8c832a559522`  
		Last Modified: Wed, 06 Feb 2019 14:30:36 GMT  
		Size: 909.7 KB (909710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2387738ae5dc718c698f1cc5314eca6c32d31a194a08f04eb656e2a3b6656c`  
		Last Modified: Wed, 06 Feb 2019 14:30:39 GMT  
		Size: 12.0 MB (11956265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab96e7f10021ee67298aff7fbebc66497918064f2daecafbf469a2e125ab014b`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8546034482b52ae6de6a814e39e385b484d7d9ccfa894e80738ab484ac96e519`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; s390x

```console
$ docker pull redis@sha256:678de945095c4ebe1872fcf9fddd568e8df76e66fc0fb8a7d39f8ad2d74db411
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35507564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac3ae0dc791f04e1e2f8f7537a0113d862c26893a9fe5156892c341ebe3bfb54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:46:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:46:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:46:45 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:46:45 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:46:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:46:46 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:47:22 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:47:23 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:47:23 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:47:23 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:47:24 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:47:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:47:24 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:47:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7372cde11bc20743e4b18508d5a43d0c4b135c13aaf2bdd4201e590f18c4ae`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce30edbe6a65e2dd54fa17ab9d73575aa91e5354fe7f650dca6fc639164c8e69`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 926.8 KB (926789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7284ce8539409925a3cd1aeda53ce35ec65a3b07f2e2ffd4b024434e14fd030`  
		Last Modified: Wed, 06 Feb 2019 14:49:24 GMT  
		Size: 12.2 MB (12225183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f84d997b1f112d8a46786e9d13c5f8d5aca3333167e4a6a95c6e90e8ace25f`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf52d878af2a05cb0421a79783133f6c5785414504c4644364654e3b94b00e48`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-32bit`

```console
$ docker pull redis@sha256:030feb09311b97f8b3bce0d1ba3f0a20002b93213933debf1577c024d1e0d3d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-32bit` - linux; amd64

```console
$ docker pull redis@sha256:9d3f298ac92ab934044793a6addbc41c92261a131cddf9bf3a099a7913d981a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39475793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5c5854734365dad78dc583e82d09f7dced217682c09868da4370f633fb3a25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 09:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:04:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:04:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:04:48 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:04:49 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:04:49 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:04:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:04:49 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:04:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898e6740eb9cc2ab7646094ca8bb90cf71eb1d2c8c07ee186dbf6284723a1f1c`  
		Last Modified: Wed, 06 Feb 2019 09:08:44 GMT  
		Size: 4.8 MB (4848339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda33995a5fb887ab8b3fdefa5f7184698a456af9c0cef2e224934dddb91aa0b`  
		Last Modified: Wed, 06 Feb 2019 09:08:46 GMT  
		Size: 11.2 MB (11183537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f172f8e8922cf60d1849fa78fe2713173ae436349b316bb8ff4550529c02afc7`  
		Last Modified: Wed, 06 Feb 2019 09:08:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a78894a3a8f868e9c4005ae8423f5156856f3867b1aa7186e5fdedcb6d28d3`  
		Last Modified: Wed, 06 Feb 2019 09:08:43 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-32bit-stretch`

```console
$ docker pull redis@sha256:030feb09311b97f8b3bce0d1ba3f0a20002b93213933debf1577c024d1e0d3d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:9d3f298ac92ab934044793a6addbc41c92261a131cddf9bf3a099a7913d981a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39475793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5c5854734365dad78dc583e82d09f7dced217682c09868da4370f633fb3a25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 09:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:04:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:04:48 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:04:48 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:04:49 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:04:49 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:04:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:04:49 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:04:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898e6740eb9cc2ab7646094ca8bb90cf71eb1d2c8c07ee186dbf6284723a1f1c`  
		Last Modified: Wed, 06 Feb 2019 09:08:44 GMT  
		Size: 4.8 MB (4848339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda33995a5fb887ab8b3fdefa5f7184698a456af9c0cef2e224934dddb91aa0b`  
		Last Modified: Wed, 06 Feb 2019 09:08:46 GMT  
		Size: 11.2 MB (11183537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f172f8e8922cf60d1849fa78fe2713173ae436349b316bb8ff4550529c02afc7`  
		Last Modified: Wed, 06 Feb 2019 09:08:43 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a78894a3a8f868e9c4005ae8423f5156856f3867b1aa7186e5fdedcb6d28d3`  
		Last Modified: Wed, 06 Feb 2019 09:08:43 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-alpine`

```console
$ docker pull redis@sha256:1424dc7e22ed42faab4451205ebf879b26ab4846fc96c813818d105614b903ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:5-alpine` - linux; amd64

```console
$ docker pull redis@sha256:49c68b2ddb87cb21336d5e14a5b0874e539c6a5c1d5f51fb4b025513acc3316d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.7 MB (17722069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5cff96d7b8f5d3332b43922e424d448172f68b118e0e32cb26270227faec083`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 21:24:04 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 05 Feb 2019 21:24:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 05 Feb 2019 21:24:06 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Feb 2019 21:24:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Feb 2019 21:24:07 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Feb 2019 21:25:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 05 Feb 2019 21:25:48 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Feb 2019 21:25:48 GMT
VOLUME [/data]
# Tue, 05 Feb 2019 21:25:48 GMT
WORKDIR /data
# Tue, 05 Feb 2019 21:25:49 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 05 Feb 2019 21:25:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Feb 2019 21:25:49 GMT
EXPOSE 6379
# Tue, 05 Feb 2019 21:25:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42672a2ca6a1cc999c70a5b2db9eb57ba0345688799ad310cac5d9b77a5c236`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823e4275fef65b480f1c028b2623db710d7e826ef20de02e98c593c5bf5262cb`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 403.0 KB (402995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ad7a3b6c3fb2ef4fe32aa1535eb063abd70e0f5aec29c248d8b0d3d08a6f47`  
		Last Modified: Tue, 05 Feb 2019 21:27:10 GMT  
		Size: 14.6 MB (14562585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327e62bcfef7879ca648717d3b9377978a7ff2b5ac7cca277ba284f16ea85883`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5997a801f56098c177a275af36d5d7522b93a2ceadee22d389e4ce688ac8da`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:4a8cceff87821658eb72eda851ecf3160862cd525d2467ffb024052227ef608d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14410911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27f0b43ee61cbd94908c71808fe407f6714a64001e989fb670649f0d93927338`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 09:20:24 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 31 Jan 2019 09:20:27 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 31 Jan 2019 09:20:27 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 31 Jan 2019 09:20:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 31 Jan 2019 09:20:28 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 31 Jan 2019 09:21:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 31 Jan 2019 09:21:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 31 Jan 2019 09:21:10 GMT
VOLUME [/data]
# Thu, 31 Jan 2019 09:21:10 GMT
WORKDIR /data
# Thu, 31 Jan 2019 09:21:10 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 31 Jan 2019 09:21:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Jan 2019 09:21:11 GMT
EXPOSE 6379
# Thu, 31 Jan 2019 09:21:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebd28418fd718508b5fea4fb3b8a8df1880c032415bdf7fa05f6597553a9ce2`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e60c2b63aeba0034740dec220f6276e15be443cc503640a0aa178c7292e423b`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 405.2 KB (405186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b11ec1f5d016feef776fdfdc0bead46e3846f9b52c981b09ca93f5a5b44380`  
		Last Modified: Thu, 31 Jan 2019 09:22:07 GMT  
		Size: 11.9 MB (11857940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa89be15ad241e70aedfdde10501eebb5813af38dbf705ca1c7229a2741d65fb`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f158534113595b8720c48303354c88614909c9f367ad7939f87d82e60a1033`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:3c4664968d743aa1eb3a620fbefc4ec5437b1b546949d5f5748ea81b28aa0111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17581823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee32ec92d0ca472c91bdd4b964aebdcd5d83086e5d6a7d90a2fe55dad20c01d8`
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
# Wed, 06 Feb 2019 18:17:51 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 18:17:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 18:17:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 18:19:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 18:19:25 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:19:26 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:19:28 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:19:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:19:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:19:33 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:19:34 GMT
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
	-	`sha256:d2d8f1330b4e18a61eaa48b69a64e9571ddc410f64627100685e8aef86d57d5f`  
		Last Modified: Wed, 06 Feb 2019 18:24:18 GMT  
		Size: 14.5 MB (14486787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547c26f78fe1552993da874bd5862d2cee112f2d28102d70d4d96f1fc1efe352`  
		Last Modified: Wed, 06 Feb 2019 18:24:12 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cd7ebfe3a7d3f1050ff7ffb38057cd6c946cd0f7dccde7309472ba488c9811`  
		Last Modified: Wed, 06 Feb 2019 18:24:12 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; 386

```console
$ docker pull redis@sha256:5700245b6141ead4e63534baa834c003ba9fd21c5d1ed56bfc701b41e81efcf3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14394463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fdc983919be8d9bc4cc9da8d3358e073ddd18cbc6a206dfa958bbedfd895526`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:23:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 12:23:13 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 12:23:13 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 12:23:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 12:23:14 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 12:24:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 12:24:10 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 12:24:11 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:24:11 GMT
WORKDIR /data
# Fri, 21 Dec 2018 12:24:11 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:24:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:24:11 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 12:24:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05dcaf7e3a5f71f671a74e623bb9abe78af5ef495965ba44fa2467cb6428516`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9314a25830c13371be7bb35c347e70d7a8b44c928b5d2fc0e1712c30f80da31`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 407.1 KB (407101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0406db36d53387c44da802338654a6f8bc1e6544757d08ea1b5e6f8cc5bade16`  
		Last Modified: Fri, 21 Dec 2018 12:25:19 GMT  
		Size: 11.7 MB (11713858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfeb7deba05006ba5e06a8f4297fbd22e17ffa0e9942ef32e85a88cec1203746`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5390e07d4e9cc2c99bc0664b1d194e7a1ee5f37cd22208977c29438009e4ed`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:be299124e656892bb56afcc09506f6957d411a4bbc39c1209b0d3e75cec36008
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18590646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5b76bf4aca8426d505ef86bec287919f0b92c4f7c239e0044a008148213690`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:26:00 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:26:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:26:07 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:26:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:26:12 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:27:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:27:17 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:27:18 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:27:19 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:27:20 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:27:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:27:22 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:27:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38611b6a52af54e6a88187c1f138f076668eafe25d524d4c76b6670716073e7f`  
		Last Modified: Wed, 06 Feb 2019 14:31:07 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a40fe5968cb8f23b3ca4cef68f3083205d535be4fa7925583252b92e164774`  
		Last Modified: Wed, 06 Feb 2019 14:31:05 GMT  
		Size: 410.3 KB (410323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532b3ba7430c305b332c4beb288b906b6ab44eabbad08ec949a906248cb15bdf`  
		Last Modified: Wed, 06 Feb 2019 14:31:09 GMT  
		Size: 15.4 MB (15399656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255abeb131a5a1901cc5bda852358ee7bb91a54177469d6e6aa2de0c44117a97`  
		Last Modified: Wed, 06 Feb 2019 14:31:04 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d58a4dfb4949de81c39a4c06cdf49dc55704f1bd518599c25e8337a1b77b0b0`  
		Last Modified: Wed, 06 Feb 2019 14:31:04 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; s390x

```console
$ docker pull redis@sha256:87269f077c094415c1734693d39421c25af6a7648a3044cfe858cec34cb9fa72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17815155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01dbed52b1fe89a4f506f5dc344c396298ad1795f126677db04bac43b78f8a5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:47:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:47:32 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:48:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:48:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:48:06 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:48:06 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:48:06 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:48:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:48:06 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:48:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c035dc3a25ffacd002e6a9e9f5599a475e589432aa2380567d2fc6d0a8eb7be5`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432cab9de09143d51b3e4494c80bc9d4f25df2a6cac8bdd71f821ba40630dedf`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 407.8 KB (407822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd6c926611b41ffb7f13e05ea818d9a88034f80e8953f3fab26622e7c471639`  
		Last Modified: Wed, 06 Feb 2019 14:49:37 GMT  
		Size: 14.9 MB (14864051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8324d4829065d40fd5cca78a8bdcb0150584d066e67c93219a63288b31f8a263`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546bd4d8cb455d013e9b7082c064074acda38e28440df02d448d44a0ae29e902`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-alpine3.9`

```console
$ docker pull redis@sha256:1424dc7e22ed42faab4451205ebf879b26ab4846fc96c813818d105614b903ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:5-alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:49c68b2ddb87cb21336d5e14a5b0874e539c6a5c1d5f51fb4b025513acc3316d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.7 MB (17722069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5cff96d7b8f5d3332b43922e424d448172f68b118e0e32cb26270227faec083`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 21:24:04 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 05 Feb 2019 21:24:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 05 Feb 2019 21:24:06 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Feb 2019 21:24:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Feb 2019 21:24:07 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Feb 2019 21:25:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 05 Feb 2019 21:25:48 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Feb 2019 21:25:48 GMT
VOLUME [/data]
# Tue, 05 Feb 2019 21:25:48 GMT
WORKDIR /data
# Tue, 05 Feb 2019 21:25:49 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 05 Feb 2019 21:25:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Feb 2019 21:25:49 GMT
EXPOSE 6379
# Tue, 05 Feb 2019 21:25:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42672a2ca6a1cc999c70a5b2db9eb57ba0345688799ad310cac5d9b77a5c236`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823e4275fef65b480f1c028b2623db710d7e826ef20de02e98c593c5bf5262cb`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 403.0 KB (402995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ad7a3b6c3fb2ef4fe32aa1535eb063abd70e0f5aec29c248d8b0d3d08a6f47`  
		Last Modified: Tue, 05 Feb 2019 21:27:10 GMT  
		Size: 14.6 MB (14562585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327e62bcfef7879ca648717d3b9377978a7ff2b5ac7cca277ba284f16ea85883`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5997a801f56098c177a275af36d5d7522b93a2ceadee22d389e4ce688ac8da`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:4a8cceff87821658eb72eda851ecf3160862cd525d2467ffb024052227ef608d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14410911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27f0b43ee61cbd94908c71808fe407f6714a64001e989fb670649f0d93927338`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 09:20:24 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 31 Jan 2019 09:20:27 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 31 Jan 2019 09:20:27 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 31 Jan 2019 09:20:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 31 Jan 2019 09:20:28 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 31 Jan 2019 09:21:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 31 Jan 2019 09:21:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 31 Jan 2019 09:21:10 GMT
VOLUME [/data]
# Thu, 31 Jan 2019 09:21:10 GMT
WORKDIR /data
# Thu, 31 Jan 2019 09:21:10 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 31 Jan 2019 09:21:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Jan 2019 09:21:11 GMT
EXPOSE 6379
# Thu, 31 Jan 2019 09:21:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebd28418fd718508b5fea4fb3b8a8df1880c032415bdf7fa05f6597553a9ce2`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e60c2b63aeba0034740dec220f6276e15be443cc503640a0aa178c7292e423b`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 405.2 KB (405186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b11ec1f5d016feef776fdfdc0bead46e3846f9b52c981b09ca93f5a5b44380`  
		Last Modified: Thu, 31 Jan 2019 09:22:07 GMT  
		Size: 11.9 MB (11857940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa89be15ad241e70aedfdde10501eebb5813af38dbf705ca1c7229a2741d65fb`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f158534113595b8720c48303354c88614909c9f367ad7939f87d82e60a1033`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:3c4664968d743aa1eb3a620fbefc4ec5437b1b546949d5f5748ea81b28aa0111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17581823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee32ec92d0ca472c91bdd4b964aebdcd5d83086e5d6a7d90a2fe55dad20c01d8`
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
# Wed, 06 Feb 2019 18:17:51 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 18:17:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 18:17:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 18:19:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 18:19:25 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:19:26 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:19:28 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:19:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:19:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:19:33 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:19:34 GMT
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
	-	`sha256:d2d8f1330b4e18a61eaa48b69a64e9571ddc410f64627100685e8aef86d57d5f`  
		Last Modified: Wed, 06 Feb 2019 18:24:18 GMT  
		Size: 14.5 MB (14486787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547c26f78fe1552993da874bd5862d2cee112f2d28102d70d4d96f1fc1efe352`  
		Last Modified: Wed, 06 Feb 2019 18:24:12 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cd7ebfe3a7d3f1050ff7ffb38057cd6c946cd0f7dccde7309472ba488c9811`  
		Last Modified: Wed, 06 Feb 2019 18:24:12 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:5700245b6141ead4e63534baa834c003ba9fd21c5d1ed56bfc701b41e81efcf3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14394463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fdc983919be8d9bc4cc9da8d3358e073ddd18cbc6a206dfa958bbedfd895526`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:23:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 12:23:13 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 12:23:13 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 12:23:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 12:23:14 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 12:24:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 12:24:10 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 12:24:11 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:24:11 GMT
WORKDIR /data
# Fri, 21 Dec 2018 12:24:11 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:24:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:24:11 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 12:24:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05dcaf7e3a5f71f671a74e623bb9abe78af5ef495965ba44fa2467cb6428516`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9314a25830c13371be7bb35c347e70d7a8b44c928b5d2fc0e1712c30f80da31`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 407.1 KB (407101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0406db36d53387c44da802338654a6f8bc1e6544757d08ea1b5e6f8cc5bade16`  
		Last Modified: Fri, 21 Dec 2018 12:25:19 GMT  
		Size: 11.7 MB (11713858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfeb7deba05006ba5e06a8f4297fbd22e17ffa0e9942ef32e85a88cec1203746`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5390e07d4e9cc2c99bc0664b1d194e7a1ee5f37cd22208977c29438009e4ed`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:be299124e656892bb56afcc09506f6957d411a4bbc39c1209b0d3e75cec36008
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18590646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5b76bf4aca8426d505ef86bec287919f0b92c4f7c239e0044a008148213690`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:26:00 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:26:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:26:07 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:26:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:26:12 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:27:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:27:17 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:27:18 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:27:19 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:27:20 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:27:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:27:22 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:27:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38611b6a52af54e6a88187c1f138f076668eafe25d524d4c76b6670716073e7f`  
		Last Modified: Wed, 06 Feb 2019 14:31:07 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a40fe5968cb8f23b3ca4cef68f3083205d535be4fa7925583252b92e164774`  
		Last Modified: Wed, 06 Feb 2019 14:31:05 GMT  
		Size: 410.3 KB (410323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532b3ba7430c305b332c4beb288b906b6ab44eabbad08ec949a906248cb15bdf`  
		Last Modified: Wed, 06 Feb 2019 14:31:09 GMT  
		Size: 15.4 MB (15399656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255abeb131a5a1901cc5bda852358ee7bb91a54177469d6e6aa2de0c44117a97`  
		Last Modified: Wed, 06 Feb 2019 14:31:04 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d58a4dfb4949de81c39a4c06cdf49dc55704f1bd518599c25e8337a1b77b0b0`  
		Last Modified: Wed, 06 Feb 2019 14:31:04 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:87269f077c094415c1734693d39421c25af6a7648a3044cfe858cec34cb9fa72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17815155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01dbed52b1fe89a4f506f5dc344c396298ad1795f126677db04bac43b78f8a5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:47:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:47:32 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:48:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:48:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:48:06 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:48:06 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:48:06 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:48:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:48:06 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:48:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c035dc3a25ffacd002e6a9e9f5599a475e589432aa2380567d2fc6d0a8eb7be5`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432cab9de09143d51b3e4494c80bc9d4f25df2a6cac8bdd71f821ba40630dedf`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 407.8 KB (407822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd6c926611b41ffb7f13e05ea818d9a88034f80e8953f3fab26622e7c471639`  
		Last Modified: Wed, 06 Feb 2019 14:49:37 GMT  
		Size: 14.9 MB (14864051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8324d4829065d40fd5cca78a8bdcb0150584d066e67c93219a63288b31f8a263`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546bd4d8cb455d013e9b7082c064074acda38e28440df02d448d44a0ae29e902`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-stretch`

```console
$ docker pull redis@sha256:7aeb0f44dcbe9a87c4282dccf27d241e3b251acc1ba1513ead6de28a682b478a
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
$ docker pull redis@sha256:d7371d6c24ec0dd4b0834cfdf08789eee95c648198180be5b0eff64754b027ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35212744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f55cf3661e92cc44014f9d93e6f7cbd2a59b7220a26edcdb0828289cf6a361f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 09:02:40 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:02:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:02:42 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:02:42 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:02:42 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:02:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:02:43 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:02:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f84ab76ce60e445f215f063b20e78199ddd3a0f0fcae499d5fd9fb022183e25`  
		Last Modified: Wed, 06 Feb 2019 09:08:32 GMT  
		Size: 11.8 MB (11768829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0903bdecada21bf7808e21d6e5e492d4b7f2e0e5b1dadbd4e8734345af57bea2`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492876061fbda6fb891eff7a586e2aec8307c64c8bc161a4bdc47678a502a940`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:3db6bd766954e6f5dd8f841578385b6813c59cf31cc25e56c46f0c07a6c0e6fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33552844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d40efa7719da5e6ab0afbcecf22ae384a236fcd9554180d77b59abef717d69`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 09:55:47 GMT
ADD file:e870bf9826436c9d50093c17a45bffdf2dbfb3fb4fa73595ec02fdf0767f8c1b in / 
# Wed, 06 Feb 2019 09:55:48 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 13:41:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 13:41:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 13:41:52 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 13:41:52 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 13:41:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 13:41:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 13:42:56 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 13:42:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 13:42:58 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 13:42:58 GMT
WORKDIR /data
# Wed, 06 Feb 2019 13:42:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 13:42:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 13:42:59 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 13:42:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9b1495315079a4327f28a5ece699ace3f2e12af21ab453e345feae7e22d718bf`  
		Last Modified: Wed, 06 Feb 2019 10:03:48 GMT  
		Size: 21.2 MB (21181339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a94fd0c81c05add8c76633297d684f52220e92e405e15e314c23821de3b4572`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41c689abd16f19fe4af42af8c734545e9fe188b87851eb28d1f5f4f469f9c60`  
		Last Modified: Wed, 06 Feb 2019 13:43:57 GMT  
		Size: 931.2 KB (931157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca09b29c0253f77c11f15d98110aa6251abaf5f4b2b0fb556687ea3a3b906ad0`  
		Last Modified: Wed, 06 Feb 2019 13:44:00 GMT  
		Size: 11.4 MB (11438062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b21e3728066badc0566f8fb26f1e74c2e2021f635cf715ad97927b7e5369a5`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1bdf8cec53a09758589aa969e16493c0e16c1faa2d23b03aef6d742309c8fc`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:bde51f2079f2387996319cae5810670c2394dcfa6a10a53adc284e08b63a8f4f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31335589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fad7675d00c618c1285c322d4ab913b1f51d852abf6ef099022519df00fd519`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:10:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 15:10:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 15:10:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 15:10:51 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 15:10:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 15:10:52 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 15:11:54 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 15:11:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 15:11:59 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 15:12:00 GMT
WORKDIR /data
# Wed, 23 Jan 2019 15:12:01 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 15:12:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 15:12:03 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 15:12:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfe83343c5e1e5b661ae0cf82627f2a90cbd7cb08c800b7337e9d714156e0f0`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e17ba9c527459ecfa72e59cc8e381c3a9667c200af0dd579ee109c19d055a1`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 915.8 KB (915843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a825542656992a22df1680e892813ab0ac03bef78ddbb192f439c04c5bcaec2b`  
		Last Modified: Wed, 23 Jan 2019 15:13:36 GMT  
		Size: 11.1 MB (11127177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbfd7fb16a4c33bee085e3f8048c80e33a9cf8f2988a518d70f9cfb467ecf77`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c790758254dd36cc30068dc344c2b4c1959b9b232e3fc498476f593966eff05a`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 419.0 B  
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
$ docker pull redis@sha256:49630a5efd02b75c09d4158f3d370718f128cefdb2277f061e28168bb0ccabd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35247591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:929d377e0fcdd507905087124a25a74f583063b9b2671b68964e00525c15c4a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:58:14 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:58:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:58:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 14:00:01 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:00:02 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:00:02 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:00:02 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:00:02 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:00:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:00:03 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:00:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f073067f1925015bef7333d173b916e2e36e6b2a9be0e8e409c92a914a459c23`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231e88ea2e22d423059304481650a1a646cd344ff23c70d5b364c31ddaf073eb`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 920.1 KB (920102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda4eb6f517ccdf388c63cb22acb04654eaf143b27072fedf011a0357e2a3d46`  
		Last Modified: Wed, 23 Jan 2019 14:01:23 GMT  
		Size: 11.2 MB (11178123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f547806ddcd0ac855b6e47296590718bfc259a83048a3cfea5ac42cca61554`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f9e137763ae9f62222dcf675e1fb8281c704aae236435ec02a41cfea6bdaed`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:2fdde05a0844dda9bfd72ae122660ba6444b8d18f5e1819a63b9b55524f0d2bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35623663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7991b9fff60afd70765cfb1729d82cc8cc24f254fbe0609cbd58151ed2582043`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:22:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:22:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:23:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:23:31 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:23:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:23:36 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:25:26 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:25:31 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:25:33 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:25:35 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:25:36 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:25:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:25:40 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:25:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20321bec709a1fb1b4332af6e7af0c9c1629fb86adfeb8c4ec41f6486d22a55`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474693152966afd031e558316092ddbd7b3b7a97df46e5b1234a8c832a559522`  
		Last Modified: Wed, 06 Feb 2019 14:30:36 GMT  
		Size: 909.7 KB (909710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2387738ae5dc718c698f1cc5314eca6c32d31a194a08f04eb656e2a3b6656c`  
		Last Modified: Wed, 06 Feb 2019 14:30:39 GMT  
		Size: 12.0 MB (11956265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab96e7f10021ee67298aff7fbebc66497918064f2daecafbf469a2e125ab014b`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8546034482b52ae6de6a814e39e385b484d7d9ccfa894e80738ab484ac96e519`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; s390x

```console
$ docker pull redis@sha256:678de945095c4ebe1872fcf9fddd568e8df76e66fc0fb8a7d39f8ad2d74db411
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35507564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac3ae0dc791f04e1e2f8f7537a0113d862c26893a9fe5156892c341ebe3bfb54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:46:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:46:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:46:45 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:46:45 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:46:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:46:46 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:47:22 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:47:23 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:47:23 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:47:23 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:47:24 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:47:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:47:24 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:47:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7372cde11bc20743e4b18508d5a43d0c4b135c13aaf2bdd4201e590f18c4ae`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce30edbe6a65e2dd54fa17ab9d73575aa91e5354fe7f650dca6fc639164c8e69`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 926.8 KB (926789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7284ce8539409925a3cd1aeda53ce35ec65a3b07f2e2ffd4b024434e14fd030`  
		Last Modified: Wed, 06 Feb 2019 14:49:24 GMT  
		Size: 12.2 MB (12225183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f84d997b1f112d8a46786e9d13c5f8d5aca3333167e4a6a95c6e90e8ace25f`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf52d878af2a05cb0421a79783133f6c5785414504c4644364654e3b94b00e48`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:1424dc7e22ed42faab4451205ebf879b26ab4846fc96c813818d105614b903ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:alpine` - linux; amd64

```console
$ docker pull redis@sha256:49c68b2ddb87cb21336d5e14a5b0874e539c6a5c1d5f51fb4b025513acc3316d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.7 MB (17722069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5cff96d7b8f5d3332b43922e424d448172f68b118e0e32cb26270227faec083`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 21:24:04 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 05 Feb 2019 21:24:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 05 Feb 2019 21:24:06 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Feb 2019 21:24:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Feb 2019 21:24:07 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Feb 2019 21:25:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 05 Feb 2019 21:25:48 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Feb 2019 21:25:48 GMT
VOLUME [/data]
# Tue, 05 Feb 2019 21:25:48 GMT
WORKDIR /data
# Tue, 05 Feb 2019 21:25:49 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 05 Feb 2019 21:25:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Feb 2019 21:25:49 GMT
EXPOSE 6379
# Tue, 05 Feb 2019 21:25:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42672a2ca6a1cc999c70a5b2db9eb57ba0345688799ad310cac5d9b77a5c236`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823e4275fef65b480f1c028b2623db710d7e826ef20de02e98c593c5bf5262cb`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 403.0 KB (402995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ad7a3b6c3fb2ef4fe32aa1535eb063abd70e0f5aec29c248d8b0d3d08a6f47`  
		Last Modified: Tue, 05 Feb 2019 21:27:10 GMT  
		Size: 14.6 MB (14562585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327e62bcfef7879ca648717d3b9377978a7ff2b5ac7cca277ba284f16ea85883`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5997a801f56098c177a275af36d5d7522b93a2ceadee22d389e4ce688ac8da`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:4a8cceff87821658eb72eda851ecf3160862cd525d2467ffb024052227ef608d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14410911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27f0b43ee61cbd94908c71808fe407f6714a64001e989fb670649f0d93927338`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 09:20:24 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 31 Jan 2019 09:20:27 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 31 Jan 2019 09:20:27 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 31 Jan 2019 09:20:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 31 Jan 2019 09:20:28 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 31 Jan 2019 09:21:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 31 Jan 2019 09:21:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 31 Jan 2019 09:21:10 GMT
VOLUME [/data]
# Thu, 31 Jan 2019 09:21:10 GMT
WORKDIR /data
# Thu, 31 Jan 2019 09:21:10 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 31 Jan 2019 09:21:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Jan 2019 09:21:11 GMT
EXPOSE 6379
# Thu, 31 Jan 2019 09:21:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebd28418fd718508b5fea4fb3b8a8df1880c032415bdf7fa05f6597553a9ce2`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e60c2b63aeba0034740dec220f6276e15be443cc503640a0aa178c7292e423b`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 405.2 KB (405186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b11ec1f5d016feef776fdfdc0bead46e3846f9b52c981b09ca93f5a5b44380`  
		Last Modified: Thu, 31 Jan 2019 09:22:07 GMT  
		Size: 11.9 MB (11857940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa89be15ad241e70aedfdde10501eebb5813af38dbf705ca1c7229a2741d65fb`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f158534113595b8720c48303354c88614909c9f367ad7939f87d82e60a1033`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:3c4664968d743aa1eb3a620fbefc4ec5437b1b546949d5f5748ea81b28aa0111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17581823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee32ec92d0ca472c91bdd4b964aebdcd5d83086e5d6a7d90a2fe55dad20c01d8`
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
# Wed, 06 Feb 2019 18:17:51 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 18:17:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 18:17:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 18:19:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 18:19:25 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:19:26 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:19:28 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:19:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:19:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:19:33 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:19:34 GMT
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
	-	`sha256:d2d8f1330b4e18a61eaa48b69a64e9571ddc410f64627100685e8aef86d57d5f`  
		Last Modified: Wed, 06 Feb 2019 18:24:18 GMT  
		Size: 14.5 MB (14486787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547c26f78fe1552993da874bd5862d2cee112f2d28102d70d4d96f1fc1efe352`  
		Last Modified: Wed, 06 Feb 2019 18:24:12 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cd7ebfe3a7d3f1050ff7ffb38057cd6c946cd0f7dccde7309472ba488c9811`  
		Last Modified: Wed, 06 Feb 2019 18:24:12 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; 386

```console
$ docker pull redis@sha256:5700245b6141ead4e63534baa834c003ba9fd21c5d1ed56bfc701b41e81efcf3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14394463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fdc983919be8d9bc4cc9da8d3358e073ddd18cbc6a206dfa958bbedfd895526`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:23:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 12:23:13 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 12:23:13 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 12:23:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 12:23:14 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 12:24:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 12:24:10 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 12:24:11 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:24:11 GMT
WORKDIR /data
# Fri, 21 Dec 2018 12:24:11 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:24:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:24:11 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 12:24:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05dcaf7e3a5f71f671a74e623bb9abe78af5ef495965ba44fa2467cb6428516`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9314a25830c13371be7bb35c347e70d7a8b44c928b5d2fc0e1712c30f80da31`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 407.1 KB (407101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0406db36d53387c44da802338654a6f8bc1e6544757d08ea1b5e6f8cc5bade16`  
		Last Modified: Fri, 21 Dec 2018 12:25:19 GMT  
		Size: 11.7 MB (11713858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfeb7deba05006ba5e06a8f4297fbd22e17ffa0e9942ef32e85a88cec1203746`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5390e07d4e9cc2c99bc0664b1d194e7a1ee5f37cd22208977c29438009e4ed`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:be299124e656892bb56afcc09506f6957d411a4bbc39c1209b0d3e75cec36008
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18590646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5b76bf4aca8426d505ef86bec287919f0b92c4f7c239e0044a008148213690`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:26:00 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:26:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:26:07 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:26:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:26:12 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:27:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:27:17 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:27:18 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:27:19 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:27:20 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:27:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:27:22 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:27:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38611b6a52af54e6a88187c1f138f076668eafe25d524d4c76b6670716073e7f`  
		Last Modified: Wed, 06 Feb 2019 14:31:07 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a40fe5968cb8f23b3ca4cef68f3083205d535be4fa7925583252b92e164774`  
		Last Modified: Wed, 06 Feb 2019 14:31:05 GMT  
		Size: 410.3 KB (410323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532b3ba7430c305b332c4beb288b906b6ab44eabbad08ec949a906248cb15bdf`  
		Last Modified: Wed, 06 Feb 2019 14:31:09 GMT  
		Size: 15.4 MB (15399656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255abeb131a5a1901cc5bda852358ee7bb91a54177469d6e6aa2de0c44117a97`  
		Last Modified: Wed, 06 Feb 2019 14:31:04 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d58a4dfb4949de81c39a4c06cdf49dc55704f1bd518599c25e8337a1b77b0b0`  
		Last Modified: Wed, 06 Feb 2019 14:31:04 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; s390x

```console
$ docker pull redis@sha256:87269f077c094415c1734693d39421c25af6a7648a3044cfe858cec34cb9fa72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17815155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01dbed52b1fe89a4f506f5dc344c396298ad1795f126677db04bac43b78f8a5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:47:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:47:32 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:48:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:48:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:48:06 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:48:06 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:48:06 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:48:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:48:06 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:48:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c035dc3a25ffacd002e6a9e9f5599a475e589432aa2380567d2fc6d0a8eb7be5`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432cab9de09143d51b3e4494c80bc9d4f25df2a6cac8bdd71f821ba40630dedf`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 407.8 KB (407822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd6c926611b41ffb7f13e05ea818d9a88034f80e8953f3fab26622e7c471639`  
		Last Modified: Wed, 06 Feb 2019 14:49:37 GMT  
		Size: 14.9 MB (14864051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8324d4829065d40fd5cca78a8bdcb0150584d066e67c93219a63288b31f8a263`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546bd4d8cb455d013e9b7082c064074acda38e28440df02d448d44a0ae29e902`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine3.9`

```console
$ docker pull redis@sha256:1424dc7e22ed42faab4451205ebf879b26ab4846fc96c813818d105614b903ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:49c68b2ddb87cb21336d5e14a5b0874e539c6a5c1d5f51fb4b025513acc3316d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.7 MB (17722069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5cff96d7b8f5d3332b43922e424d448172f68b118e0e32cb26270227faec083`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 21:24:04 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 05 Feb 2019 21:24:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 05 Feb 2019 21:24:06 GMT
ENV REDIS_VERSION=5.0.3
# Tue, 05 Feb 2019 21:24:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Tue, 05 Feb 2019 21:24:07 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Tue, 05 Feb 2019 21:25:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 05 Feb 2019 21:25:48 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Feb 2019 21:25:48 GMT
VOLUME [/data]
# Tue, 05 Feb 2019 21:25:48 GMT
WORKDIR /data
# Tue, 05 Feb 2019 21:25:49 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 05 Feb 2019 21:25:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Feb 2019 21:25:49 GMT
EXPOSE 6379
# Tue, 05 Feb 2019 21:25:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42672a2ca6a1cc999c70a5b2db9eb57ba0345688799ad310cac5d9b77a5c236`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823e4275fef65b480f1c028b2623db710d7e826ef20de02e98c593c5bf5262cb`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 403.0 KB (402995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ad7a3b6c3fb2ef4fe32aa1535eb063abd70e0f5aec29c248d8b0d3d08a6f47`  
		Last Modified: Tue, 05 Feb 2019 21:27:10 GMT  
		Size: 14.6 MB (14562585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327e62bcfef7879ca648717d3b9377978a7ff2b5ac7cca277ba284f16ea85883`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5997a801f56098c177a275af36d5d7522b93a2ceadee22d389e4ce688ac8da`  
		Last Modified: Tue, 05 Feb 2019 21:27:07 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:4a8cceff87821658eb72eda851ecf3160862cd525d2467ffb024052227ef608d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14410911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27f0b43ee61cbd94908c71808fe407f6714a64001e989fb670649f0d93927338`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 09:20:24 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 31 Jan 2019 09:20:27 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 31 Jan 2019 09:20:27 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 31 Jan 2019 09:20:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 31 Jan 2019 09:20:28 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 31 Jan 2019 09:21:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 31 Jan 2019 09:21:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 31 Jan 2019 09:21:10 GMT
VOLUME [/data]
# Thu, 31 Jan 2019 09:21:10 GMT
WORKDIR /data
# Thu, 31 Jan 2019 09:21:10 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 31 Jan 2019 09:21:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Jan 2019 09:21:11 GMT
EXPOSE 6379
# Thu, 31 Jan 2019 09:21:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebd28418fd718508b5fea4fb3b8a8df1880c032415bdf7fa05f6597553a9ce2`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e60c2b63aeba0034740dec220f6276e15be443cc503640a0aa178c7292e423b`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 405.2 KB (405186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b11ec1f5d016feef776fdfdc0bead46e3846f9b52c981b09ca93f5a5b44380`  
		Last Modified: Thu, 31 Jan 2019 09:22:07 GMT  
		Size: 11.9 MB (11857940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa89be15ad241e70aedfdde10501eebb5813af38dbf705ca1c7229a2741d65fb`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f158534113595b8720c48303354c88614909c9f367ad7939f87d82e60a1033`  
		Last Modified: Thu, 31 Jan 2019 09:22:03 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:3c4664968d743aa1eb3a620fbefc4ec5437b1b546949d5f5748ea81b28aa0111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17581823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee32ec92d0ca472c91bdd4b964aebdcd5d83086e5d6a7d90a2fe55dad20c01d8`
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
# Wed, 06 Feb 2019 18:17:51 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 18:17:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 18:17:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 18:19:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 18:19:25 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 18:19:26 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 18:19:28 GMT
WORKDIR /data
# Wed, 06 Feb 2019 18:19:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 18:19:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:19:33 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 18:19:34 GMT
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
	-	`sha256:d2d8f1330b4e18a61eaa48b69a64e9571ddc410f64627100685e8aef86d57d5f`  
		Last Modified: Wed, 06 Feb 2019 18:24:18 GMT  
		Size: 14.5 MB (14486787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547c26f78fe1552993da874bd5862d2cee112f2d28102d70d4d96f1fc1efe352`  
		Last Modified: Wed, 06 Feb 2019 18:24:12 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cd7ebfe3a7d3f1050ff7ffb38057cd6c946cd0f7dccde7309472ba488c9811`  
		Last Modified: Wed, 06 Feb 2019 18:24:12 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:5700245b6141ead4e63534baa834c003ba9fd21c5d1ed56bfc701b41e81efcf3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14394463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fdc983919be8d9bc4cc9da8d3358e073ddd18cbc6a206dfa958bbedfd895526`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:23:12 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 12:23:13 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 12:23:13 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 12:23:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 12:23:14 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 12:24:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 12:24:10 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 12:24:11 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:24:11 GMT
WORKDIR /data
# Fri, 21 Dec 2018 12:24:11 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:24:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:24:11 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 12:24:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05dcaf7e3a5f71f671a74e623bb9abe78af5ef495965ba44fa2467cb6428516`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9314a25830c13371be7bb35c347e70d7a8b44c928b5d2fc0e1712c30f80da31`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 407.1 KB (407101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0406db36d53387c44da802338654a6f8bc1e6544757d08ea1b5e6f8cc5bade16`  
		Last Modified: Fri, 21 Dec 2018 12:25:19 GMT  
		Size: 11.7 MB (11713858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfeb7deba05006ba5e06a8f4297fbd22e17ffa0e9942ef32e85a88cec1203746`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5390e07d4e9cc2c99bc0664b1d194e7a1ee5f37cd22208977c29438009e4ed`  
		Last Modified: Fri, 21 Dec 2018 12:25:17 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:be299124e656892bb56afcc09506f6957d411a4bbc39c1209b0d3e75cec36008
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18590646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5b76bf4aca8426d505ef86bec287919f0b92c4f7c239e0044a008148213690`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:26:00 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:26:06 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:26:07 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:26:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:26:12 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:27:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:27:17 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:27:18 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:27:19 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:27:20 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:27:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:27:22 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:27:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38611b6a52af54e6a88187c1f138f076668eafe25d524d4c76b6670716073e7f`  
		Last Modified: Wed, 06 Feb 2019 14:31:07 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a40fe5968cb8f23b3ca4cef68f3083205d535be4fa7925583252b92e164774`  
		Last Modified: Wed, 06 Feb 2019 14:31:05 GMT  
		Size: 410.3 KB (410323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532b3ba7430c305b332c4beb288b906b6ab44eabbad08ec949a906248cb15bdf`  
		Last Modified: Wed, 06 Feb 2019 14:31:09 GMT  
		Size: 15.4 MB (15399656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255abeb131a5a1901cc5bda852358ee7bb91a54177469d6e6aa2de0c44117a97`  
		Last Modified: Wed, 06 Feb 2019 14:31:04 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d58a4dfb4949de81c39a4c06cdf49dc55704f1bd518599c25e8337a1b77b0b0`  
		Last Modified: Wed, 06 Feb 2019 14:31:04 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:87269f077c094415c1734693d39421c25af6a7648a3044cfe858cec34cb9fa72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17815155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01dbed52b1fe89a4f506f5dc344c396298ad1795f126677db04bac43b78f8a5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 14:47:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 06 Feb 2019 14:47:32 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:47:32 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:48:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 14:48:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:48:06 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:48:06 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:48:06 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:48:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:48:06 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:48:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c035dc3a25ffacd002e6a9e9f5599a475e589432aa2380567d2fc6d0a8eb7be5`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432cab9de09143d51b3e4494c80bc9d4f25df2a6cac8bdd71f821ba40630dedf`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 407.8 KB (407822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd6c926611b41ffb7f13e05ea818d9a88034f80e8953f3fab26622e7c471639`  
		Last Modified: Wed, 06 Feb 2019 14:49:37 GMT  
		Size: 14.9 MB (14864051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8324d4829065d40fd5cca78a8bdcb0150584d066e67c93219a63288b31f8a263`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546bd4d8cb455d013e9b7082c064074acda38e28440df02d448d44a0ae29e902`  
		Last Modified: Wed, 06 Feb 2019 14:49:34 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:7aeb0f44dcbe9a87c4282dccf27d241e3b251acc1ba1513ead6de28a682b478a
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
$ docker pull redis@sha256:d7371d6c24ec0dd4b0834cfdf08789eee95c648198180be5b0eff64754b027ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35212744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f55cf3661e92cc44014f9d93e6f7cbd2a59b7220a26edcdb0828289cf6a361f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 09:02:40 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:02:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:02:42 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:02:42 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:02:42 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:02:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:02:43 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:02:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f84ab76ce60e445f215f063b20e78199ddd3a0f0fcae499d5fd9fb022183e25`  
		Last Modified: Wed, 06 Feb 2019 09:08:32 GMT  
		Size: 11.8 MB (11768829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0903bdecada21bf7808e21d6e5e492d4b7f2e0e5b1dadbd4e8734345af57bea2`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492876061fbda6fb891eff7a586e2aec8307c64c8bc161a4bdc47678a502a940`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v5

```console
$ docker pull redis@sha256:3db6bd766954e6f5dd8f841578385b6813c59cf31cc25e56c46f0c07a6c0e6fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33552844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d40efa7719da5e6ab0afbcecf22ae384a236fcd9554180d77b59abef717d69`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 09:55:47 GMT
ADD file:e870bf9826436c9d50093c17a45bffdf2dbfb3fb4fa73595ec02fdf0767f8c1b in / 
# Wed, 06 Feb 2019 09:55:48 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 13:41:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 13:41:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 13:41:52 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 13:41:52 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 13:41:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 13:41:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 13:42:56 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 13:42:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 13:42:58 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 13:42:58 GMT
WORKDIR /data
# Wed, 06 Feb 2019 13:42:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 13:42:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 13:42:59 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 13:42:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9b1495315079a4327f28a5ece699ace3f2e12af21ab453e345feae7e22d718bf`  
		Last Modified: Wed, 06 Feb 2019 10:03:48 GMT  
		Size: 21.2 MB (21181339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a94fd0c81c05add8c76633297d684f52220e92e405e15e314c23821de3b4572`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41c689abd16f19fe4af42af8c734545e9fe188b87851eb28d1f5f4f469f9c60`  
		Last Modified: Wed, 06 Feb 2019 13:43:57 GMT  
		Size: 931.2 KB (931157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca09b29c0253f77c11f15d98110aa6251abaf5f4b2b0fb556687ea3a3b906ad0`  
		Last Modified: Wed, 06 Feb 2019 13:44:00 GMT  
		Size: 11.4 MB (11438062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b21e3728066badc0566f8fb26f1e74c2e2021f635cf715ad97927b7e5369a5`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1bdf8cec53a09758589aa969e16493c0e16c1faa2d23b03aef6d742309c8fc`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v7

```console
$ docker pull redis@sha256:bde51f2079f2387996319cae5810670c2394dcfa6a10a53adc284e08b63a8f4f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31335589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fad7675d00c618c1285c322d4ab913b1f51d852abf6ef099022519df00fd519`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:10:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 15:10:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 15:10:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 15:10:51 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 15:10:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 15:10:52 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 15:11:54 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 15:11:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 15:11:59 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 15:12:00 GMT
WORKDIR /data
# Wed, 23 Jan 2019 15:12:01 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 15:12:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 15:12:03 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 15:12:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfe83343c5e1e5b661ae0cf82627f2a90cbd7cb08c800b7337e9d714156e0f0`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e17ba9c527459ecfa72e59cc8e381c3a9667c200af0dd579ee109c19d055a1`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 915.8 KB (915843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a825542656992a22df1680e892813ab0ac03bef78ddbb192f439c04c5bcaec2b`  
		Last Modified: Wed, 23 Jan 2019 15:13:36 GMT  
		Size: 11.1 MB (11127177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbfd7fb16a4c33bee085e3f8048c80e33a9cf8f2988a518d70f9cfb467ecf77`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c790758254dd36cc30068dc344c2b4c1959b9b232e3fc498476f593966eff05a`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 419.0 B  
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
$ docker pull redis@sha256:49630a5efd02b75c09d4158f3d370718f128cefdb2277f061e28168bb0ccabd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35247591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:929d377e0fcdd507905087124a25a74f583063b9b2671b68964e00525c15c4a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:58:14 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:58:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:58:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 14:00:01 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:00:02 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:00:02 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:00:02 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:00:02 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:00:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:00:03 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:00:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f073067f1925015bef7333d173b916e2e36e6b2a9be0e8e409c92a914a459c23`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231e88ea2e22d423059304481650a1a646cd344ff23c70d5b364c31ddaf073eb`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 920.1 KB (920102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda4eb6f517ccdf388c63cb22acb04654eaf143b27072fedf011a0357e2a3d46`  
		Last Modified: Wed, 23 Jan 2019 14:01:23 GMT  
		Size: 11.2 MB (11178123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f547806ddcd0ac855b6e47296590718bfc259a83048a3cfea5ac42cca61554`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f9e137763ae9f62222dcf675e1fb8281c704aae236435ec02a41cfea6bdaed`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; ppc64le

```console
$ docker pull redis@sha256:2fdde05a0844dda9bfd72ae122660ba6444b8d18f5e1819a63b9b55524f0d2bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35623663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7991b9fff60afd70765cfb1729d82cc8cc24f254fbe0609cbd58151ed2582043`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:22:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:22:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:23:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:23:31 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:23:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:23:36 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:25:26 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:25:31 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:25:33 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:25:35 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:25:36 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:25:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:25:40 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:25:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20321bec709a1fb1b4332af6e7af0c9c1629fb86adfeb8c4ec41f6486d22a55`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474693152966afd031e558316092ddbd7b3b7a97df46e5b1234a8c832a559522`  
		Last Modified: Wed, 06 Feb 2019 14:30:36 GMT  
		Size: 909.7 KB (909710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2387738ae5dc718c698f1cc5314eca6c32d31a194a08f04eb656e2a3b6656c`  
		Last Modified: Wed, 06 Feb 2019 14:30:39 GMT  
		Size: 12.0 MB (11956265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab96e7f10021ee67298aff7fbebc66497918064f2daecafbf469a2e125ab014b`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8546034482b52ae6de6a814e39e385b484d7d9ccfa894e80738ab484ac96e519`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; s390x

```console
$ docker pull redis@sha256:678de945095c4ebe1872fcf9fddd568e8df76e66fc0fb8a7d39f8ad2d74db411
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35507564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac3ae0dc791f04e1e2f8f7537a0113d862c26893a9fe5156892c341ebe3bfb54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:46:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:46:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:46:45 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:46:45 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:46:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:46:46 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:47:22 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:47:23 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:47:23 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:47:23 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:47:24 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:47:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:47:24 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:47:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7372cde11bc20743e4b18508d5a43d0c4b135c13aaf2bdd4201e590f18c4ae`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce30edbe6a65e2dd54fa17ab9d73575aa91e5354fe7f650dca6fc639164c8e69`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 926.8 KB (926789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7284ce8539409925a3cd1aeda53ce35ec65a3b07f2e2ffd4b024434e14fd030`  
		Last Modified: Wed, 06 Feb 2019 14:49:24 GMT  
		Size: 12.2 MB (12225183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f84d997b1f112d8a46786e9d13c5f8d5aca3333167e4a6a95c6e90e8ace25f`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf52d878af2a05cb0421a79783133f6c5785414504c4644364654e3b94b00e48`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:stretch`

```console
$ docker pull redis@sha256:7aeb0f44dcbe9a87c4282dccf27d241e3b251acc1ba1513ead6de28a682b478a
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
$ docker pull redis@sha256:d7371d6c24ec0dd4b0834cfdf08789eee95c648198180be5b0eff64754b027ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35212744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f55cf3661e92cc44014f9d93e6f7cbd2a59b7220a26edcdb0828289cf6a361f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:00:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 09:00:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 09:00:57 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 09:00:57 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 09:02:40 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:02:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 09:02:42 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:02:42 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:02:42 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:02:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:02:43 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 09:02:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3717477b42d8a4e3320e5adbe2fcfbc6724ef9a355c56d2c0b74f80a320c86f`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e70bf6cc2e66bd1a0020aa7a62eb20f1af1c4e2d0a2b527a26e1b584950653c`  
		Last Modified: Wed, 06 Feb 2019 09:08:29 GMT  
		Size: 941.4 KB (941367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f84ab76ce60e445f215f063b20e78199ddd3a0f0fcae499d5fd9fb022183e25`  
		Last Modified: Wed, 06 Feb 2019 09:08:32 GMT  
		Size: 11.8 MB (11768829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0903bdecada21bf7808e21d6e5e492d4b7f2e0e5b1dadbd4e8734345af57bea2`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492876061fbda6fb891eff7a586e2aec8307c64c8bc161a4bdc47678a502a940`  
		Last Modified: Wed, 06 Feb 2019 09:08:28 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:3db6bd766954e6f5dd8f841578385b6813c59cf31cc25e56c46f0c07a6c0e6fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33552844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d40efa7719da5e6ab0afbcecf22ae384a236fcd9554180d77b59abef717d69`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 09:55:47 GMT
ADD file:e870bf9826436c9d50093c17a45bffdf2dbfb3fb4fa73595ec02fdf0767f8c1b in / 
# Wed, 06 Feb 2019 09:55:48 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 13:41:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 13:41:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 13:41:52 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 13:41:52 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 13:41:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 13:41:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 13:42:56 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 13:42:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 13:42:58 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 13:42:58 GMT
WORKDIR /data
# Wed, 06 Feb 2019 13:42:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 13:42:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 13:42:59 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 13:42:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9b1495315079a4327f28a5ece699ace3f2e12af21ab453e345feae7e22d718bf`  
		Last Modified: Wed, 06 Feb 2019 10:03:48 GMT  
		Size: 21.2 MB (21181339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a94fd0c81c05add8c76633297d684f52220e92e405e15e314c23821de3b4572`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41c689abd16f19fe4af42af8c734545e9fe188b87851eb28d1f5f4f469f9c60`  
		Last Modified: Wed, 06 Feb 2019 13:43:57 GMT  
		Size: 931.2 KB (931157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca09b29c0253f77c11f15d98110aa6251abaf5f4b2b0fb556687ea3a3b906ad0`  
		Last Modified: Wed, 06 Feb 2019 13:44:00 GMT  
		Size: 11.4 MB (11438062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b21e3728066badc0566f8fb26f1e74c2e2021f635cf715ad97927b7e5369a5`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1bdf8cec53a09758589aa969e16493c0e16c1faa2d23b03aef6d742309c8fc`  
		Last Modified: Wed, 06 Feb 2019 13:43:56 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:bde51f2079f2387996319cae5810670c2394dcfa6a10a53adc284e08b63a8f4f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31335589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fad7675d00c618c1285c322d4ab913b1f51d852abf6ef099022519df00fd519`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:10:24 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 15:10:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 15:10:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 15:10:51 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 15:10:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 15:10:52 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 15:11:54 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 15:11:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 15:11:59 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 15:12:00 GMT
WORKDIR /data
# Wed, 23 Jan 2019 15:12:01 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 15:12:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 15:12:03 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 15:12:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfe83343c5e1e5b661ae0cf82627f2a90cbd7cb08c800b7337e9d714156e0f0`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e17ba9c527459ecfa72e59cc8e381c3a9667c200af0dd579ee109c19d055a1`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 915.8 KB (915843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a825542656992a22df1680e892813ab0ac03bef78ddbb192f439c04c5bcaec2b`  
		Last Modified: Wed, 23 Jan 2019 15:13:36 GMT  
		Size: 11.1 MB (11127177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbfd7fb16a4c33bee085e3f8048c80e33a9cf8f2988a518d70f9cfb467ecf77`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c790758254dd36cc30068dc344c2b4c1959b9b232e3fc498476f593966eff05a`  
		Last Modified: Wed, 23 Jan 2019 15:13:33 GMT  
		Size: 419.0 B  
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
$ docker pull redis@sha256:49630a5efd02b75c09d4158f3d370718f128cefdb2277f061e28168bb0ccabd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35247591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:929d377e0fcdd507905087124a25a74f583063b9b2671b68964e00525c15c4a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:58:14 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:58:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:58:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 13:58:29 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 14:00:01 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:00:02 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:00:02 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:00:02 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:00:02 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:00:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:00:03 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:00:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f073067f1925015bef7333d173b916e2e36e6b2a9be0e8e409c92a914a459c23`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231e88ea2e22d423059304481650a1a646cd344ff23c70d5b364c31ddaf073eb`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 920.1 KB (920102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda4eb6f517ccdf388c63cb22acb04654eaf143b27072fedf011a0357e2a3d46`  
		Last Modified: Wed, 23 Jan 2019 14:01:23 GMT  
		Size: 11.2 MB (11178123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f547806ddcd0ac855b6e47296590718bfc259a83048a3cfea5ac42cca61554`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f9e137763ae9f62222dcf675e1fb8281c704aae236435ec02a41cfea6bdaed`  
		Last Modified: Wed, 23 Jan 2019 14:01:21 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:2fdde05a0844dda9bfd72ae122660ba6444b8d18f5e1819a63b9b55524f0d2bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35623663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7991b9fff60afd70765cfb1729d82cc8cc24f254fbe0609cbd58151ed2582043`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:22:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:22:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:23:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:23:31 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:23:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:23:36 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:25:26 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:25:31 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:25:33 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:25:35 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:25:36 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:25:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:25:40 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:25:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20321bec709a1fb1b4332af6e7af0c9c1629fb86adfeb8c4ec41f6486d22a55`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474693152966afd031e558316092ddbd7b3b7a97df46e5b1234a8c832a559522`  
		Last Modified: Wed, 06 Feb 2019 14:30:36 GMT  
		Size: 909.7 KB (909710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2387738ae5dc718c698f1cc5314eca6c32d31a194a08f04eb656e2a3b6656c`  
		Last Modified: Wed, 06 Feb 2019 14:30:39 GMT  
		Size: 12.0 MB (11956265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab96e7f10021ee67298aff7fbebc66497918064f2daecafbf469a2e125ab014b`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8546034482b52ae6de6a814e39e385b484d7d9ccfa894e80738ab484ac96e519`  
		Last Modified: Wed, 06 Feb 2019 14:30:35 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; s390x

```console
$ docker pull redis@sha256:678de945095c4ebe1872fcf9fddd568e8df76e66fc0fb8a7d39f8ad2d74db411
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35507564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac3ae0dc791f04e1e2f8f7537a0113d862c26893a9fe5156892c341ebe3bfb54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 14:46:34 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 14:46:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:46:45 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 14:46:45 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 14:46:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 14:46:46 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 14:47:22 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 14:47:23 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 14:47:23 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 14:47:23 GMT
WORKDIR /data
# Wed, 06 Feb 2019 14:47:24 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 14:47:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:47:24 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 14:47:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7372cde11bc20743e4b18508d5a43d0c4b135c13aaf2bdd4201e590f18c4ae`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce30edbe6a65e2dd54fa17ab9d73575aa91e5354fe7f650dca6fc639164c8e69`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 926.8 KB (926789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7284ce8539409925a3cd1aeda53ce35ec65a3b07f2e2ffd4b024434e14fd030`  
		Last Modified: Wed, 06 Feb 2019 14:49:24 GMT  
		Size: 12.2 MB (12225183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f84d997b1f112d8a46786e9d13c5f8d5aca3333167e4a6a95c6e90e8ace25f`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf52d878af2a05cb0421a79783133f6c5785414504c4644364654e3b94b00e48`  
		Last Modified: Wed, 06 Feb 2019 14:49:21 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
