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
$ docker pull redis@sha256:cb5eac2e2bc17ccc040bffdc9f9b8713d198492d2185ad6bbdf8d4d07e5e6d47
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
$ docker pull redis@sha256:e7796b1e3a8452f453bf43554e1c0e9cd1a79b47f76ab7f55dba58228402426d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.8 MB (29757356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b340dad7041e684bb2653e8796de2f1581c73f96a478b32dad31aef1cfe9fb8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 06:49:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 25 Jan 2019 06:49:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Jan 2019 06:51:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 25 Jan 2019 06:54:27 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 25 Jan 2019 06:54:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 25 Jan 2019 06:54:29 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 25 Jan 2019 06:56:30 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Jan 2019 06:56:32 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 25 Jan 2019 06:56:33 GMT
VOLUME [/data]
# Fri, 25 Jan 2019 06:56:34 GMT
WORKDIR /data
# Fri, 25 Jan 2019 06:56:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 25 Jan 2019 06:56:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 06:56:37 GMT
EXPOSE 6379
# Fri, 25 Jan 2019 06:56:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffe51fa6d2482afb662ad20bf15728f4a4fa37a26cabc034f3aef57444f5488`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ade173ccd3008f6e247882ad45b0c5ae4e953e9dcbf5804a341ee74d028a51`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 908.2 KB (908187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657e6648ddb9256e0ce1702078054b8ee0448a4dbadde0e37e1dec30d209a3b8`  
		Last Modified: Fri, 25 Jan 2019 06:57:58 GMT  
		Size: 8.5 MB (8496729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674a6067e753b29dbc06aa7f4bf55fa860833bc0e9b50c332f0abf4011eb3322`  
		Last Modified: Fri, 25 Jan 2019 06:57:55 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a97e0d5917403d33be356e0a7edad57e60943605e134b976b5333198a0acb99`  
		Last Modified: Fri, 25 Jan 2019 06:57:55 GMT  
		Size: 417.0 B  
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
$ docker pull redis@sha256:01ed6779a80c833b7b077bf460fdb02ef85e001915ca1845829e60b7b43d5a6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32540048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:762c874a4f6d292325a964c617fa83db3ff816c0abd4392e0f6b4b0bb5e133c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:50:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:50:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:51:52 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 13:56:08 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 13:56:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 13:56:15 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 13:58:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 13:59:09 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 13:59:14 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 13:59:23 GMT
WORKDIR /data
# Wed, 23 Jan 2019 13:59:28 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:59:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:59:42 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 13:59:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66daf9cf33a20641c3de8a3950d60eb94ae321446e6a41ebf8c1b550e7e5e882`  
		Last Modified: Wed, 23 Jan 2019 14:00:35 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce5d7aaf49a885ec5bad9439027d4d85938fc57ec62e64c8767eafc469d0cfb`  
		Last Modified: Wed, 23 Jan 2019 14:00:36 GMT  
		Size: 909.8 KB (909832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2f858489630a980c01e77be851a7de6963c316221c888343cfec4ee625c4a2`  
		Last Modified: Wed, 23 Jan 2019 14:01:09 GMT  
		Size: 8.9 MB (8872585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5df1deff6d8017ddeaedf8d06f2bd01a989b72eda2e84733b7e39efcc2ed556`  
		Last Modified: Wed, 23 Jan 2019 14:01:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbca801206e87195422160f42588a286e7da476c1dab94ea51e4ca40ff7dbe2`  
		Last Modified: Wed, 23 Jan 2019 14:01:06 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; s390x

```console
$ docker pull redis@sha256:10da57d03255ca3bb3c677043c3a45f50fbcc1c178c4e735255f16efb236cf9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32372825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:160e520e71e9bbbc0976c2a9736addadbecf0dd4667bcdb653483c70c573f958`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:18:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 14:18:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 14:18:24 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:19:33 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 14:19:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 14:19:34 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 14:20:00 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:20:01 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:20:01 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:20:01 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:20:02 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:20:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:20:02 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:20:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22a40b3c46872bd9c1e94c09c9de59551f086061fab40c8c0091a5a1e8444d0`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b27b153c68320008563ed9812491fc080de29349a58df2c41e84a547626acc7`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 926.8 KB (926752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda6bcaf2ad80000961e2ac3ec7aac1a9d9e7cd1698e159c57b5fa6d06db523f`  
		Last Modified: Wed, 23 Jan 2019 14:20:41 GMT  
		Size: 9.1 MB (9090316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7df8a74cd6ceae466dabc45984a25feb75007297e02cb39e3a98e256f4a926`  
		Last Modified: Wed, 23 Jan 2019 14:20:39 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6ccb1d4c4df5d80ea935adc4465bc46f2f6a434e7a14aaee2747860e72bc8c`  
		Last Modified: Wed, 23 Jan 2019 14:20:39 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0`

```console
$ docker pull redis@sha256:cb5eac2e2bc17ccc040bffdc9f9b8713d198492d2185ad6bbdf8d4d07e5e6d47
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
$ docker pull redis@sha256:e7796b1e3a8452f453bf43554e1c0e9cd1a79b47f76ab7f55dba58228402426d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.8 MB (29757356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b340dad7041e684bb2653e8796de2f1581c73f96a478b32dad31aef1cfe9fb8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 06:49:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 25 Jan 2019 06:49:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Jan 2019 06:51:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 25 Jan 2019 06:54:27 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 25 Jan 2019 06:54:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 25 Jan 2019 06:54:29 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 25 Jan 2019 06:56:30 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Jan 2019 06:56:32 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 25 Jan 2019 06:56:33 GMT
VOLUME [/data]
# Fri, 25 Jan 2019 06:56:34 GMT
WORKDIR /data
# Fri, 25 Jan 2019 06:56:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 25 Jan 2019 06:56:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 06:56:37 GMT
EXPOSE 6379
# Fri, 25 Jan 2019 06:56:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffe51fa6d2482afb662ad20bf15728f4a4fa37a26cabc034f3aef57444f5488`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ade173ccd3008f6e247882ad45b0c5ae4e953e9dcbf5804a341ee74d028a51`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 908.2 KB (908187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657e6648ddb9256e0ce1702078054b8ee0448a4dbadde0e37e1dec30d209a3b8`  
		Last Modified: Fri, 25 Jan 2019 06:57:58 GMT  
		Size: 8.5 MB (8496729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674a6067e753b29dbc06aa7f4bf55fa860833bc0e9b50c332f0abf4011eb3322`  
		Last Modified: Fri, 25 Jan 2019 06:57:55 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a97e0d5917403d33be356e0a7edad57e60943605e134b976b5333198a0acb99`  
		Last Modified: Fri, 25 Jan 2019 06:57:55 GMT  
		Size: 417.0 B  
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
$ docker pull redis@sha256:01ed6779a80c833b7b077bf460fdb02ef85e001915ca1845829e60b7b43d5a6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32540048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:762c874a4f6d292325a964c617fa83db3ff816c0abd4392e0f6b4b0bb5e133c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:50:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:50:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:51:52 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 13:56:08 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 13:56:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 13:56:15 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 13:58:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 13:59:09 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 13:59:14 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 13:59:23 GMT
WORKDIR /data
# Wed, 23 Jan 2019 13:59:28 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:59:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:59:42 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 13:59:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66daf9cf33a20641c3de8a3950d60eb94ae321446e6a41ebf8c1b550e7e5e882`  
		Last Modified: Wed, 23 Jan 2019 14:00:35 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce5d7aaf49a885ec5bad9439027d4d85938fc57ec62e64c8767eafc469d0cfb`  
		Last Modified: Wed, 23 Jan 2019 14:00:36 GMT  
		Size: 909.8 KB (909832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2f858489630a980c01e77be851a7de6963c316221c888343cfec4ee625c4a2`  
		Last Modified: Wed, 23 Jan 2019 14:01:09 GMT  
		Size: 8.9 MB (8872585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5df1deff6d8017ddeaedf8d06f2bd01a989b72eda2e84733b7e39efcc2ed556`  
		Last Modified: Wed, 23 Jan 2019 14:01:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbca801206e87195422160f42588a286e7da476c1dab94ea51e4ca40ff7dbe2`  
		Last Modified: Wed, 23 Jan 2019 14:01:06 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; s390x

```console
$ docker pull redis@sha256:10da57d03255ca3bb3c677043c3a45f50fbcc1c178c4e735255f16efb236cf9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32372825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:160e520e71e9bbbc0976c2a9736addadbecf0dd4667bcdb653483c70c573f958`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:18:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 14:18:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 14:18:24 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:19:33 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 14:19:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 14:19:34 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 14:20:00 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:20:01 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:20:01 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:20:01 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:20:02 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:20:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:20:02 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:20:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22a40b3c46872bd9c1e94c09c9de59551f086061fab40c8c0091a5a1e8444d0`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b27b153c68320008563ed9812491fc080de29349a58df2c41e84a547626acc7`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 926.8 KB (926752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda6bcaf2ad80000961e2ac3ec7aac1a9d9e7cd1698e159c57b5fa6d06db523f`  
		Last Modified: Wed, 23 Jan 2019 14:20:41 GMT  
		Size: 9.1 MB (9090316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7df8a74cd6ceae466dabc45984a25feb75007297e02cb39e3a98e256f4a926`  
		Last Modified: Wed, 23 Jan 2019 14:20:39 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6ccb1d4c4df5d80ea935adc4465bc46f2f6a434e7a14aaee2747860e72bc8c`  
		Last Modified: Wed, 23 Jan 2019 14:20:39 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.12`

```console
$ docker pull redis@sha256:cb5eac2e2bc17ccc040bffdc9f9b8713d198492d2185ad6bbdf8d4d07e5e6d47
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
$ docker pull redis@sha256:e7796b1e3a8452f453bf43554e1c0e9cd1a79b47f76ab7f55dba58228402426d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.8 MB (29757356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b340dad7041e684bb2653e8796de2f1581c73f96a478b32dad31aef1cfe9fb8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 06:49:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 25 Jan 2019 06:49:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Jan 2019 06:51:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 25 Jan 2019 06:54:27 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 25 Jan 2019 06:54:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 25 Jan 2019 06:54:29 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 25 Jan 2019 06:56:30 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Jan 2019 06:56:32 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 25 Jan 2019 06:56:33 GMT
VOLUME [/data]
# Fri, 25 Jan 2019 06:56:34 GMT
WORKDIR /data
# Fri, 25 Jan 2019 06:56:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 25 Jan 2019 06:56:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 06:56:37 GMT
EXPOSE 6379
# Fri, 25 Jan 2019 06:56:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffe51fa6d2482afb662ad20bf15728f4a4fa37a26cabc034f3aef57444f5488`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ade173ccd3008f6e247882ad45b0c5ae4e953e9dcbf5804a341ee74d028a51`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 908.2 KB (908187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657e6648ddb9256e0ce1702078054b8ee0448a4dbadde0e37e1dec30d209a3b8`  
		Last Modified: Fri, 25 Jan 2019 06:57:58 GMT  
		Size: 8.5 MB (8496729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674a6067e753b29dbc06aa7f4bf55fa860833bc0e9b50c332f0abf4011eb3322`  
		Last Modified: Fri, 25 Jan 2019 06:57:55 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a97e0d5917403d33be356e0a7edad57e60943605e134b976b5333198a0acb99`  
		Last Modified: Fri, 25 Jan 2019 06:57:55 GMT  
		Size: 417.0 B  
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
$ docker pull redis@sha256:01ed6779a80c833b7b077bf460fdb02ef85e001915ca1845829e60b7b43d5a6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32540048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:762c874a4f6d292325a964c617fa83db3ff816c0abd4392e0f6b4b0bb5e133c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:50:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:50:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:51:52 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 13:56:08 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 13:56:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 13:56:15 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 13:58:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 13:59:09 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 13:59:14 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 13:59:23 GMT
WORKDIR /data
# Wed, 23 Jan 2019 13:59:28 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:59:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:59:42 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 13:59:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66daf9cf33a20641c3de8a3950d60eb94ae321446e6a41ebf8c1b550e7e5e882`  
		Last Modified: Wed, 23 Jan 2019 14:00:35 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce5d7aaf49a885ec5bad9439027d4d85938fc57ec62e64c8767eafc469d0cfb`  
		Last Modified: Wed, 23 Jan 2019 14:00:36 GMT  
		Size: 909.8 KB (909832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2f858489630a980c01e77be851a7de6963c316221c888343cfec4ee625c4a2`  
		Last Modified: Wed, 23 Jan 2019 14:01:09 GMT  
		Size: 8.9 MB (8872585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5df1deff6d8017ddeaedf8d06f2bd01a989b72eda2e84733b7e39efcc2ed556`  
		Last Modified: Wed, 23 Jan 2019 14:01:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbca801206e87195422160f42588a286e7da476c1dab94ea51e4ca40ff7dbe2`  
		Last Modified: Wed, 23 Jan 2019 14:01:06 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12` - linux; s390x

```console
$ docker pull redis@sha256:10da57d03255ca3bb3c677043c3a45f50fbcc1c178c4e735255f16efb236cf9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32372825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:160e520e71e9bbbc0976c2a9736addadbecf0dd4667bcdb653483c70c573f958`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:18:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 14:18:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 14:18:24 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:19:33 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 14:19:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 14:19:34 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 14:20:00 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:20:01 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:20:01 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:20:01 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:20:02 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:20:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:20:02 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:20:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22a40b3c46872bd9c1e94c09c9de59551f086061fab40c8c0091a5a1e8444d0`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b27b153c68320008563ed9812491fc080de29349a58df2c41e84a547626acc7`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 926.8 KB (926752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda6bcaf2ad80000961e2ac3ec7aac1a9d9e7cd1698e159c57b5fa6d06db523f`  
		Last Modified: Wed, 23 Jan 2019 14:20:41 GMT  
		Size: 9.1 MB (9090316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7df8a74cd6ceae466dabc45984a25feb75007297e02cb39e3a98e256f4a926`  
		Last Modified: Wed, 23 Jan 2019 14:20:39 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6ccb1d4c4df5d80ea935adc4465bc46f2f6a434e7a14aaee2747860e72bc8c`  
		Last Modified: Wed, 23 Jan 2019 14:20:39 GMT  
		Size: 420.0 B  
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
$ docker pull redis@sha256:4f54ba378f8cfae19f259ef4dda131aa986bc75e221aa0d0f35833c08e78ddae
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
$ docker pull redis@sha256:c1b4ad18cf69638cc1cd6dda6f139143bf487a99538672e5b3b53786c682ea1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11703234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32cfb1cab15fa3554a05430a60cf8c8439e0ec55b50f1c94469037cd153c895`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:04:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 15:04:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 15:07:34 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 15:07:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 15:07:36 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 15:09:01 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 15:09:05 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 15:09:06 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:09:07 GMT
WORKDIR /data
# Fri, 21 Dec 2018 15:09:08 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 15:09:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:09:10 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 15:09:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afcea4bbe8c0cd1974219056baef82c09ae5626ed95f109330edec6abfb5d65`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30fc10da3c728b6192f95ca65d9fce0e3cfc9f40c7d0b6b2a47cf76a36daf75`  
		Last Modified: Fri, 21 Dec 2018 15:10:15 GMT  
		Size: 401.1 KB (401129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffe48ad83d32a0e672208f9382dec5f0ea4def9379dc07d3279fd51c744e319`  
		Last Modified: Fri, 21 Dec 2018 15:11:02 GMT  
		Size: 9.2 MB (9200328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafdd5308967aa0c543e9cd515f9069acae1c5060822ad0ed58d5b018144e7a2`  
		Last Modified: Fri, 21 Dec 2018 15:10:55 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7456129ce64a7862c4588266a6ec4ed543e9c2744cde6388418cd5b0cf4603c`  
		Last Modified: Fri, 21 Dec 2018 15:10:55 GMT  
		Size: 413.0 B  
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
$ docker pull redis@sha256:868d75b49d9bd413a0c51d0d4a99c4777cb24b46ea1fc4f14153778f7a5d7072
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12138776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83656b3083d35b57456d9a85564b1f3c2026c6273132a5f04ba3b6c0c39a59b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 11:58:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 11:58:22 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 11:59:42 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 11:59:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 11:59:46 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 12:00:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 12:00:16 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 12:00:17 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:00:21 GMT
WORKDIR /data
# Fri, 21 Dec 2018 12:00:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:00:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:00:30 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 12:00:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3116134e43eed56e1265aaa08873f9f6b9929bffa74beb3586f3138e9cc46e2c`  
		Last Modified: Fri, 21 Dec 2018 12:01:14 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10b6fb16b59afc5f795b7a9695cf5a0a5baea6eb32445bb8df64afce0e0dd53`  
		Last Modified: Fri, 21 Dec 2018 12:01:15 GMT  
		Size: 407.4 KB (407413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de3e4a1beb3a667e90ea88885eee98c5a4a814dae371a755f0f977d62892469`  
		Last Modified: Fri, 21 Dec 2018 12:01:52 GMT  
		Size: 9.5 MB (9534587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554bcd3a172a1f355518e25e1713ae3f297de25a29f34279566ecde0b634c610`  
		Last Modified: Fri, 21 Dec 2018 12:01:50 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6384680f4cf572cf84484d637a4154b0c0eb832e0367e59fa846be261df84abe`  
		Last Modified: Fri, 21 Dec 2018 12:01:50 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-alpine` - linux; s390x

```console
$ docker pull redis@sha256:2b1aa038b2c19de4a17330ec3463ccfc76da2361b7b0a20e126b39579df72356
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12300342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e48f7a2c15f2dd37a5e21e6492d46c2666e55c04c0456e794ecfe5b63b40b5cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:28:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 14:28:58 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 14:29:58 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 14:29:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 14:29:59 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 14:30:20 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 14:30:21 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 14:30:21 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 14:30:21 GMT
WORKDIR /data
# Fri, 21 Dec 2018 14:30:21 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:30:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:30:22 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 14:30:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2d242836af801e2953145aca64bf779f602b785fc5760250737b2d1e274839`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5483a7d98377a6e29cb7987e8578e34d51d1b201cd7d6c3840a7f34a29070acb`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 408.4 KB (408405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0237ef8c5f7c5fe28db705b00535b71181d24904d481f807630054eba3f48df`  
		Last Modified: Fri, 21 Dec 2018 14:31:04 GMT  
		Size: 9.6 MB (9582152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d65e3555bcb587995e4ab08cf3ddce9f7931471347c9fde80e68e06550b8b2`  
		Last Modified: Fri, 21 Dec 2018 14:31:02 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9654594db45a0e7007f1e204ea33631ffb63c2c422e674d503b489923706fa`  
		Last Modified: Fri, 21 Dec 2018 14:31:02 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.12-alpine3.9`

```console
$ docker pull redis@sha256:4f54ba378f8cfae19f259ef4dda131aa986bc75e221aa0d0f35833c08e78ddae
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
$ docker pull redis@sha256:c1b4ad18cf69638cc1cd6dda6f139143bf487a99538672e5b3b53786c682ea1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11703234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32cfb1cab15fa3554a05430a60cf8c8439e0ec55b50f1c94469037cd153c895`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:04:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 15:04:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 15:07:34 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 15:07:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 15:07:36 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 15:09:01 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 15:09:05 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 15:09:06 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:09:07 GMT
WORKDIR /data
# Fri, 21 Dec 2018 15:09:08 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 15:09:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:09:10 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 15:09:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afcea4bbe8c0cd1974219056baef82c09ae5626ed95f109330edec6abfb5d65`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30fc10da3c728b6192f95ca65d9fce0e3cfc9f40c7d0b6b2a47cf76a36daf75`  
		Last Modified: Fri, 21 Dec 2018 15:10:15 GMT  
		Size: 401.1 KB (401129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffe48ad83d32a0e672208f9382dec5f0ea4def9379dc07d3279fd51c744e319`  
		Last Modified: Fri, 21 Dec 2018 15:11:02 GMT  
		Size: 9.2 MB (9200328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafdd5308967aa0c543e9cd515f9069acae1c5060822ad0ed58d5b018144e7a2`  
		Last Modified: Fri, 21 Dec 2018 15:10:55 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7456129ce64a7862c4588266a6ec4ed543e9c2744cde6388418cd5b0cf4603c`  
		Last Modified: Fri, 21 Dec 2018 15:10:55 GMT  
		Size: 413.0 B  
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
$ docker pull redis@sha256:868d75b49d9bd413a0c51d0d4a99c4777cb24b46ea1fc4f14153778f7a5d7072
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12138776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83656b3083d35b57456d9a85564b1f3c2026c6273132a5f04ba3b6c0c39a59b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 11:58:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 11:58:22 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 11:59:42 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 11:59:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 11:59:46 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 12:00:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 12:00:16 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 12:00:17 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:00:21 GMT
WORKDIR /data
# Fri, 21 Dec 2018 12:00:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:00:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:00:30 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 12:00:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3116134e43eed56e1265aaa08873f9f6b9929bffa74beb3586f3138e9cc46e2c`  
		Last Modified: Fri, 21 Dec 2018 12:01:14 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10b6fb16b59afc5f795b7a9695cf5a0a5baea6eb32445bb8df64afce0e0dd53`  
		Last Modified: Fri, 21 Dec 2018 12:01:15 GMT  
		Size: 407.4 KB (407413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de3e4a1beb3a667e90ea88885eee98c5a4a814dae371a755f0f977d62892469`  
		Last Modified: Fri, 21 Dec 2018 12:01:52 GMT  
		Size: 9.5 MB (9534587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554bcd3a172a1f355518e25e1713ae3f297de25a29f34279566ecde0b634c610`  
		Last Modified: Fri, 21 Dec 2018 12:01:50 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6384680f4cf572cf84484d637a4154b0c0eb832e0367e59fa846be261df84abe`  
		Last Modified: Fri, 21 Dec 2018 12:01:50 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:2b1aa038b2c19de4a17330ec3463ccfc76da2361b7b0a20e126b39579df72356
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12300342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e48f7a2c15f2dd37a5e21e6492d46c2666e55c04c0456e794ecfe5b63b40b5cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:28:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 14:28:58 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 14:29:58 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 14:29:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 14:29:59 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 14:30:20 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 14:30:21 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 14:30:21 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 14:30:21 GMT
WORKDIR /data
# Fri, 21 Dec 2018 14:30:21 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:30:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:30:22 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 14:30:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2d242836af801e2953145aca64bf779f602b785fc5760250737b2d1e274839`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5483a7d98377a6e29cb7987e8578e34d51d1b201cd7d6c3840a7f34a29070acb`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 408.4 KB (408405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0237ef8c5f7c5fe28db705b00535b71181d24904d481f807630054eba3f48df`  
		Last Modified: Fri, 21 Dec 2018 14:31:04 GMT  
		Size: 9.6 MB (9582152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d65e3555bcb587995e4ab08cf3ddce9f7931471347c9fde80e68e06550b8b2`  
		Last Modified: Fri, 21 Dec 2018 14:31:02 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9654594db45a0e7007f1e204ea33631ffb63c2c422e674d503b489923706fa`  
		Last Modified: Fri, 21 Dec 2018 14:31:02 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.12-stretch`

```console
$ docker pull redis@sha256:cb5eac2e2bc17ccc040bffdc9f9b8713d198492d2185ad6bbdf8d4d07e5e6d47
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
$ docker pull redis@sha256:e7796b1e3a8452f453bf43554e1c0e9cd1a79b47f76ab7f55dba58228402426d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.8 MB (29757356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b340dad7041e684bb2653e8796de2f1581c73f96a478b32dad31aef1cfe9fb8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 06:49:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 25 Jan 2019 06:49:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Jan 2019 06:51:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 25 Jan 2019 06:54:27 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 25 Jan 2019 06:54:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 25 Jan 2019 06:54:29 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 25 Jan 2019 06:56:30 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Jan 2019 06:56:32 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 25 Jan 2019 06:56:33 GMT
VOLUME [/data]
# Fri, 25 Jan 2019 06:56:34 GMT
WORKDIR /data
# Fri, 25 Jan 2019 06:56:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 25 Jan 2019 06:56:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 06:56:37 GMT
EXPOSE 6379
# Fri, 25 Jan 2019 06:56:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffe51fa6d2482afb662ad20bf15728f4a4fa37a26cabc034f3aef57444f5488`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ade173ccd3008f6e247882ad45b0c5ae4e953e9dcbf5804a341ee74d028a51`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 908.2 KB (908187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657e6648ddb9256e0ce1702078054b8ee0448a4dbadde0e37e1dec30d209a3b8`  
		Last Modified: Fri, 25 Jan 2019 06:57:58 GMT  
		Size: 8.5 MB (8496729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674a6067e753b29dbc06aa7f4bf55fa860833bc0e9b50c332f0abf4011eb3322`  
		Last Modified: Fri, 25 Jan 2019 06:57:55 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a97e0d5917403d33be356e0a7edad57e60943605e134b976b5333198a0acb99`  
		Last Modified: Fri, 25 Jan 2019 06:57:55 GMT  
		Size: 417.0 B  
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
$ docker pull redis@sha256:01ed6779a80c833b7b077bf460fdb02ef85e001915ca1845829e60b7b43d5a6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32540048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:762c874a4f6d292325a964c617fa83db3ff816c0abd4392e0f6b4b0bb5e133c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:50:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:50:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:51:52 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 13:56:08 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 13:56:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 13:56:15 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 13:58:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 13:59:09 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 13:59:14 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 13:59:23 GMT
WORKDIR /data
# Wed, 23 Jan 2019 13:59:28 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:59:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:59:42 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 13:59:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66daf9cf33a20641c3de8a3950d60eb94ae321446e6a41ebf8c1b550e7e5e882`  
		Last Modified: Wed, 23 Jan 2019 14:00:35 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce5d7aaf49a885ec5bad9439027d4d85938fc57ec62e64c8767eafc469d0cfb`  
		Last Modified: Wed, 23 Jan 2019 14:00:36 GMT  
		Size: 909.8 KB (909832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2f858489630a980c01e77be851a7de6963c316221c888343cfec4ee625c4a2`  
		Last Modified: Wed, 23 Jan 2019 14:01:09 GMT  
		Size: 8.9 MB (8872585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5df1deff6d8017ddeaedf8d06f2bd01a989b72eda2e84733b7e39efcc2ed556`  
		Last Modified: Wed, 23 Jan 2019 14:01:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbca801206e87195422160f42588a286e7da476c1dab94ea51e4ca40ff7dbe2`  
		Last Modified: Wed, 23 Jan 2019 14:01:06 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-stretch` - linux; s390x

```console
$ docker pull redis@sha256:10da57d03255ca3bb3c677043c3a45f50fbcc1c178c4e735255f16efb236cf9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32372825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:160e520e71e9bbbc0976c2a9736addadbecf0dd4667bcdb653483c70c573f958`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:18:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 14:18:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 14:18:24 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:19:33 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 14:19:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 14:19:34 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 14:20:00 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:20:01 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:20:01 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:20:01 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:20:02 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:20:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:20:02 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:20:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22a40b3c46872bd9c1e94c09c9de59551f086061fab40c8c0091a5a1e8444d0`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b27b153c68320008563ed9812491fc080de29349a58df2c41e84a547626acc7`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 926.8 KB (926752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda6bcaf2ad80000961e2ac3ec7aac1a9d9e7cd1698e159c57b5fa6d06db523f`  
		Last Modified: Wed, 23 Jan 2019 14:20:41 GMT  
		Size: 9.1 MB (9090316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7df8a74cd6ceae466dabc45984a25feb75007297e02cb39e3a98e256f4a926`  
		Last Modified: Wed, 23 Jan 2019 14:20:39 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6ccb1d4c4df5d80ea935adc4465bc46f2f6a434e7a14aaee2747860e72bc8c`  
		Last Modified: Wed, 23 Jan 2019 14:20:39 GMT  
		Size: 420.0 B  
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
$ docker pull redis@sha256:4f54ba378f8cfae19f259ef4dda131aa986bc75e221aa0d0f35833c08e78ddae
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
$ docker pull redis@sha256:c1b4ad18cf69638cc1cd6dda6f139143bf487a99538672e5b3b53786c682ea1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11703234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32cfb1cab15fa3554a05430a60cf8c8439e0ec55b50f1c94469037cd153c895`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:04:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 15:04:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 15:07:34 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 15:07:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 15:07:36 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 15:09:01 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 15:09:05 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 15:09:06 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:09:07 GMT
WORKDIR /data
# Fri, 21 Dec 2018 15:09:08 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 15:09:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:09:10 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 15:09:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afcea4bbe8c0cd1974219056baef82c09ae5626ed95f109330edec6abfb5d65`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30fc10da3c728b6192f95ca65d9fce0e3cfc9f40c7d0b6b2a47cf76a36daf75`  
		Last Modified: Fri, 21 Dec 2018 15:10:15 GMT  
		Size: 401.1 KB (401129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffe48ad83d32a0e672208f9382dec5f0ea4def9379dc07d3279fd51c744e319`  
		Last Modified: Fri, 21 Dec 2018 15:11:02 GMT  
		Size: 9.2 MB (9200328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafdd5308967aa0c543e9cd515f9069acae1c5060822ad0ed58d5b018144e7a2`  
		Last Modified: Fri, 21 Dec 2018 15:10:55 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7456129ce64a7862c4588266a6ec4ed543e9c2744cde6388418cd5b0cf4603c`  
		Last Modified: Fri, 21 Dec 2018 15:10:55 GMT  
		Size: 413.0 B  
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
$ docker pull redis@sha256:868d75b49d9bd413a0c51d0d4a99c4777cb24b46ea1fc4f14153778f7a5d7072
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12138776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83656b3083d35b57456d9a85564b1f3c2026c6273132a5f04ba3b6c0c39a59b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 11:58:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 11:58:22 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 11:59:42 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 11:59:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 11:59:46 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 12:00:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 12:00:16 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 12:00:17 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:00:21 GMT
WORKDIR /data
# Fri, 21 Dec 2018 12:00:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:00:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:00:30 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 12:00:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3116134e43eed56e1265aaa08873f9f6b9929bffa74beb3586f3138e9cc46e2c`  
		Last Modified: Fri, 21 Dec 2018 12:01:14 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10b6fb16b59afc5f795b7a9695cf5a0a5baea6eb32445bb8df64afce0e0dd53`  
		Last Modified: Fri, 21 Dec 2018 12:01:15 GMT  
		Size: 407.4 KB (407413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de3e4a1beb3a667e90ea88885eee98c5a4a814dae371a755f0f977d62892469`  
		Last Modified: Fri, 21 Dec 2018 12:01:52 GMT  
		Size: 9.5 MB (9534587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554bcd3a172a1f355518e25e1713ae3f297de25a29f34279566ecde0b634c610`  
		Last Modified: Fri, 21 Dec 2018 12:01:50 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6384680f4cf572cf84484d637a4154b0c0eb832e0367e59fa846be261df84abe`  
		Last Modified: Fri, 21 Dec 2018 12:01:50 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; s390x

```console
$ docker pull redis@sha256:2b1aa038b2c19de4a17330ec3463ccfc76da2361b7b0a20e126b39579df72356
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12300342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e48f7a2c15f2dd37a5e21e6492d46c2666e55c04c0456e794ecfe5b63b40b5cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:28:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 14:28:58 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 14:29:58 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 14:29:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 14:29:59 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 14:30:20 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 14:30:21 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 14:30:21 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 14:30:21 GMT
WORKDIR /data
# Fri, 21 Dec 2018 14:30:21 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:30:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:30:22 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 14:30:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2d242836af801e2953145aca64bf779f602b785fc5760250737b2d1e274839`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5483a7d98377a6e29cb7987e8578e34d51d1b201cd7d6c3840a7f34a29070acb`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 408.4 KB (408405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0237ef8c5f7c5fe28db705b00535b71181d24904d481f807630054eba3f48df`  
		Last Modified: Fri, 21 Dec 2018 14:31:04 GMT  
		Size: 9.6 MB (9582152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d65e3555bcb587995e4ab08cf3ddce9f7931471347c9fde80e68e06550b8b2`  
		Last Modified: Fri, 21 Dec 2018 14:31:02 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9654594db45a0e7007f1e204ea33631ffb63c2c422e674d503b489923706fa`  
		Last Modified: Fri, 21 Dec 2018 14:31:02 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine3.9`

```console
$ docker pull redis@sha256:4f54ba378f8cfae19f259ef4dda131aa986bc75e221aa0d0f35833c08e78ddae
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
$ docker pull redis@sha256:c1b4ad18cf69638cc1cd6dda6f139143bf487a99538672e5b3b53786c682ea1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11703234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32cfb1cab15fa3554a05430a60cf8c8439e0ec55b50f1c94469037cd153c895`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:04:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 15:04:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 15:07:34 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 15:07:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 15:07:36 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 15:09:01 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 15:09:05 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 15:09:06 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:09:07 GMT
WORKDIR /data
# Fri, 21 Dec 2018 15:09:08 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 15:09:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:09:10 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 15:09:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afcea4bbe8c0cd1974219056baef82c09ae5626ed95f109330edec6abfb5d65`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30fc10da3c728b6192f95ca65d9fce0e3cfc9f40c7d0b6b2a47cf76a36daf75`  
		Last Modified: Fri, 21 Dec 2018 15:10:15 GMT  
		Size: 401.1 KB (401129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffe48ad83d32a0e672208f9382dec5f0ea4def9379dc07d3279fd51c744e319`  
		Last Modified: Fri, 21 Dec 2018 15:11:02 GMT  
		Size: 9.2 MB (9200328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafdd5308967aa0c543e9cd515f9069acae1c5060822ad0ed58d5b018144e7a2`  
		Last Modified: Fri, 21 Dec 2018 15:10:55 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7456129ce64a7862c4588266a6ec4ed543e9c2744cde6388418cd5b0cf4603c`  
		Last Modified: Fri, 21 Dec 2018 15:10:55 GMT  
		Size: 413.0 B  
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
$ docker pull redis@sha256:868d75b49d9bd413a0c51d0d4a99c4777cb24b46ea1fc4f14153778f7a5d7072
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12138776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83656b3083d35b57456d9a85564b1f3c2026c6273132a5f04ba3b6c0c39a59b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 11:58:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 11:58:22 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 11:59:42 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 11:59:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 11:59:46 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 12:00:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 12:00:16 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 12:00:17 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:00:21 GMT
WORKDIR /data
# Fri, 21 Dec 2018 12:00:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:00:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:00:30 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 12:00:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3116134e43eed56e1265aaa08873f9f6b9929bffa74beb3586f3138e9cc46e2c`  
		Last Modified: Fri, 21 Dec 2018 12:01:14 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10b6fb16b59afc5f795b7a9695cf5a0a5baea6eb32445bb8df64afce0e0dd53`  
		Last Modified: Fri, 21 Dec 2018 12:01:15 GMT  
		Size: 407.4 KB (407413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de3e4a1beb3a667e90ea88885eee98c5a4a814dae371a755f0f977d62892469`  
		Last Modified: Fri, 21 Dec 2018 12:01:52 GMT  
		Size: 9.5 MB (9534587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554bcd3a172a1f355518e25e1713ae3f297de25a29f34279566ecde0b634c610`  
		Last Modified: Fri, 21 Dec 2018 12:01:50 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6384680f4cf572cf84484d637a4154b0c0eb832e0367e59fa846be261df84abe`  
		Last Modified: Fri, 21 Dec 2018 12:01:50 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:2b1aa038b2c19de4a17330ec3463ccfc76da2361b7b0a20e126b39579df72356
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12300342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e48f7a2c15f2dd37a5e21e6492d46c2666e55c04c0456e794ecfe5b63b40b5cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:28:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 14:28:58 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 14:29:58 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 14:29:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 14:29:59 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 14:30:20 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 14:30:21 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 14:30:21 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 14:30:21 GMT
WORKDIR /data
# Fri, 21 Dec 2018 14:30:21 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:30:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:30:22 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 14:30:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2d242836af801e2953145aca64bf779f602b785fc5760250737b2d1e274839`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5483a7d98377a6e29cb7987e8578e34d51d1b201cd7d6c3840a7f34a29070acb`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 408.4 KB (408405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0237ef8c5f7c5fe28db705b00535b71181d24904d481f807630054eba3f48df`  
		Last Modified: Fri, 21 Dec 2018 14:31:04 GMT  
		Size: 9.6 MB (9582152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d65e3555bcb587995e4ab08cf3ddce9f7931471347c9fde80e68e06550b8b2`  
		Last Modified: Fri, 21 Dec 2018 14:31:02 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9654594db45a0e7007f1e204ea33631ffb63c2c422e674d503b489923706fa`  
		Last Modified: Fri, 21 Dec 2018 14:31:02 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-stretch`

```console
$ docker pull redis@sha256:cb5eac2e2bc17ccc040bffdc9f9b8713d198492d2185ad6bbdf8d4d07e5e6d47
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
$ docker pull redis@sha256:e7796b1e3a8452f453bf43554e1c0e9cd1a79b47f76ab7f55dba58228402426d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.8 MB (29757356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b340dad7041e684bb2653e8796de2f1581c73f96a478b32dad31aef1cfe9fb8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 06:49:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 25 Jan 2019 06:49:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Jan 2019 06:51:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 25 Jan 2019 06:54:27 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 25 Jan 2019 06:54:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 25 Jan 2019 06:54:29 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 25 Jan 2019 06:56:30 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Jan 2019 06:56:32 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 25 Jan 2019 06:56:33 GMT
VOLUME [/data]
# Fri, 25 Jan 2019 06:56:34 GMT
WORKDIR /data
# Fri, 25 Jan 2019 06:56:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 25 Jan 2019 06:56:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 06:56:37 GMT
EXPOSE 6379
# Fri, 25 Jan 2019 06:56:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffe51fa6d2482afb662ad20bf15728f4a4fa37a26cabc034f3aef57444f5488`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ade173ccd3008f6e247882ad45b0c5ae4e953e9dcbf5804a341ee74d028a51`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 908.2 KB (908187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657e6648ddb9256e0ce1702078054b8ee0448a4dbadde0e37e1dec30d209a3b8`  
		Last Modified: Fri, 25 Jan 2019 06:57:58 GMT  
		Size: 8.5 MB (8496729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674a6067e753b29dbc06aa7f4bf55fa860833bc0e9b50c332f0abf4011eb3322`  
		Last Modified: Fri, 25 Jan 2019 06:57:55 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a97e0d5917403d33be356e0a7edad57e60943605e134b976b5333198a0acb99`  
		Last Modified: Fri, 25 Jan 2019 06:57:55 GMT  
		Size: 417.0 B  
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
$ docker pull redis@sha256:01ed6779a80c833b7b077bf460fdb02ef85e001915ca1845829e60b7b43d5a6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32540048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:762c874a4f6d292325a964c617fa83db3ff816c0abd4392e0f6b4b0bb5e133c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:50:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:50:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:51:52 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 13:56:08 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 13:56:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 13:56:15 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 13:58:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 13:59:09 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 13:59:14 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 13:59:23 GMT
WORKDIR /data
# Wed, 23 Jan 2019 13:59:28 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:59:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:59:42 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 13:59:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66daf9cf33a20641c3de8a3950d60eb94ae321446e6a41ebf8c1b550e7e5e882`  
		Last Modified: Wed, 23 Jan 2019 14:00:35 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce5d7aaf49a885ec5bad9439027d4d85938fc57ec62e64c8767eafc469d0cfb`  
		Last Modified: Wed, 23 Jan 2019 14:00:36 GMT  
		Size: 909.8 KB (909832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2f858489630a980c01e77be851a7de6963c316221c888343cfec4ee625c4a2`  
		Last Modified: Wed, 23 Jan 2019 14:01:09 GMT  
		Size: 8.9 MB (8872585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5df1deff6d8017ddeaedf8d06f2bd01a989b72eda2e84733b7e39efcc2ed556`  
		Last Modified: Wed, 23 Jan 2019 14:01:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbca801206e87195422160f42588a286e7da476c1dab94ea51e4ca40ff7dbe2`  
		Last Modified: Wed, 23 Jan 2019 14:01:06 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; s390x

```console
$ docker pull redis@sha256:10da57d03255ca3bb3c677043c3a45f50fbcc1c178c4e735255f16efb236cf9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32372825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:160e520e71e9bbbc0976c2a9736addadbecf0dd4667bcdb653483c70c573f958`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:18:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 14:18:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 14:18:24 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:19:33 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 14:19:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 14:19:34 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 14:20:00 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:20:01 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:20:01 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:20:01 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:20:02 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:20:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:20:02 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:20:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22a40b3c46872bd9c1e94c09c9de59551f086061fab40c8c0091a5a1e8444d0`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b27b153c68320008563ed9812491fc080de29349a58df2c41e84a547626acc7`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 926.8 KB (926752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda6bcaf2ad80000961e2ac3ec7aac1a9d9e7cd1698e159c57b5fa6d06db523f`  
		Last Modified: Wed, 23 Jan 2019 14:20:41 GMT  
		Size: 9.1 MB (9090316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7df8a74cd6ceae466dabc45984a25feb75007297e02cb39e3a98e256f4a926`  
		Last Modified: Wed, 23 Jan 2019 14:20:39 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6ccb1d4c4df5d80ea935adc4465bc46f2f6a434e7a14aaee2747860e72bc8c`  
		Last Modified: Wed, 23 Jan 2019 14:20:39 GMT  
		Size: 420.0 B  
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
$ docker pull redis@sha256:4f54ba378f8cfae19f259ef4dda131aa986bc75e221aa0d0f35833c08e78ddae
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
$ docker pull redis@sha256:c1b4ad18cf69638cc1cd6dda6f139143bf487a99538672e5b3b53786c682ea1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11703234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32cfb1cab15fa3554a05430a60cf8c8439e0ec55b50f1c94469037cd153c895`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:04:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 15:04:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 15:07:34 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 15:07:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 15:07:36 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 15:09:01 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 15:09:05 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 15:09:06 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:09:07 GMT
WORKDIR /data
# Fri, 21 Dec 2018 15:09:08 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 15:09:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:09:10 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 15:09:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afcea4bbe8c0cd1974219056baef82c09ae5626ed95f109330edec6abfb5d65`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30fc10da3c728b6192f95ca65d9fce0e3cfc9f40c7d0b6b2a47cf76a36daf75`  
		Last Modified: Fri, 21 Dec 2018 15:10:15 GMT  
		Size: 401.1 KB (401129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffe48ad83d32a0e672208f9382dec5f0ea4def9379dc07d3279fd51c744e319`  
		Last Modified: Fri, 21 Dec 2018 15:11:02 GMT  
		Size: 9.2 MB (9200328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafdd5308967aa0c543e9cd515f9069acae1c5060822ad0ed58d5b018144e7a2`  
		Last Modified: Fri, 21 Dec 2018 15:10:55 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7456129ce64a7862c4588266a6ec4ed543e9c2744cde6388418cd5b0cf4603c`  
		Last Modified: Fri, 21 Dec 2018 15:10:55 GMT  
		Size: 413.0 B  
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
$ docker pull redis@sha256:868d75b49d9bd413a0c51d0d4a99c4777cb24b46ea1fc4f14153778f7a5d7072
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12138776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83656b3083d35b57456d9a85564b1f3c2026c6273132a5f04ba3b6c0c39a59b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 11:58:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 11:58:22 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 11:59:42 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 11:59:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 11:59:46 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 12:00:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 12:00:16 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 12:00:17 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:00:21 GMT
WORKDIR /data
# Fri, 21 Dec 2018 12:00:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:00:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:00:30 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 12:00:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3116134e43eed56e1265aaa08873f9f6b9929bffa74beb3586f3138e9cc46e2c`  
		Last Modified: Fri, 21 Dec 2018 12:01:14 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10b6fb16b59afc5f795b7a9695cf5a0a5baea6eb32445bb8df64afce0e0dd53`  
		Last Modified: Fri, 21 Dec 2018 12:01:15 GMT  
		Size: 407.4 KB (407413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de3e4a1beb3a667e90ea88885eee98c5a4a814dae371a755f0f977d62892469`  
		Last Modified: Fri, 21 Dec 2018 12:01:52 GMT  
		Size: 9.5 MB (9534587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554bcd3a172a1f355518e25e1713ae3f297de25a29f34279566ecde0b634c610`  
		Last Modified: Fri, 21 Dec 2018 12:01:50 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6384680f4cf572cf84484d637a4154b0c0eb832e0367e59fa846be261df84abe`  
		Last Modified: Fri, 21 Dec 2018 12:01:50 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; s390x

```console
$ docker pull redis@sha256:2b1aa038b2c19de4a17330ec3463ccfc76da2361b7b0a20e126b39579df72356
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12300342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e48f7a2c15f2dd37a5e21e6492d46c2666e55c04c0456e794ecfe5b63b40b5cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:28:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 14:28:58 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 14:29:58 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 14:29:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 14:29:59 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 14:30:20 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 14:30:21 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 14:30:21 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 14:30:21 GMT
WORKDIR /data
# Fri, 21 Dec 2018 14:30:21 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:30:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:30:22 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 14:30:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2d242836af801e2953145aca64bf779f602b785fc5760250737b2d1e274839`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5483a7d98377a6e29cb7987e8578e34d51d1b201cd7d6c3840a7f34a29070acb`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 408.4 KB (408405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0237ef8c5f7c5fe28db705b00535b71181d24904d481f807630054eba3f48df`  
		Last Modified: Fri, 21 Dec 2018 14:31:04 GMT  
		Size: 9.6 MB (9582152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d65e3555bcb587995e4ab08cf3ddce9f7931471347c9fde80e68e06550b8b2`  
		Last Modified: Fri, 21 Dec 2018 14:31:02 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9654594db45a0e7007f1e204ea33631ffb63c2c422e674d503b489923706fa`  
		Last Modified: Fri, 21 Dec 2018 14:31:02 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine3.9`

```console
$ docker pull redis@sha256:4f54ba378f8cfae19f259ef4dda131aa986bc75e221aa0d0f35833c08e78ddae
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
$ docker pull redis@sha256:c1b4ad18cf69638cc1cd6dda6f139143bf487a99538672e5b3b53786c682ea1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11703234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32cfb1cab15fa3554a05430a60cf8c8439e0ec55b50f1c94469037cd153c895`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:04:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 15:04:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 15:07:34 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 15:07:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 15:07:36 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 15:09:01 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 15:09:05 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 15:09:06 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:09:07 GMT
WORKDIR /data
# Fri, 21 Dec 2018 15:09:08 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 15:09:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:09:10 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 15:09:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afcea4bbe8c0cd1974219056baef82c09ae5626ed95f109330edec6abfb5d65`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30fc10da3c728b6192f95ca65d9fce0e3cfc9f40c7d0b6b2a47cf76a36daf75`  
		Last Modified: Fri, 21 Dec 2018 15:10:15 GMT  
		Size: 401.1 KB (401129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffe48ad83d32a0e672208f9382dec5f0ea4def9379dc07d3279fd51c744e319`  
		Last Modified: Fri, 21 Dec 2018 15:11:02 GMT  
		Size: 9.2 MB (9200328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafdd5308967aa0c543e9cd515f9069acae1c5060822ad0ed58d5b018144e7a2`  
		Last Modified: Fri, 21 Dec 2018 15:10:55 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7456129ce64a7862c4588266a6ec4ed543e9c2744cde6388418cd5b0cf4603c`  
		Last Modified: Fri, 21 Dec 2018 15:10:55 GMT  
		Size: 413.0 B  
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
$ docker pull redis@sha256:868d75b49d9bd413a0c51d0d4a99c4777cb24b46ea1fc4f14153778f7a5d7072
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12138776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83656b3083d35b57456d9a85564b1f3c2026c6273132a5f04ba3b6c0c39a59b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 11:58:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 11:58:22 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 11:59:42 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 11:59:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 11:59:46 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 12:00:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 12:00:16 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 12:00:17 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:00:21 GMT
WORKDIR /data
# Fri, 21 Dec 2018 12:00:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:00:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:00:30 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 12:00:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3116134e43eed56e1265aaa08873f9f6b9929bffa74beb3586f3138e9cc46e2c`  
		Last Modified: Fri, 21 Dec 2018 12:01:14 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10b6fb16b59afc5f795b7a9695cf5a0a5baea6eb32445bb8df64afce0e0dd53`  
		Last Modified: Fri, 21 Dec 2018 12:01:15 GMT  
		Size: 407.4 KB (407413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de3e4a1beb3a667e90ea88885eee98c5a4a814dae371a755f0f977d62892469`  
		Last Modified: Fri, 21 Dec 2018 12:01:52 GMT  
		Size: 9.5 MB (9534587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554bcd3a172a1f355518e25e1713ae3f297de25a29f34279566ecde0b634c610`  
		Last Modified: Fri, 21 Dec 2018 12:01:50 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6384680f4cf572cf84484d637a4154b0c0eb832e0367e59fa846be261df84abe`  
		Last Modified: Fri, 21 Dec 2018 12:01:50 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:2b1aa038b2c19de4a17330ec3463ccfc76da2361b7b0a20e126b39579df72356
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12300342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e48f7a2c15f2dd37a5e21e6492d46c2666e55c04c0456e794ecfe5b63b40b5cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:28:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 14:28:58 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 14:29:58 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 21 Dec 2018 14:29:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 21 Dec 2018 14:29:59 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 21 Dec 2018 14:30:20 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 14:30:21 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 14:30:21 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 14:30:21 GMT
WORKDIR /data
# Fri, 21 Dec 2018 14:30:21 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:30:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:30:22 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 14:30:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2d242836af801e2953145aca64bf779f602b785fc5760250737b2d1e274839`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5483a7d98377a6e29cb7987e8578e34d51d1b201cd7d6c3840a7f34a29070acb`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 408.4 KB (408405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0237ef8c5f7c5fe28db705b00535b71181d24904d481f807630054eba3f48df`  
		Last Modified: Fri, 21 Dec 2018 14:31:04 GMT  
		Size: 9.6 MB (9582152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d65e3555bcb587995e4ab08cf3ddce9f7931471347c9fde80e68e06550b8b2`  
		Last Modified: Fri, 21 Dec 2018 14:31:02 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9654594db45a0e7007f1e204ea33631ffb63c2c422e674d503b489923706fa`  
		Last Modified: Fri, 21 Dec 2018 14:31:02 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-stretch`

```console
$ docker pull redis@sha256:cb5eac2e2bc17ccc040bffdc9f9b8713d198492d2185ad6bbdf8d4d07e5e6d47
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
$ docker pull redis@sha256:e7796b1e3a8452f453bf43554e1c0e9cd1a79b47f76ab7f55dba58228402426d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.8 MB (29757356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b340dad7041e684bb2653e8796de2f1581c73f96a478b32dad31aef1cfe9fb8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 06:49:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 25 Jan 2019 06:49:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Jan 2019 06:51:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 25 Jan 2019 06:54:27 GMT
ENV REDIS_VERSION=4.0.12
# Fri, 25 Jan 2019 06:54:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Fri, 25 Jan 2019 06:54:29 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Fri, 25 Jan 2019 06:56:30 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Jan 2019 06:56:32 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 25 Jan 2019 06:56:33 GMT
VOLUME [/data]
# Fri, 25 Jan 2019 06:56:34 GMT
WORKDIR /data
# Fri, 25 Jan 2019 06:56:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 25 Jan 2019 06:56:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 06:56:37 GMT
EXPOSE 6379
# Fri, 25 Jan 2019 06:56:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffe51fa6d2482afb662ad20bf15728f4a4fa37a26cabc034f3aef57444f5488`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ade173ccd3008f6e247882ad45b0c5ae4e953e9dcbf5804a341ee74d028a51`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 908.2 KB (908187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657e6648ddb9256e0ce1702078054b8ee0448a4dbadde0e37e1dec30d209a3b8`  
		Last Modified: Fri, 25 Jan 2019 06:57:58 GMT  
		Size: 8.5 MB (8496729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674a6067e753b29dbc06aa7f4bf55fa860833bc0e9b50c332f0abf4011eb3322`  
		Last Modified: Fri, 25 Jan 2019 06:57:55 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a97e0d5917403d33be356e0a7edad57e60943605e134b976b5333198a0acb99`  
		Last Modified: Fri, 25 Jan 2019 06:57:55 GMT  
		Size: 417.0 B  
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
$ docker pull redis@sha256:01ed6779a80c833b7b077bf460fdb02ef85e001915ca1845829e60b7b43d5a6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32540048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:762c874a4f6d292325a964c617fa83db3ff816c0abd4392e0f6b4b0bb5e133c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:50:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:50:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:51:52 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 13:56:08 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 13:56:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 13:56:15 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 13:58:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 13:59:09 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 13:59:14 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 13:59:23 GMT
WORKDIR /data
# Wed, 23 Jan 2019 13:59:28 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:59:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:59:42 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 13:59:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66daf9cf33a20641c3de8a3950d60eb94ae321446e6a41ebf8c1b550e7e5e882`  
		Last Modified: Wed, 23 Jan 2019 14:00:35 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce5d7aaf49a885ec5bad9439027d4d85938fc57ec62e64c8767eafc469d0cfb`  
		Last Modified: Wed, 23 Jan 2019 14:00:36 GMT  
		Size: 909.8 KB (909832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2f858489630a980c01e77be851a7de6963c316221c888343cfec4ee625c4a2`  
		Last Modified: Wed, 23 Jan 2019 14:01:09 GMT  
		Size: 8.9 MB (8872585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5df1deff6d8017ddeaedf8d06f2bd01a989b72eda2e84733b7e39efcc2ed556`  
		Last Modified: Wed, 23 Jan 2019 14:01:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbca801206e87195422160f42588a286e7da476c1dab94ea51e4ca40ff7dbe2`  
		Last Modified: Wed, 23 Jan 2019 14:01:06 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; s390x

```console
$ docker pull redis@sha256:10da57d03255ca3bb3c677043c3a45f50fbcc1c178c4e735255f16efb236cf9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32372825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:160e520e71e9bbbc0976c2a9736addadbecf0dd4667bcdb653483c70c573f958`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:18:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 14:18:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 14:18:24 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:19:33 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 23 Jan 2019 14:19:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 23 Jan 2019 14:19:34 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 23 Jan 2019 14:20:00 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:20:01 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:20:01 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:20:01 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:20:02 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:20:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:20:02 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:20:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22a40b3c46872bd9c1e94c09c9de59551f086061fab40c8c0091a5a1e8444d0`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b27b153c68320008563ed9812491fc080de29349a58df2c41e84a547626acc7`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 926.8 KB (926752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda6bcaf2ad80000961e2ac3ec7aac1a9d9e7cd1698e159c57b5fa6d06db523f`  
		Last Modified: Wed, 23 Jan 2019 14:20:41 GMT  
		Size: 9.1 MB (9090316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7df8a74cd6ceae466dabc45984a25feb75007297e02cb39e3a98e256f4a926`  
		Last Modified: Wed, 23 Jan 2019 14:20:39 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6ccb1d4c4df5d80ea935adc4465bc46f2f6a434e7a14aaee2747860e72bc8c`  
		Last Modified: Wed, 23 Jan 2019 14:20:39 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5`

```console
$ docker pull redis@sha256:516e6aaeea1f6e1fbf74f1df71365ce980ba4953d1285752746057b383a990c7
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
$ docker pull redis@sha256:5d352b727305f1d2acd0f6c98588dc0255987678b28e4c726ed6e404fd7514b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32843202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9185d46060150b974c234b6c266cb091ca6a2c1504fd093141e235cf473ffd71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 06:49:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 25 Jan 2019 06:49:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Jan 2019 06:51:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 25 Jan 2019 06:51:27 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 25 Jan 2019 06:51:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 25 Jan 2019 06:51:31 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 25 Jan 2019 06:54:00 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Jan 2019 06:54:02 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 25 Jan 2019 06:54:03 GMT
VOLUME [/data]
# Fri, 25 Jan 2019 06:54:04 GMT
WORKDIR /data
# Fri, 25 Jan 2019 06:54:05 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 25 Jan 2019 06:54:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 06:54:07 GMT
EXPOSE 6379
# Fri, 25 Jan 2019 06:54:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffe51fa6d2482afb662ad20bf15728f4a4fa37a26cabc034f3aef57444f5488`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ade173ccd3008f6e247882ad45b0c5ae4e953e9dcbf5804a341ee74d028a51`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 908.2 KB (908187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5917a1aa1616558a00ab11805aa3867dce8b045d763431cdbe163e35a735d7f`  
		Last Modified: Fri, 25 Jan 2019 06:57:28 GMT  
		Size: 11.6 MB (11582571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f814a2055482dc7d06934c11754ecc16540b8440fdfc5e1832b1b5ce470848`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea751e63bfeac7a7293eaf2f12386bb671d32dd7daebb72a28d695ab79d89fb0`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 421.0 B  
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
$ docker pull redis@sha256:94a5570841e5964fa74bca015880a468aba312034bc872baf300a422ab36db2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35624124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07831ada975728589f778903327bc24cd2e4c3b21421edf76e22c17631220b53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:50:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:50:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:51:52 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 13:51:56 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 13:51:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 13:52:02 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 13:55:16 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 13:55:23 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 13:55:26 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 13:55:30 GMT
WORKDIR /data
# Wed, 23 Jan 2019 13:55:32 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:55:40 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 13:55:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66daf9cf33a20641c3de8a3950d60eb94ae321446e6a41ebf8c1b550e7e5e882`  
		Last Modified: Wed, 23 Jan 2019 14:00:35 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce5d7aaf49a885ec5bad9439027d4d85938fc57ec62e64c8767eafc469d0cfb`  
		Last Modified: Wed, 23 Jan 2019 14:00:36 GMT  
		Size: 909.8 KB (909832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70c191a23a7a701546214ce17225eed043f7da3ac1ecdc1c7e9ecc64da5ece7`  
		Last Modified: Wed, 23 Jan 2019 14:00:38 GMT  
		Size: 12.0 MB (11956659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c1cda57fdcf57a36cb84260edcccbde87643098ef074b50f471be35e0db367`  
		Last Modified: Wed, 23 Jan 2019 14:00:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:637a03bf02d91cbbc6a1dd24d032975326d7034c257bfc19f224d163f3f9b601`  
		Last Modified: Wed, 23 Jan 2019 14:00:34 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; s390x

```console
$ docker pull redis@sha256:88fbb2188ed5a28a35b6b16c211219bd0b452f7ae5f5103a317abf33449680dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35507650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a283cf0030a133e5d777a8c0402f74fb9d6e3157157b66f3a6fb61ae44dd75e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:18:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 14:18:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 14:18:24 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 14:19:15 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:19:15 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:19:15 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:19:16 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:19:16 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:19:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:19:16 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:19:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22a40b3c46872bd9c1e94c09c9de59551f086061fab40c8c0091a5a1e8444d0`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b27b153c68320008563ed9812491fc080de29349a58df2c41e84a547626acc7`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 926.8 KB (926752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f084fb2829f21eafdbdc0c8f95d7339e4fdb71dc069779dd95753c0d5fe01c29`  
		Last Modified: Wed, 23 Jan 2019 14:20:27 GMT  
		Size: 12.2 MB (12225140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fec2f0ab742db37a78bb4946bbf120a943f361f2247a721162540994980a776`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad4000df6bbd7ff5e45279b66a4fab28cba059fb4e2ec8df32e4c326d0988b8`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0`

```console
$ docker pull redis@sha256:516e6aaeea1f6e1fbf74f1df71365ce980ba4953d1285752746057b383a990c7
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
$ docker pull redis@sha256:5d352b727305f1d2acd0f6c98588dc0255987678b28e4c726ed6e404fd7514b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32843202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9185d46060150b974c234b6c266cb091ca6a2c1504fd093141e235cf473ffd71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 06:49:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 25 Jan 2019 06:49:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Jan 2019 06:51:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 25 Jan 2019 06:51:27 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 25 Jan 2019 06:51:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 25 Jan 2019 06:51:31 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 25 Jan 2019 06:54:00 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Jan 2019 06:54:02 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 25 Jan 2019 06:54:03 GMT
VOLUME [/data]
# Fri, 25 Jan 2019 06:54:04 GMT
WORKDIR /data
# Fri, 25 Jan 2019 06:54:05 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 25 Jan 2019 06:54:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 06:54:07 GMT
EXPOSE 6379
# Fri, 25 Jan 2019 06:54:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffe51fa6d2482afb662ad20bf15728f4a4fa37a26cabc034f3aef57444f5488`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ade173ccd3008f6e247882ad45b0c5ae4e953e9dcbf5804a341ee74d028a51`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 908.2 KB (908187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5917a1aa1616558a00ab11805aa3867dce8b045d763431cdbe163e35a735d7f`  
		Last Modified: Fri, 25 Jan 2019 06:57:28 GMT  
		Size: 11.6 MB (11582571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f814a2055482dc7d06934c11754ecc16540b8440fdfc5e1832b1b5ce470848`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea751e63bfeac7a7293eaf2f12386bb671d32dd7daebb72a28d695ab79d89fb0`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 421.0 B  
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
$ docker pull redis@sha256:94a5570841e5964fa74bca015880a468aba312034bc872baf300a422ab36db2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35624124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07831ada975728589f778903327bc24cd2e4c3b21421edf76e22c17631220b53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:50:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:50:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:51:52 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 13:51:56 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 13:51:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 13:52:02 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 13:55:16 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 13:55:23 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 13:55:26 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 13:55:30 GMT
WORKDIR /data
# Wed, 23 Jan 2019 13:55:32 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:55:40 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 13:55:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66daf9cf33a20641c3de8a3950d60eb94ae321446e6a41ebf8c1b550e7e5e882`  
		Last Modified: Wed, 23 Jan 2019 14:00:35 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce5d7aaf49a885ec5bad9439027d4d85938fc57ec62e64c8767eafc469d0cfb`  
		Last Modified: Wed, 23 Jan 2019 14:00:36 GMT  
		Size: 909.8 KB (909832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70c191a23a7a701546214ce17225eed043f7da3ac1ecdc1c7e9ecc64da5ece7`  
		Last Modified: Wed, 23 Jan 2019 14:00:38 GMT  
		Size: 12.0 MB (11956659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c1cda57fdcf57a36cb84260edcccbde87643098ef074b50f471be35e0db367`  
		Last Modified: Wed, 23 Jan 2019 14:00:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:637a03bf02d91cbbc6a1dd24d032975326d7034c257bfc19f224d163f3f9b601`  
		Last Modified: Wed, 23 Jan 2019 14:00:34 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; s390x

```console
$ docker pull redis@sha256:88fbb2188ed5a28a35b6b16c211219bd0b452f7ae5f5103a317abf33449680dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35507650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a283cf0030a133e5d777a8c0402f74fb9d6e3157157b66f3a6fb61ae44dd75e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:18:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 14:18:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 14:18:24 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 14:19:15 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:19:15 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:19:15 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:19:16 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:19:16 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:19:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:19:16 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:19:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22a40b3c46872bd9c1e94c09c9de59551f086061fab40c8c0091a5a1e8444d0`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b27b153c68320008563ed9812491fc080de29349a58df2c41e84a547626acc7`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 926.8 KB (926752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f084fb2829f21eafdbdc0c8f95d7339e4fdb71dc069779dd95753c0d5fe01c29`  
		Last Modified: Wed, 23 Jan 2019 14:20:27 GMT  
		Size: 12.2 MB (12225140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fec2f0ab742db37a78bb4946bbf120a943f361f2247a721162540994980a776`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad4000df6bbd7ff5e45279b66a4fab28cba059fb4e2ec8df32e4c326d0988b8`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.3`

```console
$ docker pull redis@sha256:516e6aaeea1f6e1fbf74f1df71365ce980ba4953d1285752746057b383a990c7
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
$ docker pull redis@sha256:5d352b727305f1d2acd0f6c98588dc0255987678b28e4c726ed6e404fd7514b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32843202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9185d46060150b974c234b6c266cb091ca6a2c1504fd093141e235cf473ffd71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 06:49:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 25 Jan 2019 06:49:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Jan 2019 06:51:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 25 Jan 2019 06:51:27 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 25 Jan 2019 06:51:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 25 Jan 2019 06:51:31 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 25 Jan 2019 06:54:00 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Jan 2019 06:54:02 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 25 Jan 2019 06:54:03 GMT
VOLUME [/data]
# Fri, 25 Jan 2019 06:54:04 GMT
WORKDIR /data
# Fri, 25 Jan 2019 06:54:05 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 25 Jan 2019 06:54:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 06:54:07 GMT
EXPOSE 6379
# Fri, 25 Jan 2019 06:54:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffe51fa6d2482afb662ad20bf15728f4a4fa37a26cabc034f3aef57444f5488`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ade173ccd3008f6e247882ad45b0c5ae4e953e9dcbf5804a341ee74d028a51`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 908.2 KB (908187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5917a1aa1616558a00ab11805aa3867dce8b045d763431cdbe163e35a735d7f`  
		Last Modified: Fri, 25 Jan 2019 06:57:28 GMT  
		Size: 11.6 MB (11582571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f814a2055482dc7d06934c11754ecc16540b8440fdfc5e1832b1b5ce470848`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea751e63bfeac7a7293eaf2f12386bb671d32dd7daebb72a28d695ab79d89fb0`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 421.0 B  
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
$ docker pull redis@sha256:94a5570841e5964fa74bca015880a468aba312034bc872baf300a422ab36db2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35624124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07831ada975728589f778903327bc24cd2e4c3b21421edf76e22c17631220b53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:50:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:50:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:51:52 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 13:51:56 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 13:51:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 13:52:02 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 13:55:16 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 13:55:23 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 13:55:26 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 13:55:30 GMT
WORKDIR /data
# Wed, 23 Jan 2019 13:55:32 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:55:40 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 13:55:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66daf9cf33a20641c3de8a3950d60eb94ae321446e6a41ebf8c1b550e7e5e882`  
		Last Modified: Wed, 23 Jan 2019 14:00:35 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce5d7aaf49a885ec5bad9439027d4d85938fc57ec62e64c8767eafc469d0cfb`  
		Last Modified: Wed, 23 Jan 2019 14:00:36 GMT  
		Size: 909.8 KB (909832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70c191a23a7a701546214ce17225eed043f7da3ac1ecdc1c7e9ecc64da5ece7`  
		Last Modified: Wed, 23 Jan 2019 14:00:38 GMT  
		Size: 12.0 MB (11956659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c1cda57fdcf57a36cb84260edcccbde87643098ef074b50f471be35e0db367`  
		Last Modified: Wed, 23 Jan 2019 14:00:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:637a03bf02d91cbbc6a1dd24d032975326d7034c257bfc19f224d163f3f9b601`  
		Last Modified: Wed, 23 Jan 2019 14:00:34 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3` - linux; s390x

```console
$ docker pull redis@sha256:88fbb2188ed5a28a35b6b16c211219bd0b452f7ae5f5103a317abf33449680dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35507650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a283cf0030a133e5d777a8c0402f74fb9d6e3157157b66f3a6fb61ae44dd75e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:18:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 14:18:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 14:18:24 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 14:19:15 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:19:15 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:19:15 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:19:16 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:19:16 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:19:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:19:16 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:19:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22a40b3c46872bd9c1e94c09c9de59551f086061fab40c8c0091a5a1e8444d0`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b27b153c68320008563ed9812491fc080de29349a58df2c41e84a547626acc7`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 926.8 KB (926752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f084fb2829f21eafdbdc0c8f95d7339e4fdb71dc069779dd95753c0d5fe01c29`  
		Last Modified: Wed, 23 Jan 2019 14:20:27 GMT  
		Size: 12.2 MB (12225140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fec2f0ab742db37a78bb4946bbf120a943f361f2247a721162540994980a776`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad4000df6bbd7ff5e45279b66a4fab28cba059fb4e2ec8df32e4c326d0988b8`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 419.0 B  
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
$ docker pull redis@sha256:7c5905433107f161b0dd924852ea303ff3a8aec10a08bf239212dc34fed3b46e
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
$ docker pull redis@sha256:7094598dfbe9bc9c933c0584191a94076071fd7dd72b82355d3ad9872794ed82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14577174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77e863938abdaa75f14f418544e35b1a71fa26b011e4bbc00411c41413e01bb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:04:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 15:04:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 15:04:36 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 15:04:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 15:04:38 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 15:07:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 15:07:09 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 15:07:10 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:07:12 GMT
WORKDIR /data
# Fri, 21 Dec 2018 15:07:13 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 15:07:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:07:15 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 15:07:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afcea4bbe8c0cd1974219056baef82c09ae5626ed95f109330edec6abfb5d65`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30fc10da3c728b6192f95ca65d9fce0e3cfc9f40c7d0b6b2a47cf76a36daf75`  
		Last Modified: Fri, 21 Dec 2018 15:10:15 GMT  
		Size: 401.1 KB (401129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7297bbc8e7ad136e393bb8d8986a19d7fc72bcd92390cf58d27a711350574cd4`  
		Last Modified: Fri, 21 Dec 2018 15:10:22 GMT  
		Size: 12.1 MB (12074268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3eff0393a703d0297d3c5c2d37f63d29ebca9bf9d3ac99f938d3045ed6059e`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449cad7b0e5553793b079796b8313b1677152336ffe7548d41e6b92ffc9840bf`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 413.0 B  
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
$ docker pull redis@sha256:00de2517846cf686af9683f6d6e82e18ea5121f7566818eb174b57910ec7dce1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14994431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6d8d6f1f03954bc283c2d2aeddc6a220c21c4feba4aef6cf8d450d53645854`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 11:58:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 11:58:22 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 11:58:25 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 11:58:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 11:58:29 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 11:59:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 11:59:21 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 11:59:23 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 11:59:25 GMT
WORKDIR /data
# Fri, 21 Dec 2018 11:59:26 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 11:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 11:59:29 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 11:59:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3116134e43eed56e1265aaa08873f9f6b9929bffa74beb3586f3138e9cc46e2c`  
		Last Modified: Fri, 21 Dec 2018 12:01:14 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10b6fb16b59afc5f795b7a9695cf5a0a5baea6eb32445bb8df64afce0e0dd53`  
		Last Modified: Fri, 21 Dec 2018 12:01:15 GMT  
		Size: 407.4 KB (407413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a3ee3b317c149202c9d5a733fdcccd31e266535ce473ad8cec5fdb574f7017c`  
		Last Modified: Fri, 21 Dec 2018 12:01:17 GMT  
		Size: 12.4 MB (12390240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5357ba8bd61982233b4b0cc0f3f850badb9d7ecb12fe3fbb5f1a250a81bb12f`  
		Last Modified: Fri, 21 Dec 2018 12:01:14 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b22d931bf1a4a79bba14a6ccfce3adaf022778a510bd8ed136e0eb178c7cc0`  
		Last Modified: Fri, 21 Dec 2018 12:01:15 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3-alpine` - linux; s390x

```console
$ docker pull redis@sha256:7daf6d4353bdc83306d8c4b34000578fd6ef0b3fdec23857572596b81ba6b0e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15135074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e0018939e68808516023dbe64a190a7c2aa6ca4d48f0e4b07a9617c0ca81b68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:28:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 14:28:58 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 14:28:58 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 14:28:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 14:28:59 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 14:29:45 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 14:29:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 14:29:46 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 14:29:46 GMT
WORKDIR /data
# Fri, 21 Dec 2018 14:29:46 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:29:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:29:46 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 14:29:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2d242836af801e2953145aca64bf779f602b785fc5760250737b2d1e274839`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5483a7d98377a6e29cb7987e8578e34d51d1b201cd7d6c3840a7f34a29070acb`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 408.4 KB (408405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91820ee580611608c0b06fffd64982a692e99dc9c1c52958336794e42f20e8c7`  
		Last Modified: Fri, 21 Dec 2018 14:30:49 GMT  
		Size: 12.4 MB (12416884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d031a9b0ab5eb8263d0caf939ac4fdc9b511720f7eb55583486fa95dea05639`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a37547f8452cf860a326797ab9dacf5b30a3ef620d9e389f8b903cbf3a07ffc`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.3-alpine3.9`

```console
$ docker pull redis@sha256:7c5905433107f161b0dd924852ea303ff3a8aec10a08bf239212dc34fed3b46e
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
$ docker pull redis@sha256:7094598dfbe9bc9c933c0584191a94076071fd7dd72b82355d3ad9872794ed82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14577174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77e863938abdaa75f14f418544e35b1a71fa26b011e4bbc00411c41413e01bb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:04:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 15:04:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 15:04:36 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 15:04:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 15:04:38 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 15:07:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 15:07:09 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 15:07:10 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:07:12 GMT
WORKDIR /data
# Fri, 21 Dec 2018 15:07:13 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 15:07:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:07:15 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 15:07:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afcea4bbe8c0cd1974219056baef82c09ae5626ed95f109330edec6abfb5d65`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30fc10da3c728b6192f95ca65d9fce0e3cfc9f40c7d0b6b2a47cf76a36daf75`  
		Last Modified: Fri, 21 Dec 2018 15:10:15 GMT  
		Size: 401.1 KB (401129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7297bbc8e7ad136e393bb8d8986a19d7fc72bcd92390cf58d27a711350574cd4`  
		Last Modified: Fri, 21 Dec 2018 15:10:22 GMT  
		Size: 12.1 MB (12074268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3eff0393a703d0297d3c5c2d37f63d29ebca9bf9d3ac99f938d3045ed6059e`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449cad7b0e5553793b079796b8313b1677152336ffe7548d41e6b92ffc9840bf`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 413.0 B  
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
$ docker pull redis@sha256:00de2517846cf686af9683f6d6e82e18ea5121f7566818eb174b57910ec7dce1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14994431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6d8d6f1f03954bc283c2d2aeddc6a220c21c4feba4aef6cf8d450d53645854`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 11:58:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 11:58:22 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 11:58:25 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 11:58:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 11:58:29 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 11:59:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 11:59:21 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 11:59:23 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 11:59:25 GMT
WORKDIR /data
# Fri, 21 Dec 2018 11:59:26 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 11:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 11:59:29 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 11:59:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3116134e43eed56e1265aaa08873f9f6b9929bffa74beb3586f3138e9cc46e2c`  
		Last Modified: Fri, 21 Dec 2018 12:01:14 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10b6fb16b59afc5f795b7a9695cf5a0a5baea6eb32445bb8df64afce0e0dd53`  
		Last Modified: Fri, 21 Dec 2018 12:01:15 GMT  
		Size: 407.4 KB (407413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a3ee3b317c149202c9d5a733fdcccd31e266535ce473ad8cec5fdb574f7017c`  
		Last Modified: Fri, 21 Dec 2018 12:01:17 GMT  
		Size: 12.4 MB (12390240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5357ba8bd61982233b4b0cc0f3f850badb9d7ecb12fe3fbb5f1a250a81bb12f`  
		Last Modified: Fri, 21 Dec 2018 12:01:14 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b22d931bf1a4a79bba14a6ccfce3adaf022778a510bd8ed136e0eb178c7cc0`  
		Last Modified: Fri, 21 Dec 2018 12:01:15 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:7daf6d4353bdc83306d8c4b34000578fd6ef0b3fdec23857572596b81ba6b0e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15135074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e0018939e68808516023dbe64a190a7c2aa6ca4d48f0e4b07a9617c0ca81b68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:28:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 14:28:58 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 14:28:58 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 14:28:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 14:28:59 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 14:29:45 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 14:29:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 14:29:46 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 14:29:46 GMT
WORKDIR /data
# Fri, 21 Dec 2018 14:29:46 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:29:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:29:46 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 14:29:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2d242836af801e2953145aca64bf779f602b785fc5760250737b2d1e274839`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5483a7d98377a6e29cb7987e8578e34d51d1b201cd7d6c3840a7f34a29070acb`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 408.4 KB (408405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91820ee580611608c0b06fffd64982a692e99dc9c1c52958336794e42f20e8c7`  
		Last Modified: Fri, 21 Dec 2018 14:30:49 GMT  
		Size: 12.4 MB (12416884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d031a9b0ab5eb8263d0caf939ac4fdc9b511720f7eb55583486fa95dea05639`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a37547f8452cf860a326797ab9dacf5b30a3ef620d9e389f8b903cbf3a07ffc`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.3-stretch`

```console
$ docker pull redis@sha256:516e6aaeea1f6e1fbf74f1df71365ce980ba4953d1285752746057b383a990c7
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
$ docker pull redis@sha256:5d352b727305f1d2acd0f6c98588dc0255987678b28e4c726ed6e404fd7514b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32843202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9185d46060150b974c234b6c266cb091ca6a2c1504fd093141e235cf473ffd71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 06:49:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 25 Jan 2019 06:49:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Jan 2019 06:51:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 25 Jan 2019 06:51:27 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 25 Jan 2019 06:51:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 25 Jan 2019 06:51:31 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 25 Jan 2019 06:54:00 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Jan 2019 06:54:02 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 25 Jan 2019 06:54:03 GMT
VOLUME [/data]
# Fri, 25 Jan 2019 06:54:04 GMT
WORKDIR /data
# Fri, 25 Jan 2019 06:54:05 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 25 Jan 2019 06:54:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 06:54:07 GMT
EXPOSE 6379
# Fri, 25 Jan 2019 06:54:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffe51fa6d2482afb662ad20bf15728f4a4fa37a26cabc034f3aef57444f5488`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ade173ccd3008f6e247882ad45b0c5ae4e953e9dcbf5804a341ee74d028a51`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 908.2 KB (908187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5917a1aa1616558a00ab11805aa3867dce8b045d763431cdbe163e35a735d7f`  
		Last Modified: Fri, 25 Jan 2019 06:57:28 GMT  
		Size: 11.6 MB (11582571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f814a2055482dc7d06934c11754ecc16540b8440fdfc5e1832b1b5ce470848`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea751e63bfeac7a7293eaf2f12386bb671d32dd7daebb72a28d695ab79d89fb0`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 421.0 B  
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
$ docker pull redis@sha256:94a5570841e5964fa74bca015880a468aba312034bc872baf300a422ab36db2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35624124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07831ada975728589f778903327bc24cd2e4c3b21421edf76e22c17631220b53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:50:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:50:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:51:52 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 13:51:56 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 13:51:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 13:52:02 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 13:55:16 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 13:55:23 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 13:55:26 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 13:55:30 GMT
WORKDIR /data
# Wed, 23 Jan 2019 13:55:32 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:55:40 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 13:55:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66daf9cf33a20641c3de8a3950d60eb94ae321446e6a41ebf8c1b550e7e5e882`  
		Last Modified: Wed, 23 Jan 2019 14:00:35 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce5d7aaf49a885ec5bad9439027d4d85938fc57ec62e64c8767eafc469d0cfb`  
		Last Modified: Wed, 23 Jan 2019 14:00:36 GMT  
		Size: 909.8 KB (909832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70c191a23a7a701546214ce17225eed043f7da3ac1ecdc1c7e9ecc64da5ece7`  
		Last Modified: Wed, 23 Jan 2019 14:00:38 GMT  
		Size: 12.0 MB (11956659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c1cda57fdcf57a36cb84260edcccbde87643098ef074b50f471be35e0db367`  
		Last Modified: Wed, 23 Jan 2019 14:00:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:637a03bf02d91cbbc6a1dd24d032975326d7034c257bfc19f224d163f3f9b601`  
		Last Modified: Wed, 23 Jan 2019 14:00:34 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.3-stretch` - linux; s390x

```console
$ docker pull redis@sha256:88fbb2188ed5a28a35b6b16c211219bd0b452f7ae5f5103a317abf33449680dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35507650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a283cf0030a133e5d777a8c0402f74fb9d6e3157157b66f3a6fb61ae44dd75e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:18:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 14:18:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 14:18:24 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 14:19:15 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:19:15 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:19:15 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:19:16 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:19:16 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:19:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:19:16 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:19:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22a40b3c46872bd9c1e94c09c9de59551f086061fab40c8c0091a5a1e8444d0`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b27b153c68320008563ed9812491fc080de29349a58df2c41e84a547626acc7`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 926.8 KB (926752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f084fb2829f21eafdbdc0c8f95d7339e4fdb71dc069779dd95753c0d5fe01c29`  
		Last Modified: Wed, 23 Jan 2019 14:20:27 GMT  
		Size: 12.2 MB (12225140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fec2f0ab742db37a78bb4946bbf120a943f361f2247a721162540994980a776`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad4000df6bbd7ff5e45279b66a4fab28cba059fb4e2ec8df32e4c326d0988b8`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-alpine`

```console
$ docker pull redis@sha256:7c5905433107f161b0dd924852ea303ff3a8aec10a08bf239212dc34fed3b46e
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
$ docker pull redis@sha256:7094598dfbe9bc9c933c0584191a94076071fd7dd72b82355d3ad9872794ed82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14577174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77e863938abdaa75f14f418544e35b1a71fa26b011e4bbc00411c41413e01bb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:04:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 15:04:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 15:04:36 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 15:04:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 15:04:38 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 15:07:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 15:07:09 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 15:07:10 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:07:12 GMT
WORKDIR /data
# Fri, 21 Dec 2018 15:07:13 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 15:07:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:07:15 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 15:07:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afcea4bbe8c0cd1974219056baef82c09ae5626ed95f109330edec6abfb5d65`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30fc10da3c728b6192f95ca65d9fce0e3cfc9f40c7d0b6b2a47cf76a36daf75`  
		Last Modified: Fri, 21 Dec 2018 15:10:15 GMT  
		Size: 401.1 KB (401129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7297bbc8e7ad136e393bb8d8986a19d7fc72bcd92390cf58d27a711350574cd4`  
		Last Modified: Fri, 21 Dec 2018 15:10:22 GMT  
		Size: 12.1 MB (12074268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3eff0393a703d0297d3c5c2d37f63d29ebca9bf9d3ac99f938d3045ed6059e`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449cad7b0e5553793b079796b8313b1677152336ffe7548d41e6b92ffc9840bf`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 413.0 B  
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
$ docker pull redis@sha256:00de2517846cf686af9683f6d6e82e18ea5121f7566818eb174b57910ec7dce1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14994431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6d8d6f1f03954bc283c2d2aeddc6a220c21c4feba4aef6cf8d450d53645854`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 11:58:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 11:58:22 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 11:58:25 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 11:58:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 11:58:29 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 11:59:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 11:59:21 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 11:59:23 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 11:59:25 GMT
WORKDIR /data
# Fri, 21 Dec 2018 11:59:26 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 11:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 11:59:29 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 11:59:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3116134e43eed56e1265aaa08873f9f6b9929bffa74beb3586f3138e9cc46e2c`  
		Last Modified: Fri, 21 Dec 2018 12:01:14 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10b6fb16b59afc5f795b7a9695cf5a0a5baea6eb32445bb8df64afce0e0dd53`  
		Last Modified: Fri, 21 Dec 2018 12:01:15 GMT  
		Size: 407.4 KB (407413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a3ee3b317c149202c9d5a733fdcccd31e266535ce473ad8cec5fdb574f7017c`  
		Last Modified: Fri, 21 Dec 2018 12:01:17 GMT  
		Size: 12.4 MB (12390240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5357ba8bd61982233b4b0cc0f3f850badb9d7ecb12fe3fbb5f1a250a81bb12f`  
		Last Modified: Fri, 21 Dec 2018 12:01:14 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b22d931bf1a4a79bba14a6ccfce3adaf022778a510bd8ed136e0eb178c7cc0`  
		Last Modified: Fri, 21 Dec 2018 12:01:15 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; s390x

```console
$ docker pull redis@sha256:7daf6d4353bdc83306d8c4b34000578fd6ef0b3fdec23857572596b81ba6b0e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15135074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e0018939e68808516023dbe64a190a7c2aa6ca4d48f0e4b07a9617c0ca81b68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:28:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 14:28:58 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 14:28:58 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 14:28:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 14:28:59 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 14:29:45 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 14:29:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 14:29:46 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 14:29:46 GMT
WORKDIR /data
# Fri, 21 Dec 2018 14:29:46 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:29:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:29:46 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 14:29:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2d242836af801e2953145aca64bf779f602b785fc5760250737b2d1e274839`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5483a7d98377a6e29cb7987e8578e34d51d1b201cd7d6c3840a7f34a29070acb`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 408.4 KB (408405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91820ee580611608c0b06fffd64982a692e99dc9c1c52958336794e42f20e8c7`  
		Last Modified: Fri, 21 Dec 2018 14:30:49 GMT  
		Size: 12.4 MB (12416884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d031a9b0ab5eb8263d0caf939ac4fdc9b511720f7eb55583486fa95dea05639`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a37547f8452cf860a326797ab9dacf5b30a3ef620d9e389f8b903cbf3a07ffc`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-alpine3.9`

```console
$ docker pull redis@sha256:7c5905433107f161b0dd924852ea303ff3a8aec10a08bf239212dc34fed3b46e
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
$ docker pull redis@sha256:7094598dfbe9bc9c933c0584191a94076071fd7dd72b82355d3ad9872794ed82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14577174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77e863938abdaa75f14f418544e35b1a71fa26b011e4bbc00411c41413e01bb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:04:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 15:04:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 15:04:36 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 15:04:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 15:04:38 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 15:07:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 15:07:09 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 15:07:10 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:07:12 GMT
WORKDIR /data
# Fri, 21 Dec 2018 15:07:13 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 15:07:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:07:15 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 15:07:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afcea4bbe8c0cd1974219056baef82c09ae5626ed95f109330edec6abfb5d65`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30fc10da3c728b6192f95ca65d9fce0e3cfc9f40c7d0b6b2a47cf76a36daf75`  
		Last Modified: Fri, 21 Dec 2018 15:10:15 GMT  
		Size: 401.1 KB (401129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7297bbc8e7ad136e393bb8d8986a19d7fc72bcd92390cf58d27a711350574cd4`  
		Last Modified: Fri, 21 Dec 2018 15:10:22 GMT  
		Size: 12.1 MB (12074268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3eff0393a703d0297d3c5c2d37f63d29ebca9bf9d3ac99f938d3045ed6059e`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449cad7b0e5553793b079796b8313b1677152336ffe7548d41e6b92ffc9840bf`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 413.0 B  
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
$ docker pull redis@sha256:00de2517846cf686af9683f6d6e82e18ea5121f7566818eb174b57910ec7dce1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14994431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6d8d6f1f03954bc283c2d2aeddc6a220c21c4feba4aef6cf8d450d53645854`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 11:58:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 11:58:22 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 11:58:25 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 11:58:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 11:58:29 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 11:59:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 11:59:21 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 11:59:23 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 11:59:25 GMT
WORKDIR /data
# Fri, 21 Dec 2018 11:59:26 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 11:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 11:59:29 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 11:59:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3116134e43eed56e1265aaa08873f9f6b9929bffa74beb3586f3138e9cc46e2c`  
		Last Modified: Fri, 21 Dec 2018 12:01:14 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10b6fb16b59afc5f795b7a9695cf5a0a5baea6eb32445bb8df64afce0e0dd53`  
		Last Modified: Fri, 21 Dec 2018 12:01:15 GMT  
		Size: 407.4 KB (407413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a3ee3b317c149202c9d5a733fdcccd31e266535ce473ad8cec5fdb574f7017c`  
		Last Modified: Fri, 21 Dec 2018 12:01:17 GMT  
		Size: 12.4 MB (12390240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5357ba8bd61982233b4b0cc0f3f850badb9d7ecb12fe3fbb5f1a250a81bb12f`  
		Last Modified: Fri, 21 Dec 2018 12:01:14 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b22d931bf1a4a79bba14a6ccfce3adaf022778a510bd8ed136e0eb178c7cc0`  
		Last Modified: Fri, 21 Dec 2018 12:01:15 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:7daf6d4353bdc83306d8c4b34000578fd6ef0b3fdec23857572596b81ba6b0e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15135074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e0018939e68808516023dbe64a190a7c2aa6ca4d48f0e4b07a9617c0ca81b68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:28:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 14:28:58 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 14:28:58 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 14:28:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 14:28:59 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 14:29:45 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 14:29:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 14:29:46 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 14:29:46 GMT
WORKDIR /data
# Fri, 21 Dec 2018 14:29:46 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:29:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:29:46 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 14:29:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2d242836af801e2953145aca64bf779f602b785fc5760250737b2d1e274839`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5483a7d98377a6e29cb7987e8578e34d51d1b201cd7d6c3840a7f34a29070acb`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 408.4 KB (408405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91820ee580611608c0b06fffd64982a692e99dc9c1c52958336794e42f20e8c7`  
		Last Modified: Fri, 21 Dec 2018 14:30:49 GMT  
		Size: 12.4 MB (12416884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d031a9b0ab5eb8263d0caf939ac4fdc9b511720f7eb55583486fa95dea05639`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a37547f8452cf860a326797ab9dacf5b30a3ef620d9e389f8b903cbf3a07ffc`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-stretch`

```console
$ docker pull redis@sha256:516e6aaeea1f6e1fbf74f1df71365ce980ba4953d1285752746057b383a990c7
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
$ docker pull redis@sha256:5d352b727305f1d2acd0f6c98588dc0255987678b28e4c726ed6e404fd7514b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32843202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9185d46060150b974c234b6c266cb091ca6a2c1504fd093141e235cf473ffd71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 06:49:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 25 Jan 2019 06:49:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Jan 2019 06:51:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 25 Jan 2019 06:51:27 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 25 Jan 2019 06:51:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 25 Jan 2019 06:51:31 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 25 Jan 2019 06:54:00 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Jan 2019 06:54:02 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 25 Jan 2019 06:54:03 GMT
VOLUME [/data]
# Fri, 25 Jan 2019 06:54:04 GMT
WORKDIR /data
# Fri, 25 Jan 2019 06:54:05 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 25 Jan 2019 06:54:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 06:54:07 GMT
EXPOSE 6379
# Fri, 25 Jan 2019 06:54:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffe51fa6d2482afb662ad20bf15728f4a4fa37a26cabc034f3aef57444f5488`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ade173ccd3008f6e247882ad45b0c5ae4e953e9dcbf5804a341ee74d028a51`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 908.2 KB (908187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5917a1aa1616558a00ab11805aa3867dce8b045d763431cdbe163e35a735d7f`  
		Last Modified: Fri, 25 Jan 2019 06:57:28 GMT  
		Size: 11.6 MB (11582571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f814a2055482dc7d06934c11754ecc16540b8440fdfc5e1832b1b5ce470848`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea751e63bfeac7a7293eaf2f12386bb671d32dd7daebb72a28d695ab79d89fb0`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 421.0 B  
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
$ docker pull redis@sha256:94a5570841e5964fa74bca015880a468aba312034bc872baf300a422ab36db2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35624124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07831ada975728589f778903327bc24cd2e4c3b21421edf76e22c17631220b53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:50:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:50:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:51:52 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 13:51:56 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 13:51:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 13:52:02 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 13:55:16 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 13:55:23 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 13:55:26 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 13:55:30 GMT
WORKDIR /data
# Wed, 23 Jan 2019 13:55:32 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:55:40 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 13:55:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66daf9cf33a20641c3de8a3950d60eb94ae321446e6a41ebf8c1b550e7e5e882`  
		Last Modified: Wed, 23 Jan 2019 14:00:35 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce5d7aaf49a885ec5bad9439027d4d85938fc57ec62e64c8767eafc469d0cfb`  
		Last Modified: Wed, 23 Jan 2019 14:00:36 GMT  
		Size: 909.8 KB (909832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70c191a23a7a701546214ce17225eed043f7da3ac1ecdc1c7e9ecc64da5ece7`  
		Last Modified: Wed, 23 Jan 2019 14:00:38 GMT  
		Size: 12.0 MB (11956659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c1cda57fdcf57a36cb84260edcccbde87643098ef074b50f471be35e0db367`  
		Last Modified: Wed, 23 Jan 2019 14:00:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:637a03bf02d91cbbc6a1dd24d032975326d7034c257bfc19f224d163f3f9b601`  
		Last Modified: Wed, 23 Jan 2019 14:00:34 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; s390x

```console
$ docker pull redis@sha256:88fbb2188ed5a28a35b6b16c211219bd0b452f7ae5f5103a317abf33449680dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35507650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a283cf0030a133e5d777a8c0402f74fb9d6e3157157b66f3a6fb61ae44dd75e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:18:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 14:18:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 14:18:24 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 14:19:15 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:19:15 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:19:15 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:19:16 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:19:16 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:19:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:19:16 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:19:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22a40b3c46872bd9c1e94c09c9de59551f086061fab40c8c0091a5a1e8444d0`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b27b153c68320008563ed9812491fc080de29349a58df2c41e84a547626acc7`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 926.8 KB (926752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f084fb2829f21eafdbdc0c8f95d7339e4fdb71dc069779dd95753c0d5fe01c29`  
		Last Modified: Wed, 23 Jan 2019 14:20:27 GMT  
		Size: 12.2 MB (12225140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fec2f0ab742db37a78bb4946bbf120a943f361f2247a721162540994980a776`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad4000df6bbd7ff5e45279b66a4fab28cba059fb4e2ec8df32e4c326d0988b8`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 419.0 B  
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
$ docker pull redis@sha256:7c5905433107f161b0dd924852ea303ff3a8aec10a08bf239212dc34fed3b46e
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
$ docker pull redis@sha256:7094598dfbe9bc9c933c0584191a94076071fd7dd72b82355d3ad9872794ed82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14577174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77e863938abdaa75f14f418544e35b1a71fa26b011e4bbc00411c41413e01bb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:04:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 15:04:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 15:04:36 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 15:04:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 15:04:38 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 15:07:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 15:07:09 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 15:07:10 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:07:12 GMT
WORKDIR /data
# Fri, 21 Dec 2018 15:07:13 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 15:07:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:07:15 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 15:07:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afcea4bbe8c0cd1974219056baef82c09ae5626ed95f109330edec6abfb5d65`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30fc10da3c728b6192f95ca65d9fce0e3cfc9f40c7d0b6b2a47cf76a36daf75`  
		Last Modified: Fri, 21 Dec 2018 15:10:15 GMT  
		Size: 401.1 KB (401129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7297bbc8e7ad136e393bb8d8986a19d7fc72bcd92390cf58d27a711350574cd4`  
		Last Modified: Fri, 21 Dec 2018 15:10:22 GMT  
		Size: 12.1 MB (12074268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3eff0393a703d0297d3c5c2d37f63d29ebca9bf9d3ac99f938d3045ed6059e`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449cad7b0e5553793b079796b8313b1677152336ffe7548d41e6b92ffc9840bf`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 413.0 B  
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
$ docker pull redis@sha256:00de2517846cf686af9683f6d6e82e18ea5121f7566818eb174b57910ec7dce1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14994431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6d8d6f1f03954bc283c2d2aeddc6a220c21c4feba4aef6cf8d450d53645854`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 11:58:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 11:58:22 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 11:58:25 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 11:58:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 11:58:29 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 11:59:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 11:59:21 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 11:59:23 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 11:59:25 GMT
WORKDIR /data
# Fri, 21 Dec 2018 11:59:26 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 11:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 11:59:29 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 11:59:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3116134e43eed56e1265aaa08873f9f6b9929bffa74beb3586f3138e9cc46e2c`  
		Last Modified: Fri, 21 Dec 2018 12:01:14 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10b6fb16b59afc5f795b7a9695cf5a0a5baea6eb32445bb8df64afce0e0dd53`  
		Last Modified: Fri, 21 Dec 2018 12:01:15 GMT  
		Size: 407.4 KB (407413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a3ee3b317c149202c9d5a733fdcccd31e266535ce473ad8cec5fdb574f7017c`  
		Last Modified: Fri, 21 Dec 2018 12:01:17 GMT  
		Size: 12.4 MB (12390240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5357ba8bd61982233b4b0cc0f3f850badb9d7ecb12fe3fbb5f1a250a81bb12f`  
		Last Modified: Fri, 21 Dec 2018 12:01:14 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b22d931bf1a4a79bba14a6ccfce3adaf022778a510bd8ed136e0eb178c7cc0`  
		Last Modified: Fri, 21 Dec 2018 12:01:15 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; s390x

```console
$ docker pull redis@sha256:7daf6d4353bdc83306d8c4b34000578fd6ef0b3fdec23857572596b81ba6b0e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15135074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e0018939e68808516023dbe64a190a7c2aa6ca4d48f0e4b07a9617c0ca81b68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:28:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 14:28:58 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 14:28:58 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 14:28:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 14:28:59 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 14:29:45 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 14:29:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 14:29:46 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 14:29:46 GMT
WORKDIR /data
# Fri, 21 Dec 2018 14:29:46 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:29:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:29:46 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 14:29:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2d242836af801e2953145aca64bf779f602b785fc5760250737b2d1e274839`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5483a7d98377a6e29cb7987e8578e34d51d1b201cd7d6c3840a7f34a29070acb`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 408.4 KB (408405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91820ee580611608c0b06fffd64982a692e99dc9c1c52958336794e42f20e8c7`  
		Last Modified: Fri, 21 Dec 2018 14:30:49 GMT  
		Size: 12.4 MB (12416884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d031a9b0ab5eb8263d0caf939ac4fdc9b511720f7eb55583486fa95dea05639`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a37547f8452cf860a326797ab9dacf5b30a3ef620d9e389f8b903cbf3a07ffc`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-alpine3.9`

```console
$ docker pull redis@sha256:7c5905433107f161b0dd924852ea303ff3a8aec10a08bf239212dc34fed3b46e
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
$ docker pull redis@sha256:7094598dfbe9bc9c933c0584191a94076071fd7dd72b82355d3ad9872794ed82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14577174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77e863938abdaa75f14f418544e35b1a71fa26b011e4bbc00411c41413e01bb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:04:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 15:04:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 15:04:36 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 15:04:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 15:04:38 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 15:07:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 15:07:09 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 15:07:10 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:07:12 GMT
WORKDIR /data
# Fri, 21 Dec 2018 15:07:13 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 15:07:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:07:15 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 15:07:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afcea4bbe8c0cd1974219056baef82c09ae5626ed95f109330edec6abfb5d65`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30fc10da3c728b6192f95ca65d9fce0e3cfc9f40c7d0b6b2a47cf76a36daf75`  
		Last Modified: Fri, 21 Dec 2018 15:10:15 GMT  
		Size: 401.1 KB (401129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7297bbc8e7ad136e393bb8d8986a19d7fc72bcd92390cf58d27a711350574cd4`  
		Last Modified: Fri, 21 Dec 2018 15:10:22 GMT  
		Size: 12.1 MB (12074268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3eff0393a703d0297d3c5c2d37f63d29ebca9bf9d3ac99f938d3045ed6059e`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449cad7b0e5553793b079796b8313b1677152336ffe7548d41e6b92ffc9840bf`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 413.0 B  
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
$ docker pull redis@sha256:00de2517846cf686af9683f6d6e82e18ea5121f7566818eb174b57910ec7dce1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14994431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6d8d6f1f03954bc283c2d2aeddc6a220c21c4feba4aef6cf8d450d53645854`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 11:58:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 11:58:22 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 11:58:25 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 11:58:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 11:58:29 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 11:59:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 11:59:21 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 11:59:23 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 11:59:25 GMT
WORKDIR /data
# Fri, 21 Dec 2018 11:59:26 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 11:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 11:59:29 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 11:59:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3116134e43eed56e1265aaa08873f9f6b9929bffa74beb3586f3138e9cc46e2c`  
		Last Modified: Fri, 21 Dec 2018 12:01:14 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10b6fb16b59afc5f795b7a9695cf5a0a5baea6eb32445bb8df64afce0e0dd53`  
		Last Modified: Fri, 21 Dec 2018 12:01:15 GMT  
		Size: 407.4 KB (407413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a3ee3b317c149202c9d5a733fdcccd31e266535ce473ad8cec5fdb574f7017c`  
		Last Modified: Fri, 21 Dec 2018 12:01:17 GMT  
		Size: 12.4 MB (12390240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5357ba8bd61982233b4b0cc0f3f850badb9d7ecb12fe3fbb5f1a250a81bb12f`  
		Last Modified: Fri, 21 Dec 2018 12:01:14 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b22d931bf1a4a79bba14a6ccfce3adaf022778a510bd8ed136e0eb178c7cc0`  
		Last Modified: Fri, 21 Dec 2018 12:01:15 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:7daf6d4353bdc83306d8c4b34000578fd6ef0b3fdec23857572596b81ba6b0e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15135074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e0018939e68808516023dbe64a190a7c2aa6ca4d48f0e4b07a9617c0ca81b68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:28:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 14:28:58 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 14:28:58 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 14:28:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 14:28:59 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 14:29:45 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 14:29:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 14:29:46 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 14:29:46 GMT
WORKDIR /data
# Fri, 21 Dec 2018 14:29:46 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:29:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:29:46 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 14:29:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2d242836af801e2953145aca64bf779f602b785fc5760250737b2d1e274839`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5483a7d98377a6e29cb7987e8578e34d51d1b201cd7d6c3840a7f34a29070acb`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 408.4 KB (408405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91820ee580611608c0b06fffd64982a692e99dc9c1c52958336794e42f20e8c7`  
		Last Modified: Fri, 21 Dec 2018 14:30:49 GMT  
		Size: 12.4 MB (12416884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d031a9b0ab5eb8263d0caf939ac4fdc9b511720f7eb55583486fa95dea05639`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a37547f8452cf860a326797ab9dacf5b30a3ef620d9e389f8b903cbf3a07ffc`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-stretch`

```console
$ docker pull redis@sha256:516e6aaeea1f6e1fbf74f1df71365ce980ba4953d1285752746057b383a990c7
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
$ docker pull redis@sha256:5d352b727305f1d2acd0f6c98588dc0255987678b28e4c726ed6e404fd7514b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32843202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9185d46060150b974c234b6c266cb091ca6a2c1504fd093141e235cf473ffd71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 06:49:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 25 Jan 2019 06:49:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Jan 2019 06:51:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 25 Jan 2019 06:51:27 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 25 Jan 2019 06:51:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 25 Jan 2019 06:51:31 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 25 Jan 2019 06:54:00 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Jan 2019 06:54:02 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 25 Jan 2019 06:54:03 GMT
VOLUME [/data]
# Fri, 25 Jan 2019 06:54:04 GMT
WORKDIR /data
# Fri, 25 Jan 2019 06:54:05 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 25 Jan 2019 06:54:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 06:54:07 GMT
EXPOSE 6379
# Fri, 25 Jan 2019 06:54:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffe51fa6d2482afb662ad20bf15728f4a4fa37a26cabc034f3aef57444f5488`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ade173ccd3008f6e247882ad45b0c5ae4e953e9dcbf5804a341ee74d028a51`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 908.2 KB (908187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5917a1aa1616558a00ab11805aa3867dce8b045d763431cdbe163e35a735d7f`  
		Last Modified: Fri, 25 Jan 2019 06:57:28 GMT  
		Size: 11.6 MB (11582571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f814a2055482dc7d06934c11754ecc16540b8440fdfc5e1832b1b5ce470848`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea751e63bfeac7a7293eaf2f12386bb671d32dd7daebb72a28d695ab79d89fb0`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 421.0 B  
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
$ docker pull redis@sha256:94a5570841e5964fa74bca015880a468aba312034bc872baf300a422ab36db2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35624124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07831ada975728589f778903327bc24cd2e4c3b21421edf76e22c17631220b53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:50:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:50:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:51:52 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 13:51:56 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 13:51:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 13:52:02 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 13:55:16 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 13:55:23 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 13:55:26 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 13:55:30 GMT
WORKDIR /data
# Wed, 23 Jan 2019 13:55:32 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:55:40 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 13:55:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66daf9cf33a20641c3de8a3950d60eb94ae321446e6a41ebf8c1b550e7e5e882`  
		Last Modified: Wed, 23 Jan 2019 14:00:35 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce5d7aaf49a885ec5bad9439027d4d85938fc57ec62e64c8767eafc469d0cfb`  
		Last Modified: Wed, 23 Jan 2019 14:00:36 GMT  
		Size: 909.8 KB (909832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70c191a23a7a701546214ce17225eed043f7da3ac1ecdc1c7e9ecc64da5ece7`  
		Last Modified: Wed, 23 Jan 2019 14:00:38 GMT  
		Size: 12.0 MB (11956659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c1cda57fdcf57a36cb84260edcccbde87643098ef074b50f471be35e0db367`  
		Last Modified: Wed, 23 Jan 2019 14:00:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:637a03bf02d91cbbc6a1dd24d032975326d7034c257bfc19f224d163f3f9b601`  
		Last Modified: Wed, 23 Jan 2019 14:00:34 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; s390x

```console
$ docker pull redis@sha256:88fbb2188ed5a28a35b6b16c211219bd0b452f7ae5f5103a317abf33449680dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35507650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a283cf0030a133e5d777a8c0402f74fb9d6e3157157b66f3a6fb61ae44dd75e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:18:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 14:18:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 14:18:24 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 14:19:15 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:19:15 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:19:15 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:19:16 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:19:16 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:19:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:19:16 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:19:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22a40b3c46872bd9c1e94c09c9de59551f086061fab40c8c0091a5a1e8444d0`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b27b153c68320008563ed9812491fc080de29349a58df2c41e84a547626acc7`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 926.8 KB (926752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f084fb2829f21eafdbdc0c8f95d7339e4fdb71dc069779dd95753c0d5fe01c29`  
		Last Modified: Wed, 23 Jan 2019 14:20:27 GMT  
		Size: 12.2 MB (12225140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fec2f0ab742db37a78bb4946bbf120a943f361f2247a721162540994980a776`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad4000df6bbd7ff5e45279b66a4fab28cba059fb4e2ec8df32e4c326d0988b8`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:7c5905433107f161b0dd924852ea303ff3a8aec10a08bf239212dc34fed3b46e
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
$ docker pull redis@sha256:7094598dfbe9bc9c933c0584191a94076071fd7dd72b82355d3ad9872794ed82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14577174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77e863938abdaa75f14f418544e35b1a71fa26b011e4bbc00411c41413e01bb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:04:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 15:04:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 15:04:36 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 15:04:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 15:04:38 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 15:07:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 15:07:09 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 15:07:10 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:07:12 GMT
WORKDIR /data
# Fri, 21 Dec 2018 15:07:13 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 15:07:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:07:15 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 15:07:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afcea4bbe8c0cd1974219056baef82c09ae5626ed95f109330edec6abfb5d65`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30fc10da3c728b6192f95ca65d9fce0e3cfc9f40c7d0b6b2a47cf76a36daf75`  
		Last Modified: Fri, 21 Dec 2018 15:10:15 GMT  
		Size: 401.1 KB (401129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7297bbc8e7ad136e393bb8d8986a19d7fc72bcd92390cf58d27a711350574cd4`  
		Last Modified: Fri, 21 Dec 2018 15:10:22 GMT  
		Size: 12.1 MB (12074268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3eff0393a703d0297d3c5c2d37f63d29ebca9bf9d3ac99f938d3045ed6059e`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449cad7b0e5553793b079796b8313b1677152336ffe7548d41e6b92ffc9840bf`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 413.0 B  
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
$ docker pull redis@sha256:00de2517846cf686af9683f6d6e82e18ea5121f7566818eb174b57910ec7dce1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14994431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6d8d6f1f03954bc283c2d2aeddc6a220c21c4feba4aef6cf8d450d53645854`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 11:58:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 11:58:22 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 11:58:25 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 11:58:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 11:58:29 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 11:59:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 11:59:21 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 11:59:23 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 11:59:25 GMT
WORKDIR /data
# Fri, 21 Dec 2018 11:59:26 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 11:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 11:59:29 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 11:59:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3116134e43eed56e1265aaa08873f9f6b9929bffa74beb3586f3138e9cc46e2c`  
		Last Modified: Fri, 21 Dec 2018 12:01:14 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10b6fb16b59afc5f795b7a9695cf5a0a5baea6eb32445bb8df64afce0e0dd53`  
		Last Modified: Fri, 21 Dec 2018 12:01:15 GMT  
		Size: 407.4 KB (407413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a3ee3b317c149202c9d5a733fdcccd31e266535ce473ad8cec5fdb574f7017c`  
		Last Modified: Fri, 21 Dec 2018 12:01:17 GMT  
		Size: 12.4 MB (12390240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5357ba8bd61982233b4b0cc0f3f850badb9d7ecb12fe3fbb5f1a250a81bb12f`  
		Last Modified: Fri, 21 Dec 2018 12:01:14 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b22d931bf1a4a79bba14a6ccfce3adaf022778a510bd8ed136e0eb178c7cc0`  
		Last Modified: Fri, 21 Dec 2018 12:01:15 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; s390x

```console
$ docker pull redis@sha256:7daf6d4353bdc83306d8c4b34000578fd6ef0b3fdec23857572596b81ba6b0e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15135074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e0018939e68808516023dbe64a190a7c2aa6ca4d48f0e4b07a9617c0ca81b68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:28:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 14:28:58 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 14:28:58 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 14:28:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 14:28:59 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 14:29:45 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 14:29:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 14:29:46 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 14:29:46 GMT
WORKDIR /data
# Fri, 21 Dec 2018 14:29:46 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:29:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:29:46 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 14:29:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2d242836af801e2953145aca64bf779f602b785fc5760250737b2d1e274839`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5483a7d98377a6e29cb7987e8578e34d51d1b201cd7d6c3840a7f34a29070acb`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 408.4 KB (408405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91820ee580611608c0b06fffd64982a692e99dc9c1c52958336794e42f20e8c7`  
		Last Modified: Fri, 21 Dec 2018 14:30:49 GMT  
		Size: 12.4 MB (12416884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d031a9b0ab5eb8263d0caf939ac4fdc9b511720f7eb55583486fa95dea05639`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a37547f8452cf860a326797ab9dacf5b30a3ef620d9e389f8b903cbf3a07ffc`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine3.9`

```console
$ docker pull redis@sha256:7c5905433107f161b0dd924852ea303ff3a8aec10a08bf239212dc34fed3b46e
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
$ docker pull redis@sha256:7094598dfbe9bc9c933c0584191a94076071fd7dd72b82355d3ad9872794ed82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14577174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77e863938abdaa75f14f418544e35b1a71fa26b011e4bbc00411c41413e01bb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:04:30 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 15:04:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 15:04:36 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 15:04:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 15:04:38 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 15:07:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 15:07:09 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 15:07:10 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:07:12 GMT
WORKDIR /data
# Fri, 21 Dec 2018 15:07:13 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 15:07:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:07:15 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 15:07:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afcea4bbe8c0cd1974219056baef82c09ae5626ed95f109330edec6abfb5d65`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30fc10da3c728b6192f95ca65d9fce0e3cfc9f40c7d0b6b2a47cf76a36daf75`  
		Last Modified: Fri, 21 Dec 2018 15:10:15 GMT  
		Size: 401.1 KB (401129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7297bbc8e7ad136e393bb8d8986a19d7fc72bcd92390cf58d27a711350574cd4`  
		Last Modified: Fri, 21 Dec 2018 15:10:22 GMT  
		Size: 12.1 MB (12074268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3eff0393a703d0297d3c5c2d37f63d29ebca9bf9d3ac99f938d3045ed6059e`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449cad7b0e5553793b079796b8313b1677152336ffe7548d41e6b92ffc9840bf`  
		Last Modified: Fri, 21 Dec 2018 15:10:14 GMT  
		Size: 413.0 B  
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
$ docker pull redis@sha256:00de2517846cf686af9683f6d6e82e18ea5121f7566818eb174b57910ec7dce1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14994431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6d8d6f1f03954bc283c2d2aeddc6a220c21c4feba4aef6cf8d450d53645854`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 11:58:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 11:58:22 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 11:58:25 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 11:58:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 11:58:29 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 11:59:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 11:59:21 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 11:59:23 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 11:59:25 GMT
WORKDIR /data
# Fri, 21 Dec 2018 11:59:26 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 11:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 11:59:29 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 11:59:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3116134e43eed56e1265aaa08873f9f6b9929bffa74beb3586f3138e9cc46e2c`  
		Last Modified: Fri, 21 Dec 2018 12:01:14 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10b6fb16b59afc5f795b7a9695cf5a0a5baea6eb32445bb8df64afce0e0dd53`  
		Last Modified: Fri, 21 Dec 2018 12:01:15 GMT  
		Size: 407.4 KB (407413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a3ee3b317c149202c9d5a733fdcccd31e266535ce473ad8cec5fdb574f7017c`  
		Last Modified: Fri, 21 Dec 2018 12:01:17 GMT  
		Size: 12.4 MB (12390240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5357ba8bd61982233b4b0cc0f3f850badb9d7ecb12fe3fbb5f1a250a81bb12f`  
		Last Modified: Fri, 21 Dec 2018 12:01:14 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b22d931bf1a4a79bba14a6ccfce3adaf022778a510bd8ed136e0eb178c7cc0`  
		Last Modified: Fri, 21 Dec 2018 12:01:15 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:7daf6d4353bdc83306d8c4b34000578fd6ef0b3fdec23857572596b81ba6b0e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15135074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e0018939e68808516023dbe64a190a7c2aa6ca4d48f0e4b07a9617c0ca81b68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:28:57 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 21 Dec 2018 14:28:58 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Fri, 21 Dec 2018 14:28:58 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 21 Dec 2018 14:28:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 21 Dec 2018 14:28:59 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 21 Dec 2018 14:29:45 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 21 Dec 2018 14:29:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 21 Dec 2018 14:29:46 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 14:29:46 GMT
WORKDIR /data
# Fri, 21 Dec 2018 14:29:46 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:29:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:29:46 GMT
EXPOSE 6379
# Fri, 21 Dec 2018 14:29:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2d242836af801e2953145aca64bf779f602b785fc5760250737b2d1e274839`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5483a7d98377a6e29cb7987e8578e34d51d1b201cd7d6c3840a7f34a29070acb`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 408.4 KB (408405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91820ee580611608c0b06fffd64982a692e99dc9c1c52958336794e42f20e8c7`  
		Last Modified: Fri, 21 Dec 2018 14:30:49 GMT  
		Size: 12.4 MB (12416884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d031a9b0ab5eb8263d0caf939ac4fdc9b511720f7eb55583486fa95dea05639`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a37547f8452cf860a326797ab9dacf5b30a3ef620d9e389f8b903cbf3a07ffc`  
		Last Modified: Fri, 21 Dec 2018 14:30:46 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:6d73a4b190a631756f0fe71e571bf911275d15fbc8032f924a3db8b1bc64f603
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
$ docker pull redis@sha256:cea6eb449e8047fcba1323ca14b66b3957ba338d9ef6a8c4ea7b002dfa1380f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33553400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a30bf3ee0a4d784f20d95c31d1e370679ea0bec04e40919408485e3f356cdd6`
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
# Wed, 23 Jan 2019 11:04:21 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 11:04:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 11:04:21 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 11:05:24 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 11:05:25 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 11:05:26 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 11:05:26 GMT
WORKDIR /data
# Wed, 23 Jan 2019 11:05:27 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:05:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:05:27 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 11:05:28 GMT
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
	-	`sha256:ed0e075793cf63e697b772cdf22be78246450789f30e9f920922c1bf26af4dc8`  
		Last Modified: Wed, 23 Jan 2019 11:06:41 GMT  
		Size: 11.4 MB (11438112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d93e5236656a28f9f12989c9924a5d4c668dcced213315946131aa0deac36c`  
		Last Modified: Wed, 23 Jan 2019 11:06:37 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:748db3c809d0ded6b86bd0d807919f7aedd646aa6ce247884a777b81db67aa3f`  
		Last Modified: Wed, 23 Jan 2019 11:06:38 GMT  
		Size: 418.0 B  
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
$ docker pull redis@sha256:5d352b727305f1d2acd0f6c98588dc0255987678b28e4c726ed6e404fd7514b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32843202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9185d46060150b974c234b6c266cb091ca6a2c1504fd093141e235cf473ffd71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 06:49:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 25 Jan 2019 06:49:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Jan 2019 06:51:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 25 Jan 2019 06:51:27 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 25 Jan 2019 06:51:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 25 Jan 2019 06:51:31 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 25 Jan 2019 06:54:00 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Jan 2019 06:54:02 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 25 Jan 2019 06:54:03 GMT
VOLUME [/data]
# Fri, 25 Jan 2019 06:54:04 GMT
WORKDIR /data
# Fri, 25 Jan 2019 06:54:05 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 25 Jan 2019 06:54:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 06:54:07 GMT
EXPOSE 6379
# Fri, 25 Jan 2019 06:54:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffe51fa6d2482afb662ad20bf15728f4a4fa37a26cabc034f3aef57444f5488`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ade173ccd3008f6e247882ad45b0c5ae4e953e9dcbf5804a341ee74d028a51`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 908.2 KB (908187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5917a1aa1616558a00ab11805aa3867dce8b045d763431cdbe163e35a735d7f`  
		Last Modified: Fri, 25 Jan 2019 06:57:28 GMT  
		Size: 11.6 MB (11582571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f814a2055482dc7d06934c11754ecc16540b8440fdfc5e1832b1b5ce470848`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea751e63bfeac7a7293eaf2f12386bb671d32dd7daebb72a28d695ab79d89fb0`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 421.0 B  
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
$ docker pull redis@sha256:94a5570841e5964fa74bca015880a468aba312034bc872baf300a422ab36db2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35624124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07831ada975728589f778903327bc24cd2e4c3b21421edf76e22c17631220b53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:50:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:50:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:51:52 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 13:51:56 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 13:51:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 13:52:02 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 13:55:16 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 13:55:23 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 13:55:26 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 13:55:30 GMT
WORKDIR /data
# Wed, 23 Jan 2019 13:55:32 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:55:40 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 13:55:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66daf9cf33a20641c3de8a3950d60eb94ae321446e6a41ebf8c1b550e7e5e882`  
		Last Modified: Wed, 23 Jan 2019 14:00:35 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce5d7aaf49a885ec5bad9439027d4d85938fc57ec62e64c8767eafc469d0cfb`  
		Last Modified: Wed, 23 Jan 2019 14:00:36 GMT  
		Size: 909.8 KB (909832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70c191a23a7a701546214ce17225eed043f7da3ac1ecdc1c7e9ecc64da5ece7`  
		Last Modified: Wed, 23 Jan 2019 14:00:38 GMT  
		Size: 12.0 MB (11956659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c1cda57fdcf57a36cb84260edcccbde87643098ef074b50f471be35e0db367`  
		Last Modified: Wed, 23 Jan 2019 14:00:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:637a03bf02d91cbbc6a1dd24d032975326d7034c257bfc19f224d163f3f9b601`  
		Last Modified: Wed, 23 Jan 2019 14:00:34 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; s390x

```console
$ docker pull redis@sha256:88fbb2188ed5a28a35b6b16c211219bd0b452f7ae5f5103a317abf33449680dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35507650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a283cf0030a133e5d777a8c0402f74fb9d6e3157157b66f3a6fb61ae44dd75e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:18:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 14:18:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 14:18:24 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 14:19:15 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:19:15 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:19:15 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:19:16 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:19:16 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:19:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:19:16 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:19:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22a40b3c46872bd9c1e94c09c9de59551f086061fab40c8c0091a5a1e8444d0`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b27b153c68320008563ed9812491fc080de29349a58df2c41e84a547626acc7`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 926.8 KB (926752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f084fb2829f21eafdbdc0c8f95d7339e4fdb71dc069779dd95753c0d5fe01c29`  
		Last Modified: Wed, 23 Jan 2019 14:20:27 GMT  
		Size: 12.2 MB (12225140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fec2f0ab742db37a78bb4946bbf120a943f361f2247a721162540994980a776`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad4000df6bbd7ff5e45279b66a4fab28cba059fb4e2ec8df32e4c326d0988b8`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:stretch`

```console
$ docker pull redis@sha256:516e6aaeea1f6e1fbf74f1df71365ce980ba4953d1285752746057b383a990c7
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
$ docker pull redis@sha256:5d352b727305f1d2acd0f6c98588dc0255987678b28e4c726ed6e404fd7514b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32843202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9185d46060150b974c234b6c266cb091ca6a2c1504fd093141e235cf473ffd71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 06:49:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 25 Jan 2019 06:49:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Jan 2019 06:51:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 25 Jan 2019 06:51:27 GMT
ENV REDIS_VERSION=5.0.3
# Fri, 25 Jan 2019 06:51:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Fri, 25 Jan 2019 06:51:31 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Fri, 25 Jan 2019 06:54:00 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Jan 2019 06:54:02 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 25 Jan 2019 06:54:03 GMT
VOLUME [/data]
# Fri, 25 Jan 2019 06:54:04 GMT
WORKDIR /data
# Fri, 25 Jan 2019 06:54:05 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 25 Jan 2019 06:54:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 06:54:07 GMT
EXPOSE 6379
# Fri, 25 Jan 2019 06:54:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffe51fa6d2482afb662ad20bf15728f4a4fa37a26cabc034f3aef57444f5488`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ade173ccd3008f6e247882ad45b0c5ae4e953e9dcbf5804a341ee74d028a51`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 908.2 KB (908187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5917a1aa1616558a00ab11805aa3867dce8b045d763431cdbe163e35a735d7f`  
		Last Modified: Fri, 25 Jan 2019 06:57:28 GMT  
		Size: 11.6 MB (11582571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f814a2055482dc7d06934c11754ecc16540b8440fdfc5e1832b1b5ce470848`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea751e63bfeac7a7293eaf2f12386bb671d32dd7daebb72a28d695ab79d89fb0`  
		Last Modified: Fri, 25 Jan 2019 06:57:23 GMT  
		Size: 421.0 B  
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
$ docker pull redis@sha256:94a5570841e5964fa74bca015880a468aba312034bc872baf300a422ab36db2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35624124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07831ada975728589f778903327bc24cd2e4c3b21421edf76e22c17631220b53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:50:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 13:50:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 13:51:52 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 13:51:56 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 13:51:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 13:52:02 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 13:55:16 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 13:55:23 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 13:55:26 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 13:55:30 GMT
WORKDIR /data
# Wed, 23 Jan 2019 13:55:32 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:55:40 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 13:55:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66daf9cf33a20641c3de8a3950d60eb94ae321446e6a41ebf8c1b550e7e5e882`  
		Last Modified: Wed, 23 Jan 2019 14:00:35 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce5d7aaf49a885ec5bad9439027d4d85938fc57ec62e64c8767eafc469d0cfb`  
		Last Modified: Wed, 23 Jan 2019 14:00:36 GMT  
		Size: 909.8 KB (909832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70c191a23a7a701546214ce17225eed043f7da3ac1ecdc1c7e9ecc64da5ece7`  
		Last Modified: Wed, 23 Jan 2019 14:00:38 GMT  
		Size: 12.0 MB (11956659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c1cda57fdcf57a36cb84260edcccbde87643098ef074b50f471be35e0db367`  
		Last Modified: Wed, 23 Jan 2019 14:00:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:637a03bf02d91cbbc6a1dd24d032975326d7034c257bfc19f224d163f3f9b601`  
		Last Modified: Wed, 23 Jan 2019 14:00:34 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; s390x

```console
$ docker pull redis@sha256:88fbb2188ed5a28a35b6b16c211219bd0b452f7ae5f5103a317abf33449680dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35507650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a283cf0030a133e5d777a8c0402f74fb9d6e3157157b66f3a6fb61ae44dd75e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:18:10 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 14:18:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 14:18:24 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 14:18:24 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 14:19:15 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 14:19:15 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 14:19:15 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 14:19:16 GMT
WORKDIR /data
# Wed, 23 Jan 2019 14:19:16 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:19:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:19:16 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 14:19:16 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22a40b3c46872bd9c1e94c09c9de59551f086061fab40c8c0091a5a1e8444d0`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b27b153c68320008563ed9812491fc080de29349a58df2c41e84a547626acc7`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 926.8 KB (926752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f084fb2829f21eafdbdc0c8f95d7339e4fdb71dc069779dd95753c0d5fe01c29`  
		Last Modified: Wed, 23 Jan 2019 14:20:27 GMT  
		Size: 12.2 MB (12225140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fec2f0ab742db37a78bb4946bbf120a943f361f2247a721162540994980a776`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad4000df6bbd7ff5e45279b66a4fab28cba059fb4e2ec8df32e4c326d0988b8`  
		Last Modified: Wed, 23 Jan 2019 14:20:24 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
