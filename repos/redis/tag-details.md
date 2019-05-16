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
-	[`redis:5.0.5`](#redis505)
-	[`redis:5.0.5-32bit`](#redis505-32bit)
-	[`redis:5.0.5-32bit-stretch`](#redis505-32bit-stretch)
-	[`redis:5.0.5-alpine`](#redis505-alpine)
-	[`redis:5.0.5-alpine3.9`](#redis505-alpine39)
-	[`redis:5.0.5-stretch`](#redis505-stretch)
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
$ docker pull redis@sha256:af645dcda0207a1f0aea6fa239f3aeffd59812a9c760365eff7c9e7157055173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:c5edc855e4219295a0cfc2e2cde431ee061c813ece1a6cb1a36d340f2b6242cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39488609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0592cc8430991e1cf1ac3c106e1eb045e40b775938d17594c7a2a5628d05e963`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:41 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:50:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:50:42 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:50:42 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:42 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:43 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc71b55f6dc477ed95a4fccbee3e2e2b6fba700517b0eb8799c84e529e8e87a`  
		Last Modified: Thu, 16 May 2019 00:53:05 GMT  
		Size: 4.8 MB (4849454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ca34bf315a41019b267866e1d7ab70853c74ab96f566d80800c3e08a3812b5`  
		Last Modified: Thu, 16 May 2019 00:53:06 GMT  
		Size: 11.2 MB (11206179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8647c51bc4d6d5634159976479cfe28e5f072e141484efd6d2fbef6bef07f2`  
		Last Modified: Thu, 16 May 2019 00:53:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f07e1a22d2dc960b07d5e9c18be9d5a2aad0f215c4d539461bb4a1a508312bf`  
		Last Modified: Thu, 16 May 2019 00:53:04 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit-stretch`

```console
$ docker pull redis@sha256:af645dcda0207a1f0aea6fa239f3aeffd59812a9c760365eff7c9e7157055173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:c5edc855e4219295a0cfc2e2cde431ee061c813ece1a6cb1a36d340f2b6242cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39488609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0592cc8430991e1cf1ac3c106e1eb045e40b775938d17594c7a2a5628d05e963`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:41 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:50:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:50:42 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:50:42 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:42 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:43 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc71b55f6dc477ed95a4fccbee3e2e2b6fba700517b0eb8799c84e529e8e87a`  
		Last Modified: Thu, 16 May 2019 00:53:05 GMT  
		Size: 4.8 MB (4849454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ca34bf315a41019b267866e1d7ab70853c74ab96f566d80800c3e08a3812b5`  
		Last Modified: Thu, 16 May 2019 00:53:06 GMT  
		Size: 11.2 MB (11206179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8647c51bc4d6d5634159976479cfe28e5f072e141484efd6d2fbef6bef07f2`  
		Last Modified: Thu, 16 May 2019 00:53:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f07e1a22d2dc960b07d5e9c18be9d5a2aad0f215c4d539461bb4a1a508312bf`  
		Last Modified: Thu, 16 May 2019 00:53:04 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4`

```console
$ docker pull redis@sha256:59e759e57175447d049dd3614f31072a98c85d888a97d1232850118f0c8804ca
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
$ docker pull redis@sha256:ea8aab7d808fb0cd0adf669a0123c1ab3e4ddc48444c2a513d56f3bc8e8525ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32131555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:720768125f4ff4c2b9847cd152e66314916287a7fb2e06803b6f5f85a493e2be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 04:53:19 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 04:54:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:54:19 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:54:19 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:54:19 GMT
WORKDIR /data
# Wed, 08 May 2019 04:54:20 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:54:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:54:20 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:54:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111aefffd1679f831fe6902f918968098a5f89e013d6d8e086b6579f11c720c`  
		Last Modified: Wed, 08 May 2019 04:56:19 GMT  
		Size: 8.7 MB (8698583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9af921a085ef700155c2e271f20c7779e4262ba3aa440900892a3712d3be3b`  
		Last Modified: Wed, 08 May 2019 04:56:50 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0659698d44ab9b93ecbed73e46728f857908b8f43ccbb315b0ceeffde43e172`  
		Last Modified: Wed, 08 May 2019 04:56:15 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v5

```console
$ docker pull redis@sha256:da319a532a5602ae63669624e24fb206cd15baaf1f843b97e4676de58eedad83
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30512864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf56c058c98904dec08bed171e1398e96e66c93a7042b7dda43d4775323189f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:44:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 09:44:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 09:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 09:46:41 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 09:46:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 09:46:42 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 09:47:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 09:47:26 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 09:47:26 GMT
VOLUME [/data]
# Wed, 08 May 2019 09:47:26 GMT
WORKDIR /data
# Wed, 08 May 2019 09:47:27 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 09:47:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 09:47:28 GMT
EXPOSE 6379
# Wed, 08 May 2019 09:47:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9042d288dd3256571141d375b77cd76ad30099bb2dc13f80e91fbf472e6b1`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2a42a5237467b8424f4e6421ff0a721a0f135a647799991c350c08aca04400`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 931.2 KB (931193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641145c29030d815c9caae78b547e8843fe20238cddf5111bcb219cd59926da1`  
		Last Modified: Wed, 08 May 2019 09:48:10 GMT  
		Size: 8.4 MB (8423527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045214818d24eb0ffdda0bfaf5e036bfe24cd001bb686cad11e8a97f6b542eaf`  
		Last Modified: Wed, 08 May 2019 09:48:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb5af73d89733eb16df465690078d96d2c4e85b6c4f7f27cbdabfe13fd88016`  
		Last Modified: Wed, 08 May 2019 09:48:03 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v7

```console
$ docker pull redis@sha256:b6179bc7d4d89966a69580b120454adbd8d67477f5c457ed9701d22d5cd1ce55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28391523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c1c84e9f05bf207a96a59d04140d9a0056311e8783b17197cf46cce11ea7d5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:54:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:54:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:54:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 14:55:56 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 14:55:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 14:55:57 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 14:56:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:56:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:56:39 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:56:40 GMT
WORKDIR /data
# Wed, 08 May 2019 14:56:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:56:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:56:41 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:56:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04ed9d6e5c55be71a7578af699db21acfa7d9dd81dc0feefea5ab6c7fc9d3`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d7b0643ad1873b502f90a920e652822474851a731a233a0be7dafee3fb1bcc`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 915.8 KB (915827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158a7184abee4d42c88647d8fbdccf88023582aa82f41a8dd48454b00cf54865`  
		Last Modified: Wed, 08 May 2019 14:57:38 GMT  
		Size: 8.2 MB (8197198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ab5edffdda3f04fc0f30e89b8fcd712c32ea3c2a993d17711de954a3457ae7`  
		Last Modified: Wed, 08 May 2019 14:57:34 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d652e8504896bdbc2879c6b6dc8c85cdc336c156641dc6048fda477f18eb67`  
		Last Modified: Wed, 08 May 2019 14:57:34 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:61315cf6798b522216de44c06cfe943fe822e3be7c8b7d179e47e59e279c9772
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29742104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6472a87442b91ea954697c338a90514f890bc9021e6f11e5de1834286daa2761`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Thu, 16 May 2019 01:04:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 16 May 2019 01:04:52 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 01:05:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 01:09:10 GMT
ENV REDIS_VERSION=4.0.14
# Thu, 16 May 2019 01:09:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Thu, 16 May 2019 01:09:11 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Thu, 16 May 2019 01:10:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:10:12 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:10:13 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:10:14 GMT
WORKDIR /data
# Thu, 16 May 2019 01:10:15 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:10:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:10:17 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:10:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b47765258d397f39f0ca0d0b06dbc96995d2b8e7ed2c6961982cbea83cbbf52`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ef2ae43b989ae901049515810f82bcb828d20239bc7bad82eca8de79328be3`  
		Last Modified: Thu, 16 May 2019 01:12:20 GMT  
		Size: 908.0 KB (907958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a832d7641ce23defd95b39f357b1e24dce0b35aad323a518db889dfafada85b`  
		Last Modified: Thu, 16 May 2019 01:13:17 GMT  
		Size: 8.5 MB (8498036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f2b1ec01db985575bb76c8c093954f33bbd3026cb1f23dc92dde7c100852fe`  
		Last Modified: Thu, 16 May 2019 01:13:11 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b186e40cbb7ab3c4ccfb6f4b1b466c335abf599c91f251a60134b2208448d73`  
		Last Modified: Thu, 16 May 2019 01:13:11 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; 386

```console
$ docker pull redis@sha256:819ff8bbc031b73ae542f11d51d62ee47481f42dbc690abb9a765d28426b1ab7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32301437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ca01cc2c74b31a3c6b5fa6ef949662220fb48452d9116f470b09ffc6c4a82a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:27:13 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:27:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:27:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 19:28:43 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 19:28:43 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 19:28:43 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 19:29:22 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:29:23 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:29:23 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:29:24 GMT
WORKDIR /data
# Wed, 08 May 2019 19:29:24 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:29:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:29:24 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:29:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33b9d5023cb64a3e2105aa585763e0f894f9c8bad0cd7255f4270ca658cb230`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd525c34aa87726465ac825c4e2672a834143ab46dcc2281b78c8cee8040c6d2`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 920.2 KB (920170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbd8d93394356443793bae51beb338c009bbbba4110c3ebf821b477b82bf771`  
		Last Modified: Wed, 08 May 2019 19:29:54 GMT  
		Size: 8.3 MB (8258173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682714e633d5ed56f61cbe0f3fc5ba49fd12f6d3db2d373b8c122252396cfe12`  
		Last Modified: Wed, 08 May 2019 19:29:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e396ec142417772e1b237fc025aaaeb9d6f1727b44b621594b61c55ad6c56638`  
		Last Modified: Wed, 08 May 2019 19:29:52 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; ppc64le

```console
$ docker pull redis@sha256:263172d12b54ba1158a08cc4eef06718bf566409290ca9c1fbf9118f3434f3e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32530590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef1d7c61fb648e981e992db04b43309a146ff612e59e0b481ef3701bee59e00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:53:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 13:53:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 13:57:13 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 14:03:45 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 14:03:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 14:03:54 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 14:07:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:07:56 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:08:00 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:08:05 GMT
WORKDIR /data
# Wed, 08 May 2019 14:08:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:08:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:08:19 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:08:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff669625b2edb1e0931d0870b1809e38cff4dcef53234334cd3cf4de1c49c7ce`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169e96a284a165ec6a0775d6b3aeeb4d6a67a0f098f207acbb7ce857a3fd50d`  
		Last Modified: Wed, 08 May 2019 14:09:37 GMT  
		Size: 910.1 KB (910104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10bf6339fdfc7dbe61cb6b5996c44fef5a62a27f1f05aa3b0c7e80214b42f2e8`  
		Last Modified: Wed, 08 May 2019 14:10:21 GMT  
		Size: 8.9 MB (8873275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ff2115c3aa947e3bbcea1f2f6c26873b6e0c64028662041c60a31e6b69196a`  
		Last Modified: Wed, 08 May 2019 14:10:18 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713c3b4e399c0a54023350f30496102e35b714b6e8d581857c4c62e21ecb96a3`  
		Last Modified: Wed, 08 May 2019 14:10:18 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; s390x

```console
$ docker pull redis@sha256:e4eb8c9b6bc5ca51df9c02aaff62dd8de80c68c37909ba3ba5fc07a811054dfb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32360224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d445147bc5f0067d9ef4511fe90a99866dc4ecc1486cbbc72d8c168587747181`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:38:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:38:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:39:38 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 14:43:13 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 14:43:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 14:43:15 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 14:45:00 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:45:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:45:06 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:45:07 GMT
WORKDIR /data
# Wed, 08 May 2019 14:45:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:45:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:45:12 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:45:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d667d9ec29251877608296ac4170b4d495aa961dd3297c6f8379f4df1f68aa98`  
		Last Modified: Wed, 08 May 2019 14:46:52 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3467c4b72354e2f6a442998daf9a3501b37844ed98edc512e0cfc147185c4b`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 927.0 KB (926960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba10d6a4697cfe1601dbacc73d5ffc9ea70fb0ae377280dac895ea7fd9f24d4`  
		Last Modified: Wed, 08 May 2019 14:47:30 GMT  
		Size: 9.1 MB (9092122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b546bef5320570cf3a396aa64ed4b17d65ac4d48035a7de860278f267ac4db`  
		Last Modified: Wed, 08 May 2019 14:47:26 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909b2c3c1bfa51687c85af754ad437b39ed8ac01acffb28f24d566d981e812fb`  
		Last Modified: Wed, 08 May 2019 14:47:26 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0`

```console
$ docker pull redis@sha256:59e759e57175447d049dd3614f31072a98c85d888a97d1232850118f0c8804ca
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
$ docker pull redis@sha256:ea8aab7d808fb0cd0adf669a0123c1ab3e4ddc48444c2a513d56f3bc8e8525ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32131555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:720768125f4ff4c2b9847cd152e66314916287a7fb2e06803b6f5f85a493e2be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 04:53:19 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 04:54:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:54:19 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:54:19 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:54:19 GMT
WORKDIR /data
# Wed, 08 May 2019 04:54:20 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:54:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:54:20 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:54:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111aefffd1679f831fe6902f918968098a5f89e013d6d8e086b6579f11c720c`  
		Last Modified: Wed, 08 May 2019 04:56:19 GMT  
		Size: 8.7 MB (8698583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9af921a085ef700155c2e271f20c7779e4262ba3aa440900892a3712d3be3b`  
		Last Modified: Wed, 08 May 2019 04:56:50 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0659698d44ab9b93ecbed73e46728f857908b8f43ccbb315b0ceeffde43e172`  
		Last Modified: Wed, 08 May 2019 04:56:15 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v5

```console
$ docker pull redis@sha256:da319a532a5602ae63669624e24fb206cd15baaf1f843b97e4676de58eedad83
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30512864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf56c058c98904dec08bed171e1398e96e66c93a7042b7dda43d4775323189f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:44:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 09:44:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 09:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 09:46:41 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 09:46:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 09:46:42 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 09:47:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 09:47:26 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 09:47:26 GMT
VOLUME [/data]
# Wed, 08 May 2019 09:47:26 GMT
WORKDIR /data
# Wed, 08 May 2019 09:47:27 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 09:47:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 09:47:28 GMT
EXPOSE 6379
# Wed, 08 May 2019 09:47:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9042d288dd3256571141d375b77cd76ad30099bb2dc13f80e91fbf472e6b1`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2a42a5237467b8424f4e6421ff0a721a0f135a647799991c350c08aca04400`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 931.2 KB (931193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641145c29030d815c9caae78b547e8843fe20238cddf5111bcb219cd59926da1`  
		Last Modified: Wed, 08 May 2019 09:48:10 GMT  
		Size: 8.4 MB (8423527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045214818d24eb0ffdda0bfaf5e036bfe24cd001bb686cad11e8a97f6b542eaf`  
		Last Modified: Wed, 08 May 2019 09:48:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb5af73d89733eb16df465690078d96d2c4e85b6c4f7f27cbdabfe13fd88016`  
		Last Modified: Wed, 08 May 2019 09:48:03 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v7

```console
$ docker pull redis@sha256:b6179bc7d4d89966a69580b120454adbd8d67477f5c457ed9701d22d5cd1ce55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28391523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c1c84e9f05bf207a96a59d04140d9a0056311e8783b17197cf46cce11ea7d5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:54:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:54:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:54:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 14:55:56 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 14:55:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 14:55:57 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 14:56:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:56:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:56:39 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:56:40 GMT
WORKDIR /data
# Wed, 08 May 2019 14:56:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:56:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:56:41 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:56:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04ed9d6e5c55be71a7578af699db21acfa7d9dd81dc0feefea5ab6c7fc9d3`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d7b0643ad1873b502f90a920e652822474851a731a233a0be7dafee3fb1bcc`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 915.8 KB (915827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158a7184abee4d42c88647d8fbdccf88023582aa82f41a8dd48454b00cf54865`  
		Last Modified: Wed, 08 May 2019 14:57:38 GMT  
		Size: 8.2 MB (8197198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ab5edffdda3f04fc0f30e89b8fcd712c32ea3c2a993d17711de954a3457ae7`  
		Last Modified: Wed, 08 May 2019 14:57:34 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d652e8504896bdbc2879c6b6dc8c85cdc336c156641dc6048fda477f18eb67`  
		Last Modified: Wed, 08 May 2019 14:57:34 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:61315cf6798b522216de44c06cfe943fe822e3be7c8b7d179e47e59e279c9772
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29742104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6472a87442b91ea954697c338a90514f890bc9021e6f11e5de1834286daa2761`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Thu, 16 May 2019 01:04:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 16 May 2019 01:04:52 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 01:05:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 01:09:10 GMT
ENV REDIS_VERSION=4.0.14
# Thu, 16 May 2019 01:09:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Thu, 16 May 2019 01:09:11 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Thu, 16 May 2019 01:10:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:10:12 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:10:13 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:10:14 GMT
WORKDIR /data
# Thu, 16 May 2019 01:10:15 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:10:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:10:17 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:10:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b47765258d397f39f0ca0d0b06dbc96995d2b8e7ed2c6961982cbea83cbbf52`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ef2ae43b989ae901049515810f82bcb828d20239bc7bad82eca8de79328be3`  
		Last Modified: Thu, 16 May 2019 01:12:20 GMT  
		Size: 908.0 KB (907958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a832d7641ce23defd95b39f357b1e24dce0b35aad323a518db889dfafada85b`  
		Last Modified: Thu, 16 May 2019 01:13:17 GMT  
		Size: 8.5 MB (8498036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f2b1ec01db985575bb76c8c093954f33bbd3026cb1f23dc92dde7c100852fe`  
		Last Modified: Thu, 16 May 2019 01:13:11 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b186e40cbb7ab3c4ccfb6f4b1b466c335abf599c91f251a60134b2208448d73`  
		Last Modified: Thu, 16 May 2019 01:13:11 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; 386

```console
$ docker pull redis@sha256:819ff8bbc031b73ae542f11d51d62ee47481f42dbc690abb9a765d28426b1ab7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32301437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ca01cc2c74b31a3c6b5fa6ef949662220fb48452d9116f470b09ffc6c4a82a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:27:13 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:27:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:27:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 19:28:43 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 19:28:43 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 19:28:43 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 19:29:22 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:29:23 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:29:23 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:29:24 GMT
WORKDIR /data
# Wed, 08 May 2019 19:29:24 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:29:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:29:24 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:29:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33b9d5023cb64a3e2105aa585763e0f894f9c8bad0cd7255f4270ca658cb230`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd525c34aa87726465ac825c4e2672a834143ab46dcc2281b78c8cee8040c6d2`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 920.2 KB (920170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbd8d93394356443793bae51beb338c009bbbba4110c3ebf821b477b82bf771`  
		Last Modified: Wed, 08 May 2019 19:29:54 GMT  
		Size: 8.3 MB (8258173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682714e633d5ed56f61cbe0f3fc5ba49fd12f6d3db2d373b8c122252396cfe12`  
		Last Modified: Wed, 08 May 2019 19:29:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e396ec142417772e1b237fc025aaaeb9d6f1727b44b621594b61c55ad6c56638`  
		Last Modified: Wed, 08 May 2019 19:29:52 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; ppc64le

```console
$ docker pull redis@sha256:263172d12b54ba1158a08cc4eef06718bf566409290ca9c1fbf9118f3434f3e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32530590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef1d7c61fb648e981e992db04b43309a146ff612e59e0b481ef3701bee59e00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:53:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 13:53:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 13:57:13 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 14:03:45 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 14:03:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 14:03:54 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 14:07:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:07:56 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:08:00 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:08:05 GMT
WORKDIR /data
# Wed, 08 May 2019 14:08:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:08:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:08:19 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:08:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff669625b2edb1e0931d0870b1809e38cff4dcef53234334cd3cf4de1c49c7ce`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169e96a284a165ec6a0775d6b3aeeb4d6a67a0f098f207acbb7ce857a3fd50d`  
		Last Modified: Wed, 08 May 2019 14:09:37 GMT  
		Size: 910.1 KB (910104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10bf6339fdfc7dbe61cb6b5996c44fef5a62a27f1f05aa3b0c7e80214b42f2e8`  
		Last Modified: Wed, 08 May 2019 14:10:21 GMT  
		Size: 8.9 MB (8873275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ff2115c3aa947e3bbcea1f2f6c26873b6e0c64028662041c60a31e6b69196a`  
		Last Modified: Wed, 08 May 2019 14:10:18 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713c3b4e399c0a54023350f30496102e35b714b6e8d581857c4c62e21ecb96a3`  
		Last Modified: Wed, 08 May 2019 14:10:18 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; s390x

```console
$ docker pull redis@sha256:e4eb8c9b6bc5ca51df9c02aaff62dd8de80c68c37909ba3ba5fc07a811054dfb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32360224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d445147bc5f0067d9ef4511fe90a99866dc4ecc1486cbbc72d8c168587747181`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:38:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:38:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:39:38 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 14:43:13 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 14:43:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 14:43:15 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 14:45:00 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:45:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:45:06 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:45:07 GMT
WORKDIR /data
# Wed, 08 May 2019 14:45:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:45:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:45:12 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:45:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d667d9ec29251877608296ac4170b4d495aa961dd3297c6f8379f4df1f68aa98`  
		Last Modified: Wed, 08 May 2019 14:46:52 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3467c4b72354e2f6a442998daf9a3501b37844ed98edc512e0cfc147185c4b`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 927.0 KB (926960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba10d6a4697cfe1601dbacc73d5ffc9ea70fb0ae377280dac895ea7fd9f24d4`  
		Last Modified: Wed, 08 May 2019 14:47:30 GMT  
		Size: 9.1 MB (9092122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b546bef5320570cf3a396aa64ed4b17d65ac4d48035a7de860278f267ac4db`  
		Last Modified: Wed, 08 May 2019 14:47:26 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909b2c3c1bfa51687c85af754ad437b39ed8ac01acffb28f24d566d981e812fb`  
		Last Modified: Wed, 08 May 2019 14:47:26 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.14`

```console
$ docker pull redis@sha256:59e759e57175447d049dd3614f31072a98c85d888a97d1232850118f0c8804ca
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

### `redis:4.0.14` - linux; amd64

```console
$ docker pull redis@sha256:ea8aab7d808fb0cd0adf669a0123c1ab3e4ddc48444c2a513d56f3bc8e8525ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32131555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:720768125f4ff4c2b9847cd152e66314916287a7fb2e06803b6f5f85a493e2be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 04:53:19 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 04:54:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:54:19 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:54:19 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:54:19 GMT
WORKDIR /data
# Wed, 08 May 2019 04:54:20 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:54:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:54:20 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:54:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111aefffd1679f831fe6902f918968098a5f89e013d6d8e086b6579f11c720c`  
		Last Modified: Wed, 08 May 2019 04:56:19 GMT  
		Size: 8.7 MB (8698583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9af921a085ef700155c2e271f20c7779e4262ba3aa440900892a3712d3be3b`  
		Last Modified: Wed, 08 May 2019 04:56:50 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0659698d44ab9b93ecbed73e46728f857908b8f43ccbb315b0ceeffde43e172`  
		Last Modified: Wed, 08 May 2019 04:56:15 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14` - linux; arm variant v5

```console
$ docker pull redis@sha256:da319a532a5602ae63669624e24fb206cd15baaf1f843b97e4676de58eedad83
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30512864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf56c058c98904dec08bed171e1398e96e66c93a7042b7dda43d4775323189f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:44:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 09:44:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 09:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 09:46:41 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 09:46:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 09:46:42 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 09:47:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 09:47:26 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 09:47:26 GMT
VOLUME [/data]
# Wed, 08 May 2019 09:47:26 GMT
WORKDIR /data
# Wed, 08 May 2019 09:47:27 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 09:47:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 09:47:28 GMT
EXPOSE 6379
# Wed, 08 May 2019 09:47:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9042d288dd3256571141d375b77cd76ad30099bb2dc13f80e91fbf472e6b1`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2a42a5237467b8424f4e6421ff0a721a0f135a647799991c350c08aca04400`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 931.2 KB (931193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641145c29030d815c9caae78b547e8843fe20238cddf5111bcb219cd59926da1`  
		Last Modified: Wed, 08 May 2019 09:48:10 GMT  
		Size: 8.4 MB (8423527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045214818d24eb0ffdda0bfaf5e036bfe24cd001bb686cad11e8a97f6b542eaf`  
		Last Modified: Wed, 08 May 2019 09:48:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb5af73d89733eb16df465690078d96d2c4e85b6c4f7f27cbdabfe13fd88016`  
		Last Modified: Wed, 08 May 2019 09:48:03 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14` - linux; arm variant v7

```console
$ docker pull redis@sha256:b6179bc7d4d89966a69580b120454adbd8d67477f5c457ed9701d22d5cd1ce55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28391523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c1c84e9f05bf207a96a59d04140d9a0056311e8783b17197cf46cce11ea7d5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:54:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:54:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:54:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 14:55:56 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 14:55:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 14:55:57 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 14:56:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:56:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:56:39 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:56:40 GMT
WORKDIR /data
# Wed, 08 May 2019 14:56:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:56:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:56:41 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:56:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04ed9d6e5c55be71a7578af699db21acfa7d9dd81dc0feefea5ab6c7fc9d3`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d7b0643ad1873b502f90a920e652822474851a731a233a0be7dafee3fb1bcc`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 915.8 KB (915827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158a7184abee4d42c88647d8fbdccf88023582aa82f41a8dd48454b00cf54865`  
		Last Modified: Wed, 08 May 2019 14:57:38 GMT  
		Size: 8.2 MB (8197198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ab5edffdda3f04fc0f30e89b8fcd712c32ea3c2a993d17711de954a3457ae7`  
		Last Modified: Wed, 08 May 2019 14:57:34 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d652e8504896bdbc2879c6b6dc8c85cdc336c156641dc6048fda477f18eb67`  
		Last Modified: Wed, 08 May 2019 14:57:34 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:61315cf6798b522216de44c06cfe943fe822e3be7c8b7d179e47e59e279c9772
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29742104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6472a87442b91ea954697c338a90514f890bc9021e6f11e5de1834286daa2761`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Thu, 16 May 2019 01:04:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 16 May 2019 01:04:52 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 01:05:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 01:09:10 GMT
ENV REDIS_VERSION=4.0.14
# Thu, 16 May 2019 01:09:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Thu, 16 May 2019 01:09:11 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Thu, 16 May 2019 01:10:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:10:12 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:10:13 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:10:14 GMT
WORKDIR /data
# Thu, 16 May 2019 01:10:15 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:10:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:10:17 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:10:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b47765258d397f39f0ca0d0b06dbc96995d2b8e7ed2c6961982cbea83cbbf52`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ef2ae43b989ae901049515810f82bcb828d20239bc7bad82eca8de79328be3`  
		Last Modified: Thu, 16 May 2019 01:12:20 GMT  
		Size: 908.0 KB (907958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a832d7641ce23defd95b39f357b1e24dce0b35aad323a518db889dfafada85b`  
		Last Modified: Thu, 16 May 2019 01:13:17 GMT  
		Size: 8.5 MB (8498036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f2b1ec01db985575bb76c8c093954f33bbd3026cb1f23dc92dde7c100852fe`  
		Last Modified: Thu, 16 May 2019 01:13:11 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b186e40cbb7ab3c4ccfb6f4b1b466c335abf599c91f251a60134b2208448d73`  
		Last Modified: Thu, 16 May 2019 01:13:11 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14` - linux; 386

```console
$ docker pull redis@sha256:819ff8bbc031b73ae542f11d51d62ee47481f42dbc690abb9a765d28426b1ab7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32301437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ca01cc2c74b31a3c6b5fa6ef949662220fb48452d9116f470b09ffc6c4a82a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:27:13 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:27:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:27:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 19:28:43 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 19:28:43 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 19:28:43 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 19:29:22 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:29:23 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:29:23 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:29:24 GMT
WORKDIR /data
# Wed, 08 May 2019 19:29:24 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:29:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:29:24 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:29:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33b9d5023cb64a3e2105aa585763e0f894f9c8bad0cd7255f4270ca658cb230`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd525c34aa87726465ac825c4e2672a834143ab46dcc2281b78c8cee8040c6d2`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 920.2 KB (920170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbd8d93394356443793bae51beb338c009bbbba4110c3ebf821b477b82bf771`  
		Last Modified: Wed, 08 May 2019 19:29:54 GMT  
		Size: 8.3 MB (8258173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682714e633d5ed56f61cbe0f3fc5ba49fd12f6d3db2d373b8c122252396cfe12`  
		Last Modified: Wed, 08 May 2019 19:29:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e396ec142417772e1b237fc025aaaeb9d6f1727b44b621594b61c55ad6c56638`  
		Last Modified: Wed, 08 May 2019 19:29:52 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14` - linux; ppc64le

```console
$ docker pull redis@sha256:263172d12b54ba1158a08cc4eef06718bf566409290ca9c1fbf9118f3434f3e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32530590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef1d7c61fb648e981e992db04b43309a146ff612e59e0b481ef3701bee59e00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:53:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 13:53:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 13:57:13 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 14:03:45 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 14:03:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 14:03:54 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 14:07:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:07:56 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:08:00 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:08:05 GMT
WORKDIR /data
# Wed, 08 May 2019 14:08:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:08:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:08:19 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:08:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff669625b2edb1e0931d0870b1809e38cff4dcef53234334cd3cf4de1c49c7ce`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169e96a284a165ec6a0775d6b3aeeb4d6a67a0f098f207acbb7ce857a3fd50d`  
		Last Modified: Wed, 08 May 2019 14:09:37 GMT  
		Size: 910.1 KB (910104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10bf6339fdfc7dbe61cb6b5996c44fef5a62a27f1f05aa3b0c7e80214b42f2e8`  
		Last Modified: Wed, 08 May 2019 14:10:21 GMT  
		Size: 8.9 MB (8873275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ff2115c3aa947e3bbcea1f2f6c26873b6e0c64028662041c60a31e6b69196a`  
		Last Modified: Wed, 08 May 2019 14:10:18 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713c3b4e399c0a54023350f30496102e35b714b6e8d581857c4c62e21ecb96a3`  
		Last Modified: Wed, 08 May 2019 14:10:18 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14` - linux; s390x

```console
$ docker pull redis@sha256:e4eb8c9b6bc5ca51df9c02aaff62dd8de80c68c37909ba3ba5fc07a811054dfb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32360224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d445147bc5f0067d9ef4511fe90a99866dc4ecc1486cbbc72d8c168587747181`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:38:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:38:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:39:38 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 14:43:13 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 14:43:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 14:43:15 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 14:45:00 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:45:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:45:06 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:45:07 GMT
WORKDIR /data
# Wed, 08 May 2019 14:45:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:45:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:45:12 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:45:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d667d9ec29251877608296ac4170b4d495aa961dd3297c6f8379f4df1f68aa98`  
		Last Modified: Wed, 08 May 2019 14:46:52 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3467c4b72354e2f6a442998daf9a3501b37844ed98edc512e0cfc147185c4b`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 927.0 KB (926960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba10d6a4697cfe1601dbacc73d5ffc9ea70fb0ae377280dac895ea7fd9f24d4`  
		Last Modified: Wed, 08 May 2019 14:47:30 GMT  
		Size: 9.1 MB (9092122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b546bef5320570cf3a396aa64ed4b17d65ac4d48035a7de860278f267ac4db`  
		Last Modified: Wed, 08 May 2019 14:47:26 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909b2c3c1bfa51687c85af754ad437b39ed8ac01acffb28f24d566d981e812fb`  
		Last Modified: Wed, 08 May 2019 14:47:26 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.14-32bit`

```console
$ docker pull redis@sha256:b979f58369946c6851f02bde1251df3e78f2cb2e0645d2fa70dec2eec56aa510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.14-32bit` - linux; amd64

```console
$ docker pull redis@sha256:5195ef3bd920b473ddd91ecc076b278f26f296ead9b2878a58c73ae5dc1aee12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36544979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:273be4c4f3e71b2e81be01ea4c98923f50a98cf9ae0375dc6cf38d03f1c5f3fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 04:53:19 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 04:54:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 04:55:21 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:55:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:55:21 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:55:22 GMT
WORKDIR /data
# Wed, 08 May 2019 04:55:22 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:55:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:55:22 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:55:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fa2939448aed1e20d360a00c2db67d3223a801a9bafb6eb0bf04e3128fc850`  
		Last Modified: Wed, 08 May 2019 04:56:59 GMT  
		Size: 4.8 MB (4849440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb7e32d26bea3528dc89d629885f56a1417eb26e702cac0606039a12279ee36`  
		Last Modified: Wed, 08 May 2019 04:57:01 GMT  
		Size: 8.3 MB (8262564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabda37465b40cfc1c14eb080f727726d74c29a547699b1eb04178472c98870a`  
		Last Modified: Wed, 08 May 2019 04:56:58 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5fc7a0dd0dbd2381747c280cef6fd9ea448dba81ed21b4e8087015613d42a3`  
		Last Modified: Wed, 08 May 2019 04:56:58 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.14-32bit-stretch`

```console
$ docker pull redis@sha256:b979f58369946c6851f02bde1251df3e78f2cb2e0645d2fa70dec2eec56aa510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.14-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:5195ef3bd920b473ddd91ecc076b278f26f296ead9b2878a58c73ae5dc1aee12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36544979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:273be4c4f3e71b2e81be01ea4c98923f50a98cf9ae0375dc6cf38d03f1c5f3fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 04:53:19 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 04:54:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 04:55:21 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:55:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:55:21 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:55:22 GMT
WORKDIR /data
# Wed, 08 May 2019 04:55:22 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:55:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:55:22 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:55:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fa2939448aed1e20d360a00c2db67d3223a801a9bafb6eb0bf04e3128fc850`  
		Last Modified: Wed, 08 May 2019 04:56:59 GMT  
		Size: 4.8 MB (4849440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb7e32d26bea3528dc89d629885f56a1417eb26e702cac0606039a12279ee36`  
		Last Modified: Wed, 08 May 2019 04:57:01 GMT  
		Size: 8.3 MB (8262564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabda37465b40cfc1c14eb080f727726d74c29a547699b1eb04178472c98870a`  
		Last Modified: Wed, 08 May 2019 04:56:58 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5fc7a0dd0dbd2381747c280cef6fd9ea448dba81ed21b4e8087015613d42a3`  
		Last Modified: Wed, 08 May 2019 04:56:58 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.14-alpine`

```console
$ docker pull redis@sha256:c39398ed9823a8e66702e545eb21f17be17e3f6f736ba3329e10f3e7af36b2f2
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

### `redis:4.0.14-alpine` - linux; amd64

```console
$ docker pull redis@sha256:47c66f7fac64a98b19978c1e89abe12e02e0c2baa13de4def9dc3da8268ab3f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13949085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce91e22cd3f019df7aff4d2f27598a3f1b56c8627c285f24a9380c20fc6da5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:43:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 01:43:52 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 01:46:14 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 01:46:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 01:46:14 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 01:47:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 01:47:18 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 01:47:18 GMT
VOLUME [/data]
# Sat, 11 May 2019 01:47:18 GMT
WORKDIR /data
# Sat, 11 May 2019 01:47:19 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 01:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:47:19 GMT
EXPOSE 6379
# Sat, 11 May 2019 01:47:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8af38234db8796d645ec9541647315cdae2830b8f7c477b618feabbeee672cc`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b5e96879e00e980373ed29b9088020ea3d931c156252c1aae326b86a6775d4`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 403.8 KB (403836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a070e72f489fc7a15cdd5721b05b090735528bff4cf2ce97b1aeda5662b6c2a2`  
		Last Modified: Sat, 11 May 2019 01:48:38 GMT  
		Size: 10.8 MB (10786452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d549ccaa85a31cf8255a12d13fe8fefa2c52ce996be61b29a3b9cf0469363be`  
		Last Modified: Sat, 11 May 2019 01:48:36 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0240cd8e4dd900a6df0a42b9209d036acb3f5643d50e735fd1c7cee4d8749146`  
		Last Modified: Sat, 11 May 2019 01:48:36 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:5ac1d69a49fb8eebd60eb1877bd0fc14a5d0f200bff8c0e512ba6c2af75a5561
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13353589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca50b458011a920eb9a7d5c1ab847a1f8c6dac4933b8844838abc5203110381`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:29:26 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:29:28 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 08:30:27 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 08:30:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 08:30:28 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 08:30:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 08:30:53 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 08:30:53 GMT
VOLUME [/data]
# Sat, 11 May 2019 08:30:54 GMT
WORKDIR /data
# Sat, 11 May 2019 08:30:54 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 08:30:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:30:55 GMT
EXPOSE 6379
# Sat, 11 May 2019 08:30:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3b26f48db5b9f4aef841aedcaf84ca5b2036b4bc8d60ec400562dcc83b0e64`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c63408643782fafd48e9f99babe3c37e4192927a6bb12b7130619e8baffc64f`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 406.2 KB (406229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3199852c3d52c4985b0f2427aeb7378748b39faa6a7ca3ebd01144ef05750b0f`  
		Last Modified: Sat, 11 May 2019 08:31:32 GMT  
		Size: 10.4 MB (10402108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966e3adca7fffef88704c05e06e653fb54c59e6ea7dd92cc2ed59811a858395a`  
		Last Modified: Sat, 11 May 2019 08:31:29 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511c154dd5222c9bde4bfbb03b86bd20601fcf62646d2a8fbd2aad3b48752495`  
		Last Modified: Sat, 11 May 2019 08:31:29 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:1398f91cce4067b7e7a27164665c01f6a5757482b88a9e6a6e1e9f61068cf6f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12997945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5be42e09fedc9fcc9effd0ad707591dc83ae0fd2fc06816f154e7958e2c05224`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:44:03 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:44:05 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 12:45:10 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 12:45:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 12:45:11 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 12:45:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:45:38 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:45:38 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:45:39 GMT
WORKDIR /data
# Sat, 11 May 2019 12:45:39 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:45:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:45:40 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:45:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565eef49c17c1dbf08900c5f718bb6bf370c8fd8266c79aa5ab210dc41a3efd7`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a85d46778feb34d5ec3c1a011b9fddcb2fe7135bbfe170c0bf4fd77ff837a0`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 400.1 KB (400099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2723ec46dcd882fe08d8f794c879792fec85b142a6c298822603d63aac20a3b`  
		Last Modified: Sat, 11 May 2019 12:46:33 GMT  
		Size: 10.2 MB (10245355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f3dcff2fa5480dd4dc523563b8468a42260804383b10afb4774ebb29e7312e`  
		Last Modified: Sat, 11 May 2019 12:46:28 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeec4ec6fe69223fefff45d31ee70945d3eaf76e92955d23738fc33fd6856164`  
		Last Modified: Sat, 11 May 2019 12:46:28 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:06c1f7fd794868c6430e9f57347989b15a3a149cd2498e36e01b4e08fc7e2fc6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13747464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a1ccda935d4dc0324c3416faa5c50045601083bb1cb95829dc9ac4958f779cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 01:07:39 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 16 May 2019 01:07:43 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 01:10:27 GMT
ENV REDIS_VERSION=4.0.14
# Thu, 16 May 2019 01:10:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Thu, 16 May 2019 01:10:29 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Thu, 16 May 2019 01:11:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 01:11:13 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:11:14 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:11:14 GMT
WORKDIR /data
# Thu, 16 May 2019 01:11:15 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 01:11:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:11:17 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:11:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b3a49ce31ca23e2611efdf316f0a9838b50f5ec8f186a20552aa22ae44906f`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6d8b3a94783c7f17b1cd84b113af2e4bcdf64b9fdbb7db5182af9774c79475`  
		Last Modified: Thu, 16 May 2019 01:12:47 GMT  
		Size: 406.0 KB (406020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5a4a7482f64610a0969980cce98c1e88a8e8a428e0c8e29aa0f55eaf564945`  
		Last Modified: Thu, 16 May 2019 01:13:38 GMT  
		Size: 10.7 MB (10650835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24f5c2cbb73934632b6353c8b8785b341764cbd40fd6b2703605345c3d47a05`  
		Last Modified: Thu, 16 May 2019 01:13:34 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798c22ffde4530afe2256055e7b3718043e7dc302e42595dae9f9106e5dc7979`  
		Last Modified: Thu, 16 May 2019 01:13:34 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine` - linux; 386

```console
$ docker pull redis@sha256:46a567938bbc7286f74bbdc4ff5eebd6014d96039ac8e5b50bf00e0cc2f7d124
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13453201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0317a117c954e02f1bd0050d5e41d1a2d2499fb08c1cf7429510de472952f25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:19:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 14:19:53 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 14:21:08 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 14:21:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 14:21:09 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 14:21:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 14:21:43 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 14:21:44 GMT
VOLUME [/data]
# Sat, 11 May 2019 14:21:44 GMT
WORKDIR /data
# Sat, 11 May 2019 14:21:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 14:21:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 14:21:44 GMT
EXPOSE 6379
# Sat, 11 May 2019 14:21:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc09a60a7057123e651fa66030d2eb409f37acbcb6225df90a961c884bcd6ae`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342305f7d88077eba4d5d9428acb6d7250fdbae9a7cccab0eb143131ebab831`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 409.0 KB (408975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4a5f48256b20c9d12b07ef1d3d078d5c6412770f8e0d313c825c9ab51917da`  
		Last Modified: Sat, 11 May 2019 14:22:18 GMT  
		Size: 10.3 MB (10290372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54170ec7ce08c42ca8bb0c6b57b2b3c1be91aa86a17e4a23974d3bf608b0223b`  
		Last Modified: Sat, 11 May 2019 14:22:16 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8711f794c564d205befab0753efd33261b48d78f60ad390d3129cb429d2f3e`  
		Last Modified: Sat, 11 May 2019 14:22:16 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:b06713cefd793458dbfde782ceb66d9ed1ea741894c32909cc3d67c497163178
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14405014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b02072682cd5529738cb90f80cec8dae0cd7ebb9eaf14e6ddedd86b83afa730f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:58:56 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 09:01:35 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 09:01:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 09:01:40 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 09:02:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 09:02:39 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 09:02:42 GMT
VOLUME [/data]
# Sat, 11 May 2019 09:02:45 GMT
WORKDIR /data
# Sat, 11 May 2019 09:02:46 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 09:02:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:02:53 GMT
EXPOSE 6379
# Sat, 11 May 2019 09:02:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1f873094cdec16153e6440266d174f7a212d084ef10eaee74f2131622f0a65`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a0313c41cb3c045368f5b83e91440077e3c713f4fa98ae890d3aac07fd1338`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 411.2 KB (411203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227c692f6a186d7180264745e46361b41f5c580f8bcdc6448917a4a9eb82796c`  
		Last Modified: Sat, 11 May 2019 09:04:21 GMT  
		Size: 11.2 MB (11210960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b119842ed36ff9f001ee92d3dfd06135c32d0b4298a90d00b812fcb9f3c08315`  
		Last Modified: Sat, 11 May 2019 09:04:17 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8839c08efa8dd1deff89b7f80e270624bf739dc38a3b2aa3d851937d0da70179`  
		Last Modified: Sat, 11 May 2019 09:04:18 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine` - linux; s390x

```console
$ docker pull redis@sha256:26c8f1e823891c83f76578da888b31d1a7c6cbe79d31e00407171fd45292e732
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13819670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a2d945446abb9c90947c6e5397fde1053e9dc15d54c504c9e23223bed28e9f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:29:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 13:29:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 13:30:56 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 13:30:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 13:30:57 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 13:31:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 13:31:35 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 13:31:35 GMT
VOLUME [/data]
# Sat, 11 May 2019 13:31:35 GMT
WORKDIR /data
# Sat, 11 May 2019 13:31:36 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 13:31:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 13:31:36 GMT
EXPOSE 6379
# Sat, 11 May 2019 13:31:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2038b2ec161be7e2f3c8ef364d60480ba3ca4bd5dc4869be8908551986c7d6f5`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7082e9e057aef8a7fefd028f8f5f6822021e7319e216b4ab9b0decef6c34a7`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 408.8 KB (408752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103c3629c039870038f312949fa950a8a6543ee18ee6a75f2298dc04934de2ff`  
		Last Modified: Sat, 11 May 2019 13:32:32 GMT  
		Size: 10.9 MB (10865822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8319718da21bb661a2f232380fb6c5957d45fa09f7e4f7faeeb7de8ce0aedd9`  
		Last Modified: Sat, 11 May 2019 13:32:29 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ce2b388e49f49dc0bd933c213d267b0c66b863d53d53ec15c06821b51ab688`  
		Last Modified: Sat, 11 May 2019 13:32:29 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.14-alpine3.9`

```console
$ docker pull redis@sha256:c39398ed9823a8e66702e545eb21f17be17e3f6f736ba3329e10f3e7af36b2f2
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

### `redis:4.0.14-alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:47c66f7fac64a98b19978c1e89abe12e02e0c2baa13de4def9dc3da8268ab3f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13949085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce91e22cd3f019df7aff4d2f27598a3f1b56c8627c285f24a9380c20fc6da5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:43:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 01:43:52 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 01:46:14 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 01:46:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 01:46:14 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 01:47:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 01:47:18 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 01:47:18 GMT
VOLUME [/data]
# Sat, 11 May 2019 01:47:18 GMT
WORKDIR /data
# Sat, 11 May 2019 01:47:19 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 01:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:47:19 GMT
EXPOSE 6379
# Sat, 11 May 2019 01:47:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8af38234db8796d645ec9541647315cdae2830b8f7c477b618feabbeee672cc`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b5e96879e00e980373ed29b9088020ea3d931c156252c1aae326b86a6775d4`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 403.8 KB (403836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a070e72f489fc7a15cdd5721b05b090735528bff4cf2ce97b1aeda5662b6c2a2`  
		Last Modified: Sat, 11 May 2019 01:48:38 GMT  
		Size: 10.8 MB (10786452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d549ccaa85a31cf8255a12d13fe8fefa2c52ce996be61b29a3b9cf0469363be`  
		Last Modified: Sat, 11 May 2019 01:48:36 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0240cd8e4dd900a6df0a42b9209d036acb3f5643d50e735fd1c7cee4d8749146`  
		Last Modified: Sat, 11 May 2019 01:48:36 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:5ac1d69a49fb8eebd60eb1877bd0fc14a5d0f200bff8c0e512ba6c2af75a5561
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13353589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca50b458011a920eb9a7d5c1ab847a1f8c6dac4933b8844838abc5203110381`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:29:26 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:29:28 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 08:30:27 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 08:30:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 08:30:28 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 08:30:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 08:30:53 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 08:30:53 GMT
VOLUME [/data]
# Sat, 11 May 2019 08:30:54 GMT
WORKDIR /data
# Sat, 11 May 2019 08:30:54 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 08:30:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:30:55 GMT
EXPOSE 6379
# Sat, 11 May 2019 08:30:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3b26f48db5b9f4aef841aedcaf84ca5b2036b4bc8d60ec400562dcc83b0e64`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c63408643782fafd48e9f99babe3c37e4192927a6bb12b7130619e8baffc64f`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 406.2 KB (406229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3199852c3d52c4985b0f2427aeb7378748b39faa6a7ca3ebd01144ef05750b0f`  
		Last Modified: Sat, 11 May 2019 08:31:32 GMT  
		Size: 10.4 MB (10402108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966e3adca7fffef88704c05e06e653fb54c59e6ea7dd92cc2ed59811a858395a`  
		Last Modified: Sat, 11 May 2019 08:31:29 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511c154dd5222c9bde4bfbb03b86bd20601fcf62646d2a8fbd2aad3b48752495`  
		Last Modified: Sat, 11 May 2019 08:31:29 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:1398f91cce4067b7e7a27164665c01f6a5757482b88a9e6a6e1e9f61068cf6f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12997945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5be42e09fedc9fcc9effd0ad707591dc83ae0fd2fc06816f154e7958e2c05224`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:44:03 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:44:05 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 12:45:10 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 12:45:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 12:45:11 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 12:45:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:45:38 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:45:38 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:45:39 GMT
WORKDIR /data
# Sat, 11 May 2019 12:45:39 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:45:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:45:40 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:45:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565eef49c17c1dbf08900c5f718bb6bf370c8fd8266c79aa5ab210dc41a3efd7`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a85d46778feb34d5ec3c1a011b9fddcb2fe7135bbfe170c0bf4fd77ff837a0`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 400.1 KB (400099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2723ec46dcd882fe08d8f794c879792fec85b142a6c298822603d63aac20a3b`  
		Last Modified: Sat, 11 May 2019 12:46:33 GMT  
		Size: 10.2 MB (10245355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f3dcff2fa5480dd4dc523563b8468a42260804383b10afb4774ebb29e7312e`  
		Last Modified: Sat, 11 May 2019 12:46:28 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeec4ec6fe69223fefff45d31ee70945d3eaf76e92955d23738fc33fd6856164`  
		Last Modified: Sat, 11 May 2019 12:46:28 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:06c1f7fd794868c6430e9f57347989b15a3a149cd2498e36e01b4e08fc7e2fc6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13747464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a1ccda935d4dc0324c3416faa5c50045601083bb1cb95829dc9ac4958f779cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 01:07:39 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 16 May 2019 01:07:43 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 01:10:27 GMT
ENV REDIS_VERSION=4.0.14
# Thu, 16 May 2019 01:10:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Thu, 16 May 2019 01:10:29 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Thu, 16 May 2019 01:11:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 01:11:13 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:11:14 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:11:14 GMT
WORKDIR /data
# Thu, 16 May 2019 01:11:15 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 01:11:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:11:17 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:11:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b3a49ce31ca23e2611efdf316f0a9838b50f5ec8f186a20552aa22ae44906f`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6d8b3a94783c7f17b1cd84b113af2e4bcdf64b9fdbb7db5182af9774c79475`  
		Last Modified: Thu, 16 May 2019 01:12:47 GMT  
		Size: 406.0 KB (406020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5a4a7482f64610a0969980cce98c1e88a8e8a428e0c8e29aa0f55eaf564945`  
		Last Modified: Thu, 16 May 2019 01:13:38 GMT  
		Size: 10.7 MB (10650835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24f5c2cbb73934632b6353c8b8785b341764cbd40fd6b2703605345c3d47a05`  
		Last Modified: Thu, 16 May 2019 01:13:34 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798c22ffde4530afe2256055e7b3718043e7dc302e42595dae9f9106e5dc7979`  
		Last Modified: Thu, 16 May 2019 01:13:34 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:46a567938bbc7286f74bbdc4ff5eebd6014d96039ac8e5b50bf00e0cc2f7d124
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13453201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0317a117c954e02f1bd0050d5e41d1a2d2499fb08c1cf7429510de472952f25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:19:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 14:19:53 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 14:21:08 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 14:21:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 14:21:09 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 14:21:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 14:21:43 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 14:21:44 GMT
VOLUME [/data]
# Sat, 11 May 2019 14:21:44 GMT
WORKDIR /data
# Sat, 11 May 2019 14:21:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 14:21:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 14:21:44 GMT
EXPOSE 6379
# Sat, 11 May 2019 14:21:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc09a60a7057123e651fa66030d2eb409f37acbcb6225df90a961c884bcd6ae`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342305f7d88077eba4d5d9428acb6d7250fdbae9a7cccab0eb143131ebab831`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 409.0 KB (408975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4a5f48256b20c9d12b07ef1d3d078d5c6412770f8e0d313c825c9ab51917da`  
		Last Modified: Sat, 11 May 2019 14:22:18 GMT  
		Size: 10.3 MB (10290372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54170ec7ce08c42ca8bb0c6b57b2b3c1be91aa86a17e4a23974d3bf608b0223b`  
		Last Modified: Sat, 11 May 2019 14:22:16 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8711f794c564d205befab0753efd33261b48d78f60ad390d3129cb429d2f3e`  
		Last Modified: Sat, 11 May 2019 14:22:16 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:b06713cefd793458dbfde782ceb66d9ed1ea741894c32909cc3d67c497163178
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14405014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b02072682cd5529738cb90f80cec8dae0cd7ebb9eaf14e6ddedd86b83afa730f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:58:56 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 09:01:35 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 09:01:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 09:01:40 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 09:02:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 09:02:39 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 09:02:42 GMT
VOLUME [/data]
# Sat, 11 May 2019 09:02:45 GMT
WORKDIR /data
# Sat, 11 May 2019 09:02:46 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 09:02:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:02:53 GMT
EXPOSE 6379
# Sat, 11 May 2019 09:02:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1f873094cdec16153e6440266d174f7a212d084ef10eaee74f2131622f0a65`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a0313c41cb3c045368f5b83e91440077e3c713f4fa98ae890d3aac07fd1338`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 411.2 KB (411203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227c692f6a186d7180264745e46361b41f5c580f8bcdc6448917a4a9eb82796c`  
		Last Modified: Sat, 11 May 2019 09:04:21 GMT  
		Size: 11.2 MB (11210960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b119842ed36ff9f001ee92d3dfd06135c32d0b4298a90d00b812fcb9f3c08315`  
		Last Modified: Sat, 11 May 2019 09:04:17 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8839c08efa8dd1deff89b7f80e270624bf739dc38a3b2aa3d851937d0da70179`  
		Last Modified: Sat, 11 May 2019 09:04:18 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:26c8f1e823891c83f76578da888b31d1a7c6cbe79d31e00407171fd45292e732
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13819670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a2d945446abb9c90947c6e5397fde1053e9dc15d54c504c9e23223bed28e9f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:29:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 13:29:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 13:30:56 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 13:30:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 13:30:57 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 13:31:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 13:31:35 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 13:31:35 GMT
VOLUME [/data]
# Sat, 11 May 2019 13:31:35 GMT
WORKDIR /data
# Sat, 11 May 2019 13:31:36 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 13:31:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 13:31:36 GMT
EXPOSE 6379
# Sat, 11 May 2019 13:31:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2038b2ec161be7e2f3c8ef364d60480ba3ca4bd5dc4869be8908551986c7d6f5`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7082e9e057aef8a7fefd028f8f5f6822021e7319e216b4ab9b0decef6c34a7`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 408.8 KB (408752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103c3629c039870038f312949fa950a8a6543ee18ee6a75f2298dc04934de2ff`  
		Last Modified: Sat, 11 May 2019 13:32:32 GMT  
		Size: 10.9 MB (10865822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8319718da21bb661a2f232380fb6c5957d45fa09f7e4f7faeeb7de8ce0aedd9`  
		Last Modified: Sat, 11 May 2019 13:32:29 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ce2b388e49f49dc0bd933c213d267b0c66b863d53d53ec15c06821b51ab688`  
		Last Modified: Sat, 11 May 2019 13:32:29 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.14-stretch`

```console
$ docker pull redis@sha256:59e759e57175447d049dd3614f31072a98c85d888a97d1232850118f0c8804ca
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

### `redis:4.0.14-stretch` - linux; amd64

```console
$ docker pull redis@sha256:ea8aab7d808fb0cd0adf669a0123c1ab3e4ddc48444c2a513d56f3bc8e8525ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32131555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:720768125f4ff4c2b9847cd152e66314916287a7fb2e06803b6f5f85a493e2be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 04:53:19 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 04:54:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:54:19 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:54:19 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:54:19 GMT
WORKDIR /data
# Wed, 08 May 2019 04:54:20 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:54:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:54:20 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:54:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111aefffd1679f831fe6902f918968098a5f89e013d6d8e086b6579f11c720c`  
		Last Modified: Wed, 08 May 2019 04:56:19 GMT  
		Size: 8.7 MB (8698583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9af921a085ef700155c2e271f20c7779e4262ba3aa440900892a3712d3be3b`  
		Last Modified: Wed, 08 May 2019 04:56:50 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0659698d44ab9b93ecbed73e46728f857908b8f43ccbb315b0ceeffde43e172`  
		Last Modified: Wed, 08 May 2019 04:56:15 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:da319a532a5602ae63669624e24fb206cd15baaf1f843b97e4676de58eedad83
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30512864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf56c058c98904dec08bed171e1398e96e66c93a7042b7dda43d4775323189f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:44:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 09:44:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 09:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 09:46:41 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 09:46:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 09:46:42 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 09:47:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 09:47:26 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 09:47:26 GMT
VOLUME [/data]
# Wed, 08 May 2019 09:47:26 GMT
WORKDIR /data
# Wed, 08 May 2019 09:47:27 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 09:47:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 09:47:28 GMT
EXPOSE 6379
# Wed, 08 May 2019 09:47:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9042d288dd3256571141d375b77cd76ad30099bb2dc13f80e91fbf472e6b1`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2a42a5237467b8424f4e6421ff0a721a0f135a647799991c350c08aca04400`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 931.2 KB (931193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641145c29030d815c9caae78b547e8843fe20238cddf5111bcb219cd59926da1`  
		Last Modified: Wed, 08 May 2019 09:48:10 GMT  
		Size: 8.4 MB (8423527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045214818d24eb0ffdda0bfaf5e036bfe24cd001bb686cad11e8a97f6b542eaf`  
		Last Modified: Wed, 08 May 2019 09:48:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb5af73d89733eb16df465690078d96d2c4e85b6c4f7f27cbdabfe13fd88016`  
		Last Modified: Wed, 08 May 2019 09:48:03 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:b6179bc7d4d89966a69580b120454adbd8d67477f5c457ed9701d22d5cd1ce55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28391523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c1c84e9f05bf207a96a59d04140d9a0056311e8783b17197cf46cce11ea7d5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:54:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:54:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:54:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 14:55:56 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 14:55:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 14:55:57 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 14:56:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:56:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:56:39 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:56:40 GMT
WORKDIR /data
# Wed, 08 May 2019 14:56:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:56:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:56:41 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:56:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04ed9d6e5c55be71a7578af699db21acfa7d9dd81dc0feefea5ab6c7fc9d3`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d7b0643ad1873b502f90a920e652822474851a731a233a0be7dafee3fb1bcc`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 915.8 KB (915827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158a7184abee4d42c88647d8fbdccf88023582aa82f41a8dd48454b00cf54865`  
		Last Modified: Wed, 08 May 2019 14:57:38 GMT  
		Size: 8.2 MB (8197198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ab5edffdda3f04fc0f30e89b8fcd712c32ea3c2a993d17711de954a3457ae7`  
		Last Modified: Wed, 08 May 2019 14:57:34 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d652e8504896bdbc2879c6b6dc8c85cdc336c156641dc6048fda477f18eb67`  
		Last Modified: Wed, 08 May 2019 14:57:34 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:61315cf6798b522216de44c06cfe943fe822e3be7c8b7d179e47e59e279c9772
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29742104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6472a87442b91ea954697c338a90514f890bc9021e6f11e5de1834286daa2761`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Thu, 16 May 2019 01:04:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 16 May 2019 01:04:52 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 01:05:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 01:09:10 GMT
ENV REDIS_VERSION=4.0.14
# Thu, 16 May 2019 01:09:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Thu, 16 May 2019 01:09:11 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Thu, 16 May 2019 01:10:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:10:12 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:10:13 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:10:14 GMT
WORKDIR /data
# Thu, 16 May 2019 01:10:15 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:10:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:10:17 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:10:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b47765258d397f39f0ca0d0b06dbc96995d2b8e7ed2c6961982cbea83cbbf52`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ef2ae43b989ae901049515810f82bcb828d20239bc7bad82eca8de79328be3`  
		Last Modified: Thu, 16 May 2019 01:12:20 GMT  
		Size: 908.0 KB (907958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a832d7641ce23defd95b39f357b1e24dce0b35aad323a518db889dfafada85b`  
		Last Modified: Thu, 16 May 2019 01:13:17 GMT  
		Size: 8.5 MB (8498036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f2b1ec01db985575bb76c8c093954f33bbd3026cb1f23dc92dde7c100852fe`  
		Last Modified: Thu, 16 May 2019 01:13:11 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b186e40cbb7ab3c4ccfb6f4b1b466c335abf599c91f251a60134b2208448d73`  
		Last Modified: Thu, 16 May 2019 01:13:11 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-stretch` - linux; 386

```console
$ docker pull redis@sha256:819ff8bbc031b73ae542f11d51d62ee47481f42dbc690abb9a765d28426b1ab7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32301437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ca01cc2c74b31a3c6b5fa6ef949662220fb48452d9116f470b09ffc6c4a82a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:27:13 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:27:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:27:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 19:28:43 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 19:28:43 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 19:28:43 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 19:29:22 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:29:23 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:29:23 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:29:24 GMT
WORKDIR /data
# Wed, 08 May 2019 19:29:24 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:29:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:29:24 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:29:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33b9d5023cb64a3e2105aa585763e0f894f9c8bad0cd7255f4270ca658cb230`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd525c34aa87726465ac825c4e2672a834143ab46dcc2281b78c8cee8040c6d2`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 920.2 KB (920170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbd8d93394356443793bae51beb338c009bbbba4110c3ebf821b477b82bf771`  
		Last Modified: Wed, 08 May 2019 19:29:54 GMT  
		Size: 8.3 MB (8258173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682714e633d5ed56f61cbe0f3fc5ba49fd12f6d3db2d373b8c122252396cfe12`  
		Last Modified: Wed, 08 May 2019 19:29:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e396ec142417772e1b237fc025aaaeb9d6f1727b44b621594b61c55ad6c56638`  
		Last Modified: Wed, 08 May 2019 19:29:52 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:263172d12b54ba1158a08cc4eef06718bf566409290ca9c1fbf9118f3434f3e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32530590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef1d7c61fb648e981e992db04b43309a146ff612e59e0b481ef3701bee59e00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:53:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 13:53:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 13:57:13 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 14:03:45 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 14:03:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 14:03:54 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 14:07:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:07:56 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:08:00 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:08:05 GMT
WORKDIR /data
# Wed, 08 May 2019 14:08:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:08:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:08:19 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:08:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff669625b2edb1e0931d0870b1809e38cff4dcef53234334cd3cf4de1c49c7ce`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169e96a284a165ec6a0775d6b3aeeb4d6a67a0f098f207acbb7ce857a3fd50d`  
		Last Modified: Wed, 08 May 2019 14:09:37 GMT  
		Size: 910.1 KB (910104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10bf6339fdfc7dbe61cb6b5996c44fef5a62a27f1f05aa3b0c7e80214b42f2e8`  
		Last Modified: Wed, 08 May 2019 14:10:21 GMT  
		Size: 8.9 MB (8873275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ff2115c3aa947e3bbcea1f2f6c26873b6e0c64028662041c60a31e6b69196a`  
		Last Modified: Wed, 08 May 2019 14:10:18 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713c3b4e399c0a54023350f30496102e35b714b6e8d581857c4c62e21ecb96a3`  
		Last Modified: Wed, 08 May 2019 14:10:18 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.14-stretch` - linux; s390x

```console
$ docker pull redis@sha256:e4eb8c9b6bc5ca51df9c02aaff62dd8de80c68c37909ba3ba5fc07a811054dfb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32360224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d445147bc5f0067d9ef4511fe90a99866dc4ecc1486cbbc72d8c168587747181`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:38:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:38:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:39:38 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 14:43:13 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 14:43:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 14:43:15 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 14:45:00 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:45:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:45:06 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:45:07 GMT
WORKDIR /data
# Wed, 08 May 2019 14:45:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:45:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:45:12 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:45:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d667d9ec29251877608296ac4170b4d495aa961dd3297c6f8379f4df1f68aa98`  
		Last Modified: Wed, 08 May 2019 14:46:52 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3467c4b72354e2f6a442998daf9a3501b37844ed98edc512e0cfc147185c4b`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 927.0 KB (926960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba10d6a4697cfe1601dbacc73d5ffc9ea70fb0ae377280dac895ea7fd9f24d4`  
		Last Modified: Wed, 08 May 2019 14:47:30 GMT  
		Size: 9.1 MB (9092122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b546bef5320570cf3a396aa64ed4b17d65ac4d48035a7de860278f267ac4db`  
		Last Modified: Wed, 08 May 2019 14:47:26 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909b2c3c1bfa51687c85af754ad437b39ed8ac01acffb28f24d566d981e812fb`  
		Last Modified: Wed, 08 May 2019 14:47:26 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit`

```console
$ docker pull redis@sha256:b979f58369946c6851f02bde1251df3e78f2cb2e0645d2fa70dec2eec56aa510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:5195ef3bd920b473ddd91ecc076b278f26f296ead9b2878a58c73ae5dc1aee12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36544979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:273be4c4f3e71b2e81be01ea4c98923f50a98cf9ae0375dc6cf38d03f1c5f3fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 04:53:19 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 04:54:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 04:55:21 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:55:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:55:21 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:55:22 GMT
WORKDIR /data
# Wed, 08 May 2019 04:55:22 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:55:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:55:22 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:55:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fa2939448aed1e20d360a00c2db67d3223a801a9bafb6eb0bf04e3128fc850`  
		Last Modified: Wed, 08 May 2019 04:56:59 GMT  
		Size: 4.8 MB (4849440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb7e32d26bea3528dc89d629885f56a1417eb26e702cac0606039a12279ee36`  
		Last Modified: Wed, 08 May 2019 04:57:01 GMT  
		Size: 8.3 MB (8262564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabda37465b40cfc1c14eb080f727726d74c29a547699b1eb04178472c98870a`  
		Last Modified: Wed, 08 May 2019 04:56:58 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5fc7a0dd0dbd2381747c280cef6fd9ea448dba81ed21b4e8087015613d42a3`  
		Last Modified: Wed, 08 May 2019 04:56:58 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit-stretch`

```console
$ docker pull redis@sha256:b979f58369946c6851f02bde1251df3e78f2cb2e0645d2fa70dec2eec56aa510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:5195ef3bd920b473ddd91ecc076b278f26f296ead9b2878a58c73ae5dc1aee12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36544979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:273be4c4f3e71b2e81be01ea4c98923f50a98cf9ae0375dc6cf38d03f1c5f3fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 04:53:19 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 04:54:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 04:55:21 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:55:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:55:21 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:55:22 GMT
WORKDIR /data
# Wed, 08 May 2019 04:55:22 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:55:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:55:22 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:55:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fa2939448aed1e20d360a00c2db67d3223a801a9bafb6eb0bf04e3128fc850`  
		Last Modified: Wed, 08 May 2019 04:56:59 GMT  
		Size: 4.8 MB (4849440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb7e32d26bea3528dc89d629885f56a1417eb26e702cac0606039a12279ee36`  
		Last Modified: Wed, 08 May 2019 04:57:01 GMT  
		Size: 8.3 MB (8262564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabda37465b40cfc1c14eb080f727726d74c29a547699b1eb04178472c98870a`  
		Last Modified: Wed, 08 May 2019 04:56:58 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5fc7a0dd0dbd2381747c280cef6fd9ea448dba81ed21b4e8087015613d42a3`  
		Last Modified: Wed, 08 May 2019 04:56:58 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine`

```console
$ docker pull redis@sha256:c39398ed9823a8e66702e545eb21f17be17e3f6f736ba3329e10f3e7af36b2f2
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
$ docker pull redis@sha256:47c66f7fac64a98b19978c1e89abe12e02e0c2baa13de4def9dc3da8268ab3f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13949085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce91e22cd3f019df7aff4d2f27598a3f1b56c8627c285f24a9380c20fc6da5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:43:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 01:43:52 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 01:46:14 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 01:46:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 01:46:14 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 01:47:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 01:47:18 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 01:47:18 GMT
VOLUME [/data]
# Sat, 11 May 2019 01:47:18 GMT
WORKDIR /data
# Sat, 11 May 2019 01:47:19 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 01:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:47:19 GMT
EXPOSE 6379
# Sat, 11 May 2019 01:47:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8af38234db8796d645ec9541647315cdae2830b8f7c477b618feabbeee672cc`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b5e96879e00e980373ed29b9088020ea3d931c156252c1aae326b86a6775d4`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 403.8 KB (403836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a070e72f489fc7a15cdd5721b05b090735528bff4cf2ce97b1aeda5662b6c2a2`  
		Last Modified: Sat, 11 May 2019 01:48:38 GMT  
		Size: 10.8 MB (10786452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d549ccaa85a31cf8255a12d13fe8fefa2c52ce996be61b29a3b9cf0469363be`  
		Last Modified: Sat, 11 May 2019 01:48:36 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0240cd8e4dd900a6df0a42b9209d036acb3f5643d50e735fd1c7cee4d8749146`  
		Last Modified: Sat, 11 May 2019 01:48:36 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:5ac1d69a49fb8eebd60eb1877bd0fc14a5d0f200bff8c0e512ba6c2af75a5561
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13353589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca50b458011a920eb9a7d5c1ab847a1f8c6dac4933b8844838abc5203110381`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:29:26 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:29:28 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 08:30:27 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 08:30:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 08:30:28 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 08:30:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 08:30:53 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 08:30:53 GMT
VOLUME [/data]
# Sat, 11 May 2019 08:30:54 GMT
WORKDIR /data
# Sat, 11 May 2019 08:30:54 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 08:30:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:30:55 GMT
EXPOSE 6379
# Sat, 11 May 2019 08:30:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3b26f48db5b9f4aef841aedcaf84ca5b2036b4bc8d60ec400562dcc83b0e64`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c63408643782fafd48e9f99babe3c37e4192927a6bb12b7130619e8baffc64f`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 406.2 KB (406229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3199852c3d52c4985b0f2427aeb7378748b39faa6a7ca3ebd01144ef05750b0f`  
		Last Modified: Sat, 11 May 2019 08:31:32 GMT  
		Size: 10.4 MB (10402108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966e3adca7fffef88704c05e06e653fb54c59e6ea7dd92cc2ed59811a858395a`  
		Last Modified: Sat, 11 May 2019 08:31:29 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511c154dd5222c9bde4bfbb03b86bd20601fcf62646d2a8fbd2aad3b48752495`  
		Last Modified: Sat, 11 May 2019 08:31:29 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:1398f91cce4067b7e7a27164665c01f6a5757482b88a9e6a6e1e9f61068cf6f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12997945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5be42e09fedc9fcc9effd0ad707591dc83ae0fd2fc06816f154e7958e2c05224`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:44:03 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:44:05 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 12:45:10 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 12:45:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 12:45:11 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 12:45:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:45:38 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:45:38 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:45:39 GMT
WORKDIR /data
# Sat, 11 May 2019 12:45:39 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:45:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:45:40 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:45:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565eef49c17c1dbf08900c5f718bb6bf370c8fd8266c79aa5ab210dc41a3efd7`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a85d46778feb34d5ec3c1a011b9fddcb2fe7135bbfe170c0bf4fd77ff837a0`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 400.1 KB (400099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2723ec46dcd882fe08d8f794c879792fec85b142a6c298822603d63aac20a3b`  
		Last Modified: Sat, 11 May 2019 12:46:33 GMT  
		Size: 10.2 MB (10245355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f3dcff2fa5480dd4dc523563b8468a42260804383b10afb4774ebb29e7312e`  
		Last Modified: Sat, 11 May 2019 12:46:28 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeec4ec6fe69223fefff45d31ee70945d3eaf76e92955d23738fc33fd6856164`  
		Last Modified: Sat, 11 May 2019 12:46:28 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:06c1f7fd794868c6430e9f57347989b15a3a149cd2498e36e01b4e08fc7e2fc6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13747464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a1ccda935d4dc0324c3416faa5c50045601083bb1cb95829dc9ac4958f779cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 01:07:39 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 16 May 2019 01:07:43 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 01:10:27 GMT
ENV REDIS_VERSION=4.0.14
# Thu, 16 May 2019 01:10:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Thu, 16 May 2019 01:10:29 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Thu, 16 May 2019 01:11:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 01:11:13 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:11:14 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:11:14 GMT
WORKDIR /data
# Thu, 16 May 2019 01:11:15 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 01:11:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:11:17 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:11:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b3a49ce31ca23e2611efdf316f0a9838b50f5ec8f186a20552aa22ae44906f`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6d8b3a94783c7f17b1cd84b113af2e4bcdf64b9fdbb7db5182af9774c79475`  
		Last Modified: Thu, 16 May 2019 01:12:47 GMT  
		Size: 406.0 KB (406020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5a4a7482f64610a0969980cce98c1e88a8e8a428e0c8e29aa0f55eaf564945`  
		Last Modified: Thu, 16 May 2019 01:13:38 GMT  
		Size: 10.7 MB (10650835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24f5c2cbb73934632b6353c8b8785b341764cbd40fd6b2703605345c3d47a05`  
		Last Modified: Thu, 16 May 2019 01:13:34 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798c22ffde4530afe2256055e7b3718043e7dc302e42595dae9f9106e5dc7979`  
		Last Modified: Thu, 16 May 2019 01:13:34 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; 386

```console
$ docker pull redis@sha256:46a567938bbc7286f74bbdc4ff5eebd6014d96039ac8e5b50bf00e0cc2f7d124
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13453201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0317a117c954e02f1bd0050d5e41d1a2d2499fb08c1cf7429510de472952f25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:19:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 14:19:53 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 14:21:08 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 14:21:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 14:21:09 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 14:21:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 14:21:43 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 14:21:44 GMT
VOLUME [/data]
# Sat, 11 May 2019 14:21:44 GMT
WORKDIR /data
# Sat, 11 May 2019 14:21:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 14:21:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 14:21:44 GMT
EXPOSE 6379
# Sat, 11 May 2019 14:21:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc09a60a7057123e651fa66030d2eb409f37acbcb6225df90a961c884bcd6ae`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342305f7d88077eba4d5d9428acb6d7250fdbae9a7cccab0eb143131ebab831`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 409.0 KB (408975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4a5f48256b20c9d12b07ef1d3d078d5c6412770f8e0d313c825c9ab51917da`  
		Last Modified: Sat, 11 May 2019 14:22:18 GMT  
		Size: 10.3 MB (10290372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54170ec7ce08c42ca8bb0c6b57b2b3c1be91aa86a17e4a23974d3bf608b0223b`  
		Last Modified: Sat, 11 May 2019 14:22:16 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8711f794c564d205befab0753efd33261b48d78f60ad390d3129cb429d2f3e`  
		Last Modified: Sat, 11 May 2019 14:22:16 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:b06713cefd793458dbfde782ceb66d9ed1ea741894c32909cc3d67c497163178
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14405014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b02072682cd5529738cb90f80cec8dae0cd7ebb9eaf14e6ddedd86b83afa730f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:58:56 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 09:01:35 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 09:01:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 09:01:40 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 09:02:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 09:02:39 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 09:02:42 GMT
VOLUME [/data]
# Sat, 11 May 2019 09:02:45 GMT
WORKDIR /data
# Sat, 11 May 2019 09:02:46 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 09:02:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:02:53 GMT
EXPOSE 6379
# Sat, 11 May 2019 09:02:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1f873094cdec16153e6440266d174f7a212d084ef10eaee74f2131622f0a65`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a0313c41cb3c045368f5b83e91440077e3c713f4fa98ae890d3aac07fd1338`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 411.2 KB (411203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227c692f6a186d7180264745e46361b41f5c580f8bcdc6448917a4a9eb82796c`  
		Last Modified: Sat, 11 May 2019 09:04:21 GMT  
		Size: 11.2 MB (11210960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b119842ed36ff9f001ee92d3dfd06135c32d0b4298a90d00b812fcb9f3c08315`  
		Last Modified: Sat, 11 May 2019 09:04:17 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8839c08efa8dd1deff89b7f80e270624bf739dc38a3b2aa3d851937d0da70179`  
		Last Modified: Sat, 11 May 2019 09:04:18 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; s390x

```console
$ docker pull redis@sha256:26c8f1e823891c83f76578da888b31d1a7c6cbe79d31e00407171fd45292e732
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13819670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a2d945446abb9c90947c6e5397fde1053e9dc15d54c504c9e23223bed28e9f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:29:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 13:29:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 13:30:56 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 13:30:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 13:30:57 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 13:31:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 13:31:35 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 13:31:35 GMT
VOLUME [/data]
# Sat, 11 May 2019 13:31:35 GMT
WORKDIR /data
# Sat, 11 May 2019 13:31:36 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 13:31:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 13:31:36 GMT
EXPOSE 6379
# Sat, 11 May 2019 13:31:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2038b2ec161be7e2f3c8ef364d60480ba3ca4bd5dc4869be8908551986c7d6f5`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7082e9e057aef8a7fefd028f8f5f6822021e7319e216b4ab9b0decef6c34a7`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 408.8 KB (408752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103c3629c039870038f312949fa950a8a6543ee18ee6a75f2298dc04934de2ff`  
		Last Modified: Sat, 11 May 2019 13:32:32 GMT  
		Size: 10.9 MB (10865822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8319718da21bb661a2f232380fb6c5957d45fa09f7e4f7faeeb7de8ce0aedd9`  
		Last Modified: Sat, 11 May 2019 13:32:29 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ce2b388e49f49dc0bd933c213d267b0c66b863d53d53ec15c06821b51ab688`  
		Last Modified: Sat, 11 May 2019 13:32:29 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine3.9`

```console
$ docker pull redis@sha256:c39398ed9823a8e66702e545eb21f17be17e3f6f736ba3329e10f3e7af36b2f2
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
$ docker pull redis@sha256:47c66f7fac64a98b19978c1e89abe12e02e0c2baa13de4def9dc3da8268ab3f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13949085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce91e22cd3f019df7aff4d2f27598a3f1b56c8627c285f24a9380c20fc6da5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:43:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 01:43:52 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 01:46:14 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 01:46:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 01:46:14 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 01:47:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 01:47:18 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 01:47:18 GMT
VOLUME [/data]
# Sat, 11 May 2019 01:47:18 GMT
WORKDIR /data
# Sat, 11 May 2019 01:47:19 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 01:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:47:19 GMT
EXPOSE 6379
# Sat, 11 May 2019 01:47:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8af38234db8796d645ec9541647315cdae2830b8f7c477b618feabbeee672cc`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b5e96879e00e980373ed29b9088020ea3d931c156252c1aae326b86a6775d4`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 403.8 KB (403836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a070e72f489fc7a15cdd5721b05b090735528bff4cf2ce97b1aeda5662b6c2a2`  
		Last Modified: Sat, 11 May 2019 01:48:38 GMT  
		Size: 10.8 MB (10786452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d549ccaa85a31cf8255a12d13fe8fefa2c52ce996be61b29a3b9cf0469363be`  
		Last Modified: Sat, 11 May 2019 01:48:36 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0240cd8e4dd900a6df0a42b9209d036acb3f5643d50e735fd1c7cee4d8749146`  
		Last Modified: Sat, 11 May 2019 01:48:36 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:5ac1d69a49fb8eebd60eb1877bd0fc14a5d0f200bff8c0e512ba6c2af75a5561
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13353589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca50b458011a920eb9a7d5c1ab847a1f8c6dac4933b8844838abc5203110381`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:29:26 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:29:28 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 08:30:27 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 08:30:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 08:30:28 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 08:30:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 08:30:53 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 08:30:53 GMT
VOLUME [/data]
# Sat, 11 May 2019 08:30:54 GMT
WORKDIR /data
# Sat, 11 May 2019 08:30:54 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 08:30:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:30:55 GMT
EXPOSE 6379
# Sat, 11 May 2019 08:30:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3b26f48db5b9f4aef841aedcaf84ca5b2036b4bc8d60ec400562dcc83b0e64`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c63408643782fafd48e9f99babe3c37e4192927a6bb12b7130619e8baffc64f`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 406.2 KB (406229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3199852c3d52c4985b0f2427aeb7378748b39faa6a7ca3ebd01144ef05750b0f`  
		Last Modified: Sat, 11 May 2019 08:31:32 GMT  
		Size: 10.4 MB (10402108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966e3adca7fffef88704c05e06e653fb54c59e6ea7dd92cc2ed59811a858395a`  
		Last Modified: Sat, 11 May 2019 08:31:29 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511c154dd5222c9bde4bfbb03b86bd20601fcf62646d2a8fbd2aad3b48752495`  
		Last Modified: Sat, 11 May 2019 08:31:29 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:1398f91cce4067b7e7a27164665c01f6a5757482b88a9e6a6e1e9f61068cf6f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12997945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5be42e09fedc9fcc9effd0ad707591dc83ae0fd2fc06816f154e7958e2c05224`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:44:03 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:44:05 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 12:45:10 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 12:45:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 12:45:11 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 12:45:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:45:38 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:45:38 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:45:39 GMT
WORKDIR /data
# Sat, 11 May 2019 12:45:39 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:45:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:45:40 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:45:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565eef49c17c1dbf08900c5f718bb6bf370c8fd8266c79aa5ab210dc41a3efd7`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a85d46778feb34d5ec3c1a011b9fddcb2fe7135bbfe170c0bf4fd77ff837a0`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 400.1 KB (400099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2723ec46dcd882fe08d8f794c879792fec85b142a6c298822603d63aac20a3b`  
		Last Modified: Sat, 11 May 2019 12:46:33 GMT  
		Size: 10.2 MB (10245355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f3dcff2fa5480dd4dc523563b8468a42260804383b10afb4774ebb29e7312e`  
		Last Modified: Sat, 11 May 2019 12:46:28 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeec4ec6fe69223fefff45d31ee70945d3eaf76e92955d23738fc33fd6856164`  
		Last Modified: Sat, 11 May 2019 12:46:28 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:06c1f7fd794868c6430e9f57347989b15a3a149cd2498e36e01b4e08fc7e2fc6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13747464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a1ccda935d4dc0324c3416faa5c50045601083bb1cb95829dc9ac4958f779cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 01:07:39 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 16 May 2019 01:07:43 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 01:10:27 GMT
ENV REDIS_VERSION=4.0.14
# Thu, 16 May 2019 01:10:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Thu, 16 May 2019 01:10:29 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Thu, 16 May 2019 01:11:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 01:11:13 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:11:14 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:11:14 GMT
WORKDIR /data
# Thu, 16 May 2019 01:11:15 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 01:11:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:11:17 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:11:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b3a49ce31ca23e2611efdf316f0a9838b50f5ec8f186a20552aa22ae44906f`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6d8b3a94783c7f17b1cd84b113af2e4bcdf64b9fdbb7db5182af9774c79475`  
		Last Modified: Thu, 16 May 2019 01:12:47 GMT  
		Size: 406.0 KB (406020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5a4a7482f64610a0969980cce98c1e88a8e8a428e0c8e29aa0f55eaf564945`  
		Last Modified: Thu, 16 May 2019 01:13:38 GMT  
		Size: 10.7 MB (10650835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24f5c2cbb73934632b6353c8b8785b341764cbd40fd6b2703605345c3d47a05`  
		Last Modified: Thu, 16 May 2019 01:13:34 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798c22ffde4530afe2256055e7b3718043e7dc302e42595dae9f9106e5dc7979`  
		Last Modified: Thu, 16 May 2019 01:13:34 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:46a567938bbc7286f74bbdc4ff5eebd6014d96039ac8e5b50bf00e0cc2f7d124
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13453201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0317a117c954e02f1bd0050d5e41d1a2d2499fb08c1cf7429510de472952f25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:19:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 14:19:53 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 14:21:08 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 14:21:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 14:21:09 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 14:21:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 14:21:43 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 14:21:44 GMT
VOLUME [/data]
# Sat, 11 May 2019 14:21:44 GMT
WORKDIR /data
# Sat, 11 May 2019 14:21:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 14:21:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 14:21:44 GMT
EXPOSE 6379
# Sat, 11 May 2019 14:21:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc09a60a7057123e651fa66030d2eb409f37acbcb6225df90a961c884bcd6ae`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342305f7d88077eba4d5d9428acb6d7250fdbae9a7cccab0eb143131ebab831`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 409.0 KB (408975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4a5f48256b20c9d12b07ef1d3d078d5c6412770f8e0d313c825c9ab51917da`  
		Last Modified: Sat, 11 May 2019 14:22:18 GMT  
		Size: 10.3 MB (10290372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54170ec7ce08c42ca8bb0c6b57b2b3c1be91aa86a17e4a23974d3bf608b0223b`  
		Last Modified: Sat, 11 May 2019 14:22:16 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8711f794c564d205befab0753efd33261b48d78f60ad390d3129cb429d2f3e`  
		Last Modified: Sat, 11 May 2019 14:22:16 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:b06713cefd793458dbfde782ceb66d9ed1ea741894c32909cc3d67c497163178
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14405014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b02072682cd5529738cb90f80cec8dae0cd7ebb9eaf14e6ddedd86b83afa730f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:58:56 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 09:01:35 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 09:01:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 09:01:40 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 09:02:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 09:02:39 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 09:02:42 GMT
VOLUME [/data]
# Sat, 11 May 2019 09:02:45 GMT
WORKDIR /data
# Sat, 11 May 2019 09:02:46 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 09:02:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:02:53 GMT
EXPOSE 6379
# Sat, 11 May 2019 09:02:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1f873094cdec16153e6440266d174f7a212d084ef10eaee74f2131622f0a65`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a0313c41cb3c045368f5b83e91440077e3c713f4fa98ae890d3aac07fd1338`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 411.2 KB (411203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227c692f6a186d7180264745e46361b41f5c580f8bcdc6448917a4a9eb82796c`  
		Last Modified: Sat, 11 May 2019 09:04:21 GMT  
		Size: 11.2 MB (11210960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b119842ed36ff9f001ee92d3dfd06135c32d0b4298a90d00b812fcb9f3c08315`  
		Last Modified: Sat, 11 May 2019 09:04:17 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8839c08efa8dd1deff89b7f80e270624bf739dc38a3b2aa3d851937d0da70179`  
		Last Modified: Sat, 11 May 2019 09:04:18 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:26c8f1e823891c83f76578da888b31d1a7c6cbe79d31e00407171fd45292e732
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13819670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a2d945446abb9c90947c6e5397fde1053e9dc15d54c504c9e23223bed28e9f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:29:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 13:29:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 13:30:56 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 13:30:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 13:30:57 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 13:31:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 13:31:35 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 13:31:35 GMT
VOLUME [/data]
# Sat, 11 May 2019 13:31:35 GMT
WORKDIR /data
# Sat, 11 May 2019 13:31:36 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 13:31:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 13:31:36 GMT
EXPOSE 6379
# Sat, 11 May 2019 13:31:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2038b2ec161be7e2f3c8ef364d60480ba3ca4bd5dc4869be8908551986c7d6f5`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7082e9e057aef8a7fefd028f8f5f6822021e7319e216b4ab9b0decef6c34a7`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 408.8 KB (408752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103c3629c039870038f312949fa950a8a6543ee18ee6a75f2298dc04934de2ff`  
		Last Modified: Sat, 11 May 2019 13:32:32 GMT  
		Size: 10.9 MB (10865822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8319718da21bb661a2f232380fb6c5957d45fa09f7e4f7faeeb7de8ce0aedd9`  
		Last Modified: Sat, 11 May 2019 13:32:29 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ce2b388e49f49dc0bd933c213d267b0c66b863d53d53ec15c06821b51ab688`  
		Last Modified: Sat, 11 May 2019 13:32:29 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-stretch`

```console
$ docker pull redis@sha256:59e759e57175447d049dd3614f31072a98c85d888a97d1232850118f0c8804ca
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
$ docker pull redis@sha256:ea8aab7d808fb0cd0adf669a0123c1ab3e4ddc48444c2a513d56f3bc8e8525ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32131555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:720768125f4ff4c2b9847cd152e66314916287a7fb2e06803b6f5f85a493e2be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 04:53:19 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 04:54:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:54:19 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:54:19 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:54:19 GMT
WORKDIR /data
# Wed, 08 May 2019 04:54:20 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:54:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:54:20 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:54:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111aefffd1679f831fe6902f918968098a5f89e013d6d8e086b6579f11c720c`  
		Last Modified: Wed, 08 May 2019 04:56:19 GMT  
		Size: 8.7 MB (8698583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9af921a085ef700155c2e271f20c7779e4262ba3aa440900892a3712d3be3b`  
		Last Modified: Wed, 08 May 2019 04:56:50 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0659698d44ab9b93ecbed73e46728f857908b8f43ccbb315b0ceeffde43e172`  
		Last Modified: Wed, 08 May 2019 04:56:15 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:da319a532a5602ae63669624e24fb206cd15baaf1f843b97e4676de58eedad83
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30512864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf56c058c98904dec08bed171e1398e96e66c93a7042b7dda43d4775323189f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:44:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 09:44:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 09:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 09:46:41 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 09:46:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 09:46:42 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 09:47:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 09:47:26 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 09:47:26 GMT
VOLUME [/data]
# Wed, 08 May 2019 09:47:26 GMT
WORKDIR /data
# Wed, 08 May 2019 09:47:27 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 09:47:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 09:47:28 GMT
EXPOSE 6379
# Wed, 08 May 2019 09:47:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9042d288dd3256571141d375b77cd76ad30099bb2dc13f80e91fbf472e6b1`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2a42a5237467b8424f4e6421ff0a721a0f135a647799991c350c08aca04400`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 931.2 KB (931193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641145c29030d815c9caae78b547e8843fe20238cddf5111bcb219cd59926da1`  
		Last Modified: Wed, 08 May 2019 09:48:10 GMT  
		Size: 8.4 MB (8423527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045214818d24eb0ffdda0bfaf5e036bfe24cd001bb686cad11e8a97f6b542eaf`  
		Last Modified: Wed, 08 May 2019 09:48:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb5af73d89733eb16df465690078d96d2c4e85b6c4f7f27cbdabfe13fd88016`  
		Last Modified: Wed, 08 May 2019 09:48:03 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:b6179bc7d4d89966a69580b120454adbd8d67477f5c457ed9701d22d5cd1ce55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28391523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c1c84e9f05bf207a96a59d04140d9a0056311e8783b17197cf46cce11ea7d5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:54:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:54:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:54:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 14:55:56 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 14:55:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 14:55:57 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 14:56:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:56:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:56:39 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:56:40 GMT
WORKDIR /data
# Wed, 08 May 2019 14:56:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:56:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:56:41 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:56:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04ed9d6e5c55be71a7578af699db21acfa7d9dd81dc0feefea5ab6c7fc9d3`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d7b0643ad1873b502f90a920e652822474851a731a233a0be7dafee3fb1bcc`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 915.8 KB (915827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158a7184abee4d42c88647d8fbdccf88023582aa82f41a8dd48454b00cf54865`  
		Last Modified: Wed, 08 May 2019 14:57:38 GMT  
		Size: 8.2 MB (8197198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ab5edffdda3f04fc0f30e89b8fcd712c32ea3c2a993d17711de954a3457ae7`  
		Last Modified: Wed, 08 May 2019 14:57:34 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d652e8504896bdbc2879c6b6dc8c85cdc336c156641dc6048fda477f18eb67`  
		Last Modified: Wed, 08 May 2019 14:57:34 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:61315cf6798b522216de44c06cfe943fe822e3be7c8b7d179e47e59e279c9772
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29742104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6472a87442b91ea954697c338a90514f890bc9021e6f11e5de1834286daa2761`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Thu, 16 May 2019 01:04:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 16 May 2019 01:04:52 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 01:05:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 01:09:10 GMT
ENV REDIS_VERSION=4.0.14
# Thu, 16 May 2019 01:09:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Thu, 16 May 2019 01:09:11 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Thu, 16 May 2019 01:10:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:10:12 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:10:13 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:10:14 GMT
WORKDIR /data
# Thu, 16 May 2019 01:10:15 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:10:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:10:17 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:10:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b47765258d397f39f0ca0d0b06dbc96995d2b8e7ed2c6961982cbea83cbbf52`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ef2ae43b989ae901049515810f82bcb828d20239bc7bad82eca8de79328be3`  
		Last Modified: Thu, 16 May 2019 01:12:20 GMT  
		Size: 908.0 KB (907958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a832d7641ce23defd95b39f357b1e24dce0b35aad323a518db889dfafada85b`  
		Last Modified: Thu, 16 May 2019 01:13:17 GMT  
		Size: 8.5 MB (8498036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f2b1ec01db985575bb76c8c093954f33bbd3026cb1f23dc92dde7c100852fe`  
		Last Modified: Thu, 16 May 2019 01:13:11 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b186e40cbb7ab3c4ccfb6f4b1b466c335abf599c91f251a60134b2208448d73`  
		Last Modified: Thu, 16 May 2019 01:13:11 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; 386

```console
$ docker pull redis@sha256:819ff8bbc031b73ae542f11d51d62ee47481f42dbc690abb9a765d28426b1ab7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32301437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ca01cc2c74b31a3c6b5fa6ef949662220fb48452d9116f470b09ffc6c4a82a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:27:13 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:27:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:27:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 19:28:43 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 19:28:43 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 19:28:43 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 19:29:22 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:29:23 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:29:23 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:29:24 GMT
WORKDIR /data
# Wed, 08 May 2019 19:29:24 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:29:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:29:24 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:29:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33b9d5023cb64a3e2105aa585763e0f894f9c8bad0cd7255f4270ca658cb230`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd525c34aa87726465ac825c4e2672a834143ab46dcc2281b78c8cee8040c6d2`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 920.2 KB (920170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbd8d93394356443793bae51beb338c009bbbba4110c3ebf821b477b82bf771`  
		Last Modified: Wed, 08 May 2019 19:29:54 GMT  
		Size: 8.3 MB (8258173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682714e633d5ed56f61cbe0f3fc5ba49fd12f6d3db2d373b8c122252396cfe12`  
		Last Modified: Wed, 08 May 2019 19:29:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e396ec142417772e1b237fc025aaaeb9d6f1727b44b621594b61c55ad6c56638`  
		Last Modified: Wed, 08 May 2019 19:29:52 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:263172d12b54ba1158a08cc4eef06718bf566409290ca9c1fbf9118f3434f3e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32530590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef1d7c61fb648e981e992db04b43309a146ff612e59e0b481ef3701bee59e00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:53:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 13:53:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 13:57:13 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 14:03:45 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 14:03:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 14:03:54 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 14:07:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:07:56 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:08:00 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:08:05 GMT
WORKDIR /data
# Wed, 08 May 2019 14:08:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:08:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:08:19 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:08:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff669625b2edb1e0931d0870b1809e38cff4dcef53234334cd3cf4de1c49c7ce`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169e96a284a165ec6a0775d6b3aeeb4d6a67a0f098f207acbb7ce857a3fd50d`  
		Last Modified: Wed, 08 May 2019 14:09:37 GMT  
		Size: 910.1 KB (910104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10bf6339fdfc7dbe61cb6b5996c44fef5a62a27f1f05aa3b0c7e80214b42f2e8`  
		Last Modified: Wed, 08 May 2019 14:10:21 GMT  
		Size: 8.9 MB (8873275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ff2115c3aa947e3bbcea1f2f6c26873b6e0c64028662041c60a31e6b69196a`  
		Last Modified: Wed, 08 May 2019 14:10:18 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713c3b4e399c0a54023350f30496102e35b714b6e8d581857c4c62e21ecb96a3`  
		Last Modified: Wed, 08 May 2019 14:10:18 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; s390x

```console
$ docker pull redis@sha256:e4eb8c9b6bc5ca51df9c02aaff62dd8de80c68c37909ba3ba5fc07a811054dfb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32360224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d445147bc5f0067d9ef4511fe90a99866dc4ecc1486cbbc72d8c168587747181`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:38:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:38:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:39:38 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 14:43:13 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 14:43:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 14:43:15 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 14:45:00 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:45:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:45:06 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:45:07 GMT
WORKDIR /data
# Wed, 08 May 2019 14:45:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:45:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:45:12 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:45:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d667d9ec29251877608296ac4170b4d495aa961dd3297c6f8379f4df1f68aa98`  
		Last Modified: Wed, 08 May 2019 14:46:52 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3467c4b72354e2f6a442998daf9a3501b37844ed98edc512e0cfc147185c4b`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 927.0 KB (926960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba10d6a4697cfe1601dbacc73d5ffc9ea70fb0ae377280dac895ea7fd9f24d4`  
		Last Modified: Wed, 08 May 2019 14:47:30 GMT  
		Size: 9.1 MB (9092122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b546bef5320570cf3a396aa64ed4b17d65ac4d48035a7de860278f267ac4db`  
		Last Modified: Wed, 08 May 2019 14:47:26 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909b2c3c1bfa51687c85af754ad437b39ed8ac01acffb28f24d566d981e812fb`  
		Last Modified: Wed, 08 May 2019 14:47:26 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit`

```console
$ docker pull redis@sha256:b979f58369946c6851f02bde1251df3e78f2cb2e0645d2fa70dec2eec56aa510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:5195ef3bd920b473ddd91ecc076b278f26f296ead9b2878a58c73ae5dc1aee12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36544979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:273be4c4f3e71b2e81be01ea4c98923f50a98cf9ae0375dc6cf38d03f1c5f3fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 04:53:19 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 04:54:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 04:55:21 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:55:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:55:21 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:55:22 GMT
WORKDIR /data
# Wed, 08 May 2019 04:55:22 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:55:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:55:22 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:55:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fa2939448aed1e20d360a00c2db67d3223a801a9bafb6eb0bf04e3128fc850`  
		Last Modified: Wed, 08 May 2019 04:56:59 GMT  
		Size: 4.8 MB (4849440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb7e32d26bea3528dc89d629885f56a1417eb26e702cac0606039a12279ee36`  
		Last Modified: Wed, 08 May 2019 04:57:01 GMT  
		Size: 8.3 MB (8262564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabda37465b40cfc1c14eb080f727726d74c29a547699b1eb04178472c98870a`  
		Last Modified: Wed, 08 May 2019 04:56:58 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5fc7a0dd0dbd2381747c280cef6fd9ea448dba81ed21b4e8087015613d42a3`  
		Last Modified: Wed, 08 May 2019 04:56:58 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit-stretch`

```console
$ docker pull redis@sha256:b979f58369946c6851f02bde1251df3e78f2cb2e0645d2fa70dec2eec56aa510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:5195ef3bd920b473ddd91ecc076b278f26f296ead9b2878a58c73ae5dc1aee12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36544979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:273be4c4f3e71b2e81be01ea4c98923f50a98cf9ae0375dc6cf38d03f1c5f3fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 04:53:19 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 04:54:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 04:55:21 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:55:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:55:21 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:55:22 GMT
WORKDIR /data
# Wed, 08 May 2019 04:55:22 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:55:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:55:22 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:55:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fa2939448aed1e20d360a00c2db67d3223a801a9bafb6eb0bf04e3128fc850`  
		Last Modified: Wed, 08 May 2019 04:56:59 GMT  
		Size: 4.8 MB (4849440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb7e32d26bea3528dc89d629885f56a1417eb26e702cac0606039a12279ee36`  
		Last Modified: Wed, 08 May 2019 04:57:01 GMT  
		Size: 8.3 MB (8262564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabda37465b40cfc1c14eb080f727726d74c29a547699b1eb04178472c98870a`  
		Last Modified: Wed, 08 May 2019 04:56:58 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5fc7a0dd0dbd2381747c280cef6fd9ea448dba81ed21b4e8087015613d42a3`  
		Last Modified: Wed, 08 May 2019 04:56:58 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine`

```console
$ docker pull redis@sha256:c39398ed9823a8e66702e545eb21f17be17e3f6f736ba3329e10f3e7af36b2f2
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
$ docker pull redis@sha256:47c66f7fac64a98b19978c1e89abe12e02e0c2baa13de4def9dc3da8268ab3f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13949085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce91e22cd3f019df7aff4d2f27598a3f1b56c8627c285f24a9380c20fc6da5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:43:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 01:43:52 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 01:46:14 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 01:46:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 01:46:14 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 01:47:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 01:47:18 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 01:47:18 GMT
VOLUME [/data]
# Sat, 11 May 2019 01:47:18 GMT
WORKDIR /data
# Sat, 11 May 2019 01:47:19 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 01:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:47:19 GMT
EXPOSE 6379
# Sat, 11 May 2019 01:47:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8af38234db8796d645ec9541647315cdae2830b8f7c477b618feabbeee672cc`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b5e96879e00e980373ed29b9088020ea3d931c156252c1aae326b86a6775d4`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 403.8 KB (403836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a070e72f489fc7a15cdd5721b05b090735528bff4cf2ce97b1aeda5662b6c2a2`  
		Last Modified: Sat, 11 May 2019 01:48:38 GMT  
		Size: 10.8 MB (10786452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d549ccaa85a31cf8255a12d13fe8fefa2c52ce996be61b29a3b9cf0469363be`  
		Last Modified: Sat, 11 May 2019 01:48:36 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0240cd8e4dd900a6df0a42b9209d036acb3f5643d50e735fd1c7cee4d8749146`  
		Last Modified: Sat, 11 May 2019 01:48:36 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:5ac1d69a49fb8eebd60eb1877bd0fc14a5d0f200bff8c0e512ba6c2af75a5561
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13353589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca50b458011a920eb9a7d5c1ab847a1f8c6dac4933b8844838abc5203110381`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:29:26 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:29:28 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 08:30:27 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 08:30:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 08:30:28 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 08:30:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 08:30:53 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 08:30:53 GMT
VOLUME [/data]
# Sat, 11 May 2019 08:30:54 GMT
WORKDIR /data
# Sat, 11 May 2019 08:30:54 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 08:30:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:30:55 GMT
EXPOSE 6379
# Sat, 11 May 2019 08:30:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3b26f48db5b9f4aef841aedcaf84ca5b2036b4bc8d60ec400562dcc83b0e64`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c63408643782fafd48e9f99babe3c37e4192927a6bb12b7130619e8baffc64f`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 406.2 KB (406229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3199852c3d52c4985b0f2427aeb7378748b39faa6a7ca3ebd01144ef05750b0f`  
		Last Modified: Sat, 11 May 2019 08:31:32 GMT  
		Size: 10.4 MB (10402108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966e3adca7fffef88704c05e06e653fb54c59e6ea7dd92cc2ed59811a858395a`  
		Last Modified: Sat, 11 May 2019 08:31:29 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511c154dd5222c9bde4bfbb03b86bd20601fcf62646d2a8fbd2aad3b48752495`  
		Last Modified: Sat, 11 May 2019 08:31:29 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:1398f91cce4067b7e7a27164665c01f6a5757482b88a9e6a6e1e9f61068cf6f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12997945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5be42e09fedc9fcc9effd0ad707591dc83ae0fd2fc06816f154e7958e2c05224`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:44:03 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:44:05 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 12:45:10 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 12:45:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 12:45:11 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 12:45:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:45:38 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:45:38 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:45:39 GMT
WORKDIR /data
# Sat, 11 May 2019 12:45:39 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:45:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:45:40 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:45:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565eef49c17c1dbf08900c5f718bb6bf370c8fd8266c79aa5ab210dc41a3efd7`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a85d46778feb34d5ec3c1a011b9fddcb2fe7135bbfe170c0bf4fd77ff837a0`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 400.1 KB (400099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2723ec46dcd882fe08d8f794c879792fec85b142a6c298822603d63aac20a3b`  
		Last Modified: Sat, 11 May 2019 12:46:33 GMT  
		Size: 10.2 MB (10245355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f3dcff2fa5480dd4dc523563b8468a42260804383b10afb4774ebb29e7312e`  
		Last Modified: Sat, 11 May 2019 12:46:28 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeec4ec6fe69223fefff45d31ee70945d3eaf76e92955d23738fc33fd6856164`  
		Last Modified: Sat, 11 May 2019 12:46:28 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:06c1f7fd794868c6430e9f57347989b15a3a149cd2498e36e01b4e08fc7e2fc6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13747464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a1ccda935d4dc0324c3416faa5c50045601083bb1cb95829dc9ac4958f779cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 01:07:39 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 16 May 2019 01:07:43 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 01:10:27 GMT
ENV REDIS_VERSION=4.0.14
# Thu, 16 May 2019 01:10:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Thu, 16 May 2019 01:10:29 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Thu, 16 May 2019 01:11:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 01:11:13 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:11:14 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:11:14 GMT
WORKDIR /data
# Thu, 16 May 2019 01:11:15 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 01:11:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:11:17 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:11:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b3a49ce31ca23e2611efdf316f0a9838b50f5ec8f186a20552aa22ae44906f`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6d8b3a94783c7f17b1cd84b113af2e4bcdf64b9fdbb7db5182af9774c79475`  
		Last Modified: Thu, 16 May 2019 01:12:47 GMT  
		Size: 406.0 KB (406020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5a4a7482f64610a0969980cce98c1e88a8e8a428e0c8e29aa0f55eaf564945`  
		Last Modified: Thu, 16 May 2019 01:13:38 GMT  
		Size: 10.7 MB (10650835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24f5c2cbb73934632b6353c8b8785b341764cbd40fd6b2703605345c3d47a05`  
		Last Modified: Thu, 16 May 2019 01:13:34 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798c22ffde4530afe2256055e7b3718043e7dc302e42595dae9f9106e5dc7979`  
		Last Modified: Thu, 16 May 2019 01:13:34 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; 386

```console
$ docker pull redis@sha256:46a567938bbc7286f74bbdc4ff5eebd6014d96039ac8e5b50bf00e0cc2f7d124
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13453201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0317a117c954e02f1bd0050d5e41d1a2d2499fb08c1cf7429510de472952f25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:19:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 14:19:53 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 14:21:08 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 14:21:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 14:21:09 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 14:21:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 14:21:43 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 14:21:44 GMT
VOLUME [/data]
# Sat, 11 May 2019 14:21:44 GMT
WORKDIR /data
# Sat, 11 May 2019 14:21:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 14:21:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 14:21:44 GMT
EXPOSE 6379
# Sat, 11 May 2019 14:21:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc09a60a7057123e651fa66030d2eb409f37acbcb6225df90a961c884bcd6ae`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342305f7d88077eba4d5d9428acb6d7250fdbae9a7cccab0eb143131ebab831`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 409.0 KB (408975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4a5f48256b20c9d12b07ef1d3d078d5c6412770f8e0d313c825c9ab51917da`  
		Last Modified: Sat, 11 May 2019 14:22:18 GMT  
		Size: 10.3 MB (10290372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54170ec7ce08c42ca8bb0c6b57b2b3c1be91aa86a17e4a23974d3bf608b0223b`  
		Last Modified: Sat, 11 May 2019 14:22:16 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8711f794c564d205befab0753efd33261b48d78f60ad390d3129cb429d2f3e`  
		Last Modified: Sat, 11 May 2019 14:22:16 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:b06713cefd793458dbfde782ceb66d9ed1ea741894c32909cc3d67c497163178
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14405014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b02072682cd5529738cb90f80cec8dae0cd7ebb9eaf14e6ddedd86b83afa730f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:58:56 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 09:01:35 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 09:01:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 09:01:40 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 09:02:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 09:02:39 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 09:02:42 GMT
VOLUME [/data]
# Sat, 11 May 2019 09:02:45 GMT
WORKDIR /data
# Sat, 11 May 2019 09:02:46 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 09:02:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:02:53 GMT
EXPOSE 6379
# Sat, 11 May 2019 09:02:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1f873094cdec16153e6440266d174f7a212d084ef10eaee74f2131622f0a65`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a0313c41cb3c045368f5b83e91440077e3c713f4fa98ae890d3aac07fd1338`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 411.2 KB (411203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227c692f6a186d7180264745e46361b41f5c580f8bcdc6448917a4a9eb82796c`  
		Last Modified: Sat, 11 May 2019 09:04:21 GMT  
		Size: 11.2 MB (11210960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b119842ed36ff9f001ee92d3dfd06135c32d0b4298a90d00b812fcb9f3c08315`  
		Last Modified: Sat, 11 May 2019 09:04:17 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8839c08efa8dd1deff89b7f80e270624bf739dc38a3b2aa3d851937d0da70179`  
		Last Modified: Sat, 11 May 2019 09:04:18 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; s390x

```console
$ docker pull redis@sha256:26c8f1e823891c83f76578da888b31d1a7c6cbe79d31e00407171fd45292e732
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13819670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a2d945446abb9c90947c6e5397fde1053e9dc15d54c504c9e23223bed28e9f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:29:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 13:29:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 13:30:56 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 13:30:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 13:30:57 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 13:31:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 13:31:35 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 13:31:35 GMT
VOLUME [/data]
# Sat, 11 May 2019 13:31:35 GMT
WORKDIR /data
# Sat, 11 May 2019 13:31:36 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 13:31:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 13:31:36 GMT
EXPOSE 6379
# Sat, 11 May 2019 13:31:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2038b2ec161be7e2f3c8ef364d60480ba3ca4bd5dc4869be8908551986c7d6f5`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7082e9e057aef8a7fefd028f8f5f6822021e7319e216b4ab9b0decef6c34a7`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 408.8 KB (408752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103c3629c039870038f312949fa950a8a6543ee18ee6a75f2298dc04934de2ff`  
		Last Modified: Sat, 11 May 2019 13:32:32 GMT  
		Size: 10.9 MB (10865822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8319718da21bb661a2f232380fb6c5957d45fa09f7e4f7faeeb7de8ce0aedd9`  
		Last Modified: Sat, 11 May 2019 13:32:29 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ce2b388e49f49dc0bd933c213d267b0c66b863d53d53ec15c06821b51ab688`  
		Last Modified: Sat, 11 May 2019 13:32:29 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine3.9`

```console
$ docker pull redis@sha256:c39398ed9823a8e66702e545eb21f17be17e3f6f736ba3329e10f3e7af36b2f2
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
$ docker pull redis@sha256:47c66f7fac64a98b19978c1e89abe12e02e0c2baa13de4def9dc3da8268ab3f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13949085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce91e22cd3f019df7aff4d2f27598a3f1b56c8627c285f24a9380c20fc6da5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:43:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 01:43:52 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 01:46:14 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 01:46:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 01:46:14 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 01:47:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 01:47:18 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 01:47:18 GMT
VOLUME [/data]
# Sat, 11 May 2019 01:47:18 GMT
WORKDIR /data
# Sat, 11 May 2019 01:47:19 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 01:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:47:19 GMT
EXPOSE 6379
# Sat, 11 May 2019 01:47:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8af38234db8796d645ec9541647315cdae2830b8f7c477b618feabbeee672cc`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b5e96879e00e980373ed29b9088020ea3d931c156252c1aae326b86a6775d4`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 403.8 KB (403836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a070e72f489fc7a15cdd5721b05b090735528bff4cf2ce97b1aeda5662b6c2a2`  
		Last Modified: Sat, 11 May 2019 01:48:38 GMT  
		Size: 10.8 MB (10786452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d549ccaa85a31cf8255a12d13fe8fefa2c52ce996be61b29a3b9cf0469363be`  
		Last Modified: Sat, 11 May 2019 01:48:36 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0240cd8e4dd900a6df0a42b9209d036acb3f5643d50e735fd1c7cee4d8749146`  
		Last Modified: Sat, 11 May 2019 01:48:36 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:5ac1d69a49fb8eebd60eb1877bd0fc14a5d0f200bff8c0e512ba6c2af75a5561
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13353589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca50b458011a920eb9a7d5c1ab847a1f8c6dac4933b8844838abc5203110381`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:29:26 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:29:28 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 08:30:27 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 08:30:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 08:30:28 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 08:30:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 08:30:53 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 08:30:53 GMT
VOLUME [/data]
# Sat, 11 May 2019 08:30:54 GMT
WORKDIR /data
# Sat, 11 May 2019 08:30:54 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 08:30:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:30:55 GMT
EXPOSE 6379
# Sat, 11 May 2019 08:30:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3b26f48db5b9f4aef841aedcaf84ca5b2036b4bc8d60ec400562dcc83b0e64`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c63408643782fafd48e9f99babe3c37e4192927a6bb12b7130619e8baffc64f`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 406.2 KB (406229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3199852c3d52c4985b0f2427aeb7378748b39faa6a7ca3ebd01144ef05750b0f`  
		Last Modified: Sat, 11 May 2019 08:31:32 GMT  
		Size: 10.4 MB (10402108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966e3adca7fffef88704c05e06e653fb54c59e6ea7dd92cc2ed59811a858395a`  
		Last Modified: Sat, 11 May 2019 08:31:29 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511c154dd5222c9bde4bfbb03b86bd20601fcf62646d2a8fbd2aad3b48752495`  
		Last Modified: Sat, 11 May 2019 08:31:29 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:1398f91cce4067b7e7a27164665c01f6a5757482b88a9e6a6e1e9f61068cf6f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12997945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5be42e09fedc9fcc9effd0ad707591dc83ae0fd2fc06816f154e7958e2c05224`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:44:03 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:44:05 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 12:45:10 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 12:45:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 12:45:11 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 12:45:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:45:38 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:45:38 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:45:39 GMT
WORKDIR /data
# Sat, 11 May 2019 12:45:39 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:45:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:45:40 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:45:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565eef49c17c1dbf08900c5f718bb6bf370c8fd8266c79aa5ab210dc41a3efd7`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a85d46778feb34d5ec3c1a011b9fddcb2fe7135bbfe170c0bf4fd77ff837a0`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 400.1 KB (400099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2723ec46dcd882fe08d8f794c879792fec85b142a6c298822603d63aac20a3b`  
		Last Modified: Sat, 11 May 2019 12:46:33 GMT  
		Size: 10.2 MB (10245355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f3dcff2fa5480dd4dc523563b8468a42260804383b10afb4774ebb29e7312e`  
		Last Modified: Sat, 11 May 2019 12:46:28 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeec4ec6fe69223fefff45d31ee70945d3eaf76e92955d23738fc33fd6856164`  
		Last Modified: Sat, 11 May 2019 12:46:28 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:06c1f7fd794868c6430e9f57347989b15a3a149cd2498e36e01b4e08fc7e2fc6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13747464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a1ccda935d4dc0324c3416faa5c50045601083bb1cb95829dc9ac4958f779cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 01:07:39 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 16 May 2019 01:07:43 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 01:10:27 GMT
ENV REDIS_VERSION=4.0.14
# Thu, 16 May 2019 01:10:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Thu, 16 May 2019 01:10:29 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Thu, 16 May 2019 01:11:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 01:11:13 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:11:14 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:11:14 GMT
WORKDIR /data
# Thu, 16 May 2019 01:11:15 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 01:11:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:11:17 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:11:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b3a49ce31ca23e2611efdf316f0a9838b50f5ec8f186a20552aa22ae44906f`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6d8b3a94783c7f17b1cd84b113af2e4bcdf64b9fdbb7db5182af9774c79475`  
		Last Modified: Thu, 16 May 2019 01:12:47 GMT  
		Size: 406.0 KB (406020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5a4a7482f64610a0969980cce98c1e88a8e8a428e0c8e29aa0f55eaf564945`  
		Last Modified: Thu, 16 May 2019 01:13:38 GMT  
		Size: 10.7 MB (10650835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24f5c2cbb73934632b6353c8b8785b341764cbd40fd6b2703605345c3d47a05`  
		Last Modified: Thu, 16 May 2019 01:13:34 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798c22ffde4530afe2256055e7b3718043e7dc302e42595dae9f9106e5dc7979`  
		Last Modified: Thu, 16 May 2019 01:13:34 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:46a567938bbc7286f74bbdc4ff5eebd6014d96039ac8e5b50bf00e0cc2f7d124
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13453201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0317a117c954e02f1bd0050d5e41d1a2d2499fb08c1cf7429510de472952f25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:19:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 14:19:53 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 14:21:08 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 14:21:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 14:21:09 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 14:21:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 14:21:43 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 14:21:44 GMT
VOLUME [/data]
# Sat, 11 May 2019 14:21:44 GMT
WORKDIR /data
# Sat, 11 May 2019 14:21:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 14:21:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 14:21:44 GMT
EXPOSE 6379
# Sat, 11 May 2019 14:21:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc09a60a7057123e651fa66030d2eb409f37acbcb6225df90a961c884bcd6ae`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342305f7d88077eba4d5d9428acb6d7250fdbae9a7cccab0eb143131ebab831`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 409.0 KB (408975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4a5f48256b20c9d12b07ef1d3d078d5c6412770f8e0d313c825c9ab51917da`  
		Last Modified: Sat, 11 May 2019 14:22:18 GMT  
		Size: 10.3 MB (10290372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54170ec7ce08c42ca8bb0c6b57b2b3c1be91aa86a17e4a23974d3bf608b0223b`  
		Last Modified: Sat, 11 May 2019 14:22:16 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8711f794c564d205befab0753efd33261b48d78f60ad390d3129cb429d2f3e`  
		Last Modified: Sat, 11 May 2019 14:22:16 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:b06713cefd793458dbfde782ceb66d9ed1ea741894c32909cc3d67c497163178
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14405014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b02072682cd5529738cb90f80cec8dae0cd7ebb9eaf14e6ddedd86b83afa730f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:58:56 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 09:01:35 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 09:01:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 09:01:40 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 09:02:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 09:02:39 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 09:02:42 GMT
VOLUME [/data]
# Sat, 11 May 2019 09:02:45 GMT
WORKDIR /data
# Sat, 11 May 2019 09:02:46 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 09:02:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:02:53 GMT
EXPOSE 6379
# Sat, 11 May 2019 09:02:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1f873094cdec16153e6440266d174f7a212d084ef10eaee74f2131622f0a65`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a0313c41cb3c045368f5b83e91440077e3c713f4fa98ae890d3aac07fd1338`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 411.2 KB (411203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227c692f6a186d7180264745e46361b41f5c580f8bcdc6448917a4a9eb82796c`  
		Last Modified: Sat, 11 May 2019 09:04:21 GMT  
		Size: 11.2 MB (11210960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b119842ed36ff9f001ee92d3dfd06135c32d0b4298a90d00b812fcb9f3c08315`  
		Last Modified: Sat, 11 May 2019 09:04:17 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8839c08efa8dd1deff89b7f80e270624bf739dc38a3b2aa3d851937d0da70179`  
		Last Modified: Sat, 11 May 2019 09:04:18 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:26c8f1e823891c83f76578da888b31d1a7c6cbe79d31e00407171fd45292e732
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13819670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a2d945446abb9c90947c6e5397fde1053e9dc15d54c504c9e23223bed28e9f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:29:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 13:29:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 13:30:56 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 13:30:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 13:30:57 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 13:31:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 13:31:35 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 13:31:35 GMT
VOLUME [/data]
# Sat, 11 May 2019 13:31:35 GMT
WORKDIR /data
# Sat, 11 May 2019 13:31:36 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 13:31:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 13:31:36 GMT
EXPOSE 6379
# Sat, 11 May 2019 13:31:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2038b2ec161be7e2f3c8ef364d60480ba3ca4bd5dc4869be8908551986c7d6f5`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7082e9e057aef8a7fefd028f8f5f6822021e7319e216b4ab9b0decef6c34a7`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 408.8 KB (408752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103c3629c039870038f312949fa950a8a6543ee18ee6a75f2298dc04934de2ff`  
		Last Modified: Sat, 11 May 2019 13:32:32 GMT  
		Size: 10.9 MB (10865822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8319718da21bb661a2f232380fb6c5957d45fa09f7e4f7faeeb7de8ce0aedd9`  
		Last Modified: Sat, 11 May 2019 13:32:29 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ce2b388e49f49dc0bd933c213d267b0c66b863d53d53ec15c06821b51ab688`  
		Last Modified: Sat, 11 May 2019 13:32:29 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-stretch`

```console
$ docker pull redis@sha256:59e759e57175447d049dd3614f31072a98c85d888a97d1232850118f0c8804ca
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
$ docker pull redis@sha256:ea8aab7d808fb0cd0adf669a0123c1ab3e4ddc48444c2a513d56f3bc8e8525ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32131555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:720768125f4ff4c2b9847cd152e66314916287a7fb2e06803b6f5f85a493e2be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 04:53:19 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 04:53:20 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 04:54:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:54:19 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:54:19 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:54:19 GMT
WORKDIR /data
# Wed, 08 May 2019 04:54:20 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:54:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:54:20 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:54:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111aefffd1679f831fe6902f918968098a5f89e013d6d8e086b6579f11c720c`  
		Last Modified: Wed, 08 May 2019 04:56:19 GMT  
		Size: 8.7 MB (8698583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9af921a085ef700155c2e271f20c7779e4262ba3aa440900892a3712d3be3b`  
		Last Modified: Wed, 08 May 2019 04:56:50 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0659698d44ab9b93ecbed73e46728f857908b8f43ccbb315b0ceeffde43e172`  
		Last Modified: Wed, 08 May 2019 04:56:15 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:da319a532a5602ae63669624e24fb206cd15baaf1f843b97e4676de58eedad83
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30512864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf56c058c98904dec08bed171e1398e96e66c93a7042b7dda43d4775323189f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:44:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 09:44:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 09:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 09:46:41 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 09:46:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 09:46:42 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 09:47:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 09:47:26 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 09:47:26 GMT
VOLUME [/data]
# Wed, 08 May 2019 09:47:26 GMT
WORKDIR /data
# Wed, 08 May 2019 09:47:27 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 09:47:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 09:47:28 GMT
EXPOSE 6379
# Wed, 08 May 2019 09:47:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9042d288dd3256571141d375b77cd76ad30099bb2dc13f80e91fbf472e6b1`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2a42a5237467b8424f4e6421ff0a721a0f135a647799991c350c08aca04400`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 931.2 KB (931193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641145c29030d815c9caae78b547e8843fe20238cddf5111bcb219cd59926da1`  
		Last Modified: Wed, 08 May 2019 09:48:10 GMT  
		Size: 8.4 MB (8423527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045214818d24eb0ffdda0bfaf5e036bfe24cd001bb686cad11e8a97f6b542eaf`  
		Last Modified: Wed, 08 May 2019 09:48:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb5af73d89733eb16df465690078d96d2c4e85b6c4f7f27cbdabfe13fd88016`  
		Last Modified: Wed, 08 May 2019 09:48:03 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:b6179bc7d4d89966a69580b120454adbd8d67477f5c457ed9701d22d5cd1ce55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28391523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c1c84e9f05bf207a96a59d04140d9a0056311e8783b17197cf46cce11ea7d5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:54:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:54:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:54:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 14:55:56 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 14:55:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 14:55:57 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 14:56:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:56:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:56:39 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:56:40 GMT
WORKDIR /data
# Wed, 08 May 2019 14:56:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:56:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:56:41 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:56:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04ed9d6e5c55be71a7578af699db21acfa7d9dd81dc0feefea5ab6c7fc9d3`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d7b0643ad1873b502f90a920e652822474851a731a233a0be7dafee3fb1bcc`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 915.8 KB (915827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158a7184abee4d42c88647d8fbdccf88023582aa82f41a8dd48454b00cf54865`  
		Last Modified: Wed, 08 May 2019 14:57:38 GMT  
		Size: 8.2 MB (8197198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ab5edffdda3f04fc0f30e89b8fcd712c32ea3c2a993d17711de954a3457ae7`  
		Last Modified: Wed, 08 May 2019 14:57:34 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d652e8504896bdbc2879c6b6dc8c85cdc336c156641dc6048fda477f18eb67`  
		Last Modified: Wed, 08 May 2019 14:57:34 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:61315cf6798b522216de44c06cfe943fe822e3be7c8b7d179e47e59e279c9772
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29742104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6472a87442b91ea954697c338a90514f890bc9021e6f11e5de1834286daa2761`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Thu, 16 May 2019 01:04:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 16 May 2019 01:04:52 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 01:05:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 01:09:10 GMT
ENV REDIS_VERSION=4.0.14
# Thu, 16 May 2019 01:09:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Thu, 16 May 2019 01:09:11 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Thu, 16 May 2019 01:10:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:10:12 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:10:13 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:10:14 GMT
WORKDIR /data
# Thu, 16 May 2019 01:10:15 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:10:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:10:17 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:10:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b47765258d397f39f0ca0d0b06dbc96995d2b8e7ed2c6961982cbea83cbbf52`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ef2ae43b989ae901049515810f82bcb828d20239bc7bad82eca8de79328be3`  
		Last Modified: Thu, 16 May 2019 01:12:20 GMT  
		Size: 908.0 KB (907958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a832d7641ce23defd95b39f357b1e24dce0b35aad323a518db889dfafada85b`  
		Last Modified: Thu, 16 May 2019 01:13:17 GMT  
		Size: 8.5 MB (8498036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f2b1ec01db985575bb76c8c093954f33bbd3026cb1f23dc92dde7c100852fe`  
		Last Modified: Thu, 16 May 2019 01:13:11 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b186e40cbb7ab3c4ccfb6f4b1b466c335abf599c91f251a60134b2208448d73`  
		Last Modified: Thu, 16 May 2019 01:13:11 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; 386

```console
$ docker pull redis@sha256:819ff8bbc031b73ae542f11d51d62ee47481f42dbc690abb9a765d28426b1ab7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32301437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ca01cc2c74b31a3c6b5fa6ef949662220fb48452d9116f470b09ffc6c4a82a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:27:13 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:27:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:27:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 19:28:43 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 19:28:43 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 19:28:43 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 19:29:22 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:29:23 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:29:23 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:29:24 GMT
WORKDIR /data
# Wed, 08 May 2019 19:29:24 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:29:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:29:24 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:29:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33b9d5023cb64a3e2105aa585763e0f894f9c8bad0cd7255f4270ca658cb230`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd525c34aa87726465ac825c4e2672a834143ab46dcc2281b78c8cee8040c6d2`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 920.2 KB (920170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbd8d93394356443793bae51beb338c009bbbba4110c3ebf821b477b82bf771`  
		Last Modified: Wed, 08 May 2019 19:29:54 GMT  
		Size: 8.3 MB (8258173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682714e633d5ed56f61cbe0f3fc5ba49fd12f6d3db2d373b8c122252396cfe12`  
		Last Modified: Wed, 08 May 2019 19:29:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e396ec142417772e1b237fc025aaaeb9d6f1727b44b621594b61c55ad6c56638`  
		Last Modified: Wed, 08 May 2019 19:29:52 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:263172d12b54ba1158a08cc4eef06718bf566409290ca9c1fbf9118f3434f3e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32530590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef1d7c61fb648e981e992db04b43309a146ff612e59e0b481ef3701bee59e00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:53:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 13:53:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 13:57:13 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 14:03:45 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 14:03:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 14:03:54 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 14:07:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:07:56 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:08:00 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:08:05 GMT
WORKDIR /data
# Wed, 08 May 2019 14:08:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:08:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:08:19 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:08:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff669625b2edb1e0931d0870b1809e38cff4dcef53234334cd3cf4de1c49c7ce`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169e96a284a165ec6a0775d6b3aeeb4d6a67a0f098f207acbb7ce857a3fd50d`  
		Last Modified: Wed, 08 May 2019 14:09:37 GMT  
		Size: 910.1 KB (910104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10bf6339fdfc7dbe61cb6b5996c44fef5a62a27f1f05aa3b0c7e80214b42f2e8`  
		Last Modified: Wed, 08 May 2019 14:10:21 GMT  
		Size: 8.9 MB (8873275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ff2115c3aa947e3bbcea1f2f6c26873b6e0c64028662041c60a31e6b69196a`  
		Last Modified: Wed, 08 May 2019 14:10:18 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713c3b4e399c0a54023350f30496102e35b714b6e8d581857c4c62e21ecb96a3`  
		Last Modified: Wed, 08 May 2019 14:10:18 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; s390x

```console
$ docker pull redis@sha256:e4eb8c9b6bc5ca51df9c02aaff62dd8de80c68c37909ba3ba5fc07a811054dfb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32360224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d445147bc5f0067d9ef4511fe90a99866dc4ecc1486cbbc72d8c168587747181`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:38:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:38:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:39:38 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 14:43:13 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 14:43:14 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 14:43:15 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 14:45:00 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:45:05 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:45:06 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:45:07 GMT
WORKDIR /data
# Wed, 08 May 2019 14:45:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:45:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:45:12 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:45:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d667d9ec29251877608296ac4170b4d495aa961dd3297c6f8379f4df1f68aa98`  
		Last Modified: Wed, 08 May 2019 14:46:52 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3467c4b72354e2f6a442998daf9a3501b37844ed98edc512e0cfc147185c4b`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 927.0 KB (926960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba10d6a4697cfe1601dbacc73d5ffc9ea70fb0ae377280dac895ea7fd9f24d4`  
		Last Modified: Wed, 08 May 2019 14:47:30 GMT  
		Size: 9.1 MB (9092122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b546bef5320570cf3a396aa64ed4b17d65ac4d48035a7de860278f267ac4db`  
		Last Modified: Wed, 08 May 2019 14:47:26 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909b2c3c1bfa51687c85af754ad437b39ed8ac01acffb28f24d566d981e812fb`  
		Last Modified: Wed, 08 May 2019 14:47:26 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5`

```console
$ docker pull redis@sha256:e549a30b3c31e6305b973e0d9113a3d38d60566708137af9ed7cbdce5650c5cc
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
$ docker pull redis@sha256:2720a72fb05febf7994e422b7cd327a031dcca2863a808e2825bf3cbb8d4c804
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35224772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e3588af5178bae2c8ffdbfa227c7d0305518d3821a71615c14ffb8643d7eb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:48:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:48:40 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:48:41 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:48:41 GMT
WORKDIR /data
# Thu, 16 May 2019 00:48:41 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:48:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:48:41 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:48:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0b11956c7210838cbb4ab1a9f5083a646b313f6a8f4f89b5414d3008014c8c`  
		Last Modified: Thu, 16 May 2019 00:52:57 GMT  
		Size: 11.8 MB (11791799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09dbd716637eb4357876adc2398d0e1fe2b98afb7003b3099e5362c10eff9628`  
		Last Modified: Thu, 16 May 2019 00:52:54 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09046fd44816fc8bcb817fd60b854d18f5c89b6e06cfff7d08670376b1c9074`  
		Last Modified: Thu, 16 May 2019 00:52:54 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; arm variant v5

```console
$ docker pull redis@sha256:05f98dbb3ef8eb53566a46a6adf5514394fa29120b0033cc9e30d1aea41fb8a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33550061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d613ca9335d852802284ef79af77a56478678ea2709eb67a8284fb95b17c8482`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:44:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 09:44:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 09:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:48:30 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:48:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:48:31 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:49:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:49:42 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:49:43 GMT
WORKDIR /data
# Thu, 16 May 2019 00:49:43 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:49:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:49:44 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:49:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9042d288dd3256571141d375b77cd76ad30099bb2dc13f80e91fbf472e6b1`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2a42a5237467b8424f4e6421ff0a721a0f135a647799991c350c08aca04400`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 931.2 KB (931193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35e4cd73fac730f62773e04644c7ea42c04a1dbd7f0b3588baa46e37e426cd4`  
		Last Modified: Thu, 16 May 2019 00:50:17 GMT  
		Size: 11.5 MB (11460720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68ab7a056a41635f692347b21a08c379e94abed92b3b387efd12419bf671b0d`  
		Last Modified: Thu, 16 May 2019 00:50:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c18de47fb4cd88147ad8c55593e13f29a439acc06cec69c3e8abf45f140575a`  
		Last Modified: Thu, 16 May 2019 00:50:14 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; arm variant v7

```console
$ docker pull redis@sha256:45027d4f22fca31c1a341b1d168f71d36615df5bb4d3840117e4cc7a80194c0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31347653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61c27474610c8b324d42968497d1a8f07b158821cfcb28d9de54b8c8eb94d2cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:54:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:54:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:54:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:01:33 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:01:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:01:34 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:02:35 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:02:37 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:02:37 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:02:38 GMT
WORKDIR /data
# Thu, 16 May 2019 00:02:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:02:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:02:39 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:02:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04ed9d6e5c55be71a7578af699db21acfa7d9dd81dc0feefea5ab6c7fc9d3`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d7b0643ad1873b502f90a920e652822474851a731a233a0be7dafee3fb1bcc`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 915.8 KB (915827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e16cba97d24e33a673f3b3b6c2333783f2a309a8cdee47555e2b79ab44b630`  
		Last Modified: Thu, 16 May 2019 00:04:23 GMT  
		Size: 11.2 MB (11153327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c225bcdc75e993c3c97cc0336d03eead391af26eeade2f1ba733eb40bdf6cf`  
		Last Modified: Thu, 16 May 2019 00:04:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54475dfedeaadc109235cff1214f522ae9ee8ca9f563e7bf4bd2d23e46fa2619`  
		Last Modified: Thu, 16 May 2019 00:04:20 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:77859ef1211d65e314a95782c90dfaa4bd43cf36dfdac9c6ecddcaf4c55dd01c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32850031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a4e737c0a3806823fa6d9ba1d930462f362feeb7a8dfbf3087f250fe29e9e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Thu, 16 May 2019 01:04:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 16 May 2019 01:04:52 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 01:05:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 01:05:35 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:05:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:05:37 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:07:17 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:07:22 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:07:22 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:07:23 GMT
WORKDIR /data
# Thu, 16 May 2019 01:07:25 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:07:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:07:26 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:07:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b47765258d397f39f0ca0d0b06dbc96995d2b8e7ed2c6961982cbea83cbbf52`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ef2ae43b989ae901049515810f82bcb828d20239bc7bad82eca8de79328be3`  
		Last Modified: Thu, 16 May 2019 01:12:20 GMT  
		Size: 908.0 KB (907958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c0c86fd51dc6871a6a999b3e3ca91bd5788f4bda24ef5bdd4c1b0e1d2eeb30`  
		Last Modified: Thu, 16 May 2019 01:12:23 GMT  
		Size: 11.6 MB (11605963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3458ae93cdfc79a80922a5cdb500acd76a5291e1b0cb0a0ce4db3dc3bc3e2e65`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b95cf35341c8570b208e5bdbac3ce0b9d882815aa12eea27deeb805f34eb4ee`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; 386

```console
$ docker pull redis@sha256:eac0c7120e689fc18c90c8c607740c28a504b4220190064e9857be99c291fd49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35244514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f1a80a6e6be91424438906acd0a53d336b4023f09bdd093e6cee02cb055daf6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:27:13 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:27:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:27:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 02:09:32 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 02:09:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 02:09:33 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 02:10:37 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 02:10:38 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 02:10:38 GMT
VOLUME [/data]
# Thu, 16 May 2019 02:10:38 GMT
WORKDIR /data
# Thu, 16 May 2019 02:10:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 02:10:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:10:39 GMT
EXPOSE 6379
# Thu, 16 May 2019 02:10:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33b9d5023cb64a3e2105aa585763e0f894f9c8bad0cd7255f4270ca658cb230`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd525c34aa87726465ac825c4e2672a834143ab46dcc2281b78c8cee8040c6d2`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 920.2 KB (920170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308c994448375c571c22b1be21a1484f72560830c9ff2b5a646c02cb9f82874c`  
		Last Modified: Thu, 16 May 2019 02:12:18 GMT  
		Size: 11.2 MB (11201252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9098a426ff04cb90c2e856152adb7fa4de027f72972d90434a0b09f92046b9`  
		Last Modified: Thu, 16 May 2019 02:12:16 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0781da06b9d68188b8be7568feed3fbad46a0b7f34a53ca3bd1b2574edaec102`  
		Last Modified: Thu, 16 May 2019 02:12:16 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; ppc64le

```console
$ docker pull redis@sha256:a966f78de2cfc0de4f0c6fe6203c40ca9a79e0e0620d13b9ce10e885f64cbe92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35639680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1279708270c90148f33777b051c1556aadd5a3e138f258469ddde2c80e3ec5dc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:53:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 13:53:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 13:57:13 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:46:09 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:46:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:46:12 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:48:12 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:48:19 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:48:22 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:48:24 GMT
WORKDIR /data
# Thu, 16 May 2019 00:48:25 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:48:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:48:29 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:48:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff669625b2edb1e0931d0870b1809e38cff4dcef53234334cd3cf4de1c49c7ce`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169e96a284a165ec6a0775d6b3aeeb4d6a67a0f098f207acbb7ce857a3fd50d`  
		Last Modified: Wed, 08 May 2019 14:09:37 GMT  
		Size: 910.1 KB (910104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515eff492ce00a96d2692bdc05dfa2b16c6578a8b63c7a62710df32ca5d5b0dc`  
		Last Modified: Thu, 16 May 2019 00:50:57 GMT  
		Size: 12.0 MB (11982367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a335ec7cf18608aae558a248b285b9341758ca61106b87ac3f47cd149c0b0e23`  
		Last Modified: Thu, 16 May 2019 00:50:54 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c075c08ab286e874675271621ad72476e811de183eddc51b0f91d0c4589876a`  
		Last Modified: Thu, 16 May 2019 00:50:54 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; s390x

```console
$ docker pull redis@sha256:0b03c9cf4a1a67b252539785c0474b3a90ab181ec5efbafce23d038a83b37e97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35523010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb89ced0c47db902fb8d1c2adea1a14abbae504a1740e023873ff84ea7cb954`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:38:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:38:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:39:38 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:59:10 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:59:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:59:11 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:00:56 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:00:58 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:00:58 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:00:59 GMT
WORKDIR /data
# Thu, 16 May 2019 01:00:59 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:01:00 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:01:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d667d9ec29251877608296ac4170b4d495aa961dd3297c6f8379f4df1f68aa98`  
		Last Modified: Wed, 08 May 2019 14:46:52 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3467c4b72354e2f6a442998daf9a3501b37844ed98edc512e0cfc147185c4b`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 927.0 KB (926960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45affb2cff9ff50d2e40e5547c22524a2bf0264b11f01fe9370d69899e1d212`  
		Last Modified: Thu, 16 May 2019 01:04:45 GMT  
		Size: 12.3 MB (12254908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d4090e99bae7a3a0e9030cf7d3764bbca2be43820f45567e2d2a8e11f41c8c`  
		Last Modified: Thu, 16 May 2019 01:04:39 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b291a062e3d7c8d2e45c55bfd6e9faee581df29059ee8d5da4039b42b1f572`  
		Last Modified: Thu, 16 May 2019 01:04:39 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0`

```console
$ docker pull redis@sha256:e549a30b3c31e6305b973e0d9113a3d38d60566708137af9ed7cbdce5650c5cc
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
$ docker pull redis@sha256:2720a72fb05febf7994e422b7cd327a031dcca2863a808e2825bf3cbb8d4c804
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35224772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e3588af5178bae2c8ffdbfa227c7d0305518d3821a71615c14ffb8643d7eb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:48:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:48:40 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:48:41 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:48:41 GMT
WORKDIR /data
# Thu, 16 May 2019 00:48:41 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:48:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:48:41 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:48:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0b11956c7210838cbb4ab1a9f5083a646b313f6a8f4f89b5414d3008014c8c`  
		Last Modified: Thu, 16 May 2019 00:52:57 GMT  
		Size: 11.8 MB (11791799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09dbd716637eb4357876adc2398d0e1fe2b98afb7003b3099e5362c10eff9628`  
		Last Modified: Thu, 16 May 2019 00:52:54 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09046fd44816fc8bcb817fd60b854d18f5c89b6e06cfff7d08670376b1c9074`  
		Last Modified: Thu, 16 May 2019 00:52:54 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; arm variant v5

```console
$ docker pull redis@sha256:05f98dbb3ef8eb53566a46a6adf5514394fa29120b0033cc9e30d1aea41fb8a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33550061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d613ca9335d852802284ef79af77a56478678ea2709eb67a8284fb95b17c8482`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:44:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 09:44:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 09:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:48:30 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:48:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:48:31 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:49:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:49:42 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:49:43 GMT
WORKDIR /data
# Thu, 16 May 2019 00:49:43 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:49:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:49:44 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:49:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9042d288dd3256571141d375b77cd76ad30099bb2dc13f80e91fbf472e6b1`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2a42a5237467b8424f4e6421ff0a721a0f135a647799991c350c08aca04400`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 931.2 KB (931193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35e4cd73fac730f62773e04644c7ea42c04a1dbd7f0b3588baa46e37e426cd4`  
		Last Modified: Thu, 16 May 2019 00:50:17 GMT  
		Size: 11.5 MB (11460720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68ab7a056a41635f692347b21a08c379e94abed92b3b387efd12419bf671b0d`  
		Last Modified: Thu, 16 May 2019 00:50:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c18de47fb4cd88147ad8c55593e13f29a439acc06cec69c3e8abf45f140575a`  
		Last Modified: Thu, 16 May 2019 00:50:14 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; arm variant v7

```console
$ docker pull redis@sha256:45027d4f22fca31c1a341b1d168f71d36615df5bb4d3840117e4cc7a80194c0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31347653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61c27474610c8b324d42968497d1a8f07b158821cfcb28d9de54b8c8eb94d2cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:54:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:54:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:54:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:01:33 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:01:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:01:34 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:02:35 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:02:37 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:02:37 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:02:38 GMT
WORKDIR /data
# Thu, 16 May 2019 00:02:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:02:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:02:39 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:02:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04ed9d6e5c55be71a7578af699db21acfa7d9dd81dc0feefea5ab6c7fc9d3`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d7b0643ad1873b502f90a920e652822474851a731a233a0be7dafee3fb1bcc`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 915.8 KB (915827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e16cba97d24e33a673f3b3b6c2333783f2a309a8cdee47555e2b79ab44b630`  
		Last Modified: Thu, 16 May 2019 00:04:23 GMT  
		Size: 11.2 MB (11153327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c225bcdc75e993c3c97cc0336d03eead391af26eeade2f1ba733eb40bdf6cf`  
		Last Modified: Thu, 16 May 2019 00:04:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54475dfedeaadc109235cff1214f522ae9ee8ca9f563e7bf4bd2d23e46fa2619`  
		Last Modified: Thu, 16 May 2019 00:04:20 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:77859ef1211d65e314a95782c90dfaa4bd43cf36dfdac9c6ecddcaf4c55dd01c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32850031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a4e737c0a3806823fa6d9ba1d930462f362feeb7a8dfbf3087f250fe29e9e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Thu, 16 May 2019 01:04:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 16 May 2019 01:04:52 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 01:05:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 01:05:35 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:05:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:05:37 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:07:17 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:07:22 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:07:22 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:07:23 GMT
WORKDIR /data
# Thu, 16 May 2019 01:07:25 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:07:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:07:26 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:07:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b47765258d397f39f0ca0d0b06dbc96995d2b8e7ed2c6961982cbea83cbbf52`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ef2ae43b989ae901049515810f82bcb828d20239bc7bad82eca8de79328be3`  
		Last Modified: Thu, 16 May 2019 01:12:20 GMT  
		Size: 908.0 KB (907958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c0c86fd51dc6871a6a999b3e3ca91bd5788f4bda24ef5bdd4c1b0e1d2eeb30`  
		Last Modified: Thu, 16 May 2019 01:12:23 GMT  
		Size: 11.6 MB (11605963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3458ae93cdfc79a80922a5cdb500acd76a5291e1b0cb0a0ce4db3dc3bc3e2e65`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b95cf35341c8570b208e5bdbac3ce0b9d882815aa12eea27deeb805f34eb4ee`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; 386

```console
$ docker pull redis@sha256:eac0c7120e689fc18c90c8c607740c28a504b4220190064e9857be99c291fd49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35244514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f1a80a6e6be91424438906acd0a53d336b4023f09bdd093e6cee02cb055daf6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:27:13 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:27:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:27:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 02:09:32 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 02:09:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 02:09:33 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 02:10:37 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 02:10:38 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 02:10:38 GMT
VOLUME [/data]
# Thu, 16 May 2019 02:10:38 GMT
WORKDIR /data
# Thu, 16 May 2019 02:10:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 02:10:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:10:39 GMT
EXPOSE 6379
# Thu, 16 May 2019 02:10:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33b9d5023cb64a3e2105aa585763e0f894f9c8bad0cd7255f4270ca658cb230`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd525c34aa87726465ac825c4e2672a834143ab46dcc2281b78c8cee8040c6d2`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 920.2 KB (920170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308c994448375c571c22b1be21a1484f72560830c9ff2b5a646c02cb9f82874c`  
		Last Modified: Thu, 16 May 2019 02:12:18 GMT  
		Size: 11.2 MB (11201252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9098a426ff04cb90c2e856152adb7fa4de027f72972d90434a0b09f92046b9`  
		Last Modified: Thu, 16 May 2019 02:12:16 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0781da06b9d68188b8be7568feed3fbad46a0b7f34a53ca3bd1b2574edaec102`  
		Last Modified: Thu, 16 May 2019 02:12:16 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; ppc64le

```console
$ docker pull redis@sha256:a966f78de2cfc0de4f0c6fe6203c40ca9a79e0e0620d13b9ce10e885f64cbe92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35639680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1279708270c90148f33777b051c1556aadd5a3e138f258469ddde2c80e3ec5dc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:53:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 13:53:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 13:57:13 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:46:09 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:46:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:46:12 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:48:12 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:48:19 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:48:22 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:48:24 GMT
WORKDIR /data
# Thu, 16 May 2019 00:48:25 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:48:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:48:29 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:48:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff669625b2edb1e0931d0870b1809e38cff4dcef53234334cd3cf4de1c49c7ce`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169e96a284a165ec6a0775d6b3aeeb4d6a67a0f098f207acbb7ce857a3fd50d`  
		Last Modified: Wed, 08 May 2019 14:09:37 GMT  
		Size: 910.1 KB (910104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515eff492ce00a96d2692bdc05dfa2b16c6578a8b63c7a62710df32ca5d5b0dc`  
		Last Modified: Thu, 16 May 2019 00:50:57 GMT  
		Size: 12.0 MB (11982367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a335ec7cf18608aae558a248b285b9341758ca61106b87ac3f47cd149c0b0e23`  
		Last Modified: Thu, 16 May 2019 00:50:54 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c075c08ab286e874675271621ad72476e811de183eddc51b0f91d0c4589876a`  
		Last Modified: Thu, 16 May 2019 00:50:54 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; s390x

```console
$ docker pull redis@sha256:0b03c9cf4a1a67b252539785c0474b3a90ab181ec5efbafce23d038a83b37e97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35523010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb89ced0c47db902fb8d1c2adea1a14abbae504a1740e023873ff84ea7cb954`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:38:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:38:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:39:38 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:59:10 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:59:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:59:11 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:00:56 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:00:58 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:00:58 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:00:59 GMT
WORKDIR /data
# Thu, 16 May 2019 01:00:59 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:01:00 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:01:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d667d9ec29251877608296ac4170b4d495aa961dd3297c6f8379f4df1f68aa98`  
		Last Modified: Wed, 08 May 2019 14:46:52 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3467c4b72354e2f6a442998daf9a3501b37844ed98edc512e0cfc147185c4b`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 927.0 KB (926960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45affb2cff9ff50d2e40e5547c22524a2bf0264b11f01fe9370d69899e1d212`  
		Last Modified: Thu, 16 May 2019 01:04:45 GMT  
		Size: 12.3 MB (12254908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d4090e99bae7a3a0e9030cf7d3764bbca2be43820f45567e2d2a8e11f41c8c`  
		Last Modified: Thu, 16 May 2019 01:04:39 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b291a062e3d7c8d2e45c55bfd6e9faee581df29059ee8d5da4039b42b1f572`  
		Last Modified: Thu, 16 May 2019 01:04:39 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-32bit`

```console
$ docker pull redis@sha256:af645dcda0207a1f0aea6fa239f3aeffd59812a9c760365eff7c9e7157055173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:c5edc855e4219295a0cfc2e2cde431ee061c813ece1a6cb1a36d340f2b6242cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39488609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0592cc8430991e1cf1ac3c106e1eb045e40b775938d17594c7a2a5628d05e963`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:41 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:50:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:50:42 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:50:42 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:42 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:43 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc71b55f6dc477ed95a4fccbee3e2e2b6fba700517b0eb8799c84e529e8e87a`  
		Last Modified: Thu, 16 May 2019 00:53:05 GMT  
		Size: 4.8 MB (4849454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ca34bf315a41019b267866e1d7ab70853c74ab96f566d80800c3e08a3812b5`  
		Last Modified: Thu, 16 May 2019 00:53:06 GMT  
		Size: 11.2 MB (11206179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8647c51bc4d6d5634159976479cfe28e5f072e141484efd6d2fbef6bef07f2`  
		Last Modified: Thu, 16 May 2019 00:53:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f07e1a22d2dc960b07d5e9c18be9d5a2aad0f215c4d539461bb4a1a508312bf`  
		Last Modified: Thu, 16 May 2019 00:53:04 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-32bit-stretch`

```console
$ docker pull redis@sha256:af645dcda0207a1f0aea6fa239f3aeffd59812a9c760365eff7c9e7157055173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:c5edc855e4219295a0cfc2e2cde431ee061c813ece1a6cb1a36d340f2b6242cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39488609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0592cc8430991e1cf1ac3c106e1eb045e40b775938d17594c7a2a5628d05e963`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:41 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:50:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:50:42 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:50:42 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:42 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:43 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc71b55f6dc477ed95a4fccbee3e2e2b6fba700517b0eb8799c84e529e8e87a`  
		Last Modified: Thu, 16 May 2019 00:53:05 GMT  
		Size: 4.8 MB (4849454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ca34bf315a41019b267866e1d7ab70853c74ab96f566d80800c3e08a3812b5`  
		Last Modified: Thu, 16 May 2019 00:53:06 GMT  
		Size: 11.2 MB (11206179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8647c51bc4d6d5634159976479cfe28e5f072e141484efd6d2fbef6bef07f2`  
		Last Modified: Thu, 16 May 2019 00:53:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f07e1a22d2dc960b07d5e9c18be9d5a2aad0f215c4d539461bb4a1a508312bf`  
		Last Modified: Thu, 16 May 2019 00:53:04 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.5`

```console
$ docker pull redis@sha256:e549a30b3c31e6305b973e0d9113a3d38d60566708137af9ed7cbdce5650c5cc
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

### `redis:5.0.5` - linux; amd64

```console
$ docker pull redis@sha256:2720a72fb05febf7994e422b7cd327a031dcca2863a808e2825bf3cbb8d4c804
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35224772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e3588af5178bae2c8ffdbfa227c7d0305518d3821a71615c14ffb8643d7eb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:48:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:48:40 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:48:41 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:48:41 GMT
WORKDIR /data
# Thu, 16 May 2019 00:48:41 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:48:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:48:41 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:48:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0b11956c7210838cbb4ab1a9f5083a646b313f6a8f4f89b5414d3008014c8c`  
		Last Modified: Thu, 16 May 2019 00:52:57 GMT  
		Size: 11.8 MB (11791799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09dbd716637eb4357876adc2398d0e1fe2b98afb7003b3099e5362c10eff9628`  
		Last Modified: Thu, 16 May 2019 00:52:54 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09046fd44816fc8bcb817fd60b854d18f5c89b6e06cfff7d08670376b1c9074`  
		Last Modified: Thu, 16 May 2019 00:52:54 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5` - linux; arm variant v5

```console
$ docker pull redis@sha256:05f98dbb3ef8eb53566a46a6adf5514394fa29120b0033cc9e30d1aea41fb8a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33550061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d613ca9335d852802284ef79af77a56478678ea2709eb67a8284fb95b17c8482`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:44:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 09:44:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 09:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:48:30 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:48:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:48:31 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:49:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:49:42 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:49:43 GMT
WORKDIR /data
# Thu, 16 May 2019 00:49:43 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:49:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:49:44 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:49:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9042d288dd3256571141d375b77cd76ad30099bb2dc13f80e91fbf472e6b1`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2a42a5237467b8424f4e6421ff0a721a0f135a647799991c350c08aca04400`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 931.2 KB (931193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35e4cd73fac730f62773e04644c7ea42c04a1dbd7f0b3588baa46e37e426cd4`  
		Last Modified: Thu, 16 May 2019 00:50:17 GMT  
		Size: 11.5 MB (11460720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68ab7a056a41635f692347b21a08c379e94abed92b3b387efd12419bf671b0d`  
		Last Modified: Thu, 16 May 2019 00:50:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c18de47fb4cd88147ad8c55593e13f29a439acc06cec69c3e8abf45f140575a`  
		Last Modified: Thu, 16 May 2019 00:50:14 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5` - linux; arm variant v7

```console
$ docker pull redis@sha256:45027d4f22fca31c1a341b1d168f71d36615df5bb4d3840117e4cc7a80194c0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31347653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61c27474610c8b324d42968497d1a8f07b158821cfcb28d9de54b8c8eb94d2cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:54:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:54:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:54:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:01:33 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:01:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:01:34 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:02:35 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:02:37 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:02:37 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:02:38 GMT
WORKDIR /data
# Thu, 16 May 2019 00:02:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:02:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:02:39 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:02:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04ed9d6e5c55be71a7578af699db21acfa7d9dd81dc0feefea5ab6c7fc9d3`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d7b0643ad1873b502f90a920e652822474851a731a233a0be7dafee3fb1bcc`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 915.8 KB (915827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e16cba97d24e33a673f3b3b6c2333783f2a309a8cdee47555e2b79ab44b630`  
		Last Modified: Thu, 16 May 2019 00:04:23 GMT  
		Size: 11.2 MB (11153327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c225bcdc75e993c3c97cc0336d03eead391af26eeade2f1ba733eb40bdf6cf`  
		Last Modified: Thu, 16 May 2019 00:04:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54475dfedeaadc109235cff1214f522ae9ee8ca9f563e7bf4bd2d23e46fa2619`  
		Last Modified: Thu, 16 May 2019 00:04:20 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:77859ef1211d65e314a95782c90dfaa4bd43cf36dfdac9c6ecddcaf4c55dd01c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32850031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a4e737c0a3806823fa6d9ba1d930462f362feeb7a8dfbf3087f250fe29e9e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Thu, 16 May 2019 01:04:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 16 May 2019 01:04:52 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 01:05:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 01:05:35 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:05:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:05:37 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:07:17 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:07:22 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:07:22 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:07:23 GMT
WORKDIR /data
# Thu, 16 May 2019 01:07:25 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:07:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:07:26 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:07:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b47765258d397f39f0ca0d0b06dbc96995d2b8e7ed2c6961982cbea83cbbf52`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ef2ae43b989ae901049515810f82bcb828d20239bc7bad82eca8de79328be3`  
		Last Modified: Thu, 16 May 2019 01:12:20 GMT  
		Size: 908.0 KB (907958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c0c86fd51dc6871a6a999b3e3ca91bd5788f4bda24ef5bdd4c1b0e1d2eeb30`  
		Last Modified: Thu, 16 May 2019 01:12:23 GMT  
		Size: 11.6 MB (11605963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3458ae93cdfc79a80922a5cdb500acd76a5291e1b0cb0a0ce4db3dc3bc3e2e65`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b95cf35341c8570b208e5bdbac3ce0b9d882815aa12eea27deeb805f34eb4ee`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5` - linux; 386

```console
$ docker pull redis@sha256:eac0c7120e689fc18c90c8c607740c28a504b4220190064e9857be99c291fd49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35244514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f1a80a6e6be91424438906acd0a53d336b4023f09bdd093e6cee02cb055daf6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:27:13 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:27:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:27:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 02:09:32 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 02:09:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 02:09:33 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 02:10:37 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 02:10:38 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 02:10:38 GMT
VOLUME [/data]
# Thu, 16 May 2019 02:10:38 GMT
WORKDIR /data
# Thu, 16 May 2019 02:10:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 02:10:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:10:39 GMT
EXPOSE 6379
# Thu, 16 May 2019 02:10:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33b9d5023cb64a3e2105aa585763e0f894f9c8bad0cd7255f4270ca658cb230`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd525c34aa87726465ac825c4e2672a834143ab46dcc2281b78c8cee8040c6d2`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 920.2 KB (920170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308c994448375c571c22b1be21a1484f72560830c9ff2b5a646c02cb9f82874c`  
		Last Modified: Thu, 16 May 2019 02:12:18 GMT  
		Size: 11.2 MB (11201252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9098a426ff04cb90c2e856152adb7fa4de027f72972d90434a0b09f92046b9`  
		Last Modified: Thu, 16 May 2019 02:12:16 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0781da06b9d68188b8be7568feed3fbad46a0b7f34a53ca3bd1b2574edaec102`  
		Last Modified: Thu, 16 May 2019 02:12:16 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5` - linux; ppc64le

```console
$ docker pull redis@sha256:a966f78de2cfc0de4f0c6fe6203c40ca9a79e0e0620d13b9ce10e885f64cbe92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35639680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1279708270c90148f33777b051c1556aadd5a3e138f258469ddde2c80e3ec5dc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:53:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 13:53:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 13:57:13 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:46:09 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:46:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:46:12 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:48:12 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:48:19 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:48:22 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:48:24 GMT
WORKDIR /data
# Thu, 16 May 2019 00:48:25 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:48:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:48:29 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:48:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff669625b2edb1e0931d0870b1809e38cff4dcef53234334cd3cf4de1c49c7ce`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169e96a284a165ec6a0775d6b3aeeb4d6a67a0f098f207acbb7ce857a3fd50d`  
		Last Modified: Wed, 08 May 2019 14:09:37 GMT  
		Size: 910.1 KB (910104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515eff492ce00a96d2692bdc05dfa2b16c6578a8b63c7a62710df32ca5d5b0dc`  
		Last Modified: Thu, 16 May 2019 00:50:57 GMT  
		Size: 12.0 MB (11982367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a335ec7cf18608aae558a248b285b9341758ca61106b87ac3f47cd149c0b0e23`  
		Last Modified: Thu, 16 May 2019 00:50:54 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c075c08ab286e874675271621ad72476e811de183eddc51b0f91d0c4589876a`  
		Last Modified: Thu, 16 May 2019 00:50:54 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5` - linux; s390x

```console
$ docker pull redis@sha256:0b03c9cf4a1a67b252539785c0474b3a90ab181ec5efbafce23d038a83b37e97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35523010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb89ced0c47db902fb8d1c2adea1a14abbae504a1740e023873ff84ea7cb954`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:38:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:38:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:39:38 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:59:10 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:59:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:59:11 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:00:56 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:00:58 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:00:58 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:00:59 GMT
WORKDIR /data
# Thu, 16 May 2019 01:00:59 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:01:00 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:01:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d667d9ec29251877608296ac4170b4d495aa961dd3297c6f8379f4df1f68aa98`  
		Last Modified: Wed, 08 May 2019 14:46:52 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3467c4b72354e2f6a442998daf9a3501b37844ed98edc512e0cfc147185c4b`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 927.0 KB (926960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45affb2cff9ff50d2e40e5547c22524a2bf0264b11f01fe9370d69899e1d212`  
		Last Modified: Thu, 16 May 2019 01:04:45 GMT  
		Size: 12.3 MB (12254908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d4090e99bae7a3a0e9030cf7d3764bbca2be43820f45567e2d2a8e11f41c8c`  
		Last Modified: Thu, 16 May 2019 01:04:39 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b291a062e3d7c8d2e45c55bfd6e9faee581df29059ee8d5da4039b42b1f572`  
		Last Modified: Thu, 16 May 2019 01:04:39 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.5-32bit`

```console
$ docker pull redis@sha256:af645dcda0207a1f0aea6fa239f3aeffd59812a9c760365eff7c9e7157055173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.5-32bit` - linux; amd64

```console
$ docker pull redis@sha256:c5edc855e4219295a0cfc2e2cde431ee061c813ece1a6cb1a36d340f2b6242cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39488609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0592cc8430991e1cf1ac3c106e1eb045e40b775938d17594c7a2a5628d05e963`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:41 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:50:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:50:42 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:50:42 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:42 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:43 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc71b55f6dc477ed95a4fccbee3e2e2b6fba700517b0eb8799c84e529e8e87a`  
		Last Modified: Thu, 16 May 2019 00:53:05 GMT  
		Size: 4.8 MB (4849454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ca34bf315a41019b267866e1d7ab70853c74ab96f566d80800c3e08a3812b5`  
		Last Modified: Thu, 16 May 2019 00:53:06 GMT  
		Size: 11.2 MB (11206179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8647c51bc4d6d5634159976479cfe28e5f072e141484efd6d2fbef6bef07f2`  
		Last Modified: Thu, 16 May 2019 00:53:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f07e1a22d2dc960b07d5e9c18be9d5a2aad0f215c4d539461bb4a1a508312bf`  
		Last Modified: Thu, 16 May 2019 00:53:04 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.5-32bit-stretch`

```console
$ docker pull redis@sha256:af645dcda0207a1f0aea6fa239f3aeffd59812a9c760365eff7c9e7157055173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.5-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:c5edc855e4219295a0cfc2e2cde431ee061c813ece1a6cb1a36d340f2b6242cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39488609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0592cc8430991e1cf1ac3c106e1eb045e40b775938d17594c7a2a5628d05e963`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:41 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:50:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:50:42 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:50:42 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:42 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:43 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc71b55f6dc477ed95a4fccbee3e2e2b6fba700517b0eb8799c84e529e8e87a`  
		Last Modified: Thu, 16 May 2019 00:53:05 GMT  
		Size: 4.8 MB (4849454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ca34bf315a41019b267866e1d7ab70853c74ab96f566d80800c3e08a3812b5`  
		Last Modified: Thu, 16 May 2019 00:53:06 GMT  
		Size: 11.2 MB (11206179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8647c51bc4d6d5634159976479cfe28e5f072e141484efd6d2fbef6bef07f2`  
		Last Modified: Thu, 16 May 2019 00:53:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f07e1a22d2dc960b07d5e9c18be9d5a2aad0f215c4d539461bb4a1a508312bf`  
		Last Modified: Thu, 16 May 2019 00:53:04 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.5-alpine`

```console
$ docker pull redis@sha256:2c8839911829aac720d41690edc07c0aff8385294fccd3a892af46d1a83b1ac0
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

### `redis:5.0.5-alpine` - linux; amd64

```console
$ docker pull redis@sha256:c9ceb889735c7f679286e7c0f4f2c6c2498d71681391f604c697c3fe0370bc61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17785903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e76053ebb73c258af5020c9ef27ba9302a6ee182f2c9c51b43c1689f1983c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:43:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 01:43:52 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:52:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:52:11 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:52:11 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:52:12 GMT
WORKDIR /data
# Thu, 16 May 2019 00:52:12 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:52:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:52:12 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:52:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8af38234db8796d645ec9541647315cdae2830b8f7c477b618feabbeee672cc`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b5e96879e00e980373ed29b9088020ea3d931c156252c1aae326b86a6775d4`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 403.8 KB (403836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979331f0d18ba64a84740fb84bac957330246e83c0869f7ba9cf9eff3b074dd7`  
		Last Modified: Thu, 16 May 2019 00:53:17 GMT  
		Size: 14.6 MB (14623266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d24058052e73e86d3b6e2b7cbbbabfe0d754dd7e6b13d2850412efcdd666bc`  
		Last Modified: Thu, 16 May 2019 00:53:14 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b87029df34535a9c84886663d1fb8d6fc76979f3d795eaf8c1cee4e1e5d86`  
		Last Modified: Thu, 16 May 2019 00:53:14 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:fffabb3f3beee0ba08f5a8b42c2e90fa3c8ab19847e7126799a878a3f74352a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17161056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ff1d5dfa48b15e001277c1ba0c143a51f94fe74e0904ec465fa3945220f263`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:29:26 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:29:28 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:49:30 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:49:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:49:31 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:50:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:50:28 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:50:28 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:50:29 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:30 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3b26f48db5b9f4aef841aedcaf84ca5b2036b4bc8d60ec400562dcc83b0e64`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c63408643782fafd48e9f99babe3c37e4192927a6bb12b7130619e8baffc64f`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 406.2 KB (406229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87951bfe4172b07b3854b0333fb68e6aeba559bbae037af3ad3e319f8b7a853e`  
		Last Modified: Thu, 16 May 2019 00:51:04 GMT  
		Size: 14.2 MB (14209570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6476f1115771a404904d680e03104bfe67379c3beced075741c567260dde783`  
		Last Modified: Thu, 16 May 2019 00:51:01 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abab16fb38f5768497c81de63998358233528219b11729326d3ce0935bbf827c`  
		Last Modified: Thu, 16 May 2019 00:51:01 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:c5c90f835d3c03b7d0360ef29069447fcb65772c3500c29a7bfff63e3627f671
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16713641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7364b13b17c27437ace7f254a9fcf7a81fe162dcbead2336a673e2a58475a0fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:44:03 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:44:05 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:02:48 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:02:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:02:49 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:03:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:03:39 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:03:39 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:03:40 GMT
WORKDIR /data
# Thu, 16 May 2019 00:03:41 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:03:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:03:42 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:03:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565eef49c17c1dbf08900c5f718bb6bf370c8fd8266c79aa5ab210dc41a3efd7`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a85d46778feb34d5ec3c1a011b9fddcb2fe7135bbfe170c0bf4fd77ff837a0`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 400.1 KB (400099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f7bed1e6321d469756d876f17cd2f4feabf31db8e65491d8407fb98955c4f25`  
		Last Modified: Thu, 16 May 2019 00:04:47 GMT  
		Size: 14.0 MB (13961048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6eb9fd464e2ea064a3cbe134aab49aee7dc14f4b52ef6c35c661564b372ffb`  
		Last Modified: Thu, 16 May 2019 00:04:42 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99bd1c3191e2cd9521e6cdd88c7c7f5057e00868ebdc4b29653e3563c03d075`  
		Last Modified: Thu, 16 May 2019 00:04:42 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:2f19c3aa8f393875a62060b858a86ba5183e61bd9a759f5bf168367a319344ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17624806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcde0e6a76e029d0ca814dab5183762e90ec30ff3a19de0ea80ce77e324524bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 01:07:39 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 16 May 2019 01:07:43 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 01:07:44 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:07:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:07:46 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:08:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 01:08:57 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:08:57 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:08:58 GMT
WORKDIR /data
# Thu, 16 May 2019 01:08:59 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 01:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:09:00 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:09:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b3a49ce31ca23e2611efdf316f0a9838b50f5ec8f186a20552aa22ae44906f`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6d8b3a94783c7f17b1cd84b113af2e4bcdf64b9fdbb7db5182af9774c79475`  
		Last Modified: Thu, 16 May 2019 01:12:47 GMT  
		Size: 406.0 KB (406020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c46c2ffb63594a41f6deddcd16ab80858cdaed8385bc3aa29c4c48fb554f88`  
		Last Modified: Thu, 16 May 2019 01:12:52 GMT  
		Size: 14.5 MB (14528175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36b677a872a5182d51a074be78178e3edd30ce82f352a310dba90a56bc26e27`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87588c0ff4b46685dab6c217d4f53ba93b343ebccfcea7d96d1d0d557fe8b170`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5-alpine` - linux; 386

```console
$ docker pull redis@sha256:8374fa70aac1f1444ef39bcb31b7abaa8126fa16f0a6916822402dcc650a139d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17142280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75465648de3bbfe96ed37784ee7f131ea4407d4c4ce55645498d47a3ca99777`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:19:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 14:19:53 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 02:10:46 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 02:10:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 02:10:47 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 02:11:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 02:11:50 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 02:11:50 GMT
VOLUME [/data]
# Thu, 16 May 2019 02:11:50 GMT
WORKDIR /data
# Thu, 16 May 2019 02:11:51 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 02:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:11:51 GMT
EXPOSE 6379
# Thu, 16 May 2019 02:11:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc09a60a7057123e651fa66030d2eb409f37acbcb6225df90a961c884bcd6ae`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342305f7d88077eba4d5d9428acb6d7250fdbae9a7cccab0eb143131ebab831`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 409.0 KB (408975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fda595ca26205f758955ea6d4d8d038f3941149bed6e217e05f349e0e9ab360`  
		Last Modified: Thu, 16 May 2019 02:12:30 GMT  
		Size: 14.0 MB (13979451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0ff33de2a7d2516f63d51c9fe50b7aee125a99bc658a421805506881367a66`  
		Last Modified: Thu, 16 May 2019 02:12:26 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4bcb23ca0fc8f8d621a6a30ca835064a756904822eb41b591b09e4b47e5795`  
		Last Modified: Thu, 16 May 2019 02:12:26 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:2131f58de319a847ed3e0086577849c758c22c8987276436eed775eba3603dce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18639005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a2573ff9529e9291addfb5a2be68039d82d841d4a64b665492f096bc8dfb19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:58:56 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:48:50 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:48:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:48:54 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:49:54 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:49:58 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:49:59 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:00 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:05 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1f873094cdec16153e6440266d174f7a212d084ef10eaee74f2131622f0a65`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a0313c41cb3c045368f5b83e91440077e3c713f4fa98ae890d3aac07fd1338`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 411.2 KB (411203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534782911a336474f3e2868061baea8b792a4481a07b0abe2d82401622a522a`  
		Last Modified: Thu, 16 May 2019 00:51:36 GMT  
		Size: 15.4 MB (15444950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4cd517c617d5f5f4e3e77d5e4ed4104d49d97889c178c16be633bc8430a7ef5`  
		Last Modified: Thu, 16 May 2019 00:51:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca176910b2aa18ae0ca6fb90c1617cc25c19b828463a4c6291d5c1bce5be8046`  
		Last Modified: Thu, 16 May 2019 00:51:31 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5-alpine` - linux; s390x

```console
$ docker pull redis@sha256:a41fe208c0e2b25d3dffe86d8f53e59e7bf85bed25e4bcd63896d0b24df96cc1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17842941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc33072c421fb526ca5eaf31ea98d347838b2f33b5c3642c8f2c79c5bca42e5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:29:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 13:29:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 01:01:14 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:01:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:01:16 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:03:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 01:03:16 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:03:17 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:03:18 GMT
WORKDIR /data
# Thu, 16 May 2019 01:03:18 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 01:03:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:03:20 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:03:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2038b2ec161be7e2f3c8ef364d60480ba3ca4bd5dc4869be8908551986c7d6f5`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7082e9e057aef8a7fefd028f8f5f6822021e7319e216b4ab9b0decef6c34a7`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 408.8 KB (408752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30adf6bcc13dd1cfb98b2042d134cf6ad2aaed83e83ff11c1a84809a3a3bc299`  
		Last Modified: Thu, 16 May 2019 01:05:19 GMT  
		Size: 14.9 MB (14889091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f39b50b05a66a15007217836deefb54b5a010ccb672f523333175aaac71060`  
		Last Modified: Thu, 16 May 2019 01:05:11 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3cb093b0aa27904752372821c5637de3428ee0d84ab02c8d0e8d7c555cce77`  
		Last Modified: Thu, 16 May 2019 01:05:11 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.5-alpine3.9`

```console
$ docker pull redis@sha256:2c8839911829aac720d41690edc07c0aff8385294fccd3a892af46d1a83b1ac0
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

### `redis:5.0.5-alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:c9ceb889735c7f679286e7c0f4f2c6c2498d71681391f604c697c3fe0370bc61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17785903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e76053ebb73c258af5020c9ef27ba9302a6ee182f2c9c51b43c1689f1983c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:43:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 01:43:52 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:52:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:52:11 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:52:11 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:52:12 GMT
WORKDIR /data
# Thu, 16 May 2019 00:52:12 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:52:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:52:12 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:52:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8af38234db8796d645ec9541647315cdae2830b8f7c477b618feabbeee672cc`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b5e96879e00e980373ed29b9088020ea3d931c156252c1aae326b86a6775d4`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 403.8 KB (403836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979331f0d18ba64a84740fb84bac957330246e83c0869f7ba9cf9eff3b074dd7`  
		Last Modified: Thu, 16 May 2019 00:53:17 GMT  
		Size: 14.6 MB (14623266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d24058052e73e86d3b6e2b7cbbbabfe0d754dd7e6b13d2850412efcdd666bc`  
		Last Modified: Thu, 16 May 2019 00:53:14 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b87029df34535a9c84886663d1fb8d6fc76979f3d795eaf8c1cee4e1e5d86`  
		Last Modified: Thu, 16 May 2019 00:53:14 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:fffabb3f3beee0ba08f5a8b42c2e90fa3c8ab19847e7126799a878a3f74352a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17161056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ff1d5dfa48b15e001277c1ba0c143a51f94fe74e0904ec465fa3945220f263`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:29:26 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:29:28 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:49:30 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:49:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:49:31 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:50:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:50:28 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:50:28 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:50:29 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:30 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3b26f48db5b9f4aef841aedcaf84ca5b2036b4bc8d60ec400562dcc83b0e64`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c63408643782fafd48e9f99babe3c37e4192927a6bb12b7130619e8baffc64f`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 406.2 KB (406229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87951bfe4172b07b3854b0333fb68e6aeba559bbae037af3ad3e319f8b7a853e`  
		Last Modified: Thu, 16 May 2019 00:51:04 GMT  
		Size: 14.2 MB (14209570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6476f1115771a404904d680e03104bfe67379c3beced075741c567260dde783`  
		Last Modified: Thu, 16 May 2019 00:51:01 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abab16fb38f5768497c81de63998358233528219b11729326d3ce0935bbf827c`  
		Last Modified: Thu, 16 May 2019 00:51:01 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:c5c90f835d3c03b7d0360ef29069447fcb65772c3500c29a7bfff63e3627f671
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16713641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7364b13b17c27437ace7f254a9fcf7a81fe162dcbead2336a673e2a58475a0fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:44:03 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:44:05 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:02:48 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:02:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:02:49 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:03:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:03:39 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:03:39 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:03:40 GMT
WORKDIR /data
# Thu, 16 May 2019 00:03:41 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:03:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:03:42 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:03:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565eef49c17c1dbf08900c5f718bb6bf370c8fd8266c79aa5ab210dc41a3efd7`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a85d46778feb34d5ec3c1a011b9fddcb2fe7135bbfe170c0bf4fd77ff837a0`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 400.1 KB (400099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f7bed1e6321d469756d876f17cd2f4feabf31db8e65491d8407fb98955c4f25`  
		Last Modified: Thu, 16 May 2019 00:04:47 GMT  
		Size: 14.0 MB (13961048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6eb9fd464e2ea064a3cbe134aab49aee7dc14f4b52ef6c35c661564b372ffb`  
		Last Modified: Thu, 16 May 2019 00:04:42 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99bd1c3191e2cd9521e6cdd88c7c7f5057e00868ebdc4b29653e3563c03d075`  
		Last Modified: Thu, 16 May 2019 00:04:42 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:2f19c3aa8f393875a62060b858a86ba5183e61bd9a759f5bf168367a319344ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17624806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcde0e6a76e029d0ca814dab5183762e90ec30ff3a19de0ea80ce77e324524bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 01:07:39 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 16 May 2019 01:07:43 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 01:07:44 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:07:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:07:46 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:08:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 01:08:57 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:08:57 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:08:58 GMT
WORKDIR /data
# Thu, 16 May 2019 01:08:59 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 01:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:09:00 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:09:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b3a49ce31ca23e2611efdf316f0a9838b50f5ec8f186a20552aa22ae44906f`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6d8b3a94783c7f17b1cd84b113af2e4bcdf64b9fdbb7db5182af9774c79475`  
		Last Modified: Thu, 16 May 2019 01:12:47 GMT  
		Size: 406.0 KB (406020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c46c2ffb63594a41f6deddcd16ab80858cdaed8385bc3aa29c4c48fb554f88`  
		Last Modified: Thu, 16 May 2019 01:12:52 GMT  
		Size: 14.5 MB (14528175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36b677a872a5182d51a074be78178e3edd30ce82f352a310dba90a56bc26e27`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87588c0ff4b46685dab6c217d4f53ba93b343ebccfcea7d96d1d0d557fe8b170`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:8374fa70aac1f1444ef39bcb31b7abaa8126fa16f0a6916822402dcc650a139d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17142280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75465648de3bbfe96ed37784ee7f131ea4407d4c4ce55645498d47a3ca99777`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:19:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 14:19:53 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 02:10:46 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 02:10:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 02:10:47 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 02:11:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 02:11:50 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 02:11:50 GMT
VOLUME [/data]
# Thu, 16 May 2019 02:11:50 GMT
WORKDIR /data
# Thu, 16 May 2019 02:11:51 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 02:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:11:51 GMT
EXPOSE 6379
# Thu, 16 May 2019 02:11:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc09a60a7057123e651fa66030d2eb409f37acbcb6225df90a961c884bcd6ae`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342305f7d88077eba4d5d9428acb6d7250fdbae9a7cccab0eb143131ebab831`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 409.0 KB (408975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fda595ca26205f758955ea6d4d8d038f3941149bed6e217e05f349e0e9ab360`  
		Last Modified: Thu, 16 May 2019 02:12:30 GMT  
		Size: 14.0 MB (13979451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0ff33de2a7d2516f63d51c9fe50b7aee125a99bc658a421805506881367a66`  
		Last Modified: Thu, 16 May 2019 02:12:26 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4bcb23ca0fc8f8d621a6a30ca835064a756904822eb41b591b09e4b47e5795`  
		Last Modified: Thu, 16 May 2019 02:12:26 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:2131f58de319a847ed3e0086577849c758c22c8987276436eed775eba3603dce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18639005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a2573ff9529e9291addfb5a2be68039d82d841d4a64b665492f096bc8dfb19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:58:56 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:48:50 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:48:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:48:54 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:49:54 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:49:58 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:49:59 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:00 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:05 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1f873094cdec16153e6440266d174f7a212d084ef10eaee74f2131622f0a65`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a0313c41cb3c045368f5b83e91440077e3c713f4fa98ae890d3aac07fd1338`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 411.2 KB (411203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534782911a336474f3e2868061baea8b792a4481a07b0abe2d82401622a522a`  
		Last Modified: Thu, 16 May 2019 00:51:36 GMT  
		Size: 15.4 MB (15444950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4cd517c617d5f5f4e3e77d5e4ed4104d49d97889c178c16be633bc8430a7ef5`  
		Last Modified: Thu, 16 May 2019 00:51:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca176910b2aa18ae0ca6fb90c1617cc25c19b828463a4c6291d5c1bce5be8046`  
		Last Modified: Thu, 16 May 2019 00:51:31 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:a41fe208c0e2b25d3dffe86d8f53e59e7bf85bed25e4bcd63896d0b24df96cc1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17842941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc33072c421fb526ca5eaf31ea98d347838b2f33b5c3642c8f2c79c5bca42e5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:29:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 13:29:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 01:01:14 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:01:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:01:16 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:03:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 01:03:16 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:03:17 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:03:18 GMT
WORKDIR /data
# Thu, 16 May 2019 01:03:18 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 01:03:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:03:20 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:03:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2038b2ec161be7e2f3c8ef364d60480ba3ca4bd5dc4869be8908551986c7d6f5`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7082e9e057aef8a7fefd028f8f5f6822021e7319e216b4ab9b0decef6c34a7`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 408.8 KB (408752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30adf6bcc13dd1cfb98b2042d134cf6ad2aaed83e83ff11c1a84809a3a3bc299`  
		Last Modified: Thu, 16 May 2019 01:05:19 GMT  
		Size: 14.9 MB (14889091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f39b50b05a66a15007217836deefb54b5a010ccb672f523333175aaac71060`  
		Last Modified: Thu, 16 May 2019 01:05:11 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3cb093b0aa27904752372821c5637de3428ee0d84ab02c8d0e8d7c555cce77`  
		Last Modified: Thu, 16 May 2019 01:05:11 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.5-stretch`

```console
$ docker pull redis@sha256:e549a30b3c31e6305b973e0d9113a3d38d60566708137af9ed7cbdce5650c5cc
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

### `redis:5.0.5-stretch` - linux; amd64

```console
$ docker pull redis@sha256:2720a72fb05febf7994e422b7cd327a031dcca2863a808e2825bf3cbb8d4c804
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35224772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e3588af5178bae2c8ffdbfa227c7d0305518d3821a71615c14ffb8643d7eb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:48:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:48:40 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:48:41 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:48:41 GMT
WORKDIR /data
# Thu, 16 May 2019 00:48:41 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:48:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:48:41 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:48:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0b11956c7210838cbb4ab1a9f5083a646b313f6a8f4f89b5414d3008014c8c`  
		Last Modified: Thu, 16 May 2019 00:52:57 GMT  
		Size: 11.8 MB (11791799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09dbd716637eb4357876adc2398d0e1fe2b98afb7003b3099e5362c10eff9628`  
		Last Modified: Thu, 16 May 2019 00:52:54 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09046fd44816fc8bcb817fd60b854d18f5c89b6e06cfff7d08670376b1c9074`  
		Last Modified: Thu, 16 May 2019 00:52:54 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:05f98dbb3ef8eb53566a46a6adf5514394fa29120b0033cc9e30d1aea41fb8a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33550061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d613ca9335d852802284ef79af77a56478678ea2709eb67a8284fb95b17c8482`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:44:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 09:44:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 09:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:48:30 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:48:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:48:31 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:49:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:49:42 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:49:43 GMT
WORKDIR /data
# Thu, 16 May 2019 00:49:43 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:49:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:49:44 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:49:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9042d288dd3256571141d375b77cd76ad30099bb2dc13f80e91fbf472e6b1`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2a42a5237467b8424f4e6421ff0a721a0f135a647799991c350c08aca04400`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 931.2 KB (931193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35e4cd73fac730f62773e04644c7ea42c04a1dbd7f0b3588baa46e37e426cd4`  
		Last Modified: Thu, 16 May 2019 00:50:17 GMT  
		Size: 11.5 MB (11460720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68ab7a056a41635f692347b21a08c379e94abed92b3b387efd12419bf671b0d`  
		Last Modified: Thu, 16 May 2019 00:50:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c18de47fb4cd88147ad8c55593e13f29a439acc06cec69c3e8abf45f140575a`  
		Last Modified: Thu, 16 May 2019 00:50:14 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:45027d4f22fca31c1a341b1d168f71d36615df5bb4d3840117e4cc7a80194c0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31347653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61c27474610c8b324d42968497d1a8f07b158821cfcb28d9de54b8c8eb94d2cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:54:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:54:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:54:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:01:33 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:01:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:01:34 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:02:35 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:02:37 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:02:37 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:02:38 GMT
WORKDIR /data
# Thu, 16 May 2019 00:02:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:02:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:02:39 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:02:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04ed9d6e5c55be71a7578af699db21acfa7d9dd81dc0feefea5ab6c7fc9d3`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d7b0643ad1873b502f90a920e652822474851a731a233a0be7dafee3fb1bcc`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 915.8 KB (915827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e16cba97d24e33a673f3b3b6c2333783f2a309a8cdee47555e2b79ab44b630`  
		Last Modified: Thu, 16 May 2019 00:04:23 GMT  
		Size: 11.2 MB (11153327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c225bcdc75e993c3c97cc0336d03eead391af26eeade2f1ba733eb40bdf6cf`  
		Last Modified: Thu, 16 May 2019 00:04:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54475dfedeaadc109235cff1214f522ae9ee8ca9f563e7bf4bd2d23e46fa2619`  
		Last Modified: Thu, 16 May 2019 00:04:20 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:77859ef1211d65e314a95782c90dfaa4bd43cf36dfdac9c6ecddcaf4c55dd01c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32850031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a4e737c0a3806823fa6d9ba1d930462f362feeb7a8dfbf3087f250fe29e9e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Thu, 16 May 2019 01:04:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 16 May 2019 01:04:52 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 01:05:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 01:05:35 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:05:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:05:37 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:07:17 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:07:22 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:07:22 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:07:23 GMT
WORKDIR /data
# Thu, 16 May 2019 01:07:25 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:07:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:07:26 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:07:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b47765258d397f39f0ca0d0b06dbc96995d2b8e7ed2c6961982cbea83cbbf52`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ef2ae43b989ae901049515810f82bcb828d20239bc7bad82eca8de79328be3`  
		Last Modified: Thu, 16 May 2019 01:12:20 GMT  
		Size: 908.0 KB (907958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c0c86fd51dc6871a6a999b3e3ca91bd5788f4bda24ef5bdd4c1b0e1d2eeb30`  
		Last Modified: Thu, 16 May 2019 01:12:23 GMT  
		Size: 11.6 MB (11605963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3458ae93cdfc79a80922a5cdb500acd76a5291e1b0cb0a0ce4db3dc3bc3e2e65`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b95cf35341c8570b208e5bdbac3ce0b9d882815aa12eea27deeb805f34eb4ee`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5-stretch` - linux; 386

```console
$ docker pull redis@sha256:eac0c7120e689fc18c90c8c607740c28a504b4220190064e9857be99c291fd49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35244514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f1a80a6e6be91424438906acd0a53d336b4023f09bdd093e6cee02cb055daf6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:27:13 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:27:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:27:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 02:09:32 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 02:09:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 02:09:33 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 02:10:37 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 02:10:38 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 02:10:38 GMT
VOLUME [/data]
# Thu, 16 May 2019 02:10:38 GMT
WORKDIR /data
# Thu, 16 May 2019 02:10:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 02:10:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:10:39 GMT
EXPOSE 6379
# Thu, 16 May 2019 02:10:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33b9d5023cb64a3e2105aa585763e0f894f9c8bad0cd7255f4270ca658cb230`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd525c34aa87726465ac825c4e2672a834143ab46dcc2281b78c8cee8040c6d2`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 920.2 KB (920170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308c994448375c571c22b1be21a1484f72560830c9ff2b5a646c02cb9f82874c`  
		Last Modified: Thu, 16 May 2019 02:12:18 GMT  
		Size: 11.2 MB (11201252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9098a426ff04cb90c2e856152adb7fa4de027f72972d90434a0b09f92046b9`  
		Last Modified: Thu, 16 May 2019 02:12:16 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0781da06b9d68188b8be7568feed3fbad46a0b7f34a53ca3bd1b2574edaec102`  
		Last Modified: Thu, 16 May 2019 02:12:16 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:a966f78de2cfc0de4f0c6fe6203c40ca9a79e0e0620d13b9ce10e885f64cbe92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35639680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1279708270c90148f33777b051c1556aadd5a3e138f258469ddde2c80e3ec5dc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:53:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 13:53:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 13:57:13 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:46:09 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:46:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:46:12 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:48:12 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:48:19 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:48:22 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:48:24 GMT
WORKDIR /data
# Thu, 16 May 2019 00:48:25 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:48:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:48:29 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:48:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff669625b2edb1e0931d0870b1809e38cff4dcef53234334cd3cf4de1c49c7ce`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169e96a284a165ec6a0775d6b3aeeb4d6a67a0f098f207acbb7ce857a3fd50d`  
		Last Modified: Wed, 08 May 2019 14:09:37 GMT  
		Size: 910.1 KB (910104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515eff492ce00a96d2692bdc05dfa2b16c6578a8b63c7a62710df32ca5d5b0dc`  
		Last Modified: Thu, 16 May 2019 00:50:57 GMT  
		Size: 12.0 MB (11982367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a335ec7cf18608aae558a248b285b9341758ca61106b87ac3f47cd149c0b0e23`  
		Last Modified: Thu, 16 May 2019 00:50:54 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c075c08ab286e874675271621ad72476e811de183eddc51b0f91d0c4589876a`  
		Last Modified: Thu, 16 May 2019 00:50:54 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.5-stretch` - linux; s390x

```console
$ docker pull redis@sha256:0b03c9cf4a1a67b252539785c0474b3a90ab181ec5efbafce23d038a83b37e97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35523010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb89ced0c47db902fb8d1c2adea1a14abbae504a1740e023873ff84ea7cb954`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:38:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:38:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:39:38 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:59:10 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:59:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:59:11 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:00:56 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:00:58 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:00:58 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:00:59 GMT
WORKDIR /data
# Thu, 16 May 2019 01:00:59 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:01:00 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:01:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d667d9ec29251877608296ac4170b4d495aa961dd3297c6f8379f4df1f68aa98`  
		Last Modified: Wed, 08 May 2019 14:46:52 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3467c4b72354e2f6a442998daf9a3501b37844ed98edc512e0cfc147185c4b`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 927.0 KB (926960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45affb2cff9ff50d2e40e5547c22524a2bf0264b11f01fe9370d69899e1d212`  
		Last Modified: Thu, 16 May 2019 01:04:45 GMT  
		Size: 12.3 MB (12254908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d4090e99bae7a3a0e9030cf7d3764bbca2be43820f45567e2d2a8e11f41c8c`  
		Last Modified: Thu, 16 May 2019 01:04:39 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b291a062e3d7c8d2e45c55bfd6e9faee581df29059ee8d5da4039b42b1f572`  
		Last Modified: Thu, 16 May 2019 01:04:39 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-alpine`

```console
$ docker pull redis@sha256:2c8839911829aac720d41690edc07c0aff8385294fccd3a892af46d1a83b1ac0
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
$ docker pull redis@sha256:c9ceb889735c7f679286e7c0f4f2c6c2498d71681391f604c697c3fe0370bc61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17785903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e76053ebb73c258af5020c9ef27ba9302a6ee182f2c9c51b43c1689f1983c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:43:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 01:43:52 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:52:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:52:11 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:52:11 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:52:12 GMT
WORKDIR /data
# Thu, 16 May 2019 00:52:12 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:52:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:52:12 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:52:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8af38234db8796d645ec9541647315cdae2830b8f7c477b618feabbeee672cc`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b5e96879e00e980373ed29b9088020ea3d931c156252c1aae326b86a6775d4`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 403.8 KB (403836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979331f0d18ba64a84740fb84bac957330246e83c0869f7ba9cf9eff3b074dd7`  
		Last Modified: Thu, 16 May 2019 00:53:17 GMT  
		Size: 14.6 MB (14623266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d24058052e73e86d3b6e2b7cbbbabfe0d754dd7e6b13d2850412efcdd666bc`  
		Last Modified: Thu, 16 May 2019 00:53:14 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b87029df34535a9c84886663d1fb8d6fc76979f3d795eaf8c1cee4e1e5d86`  
		Last Modified: Thu, 16 May 2019 00:53:14 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:fffabb3f3beee0ba08f5a8b42c2e90fa3c8ab19847e7126799a878a3f74352a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17161056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ff1d5dfa48b15e001277c1ba0c143a51f94fe74e0904ec465fa3945220f263`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:29:26 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:29:28 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:49:30 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:49:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:49:31 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:50:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:50:28 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:50:28 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:50:29 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:30 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3b26f48db5b9f4aef841aedcaf84ca5b2036b4bc8d60ec400562dcc83b0e64`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c63408643782fafd48e9f99babe3c37e4192927a6bb12b7130619e8baffc64f`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 406.2 KB (406229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87951bfe4172b07b3854b0333fb68e6aeba559bbae037af3ad3e319f8b7a853e`  
		Last Modified: Thu, 16 May 2019 00:51:04 GMT  
		Size: 14.2 MB (14209570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6476f1115771a404904d680e03104bfe67379c3beced075741c567260dde783`  
		Last Modified: Thu, 16 May 2019 00:51:01 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abab16fb38f5768497c81de63998358233528219b11729326d3ce0935bbf827c`  
		Last Modified: Thu, 16 May 2019 00:51:01 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:c5c90f835d3c03b7d0360ef29069447fcb65772c3500c29a7bfff63e3627f671
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16713641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7364b13b17c27437ace7f254a9fcf7a81fe162dcbead2336a673e2a58475a0fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:44:03 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:44:05 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:02:48 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:02:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:02:49 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:03:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:03:39 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:03:39 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:03:40 GMT
WORKDIR /data
# Thu, 16 May 2019 00:03:41 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:03:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:03:42 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:03:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565eef49c17c1dbf08900c5f718bb6bf370c8fd8266c79aa5ab210dc41a3efd7`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a85d46778feb34d5ec3c1a011b9fddcb2fe7135bbfe170c0bf4fd77ff837a0`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 400.1 KB (400099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f7bed1e6321d469756d876f17cd2f4feabf31db8e65491d8407fb98955c4f25`  
		Last Modified: Thu, 16 May 2019 00:04:47 GMT  
		Size: 14.0 MB (13961048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6eb9fd464e2ea064a3cbe134aab49aee7dc14f4b52ef6c35c661564b372ffb`  
		Last Modified: Thu, 16 May 2019 00:04:42 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99bd1c3191e2cd9521e6cdd88c7c7f5057e00868ebdc4b29653e3563c03d075`  
		Last Modified: Thu, 16 May 2019 00:04:42 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:2f19c3aa8f393875a62060b858a86ba5183e61bd9a759f5bf168367a319344ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17624806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcde0e6a76e029d0ca814dab5183762e90ec30ff3a19de0ea80ce77e324524bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 01:07:39 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 16 May 2019 01:07:43 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 01:07:44 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:07:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:07:46 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:08:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 01:08:57 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:08:57 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:08:58 GMT
WORKDIR /data
# Thu, 16 May 2019 01:08:59 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 01:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:09:00 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:09:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b3a49ce31ca23e2611efdf316f0a9838b50f5ec8f186a20552aa22ae44906f`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6d8b3a94783c7f17b1cd84b113af2e4bcdf64b9fdbb7db5182af9774c79475`  
		Last Modified: Thu, 16 May 2019 01:12:47 GMT  
		Size: 406.0 KB (406020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c46c2ffb63594a41f6deddcd16ab80858cdaed8385bc3aa29c4c48fb554f88`  
		Last Modified: Thu, 16 May 2019 01:12:52 GMT  
		Size: 14.5 MB (14528175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36b677a872a5182d51a074be78178e3edd30ce82f352a310dba90a56bc26e27`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87588c0ff4b46685dab6c217d4f53ba93b343ebccfcea7d96d1d0d557fe8b170`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; 386

```console
$ docker pull redis@sha256:8374fa70aac1f1444ef39bcb31b7abaa8126fa16f0a6916822402dcc650a139d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17142280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75465648de3bbfe96ed37784ee7f131ea4407d4c4ce55645498d47a3ca99777`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:19:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 14:19:53 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 02:10:46 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 02:10:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 02:10:47 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 02:11:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 02:11:50 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 02:11:50 GMT
VOLUME [/data]
# Thu, 16 May 2019 02:11:50 GMT
WORKDIR /data
# Thu, 16 May 2019 02:11:51 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 02:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:11:51 GMT
EXPOSE 6379
# Thu, 16 May 2019 02:11:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc09a60a7057123e651fa66030d2eb409f37acbcb6225df90a961c884bcd6ae`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342305f7d88077eba4d5d9428acb6d7250fdbae9a7cccab0eb143131ebab831`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 409.0 KB (408975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fda595ca26205f758955ea6d4d8d038f3941149bed6e217e05f349e0e9ab360`  
		Last Modified: Thu, 16 May 2019 02:12:30 GMT  
		Size: 14.0 MB (13979451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0ff33de2a7d2516f63d51c9fe50b7aee125a99bc658a421805506881367a66`  
		Last Modified: Thu, 16 May 2019 02:12:26 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4bcb23ca0fc8f8d621a6a30ca835064a756904822eb41b591b09e4b47e5795`  
		Last Modified: Thu, 16 May 2019 02:12:26 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:2131f58de319a847ed3e0086577849c758c22c8987276436eed775eba3603dce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18639005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a2573ff9529e9291addfb5a2be68039d82d841d4a64b665492f096bc8dfb19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:58:56 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:48:50 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:48:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:48:54 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:49:54 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:49:58 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:49:59 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:00 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:05 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1f873094cdec16153e6440266d174f7a212d084ef10eaee74f2131622f0a65`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a0313c41cb3c045368f5b83e91440077e3c713f4fa98ae890d3aac07fd1338`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 411.2 KB (411203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534782911a336474f3e2868061baea8b792a4481a07b0abe2d82401622a522a`  
		Last Modified: Thu, 16 May 2019 00:51:36 GMT  
		Size: 15.4 MB (15444950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4cd517c617d5f5f4e3e77d5e4ed4104d49d97889c178c16be633bc8430a7ef5`  
		Last Modified: Thu, 16 May 2019 00:51:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca176910b2aa18ae0ca6fb90c1617cc25c19b828463a4c6291d5c1bce5be8046`  
		Last Modified: Thu, 16 May 2019 00:51:31 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; s390x

```console
$ docker pull redis@sha256:a41fe208c0e2b25d3dffe86d8f53e59e7bf85bed25e4bcd63896d0b24df96cc1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17842941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc33072c421fb526ca5eaf31ea98d347838b2f33b5c3642c8f2c79c5bca42e5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:29:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 13:29:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 01:01:14 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:01:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:01:16 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:03:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 01:03:16 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:03:17 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:03:18 GMT
WORKDIR /data
# Thu, 16 May 2019 01:03:18 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 01:03:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:03:20 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:03:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2038b2ec161be7e2f3c8ef364d60480ba3ca4bd5dc4869be8908551986c7d6f5`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7082e9e057aef8a7fefd028f8f5f6822021e7319e216b4ab9b0decef6c34a7`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 408.8 KB (408752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30adf6bcc13dd1cfb98b2042d134cf6ad2aaed83e83ff11c1a84809a3a3bc299`  
		Last Modified: Thu, 16 May 2019 01:05:19 GMT  
		Size: 14.9 MB (14889091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f39b50b05a66a15007217836deefb54b5a010ccb672f523333175aaac71060`  
		Last Modified: Thu, 16 May 2019 01:05:11 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3cb093b0aa27904752372821c5637de3428ee0d84ab02c8d0e8d7c555cce77`  
		Last Modified: Thu, 16 May 2019 01:05:11 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-alpine3.9`

```console
$ docker pull redis@sha256:2c8839911829aac720d41690edc07c0aff8385294fccd3a892af46d1a83b1ac0
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
$ docker pull redis@sha256:c9ceb889735c7f679286e7c0f4f2c6c2498d71681391f604c697c3fe0370bc61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17785903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e76053ebb73c258af5020c9ef27ba9302a6ee182f2c9c51b43c1689f1983c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:43:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 01:43:52 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:52:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:52:11 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:52:11 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:52:12 GMT
WORKDIR /data
# Thu, 16 May 2019 00:52:12 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:52:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:52:12 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:52:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8af38234db8796d645ec9541647315cdae2830b8f7c477b618feabbeee672cc`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b5e96879e00e980373ed29b9088020ea3d931c156252c1aae326b86a6775d4`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 403.8 KB (403836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979331f0d18ba64a84740fb84bac957330246e83c0869f7ba9cf9eff3b074dd7`  
		Last Modified: Thu, 16 May 2019 00:53:17 GMT  
		Size: 14.6 MB (14623266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d24058052e73e86d3b6e2b7cbbbabfe0d754dd7e6b13d2850412efcdd666bc`  
		Last Modified: Thu, 16 May 2019 00:53:14 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b87029df34535a9c84886663d1fb8d6fc76979f3d795eaf8c1cee4e1e5d86`  
		Last Modified: Thu, 16 May 2019 00:53:14 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:fffabb3f3beee0ba08f5a8b42c2e90fa3c8ab19847e7126799a878a3f74352a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17161056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ff1d5dfa48b15e001277c1ba0c143a51f94fe74e0904ec465fa3945220f263`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:29:26 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:29:28 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:49:30 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:49:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:49:31 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:50:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:50:28 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:50:28 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:50:29 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:30 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3b26f48db5b9f4aef841aedcaf84ca5b2036b4bc8d60ec400562dcc83b0e64`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c63408643782fafd48e9f99babe3c37e4192927a6bb12b7130619e8baffc64f`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 406.2 KB (406229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87951bfe4172b07b3854b0333fb68e6aeba559bbae037af3ad3e319f8b7a853e`  
		Last Modified: Thu, 16 May 2019 00:51:04 GMT  
		Size: 14.2 MB (14209570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6476f1115771a404904d680e03104bfe67379c3beced075741c567260dde783`  
		Last Modified: Thu, 16 May 2019 00:51:01 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abab16fb38f5768497c81de63998358233528219b11729326d3ce0935bbf827c`  
		Last Modified: Thu, 16 May 2019 00:51:01 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:c5c90f835d3c03b7d0360ef29069447fcb65772c3500c29a7bfff63e3627f671
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16713641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7364b13b17c27437ace7f254a9fcf7a81fe162dcbead2336a673e2a58475a0fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:44:03 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:44:05 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:02:48 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:02:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:02:49 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:03:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:03:39 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:03:39 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:03:40 GMT
WORKDIR /data
# Thu, 16 May 2019 00:03:41 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:03:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:03:42 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:03:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565eef49c17c1dbf08900c5f718bb6bf370c8fd8266c79aa5ab210dc41a3efd7`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a85d46778feb34d5ec3c1a011b9fddcb2fe7135bbfe170c0bf4fd77ff837a0`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 400.1 KB (400099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f7bed1e6321d469756d876f17cd2f4feabf31db8e65491d8407fb98955c4f25`  
		Last Modified: Thu, 16 May 2019 00:04:47 GMT  
		Size: 14.0 MB (13961048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6eb9fd464e2ea064a3cbe134aab49aee7dc14f4b52ef6c35c661564b372ffb`  
		Last Modified: Thu, 16 May 2019 00:04:42 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99bd1c3191e2cd9521e6cdd88c7c7f5057e00868ebdc4b29653e3563c03d075`  
		Last Modified: Thu, 16 May 2019 00:04:42 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:2f19c3aa8f393875a62060b858a86ba5183e61bd9a759f5bf168367a319344ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17624806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcde0e6a76e029d0ca814dab5183762e90ec30ff3a19de0ea80ce77e324524bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 01:07:39 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 16 May 2019 01:07:43 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 01:07:44 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:07:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:07:46 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:08:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 01:08:57 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:08:57 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:08:58 GMT
WORKDIR /data
# Thu, 16 May 2019 01:08:59 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 01:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:09:00 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:09:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b3a49ce31ca23e2611efdf316f0a9838b50f5ec8f186a20552aa22ae44906f`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6d8b3a94783c7f17b1cd84b113af2e4bcdf64b9fdbb7db5182af9774c79475`  
		Last Modified: Thu, 16 May 2019 01:12:47 GMT  
		Size: 406.0 KB (406020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c46c2ffb63594a41f6deddcd16ab80858cdaed8385bc3aa29c4c48fb554f88`  
		Last Modified: Thu, 16 May 2019 01:12:52 GMT  
		Size: 14.5 MB (14528175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36b677a872a5182d51a074be78178e3edd30ce82f352a310dba90a56bc26e27`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87588c0ff4b46685dab6c217d4f53ba93b343ebccfcea7d96d1d0d557fe8b170`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:8374fa70aac1f1444ef39bcb31b7abaa8126fa16f0a6916822402dcc650a139d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17142280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75465648de3bbfe96ed37784ee7f131ea4407d4c4ce55645498d47a3ca99777`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:19:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 14:19:53 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 02:10:46 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 02:10:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 02:10:47 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 02:11:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 02:11:50 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 02:11:50 GMT
VOLUME [/data]
# Thu, 16 May 2019 02:11:50 GMT
WORKDIR /data
# Thu, 16 May 2019 02:11:51 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 02:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:11:51 GMT
EXPOSE 6379
# Thu, 16 May 2019 02:11:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc09a60a7057123e651fa66030d2eb409f37acbcb6225df90a961c884bcd6ae`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342305f7d88077eba4d5d9428acb6d7250fdbae9a7cccab0eb143131ebab831`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 409.0 KB (408975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fda595ca26205f758955ea6d4d8d038f3941149bed6e217e05f349e0e9ab360`  
		Last Modified: Thu, 16 May 2019 02:12:30 GMT  
		Size: 14.0 MB (13979451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0ff33de2a7d2516f63d51c9fe50b7aee125a99bc658a421805506881367a66`  
		Last Modified: Thu, 16 May 2019 02:12:26 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4bcb23ca0fc8f8d621a6a30ca835064a756904822eb41b591b09e4b47e5795`  
		Last Modified: Thu, 16 May 2019 02:12:26 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:2131f58de319a847ed3e0086577849c758c22c8987276436eed775eba3603dce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18639005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a2573ff9529e9291addfb5a2be68039d82d841d4a64b665492f096bc8dfb19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:58:56 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:48:50 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:48:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:48:54 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:49:54 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:49:58 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:49:59 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:00 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:05 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1f873094cdec16153e6440266d174f7a212d084ef10eaee74f2131622f0a65`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a0313c41cb3c045368f5b83e91440077e3c713f4fa98ae890d3aac07fd1338`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 411.2 KB (411203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534782911a336474f3e2868061baea8b792a4481a07b0abe2d82401622a522a`  
		Last Modified: Thu, 16 May 2019 00:51:36 GMT  
		Size: 15.4 MB (15444950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4cd517c617d5f5f4e3e77d5e4ed4104d49d97889c178c16be633bc8430a7ef5`  
		Last Modified: Thu, 16 May 2019 00:51:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca176910b2aa18ae0ca6fb90c1617cc25c19b828463a4c6291d5c1bce5be8046`  
		Last Modified: Thu, 16 May 2019 00:51:31 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:a41fe208c0e2b25d3dffe86d8f53e59e7bf85bed25e4bcd63896d0b24df96cc1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17842941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc33072c421fb526ca5eaf31ea98d347838b2f33b5c3642c8f2c79c5bca42e5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:29:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 13:29:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 01:01:14 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:01:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:01:16 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:03:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 01:03:16 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:03:17 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:03:18 GMT
WORKDIR /data
# Thu, 16 May 2019 01:03:18 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 01:03:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:03:20 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:03:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2038b2ec161be7e2f3c8ef364d60480ba3ca4bd5dc4869be8908551986c7d6f5`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7082e9e057aef8a7fefd028f8f5f6822021e7319e216b4ab9b0decef6c34a7`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 408.8 KB (408752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30adf6bcc13dd1cfb98b2042d134cf6ad2aaed83e83ff11c1a84809a3a3bc299`  
		Last Modified: Thu, 16 May 2019 01:05:19 GMT  
		Size: 14.9 MB (14889091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f39b50b05a66a15007217836deefb54b5a010ccb672f523333175aaac71060`  
		Last Modified: Thu, 16 May 2019 01:05:11 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3cb093b0aa27904752372821c5637de3428ee0d84ab02c8d0e8d7c555cce77`  
		Last Modified: Thu, 16 May 2019 01:05:11 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-stretch`

```console
$ docker pull redis@sha256:e549a30b3c31e6305b973e0d9113a3d38d60566708137af9ed7cbdce5650c5cc
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
$ docker pull redis@sha256:2720a72fb05febf7994e422b7cd327a031dcca2863a808e2825bf3cbb8d4c804
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35224772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e3588af5178bae2c8ffdbfa227c7d0305518d3821a71615c14ffb8643d7eb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:48:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:48:40 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:48:41 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:48:41 GMT
WORKDIR /data
# Thu, 16 May 2019 00:48:41 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:48:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:48:41 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:48:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0b11956c7210838cbb4ab1a9f5083a646b313f6a8f4f89b5414d3008014c8c`  
		Last Modified: Thu, 16 May 2019 00:52:57 GMT  
		Size: 11.8 MB (11791799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09dbd716637eb4357876adc2398d0e1fe2b98afb7003b3099e5362c10eff9628`  
		Last Modified: Thu, 16 May 2019 00:52:54 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09046fd44816fc8bcb817fd60b854d18f5c89b6e06cfff7d08670376b1c9074`  
		Last Modified: Thu, 16 May 2019 00:52:54 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:05f98dbb3ef8eb53566a46a6adf5514394fa29120b0033cc9e30d1aea41fb8a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33550061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d613ca9335d852802284ef79af77a56478678ea2709eb67a8284fb95b17c8482`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:44:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 09:44:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 09:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:48:30 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:48:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:48:31 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:49:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:49:42 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:49:43 GMT
WORKDIR /data
# Thu, 16 May 2019 00:49:43 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:49:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:49:44 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:49:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9042d288dd3256571141d375b77cd76ad30099bb2dc13f80e91fbf472e6b1`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2a42a5237467b8424f4e6421ff0a721a0f135a647799991c350c08aca04400`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 931.2 KB (931193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35e4cd73fac730f62773e04644c7ea42c04a1dbd7f0b3588baa46e37e426cd4`  
		Last Modified: Thu, 16 May 2019 00:50:17 GMT  
		Size: 11.5 MB (11460720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68ab7a056a41635f692347b21a08c379e94abed92b3b387efd12419bf671b0d`  
		Last Modified: Thu, 16 May 2019 00:50:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c18de47fb4cd88147ad8c55593e13f29a439acc06cec69c3e8abf45f140575a`  
		Last Modified: Thu, 16 May 2019 00:50:14 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:45027d4f22fca31c1a341b1d168f71d36615df5bb4d3840117e4cc7a80194c0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31347653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61c27474610c8b324d42968497d1a8f07b158821cfcb28d9de54b8c8eb94d2cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:54:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:54:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:54:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:01:33 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:01:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:01:34 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:02:35 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:02:37 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:02:37 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:02:38 GMT
WORKDIR /data
# Thu, 16 May 2019 00:02:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:02:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:02:39 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:02:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04ed9d6e5c55be71a7578af699db21acfa7d9dd81dc0feefea5ab6c7fc9d3`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d7b0643ad1873b502f90a920e652822474851a731a233a0be7dafee3fb1bcc`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 915.8 KB (915827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e16cba97d24e33a673f3b3b6c2333783f2a309a8cdee47555e2b79ab44b630`  
		Last Modified: Thu, 16 May 2019 00:04:23 GMT  
		Size: 11.2 MB (11153327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c225bcdc75e993c3c97cc0336d03eead391af26eeade2f1ba733eb40bdf6cf`  
		Last Modified: Thu, 16 May 2019 00:04:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54475dfedeaadc109235cff1214f522ae9ee8ca9f563e7bf4bd2d23e46fa2619`  
		Last Modified: Thu, 16 May 2019 00:04:20 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:77859ef1211d65e314a95782c90dfaa4bd43cf36dfdac9c6ecddcaf4c55dd01c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32850031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a4e737c0a3806823fa6d9ba1d930462f362feeb7a8dfbf3087f250fe29e9e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Thu, 16 May 2019 01:04:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 16 May 2019 01:04:52 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 01:05:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 01:05:35 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:05:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:05:37 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:07:17 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:07:22 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:07:22 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:07:23 GMT
WORKDIR /data
# Thu, 16 May 2019 01:07:25 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:07:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:07:26 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:07:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b47765258d397f39f0ca0d0b06dbc96995d2b8e7ed2c6961982cbea83cbbf52`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ef2ae43b989ae901049515810f82bcb828d20239bc7bad82eca8de79328be3`  
		Last Modified: Thu, 16 May 2019 01:12:20 GMT  
		Size: 908.0 KB (907958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c0c86fd51dc6871a6a999b3e3ca91bd5788f4bda24ef5bdd4c1b0e1d2eeb30`  
		Last Modified: Thu, 16 May 2019 01:12:23 GMT  
		Size: 11.6 MB (11605963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3458ae93cdfc79a80922a5cdb500acd76a5291e1b0cb0a0ce4db3dc3bc3e2e65`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b95cf35341c8570b208e5bdbac3ce0b9d882815aa12eea27deeb805f34eb4ee`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; 386

```console
$ docker pull redis@sha256:eac0c7120e689fc18c90c8c607740c28a504b4220190064e9857be99c291fd49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35244514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f1a80a6e6be91424438906acd0a53d336b4023f09bdd093e6cee02cb055daf6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:27:13 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:27:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:27:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 02:09:32 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 02:09:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 02:09:33 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 02:10:37 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 02:10:38 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 02:10:38 GMT
VOLUME [/data]
# Thu, 16 May 2019 02:10:38 GMT
WORKDIR /data
# Thu, 16 May 2019 02:10:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 02:10:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:10:39 GMT
EXPOSE 6379
# Thu, 16 May 2019 02:10:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33b9d5023cb64a3e2105aa585763e0f894f9c8bad0cd7255f4270ca658cb230`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd525c34aa87726465ac825c4e2672a834143ab46dcc2281b78c8cee8040c6d2`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 920.2 KB (920170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308c994448375c571c22b1be21a1484f72560830c9ff2b5a646c02cb9f82874c`  
		Last Modified: Thu, 16 May 2019 02:12:18 GMT  
		Size: 11.2 MB (11201252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9098a426ff04cb90c2e856152adb7fa4de027f72972d90434a0b09f92046b9`  
		Last Modified: Thu, 16 May 2019 02:12:16 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0781da06b9d68188b8be7568feed3fbad46a0b7f34a53ca3bd1b2574edaec102`  
		Last Modified: Thu, 16 May 2019 02:12:16 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:a966f78de2cfc0de4f0c6fe6203c40ca9a79e0e0620d13b9ce10e885f64cbe92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35639680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1279708270c90148f33777b051c1556aadd5a3e138f258469ddde2c80e3ec5dc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:53:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 13:53:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 13:57:13 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:46:09 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:46:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:46:12 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:48:12 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:48:19 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:48:22 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:48:24 GMT
WORKDIR /data
# Thu, 16 May 2019 00:48:25 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:48:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:48:29 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:48:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff669625b2edb1e0931d0870b1809e38cff4dcef53234334cd3cf4de1c49c7ce`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169e96a284a165ec6a0775d6b3aeeb4d6a67a0f098f207acbb7ce857a3fd50d`  
		Last Modified: Wed, 08 May 2019 14:09:37 GMT  
		Size: 910.1 KB (910104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515eff492ce00a96d2692bdc05dfa2b16c6578a8b63c7a62710df32ca5d5b0dc`  
		Last Modified: Thu, 16 May 2019 00:50:57 GMT  
		Size: 12.0 MB (11982367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a335ec7cf18608aae558a248b285b9341758ca61106b87ac3f47cd149c0b0e23`  
		Last Modified: Thu, 16 May 2019 00:50:54 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c075c08ab286e874675271621ad72476e811de183eddc51b0f91d0c4589876a`  
		Last Modified: Thu, 16 May 2019 00:50:54 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; s390x

```console
$ docker pull redis@sha256:0b03c9cf4a1a67b252539785c0474b3a90ab181ec5efbafce23d038a83b37e97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35523010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb89ced0c47db902fb8d1c2adea1a14abbae504a1740e023873ff84ea7cb954`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:38:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:38:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:39:38 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:59:10 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:59:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:59:11 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:00:56 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:00:58 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:00:58 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:00:59 GMT
WORKDIR /data
# Thu, 16 May 2019 01:00:59 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:01:00 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:01:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d667d9ec29251877608296ac4170b4d495aa961dd3297c6f8379f4df1f68aa98`  
		Last Modified: Wed, 08 May 2019 14:46:52 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3467c4b72354e2f6a442998daf9a3501b37844ed98edc512e0cfc147185c4b`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 927.0 KB (926960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45affb2cff9ff50d2e40e5547c22524a2bf0264b11f01fe9370d69899e1d212`  
		Last Modified: Thu, 16 May 2019 01:04:45 GMT  
		Size: 12.3 MB (12254908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d4090e99bae7a3a0e9030cf7d3764bbca2be43820f45567e2d2a8e11f41c8c`  
		Last Modified: Thu, 16 May 2019 01:04:39 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b291a062e3d7c8d2e45c55bfd6e9faee581df29059ee8d5da4039b42b1f572`  
		Last Modified: Thu, 16 May 2019 01:04:39 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-32bit`

```console
$ docker pull redis@sha256:af645dcda0207a1f0aea6fa239f3aeffd59812a9c760365eff7c9e7157055173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-32bit` - linux; amd64

```console
$ docker pull redis@sha256:c5edc855e4219295a0cfc2e2cde431ee061c813ece1a6cb1a36d340f2b6242cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39488609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0592cc8430991e1cf1ac3c106e1eb045e40b775938d17594c7a2a5628d05e963`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:41 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:50:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:50:42 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:50:42 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:42 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:43 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc71b55f6dc477ed95a4fccbee3e2e2b6fba700517b0eb8799c84e529e8e87a`  
		Last Modified: Thu, 16 May 2019 00:53:05 GMT  
		Size: 4.8 MB (4849454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ca34bf315a41019b267866e1d7ab70853c74ab96f566d80800c3e08a3812b5`  
		Last Modified: Thu, 16 May 2019 00:53:06 GMT  
		Size: 11.2 MB (11206179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8647c51bc4d6d5634159976479cfe28e5f072e141484efd6d2fbef6bef07f2`  
		Last Modified: Thu, 16 May 2019 00:53:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f07e1a22d2dc960b07d5e9c18be9d5a2aad0f215c4d539461bb4a1a508312bf`  
		Last Modified: Thu, 16 May 2019 00:53:04 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-32bit-stretch`

```console
$ docker pull redis@sha256:af645dcda0207a1f0aea6fa239f3aeffd59812a9c760365eff7c9e7157055173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:c5edc855e4219295a0cfc2e2cde431ee061c813ece1a6cb1a36d340f2b6242cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39488609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0592cc8430991e1cf1ac3c106e1eb045e40b775938d17594c7a2a5628d05e963`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 00:50:41 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:50:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:50:42 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:50:42 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:42 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:43 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc71b55f6dc477ed95a4fccbee3e2e2b6fba700517b0eb8799c84e529e8e87a`  
		Last Modified: Thu, 16 May 2019 00:53:05 GMT  
		Size: 4.8 MB (4849454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ca34bf315a41019b267866e1d7ab70853c74ab96f566d80800c3e08a3812b5`  
		Last Modified: Thu, 16 May 2019 00:53:06 GMT  
		Size: 11.2 MB (11206179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8647c51bc4d6d5634159976479cfe28e5f072e141484efd6d2fbef6bef07f2`  
		Last Modified: Thu, 16 May 2019 00:53:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f07e1a22d2dc960b07d5e9c18be9d5a2aad0f215c4d539461bb4a1a508312bf`  
		Last Modified: Thu, 16 May 2019 00:53:04 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-alpine`

```console
$ docker pull redis@sha256:2c8839911829aac720d41690edc07c0aff8385294fccd3a892af46d1a83b1ac0
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
$ docker pull redis@sha256:c9ceb889735c7f679286e7c0f4f2c6c2498d71681391f604c697c3fe0370bc61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17785903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e76053ebb73c258af5020c9ef27ba9302a6ee182f2c9c51b43c1689f1983c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:43:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 01:43:52 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:52:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:52:11 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:52:11 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:52:12 GMT
WORKDIR /data
# Thu, 16 May 2019 00:52:12 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:52:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:52:12 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:52:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8af38234db8796d645ec9541647315cdae2830b8f7c477b618feabbeee672cc`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b5e96879e00e980373ed29b9088020ea3d931c156252c1aae326b86a6775d4`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 403.8 KB (403836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979331f0d18ba64a84740fb84bac957330246e83c0869f7ba9cf9eff3b074dd7`  
		Last Modified: Thu, 16 May 2019 00:53:17 GMT  
		Size: 14.6 MB (14623266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d24058052e73e86d3b6e2b7cbbbabfe0d754dd7e6b13d2850412efcdd666bc`  
		Last Modified: Thu, 16 May 2019 00:53:14 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b87029df34535a9c84886663d1fb8d6fc76979f3d795eaf8c1cee4e1e5d86`  
		Last Modified: Thu, 16 May 2019 00:53:14 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:fffabb3f3beee0ba08f5a8b42c2e90fa3c8ab19847e7126799a878a3f74352a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17161056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ff1d5dfa48b15e001277c1ba0c143a51f94fe74e0904ec465fa3945220f263`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:29:26 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:29:28 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:49:30 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:49:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:49:31 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:50:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:50:28 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:50:28 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:50:29 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:30 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3b26f48db5b9f4aef841aedcaf84ca5b2036b4bc8d60ec400562dcc83b0e64`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c63408643782fafd48e9f99babe3c37e4192927a6bb12b7130619e8baffc64f`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 406.2 KB (406229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87951bfe4172b07b3854b0333fb68e6aeba559bbae037af3ad3e319f8b7a853e`  
		Last Modified: Thu, 16 May 2019 00:51:04 GMT  
		Size: 14.2 MB (14209570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6476f1115771a404904d680e03104bfe67379c3beced075741c567260dde783`  
		Last Modified: Thu, 16 May 2019 00:51:01 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abab16fb38f5768497c81de63998358233528219b11729326d3ce0935bbf827c`  
		Last Modified: Thu, 16 May 2019 00:51:01 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:c5c90f835d3c03b7d0360ef29069447fcb65772c3500c29a7bfff63e3627f671
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16713641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7364b13b17c27437ace7f254a9fcf7a81fe162dcbead2336a673e2a58475a0fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:44:03 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:44:05 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:02:48 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:02:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:02:49 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:03:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:03:39 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:03:39 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:03:40 GMT
WORKDIR /data
# Thu, 16 May 2019 00:03:41 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:03:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:03:42 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:03:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565eef49c17c1dbf08900c5f718bb6bf370c8fd8266c79aa5ab210dc41a3efd7`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a85d46778feb34d5ec3c1a011b9fddcb2fe7135bbfe170c0bf4fd77ff837a0`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 400.1 KB (400099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f7bed1e6321d469756d876f17cd2f4feabf31db8e65491d8407fb98955c4f25`  
		Last Modified: Thu, 16 May 2019 00:04:47 GMT  
		Size: 14.0 MB (13961048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6eb9fd464e2ea064a3cbe134aab49aee7dc14f4b52ef6c35c661564b372ffb`  
		Last Modified: Thu, 16 May 2019 00:04:42 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99bd1c3191e2cd9521e6cdd88c7c7f5057e00868ebdc4b29653e3563c03d075`  
		Last Modified: Thu, 16 May 2019 00:04:42 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:2f19c3aa8f393875a62060b858a86ba5183e61bd9a759f5bf168367a319344ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17624806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcde0e6a76e029d0ca814dab5183762e90ec30ff3a19de0ea80ce77e324524bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 01:07:39 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 16 May 2019 01:07:43 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 01:07:44 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:07:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:07:46 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:08:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 01:08:57 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:08:57 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:08:58 GMT
WORKDIR /data
# Thu, 16 May 2019 01:08:59 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 01:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:09:00 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:09:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b3a49ce31ca23e2611efdf316f0a9838b50f5ec8f186a20552aa22ae44906f`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6d8b3a94783c7f17b1cd84b113af2e4bcdf64b9fdbb7db5182af9774c79475`  
		Last Modified: Thu, 16 May 2019 01:12:47 GMT  
		Size: 406.0 KB (406020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c46c2ffb63594a41f6deddcd16ab80858cdaed8385bc3aa29c4c48fb554f88`  
		Last Modified: Thu, 16 May 2019 01:12:52 GMT  
		Size: 14.5 MB (14528175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36b677a872a5182d51a074be78178e3edd30ce82f352a310dba90a56bc26e27`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87588c0ff4b46685dab6c217d4f53ba93b343ebccfcea7d96d1d0d557fe8b170`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; 386

```console
$ docker pull redis@sha256:8374fa70aac1f1444ef39bcb31b7abaa8126fa16f0a6916822402dcc650a139d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17142280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75465648de3bbfe96ed37784ee7f131ea4407d4c4ce55645498d47a3ca99777`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:19:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 14:19:53 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 02:10:46 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 02:10:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 02:10:47 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 02:11:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 02:11:50 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 02:11:50 GMT
VOLUME [/data]
# Thu, 16 May 2019 02:11:50 GMT
WORKDIR /data
# Thu, 16 May 2019 02:11:51 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 02:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:11:51 GMT
EXPOSE 6379
# Thu, 16 May 2019 02:11:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc09a60a7057123e651fa66030d2eb409f37acbcb6225df90a961c884bcd6ae`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342305f7d88077eba4d5d9428acb6d7250fdbae9a7cccab0eb143131ebab831`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 409.0 KB (408975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fda595ca26205f758955ea6d4d8d038f3941149bed6e217e05f349e0e9ab360`  
		Last Modified: Thu, 16 May 2019 02:12:30 GMT  
		Size: 14.0 MB (13979451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0ff33de2a7d2516f63d51c9fe50b7aee125a99bc658a421805506881367a66`  
		Last Modified: Thu, 16 May 2019 02:12:26 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4bcb23ca0fc8f8d621a6a30ca835064a756904822eb41b591b09e4b47e5795`  
		Last Modified: Thu, 16 May 2019 02:12:26 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:2131f58de319a847ed3e0086577849c758c22c8987276436eed775eba3603dce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18639005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a2573ff9529e9291addfb5a2be68039d82d841d4a64b665492f096bc8dfb19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:58:56 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:48:50 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:48:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:48:54 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:49:54 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:49:58 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:49:59 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:00 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:05 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1f873094cdec16153e6440266d174f7a212d084ef10eaee74f2131622f0a65`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a0313c41cb3c045368f5b83e91440077e3c713f4fa98ae890d3aac07fd1338`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 411.2 KB (411203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534782911a336474f3e2868061baea8b792a4481a07b0abe2d82401622a522a`  
		Last Modified: Thu, 16 May 2019 00:51:36 GMT  
		Size: 15.4 MB (15444950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4cd517c617d5f5f4e3e77d5e4ed4104d49d97889c178c16be633bc8430a7ef5`  
		Last Modified: Thu, 16 May 2019 00:51:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca176910b2aa18ae0ca6fb90c1617cc25c19b828463a4c6291d5c1bce5be8046`  
		Last Modified: Thu, 16 May 2019 00:51:31 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; s390x

```console
$ docker pull redis@sha256:a41fe208c0e2b25d3dffe86d8f53e59e7bf85bed25e4bcd63896d0b24df96cc1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17842941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc33072c421fb526ca5eaf31ea98d347838b2f33b5c3642c8f2c79c5bca42e5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:29:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 13:29:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 01:01:14 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:01:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:01:16 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:03:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 01:03:16 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:03:17 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:03:18 GMT
WORKDIR /data
# Thu, 16 May 2019 01:03:18 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 01:03:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:03:20 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:03:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2038b2ec161be7e2f3c8ef364d60480ba3ca4bd5dc4869be8908551986c7d6f5`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7082e9e057aef8a7fefd028f8f5f6822021e7319e216b4ab9b0decef6c34a7`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 408.8 KB (408752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30adf6bcc13dd1cfb98b2042d134cf6ad2aaed83e83ff11c1a84809a3a3bc299`  
		Last Modified: Thu, 16 May 2019 01:05:19 GMT  
		Size: 14.9 MB (14889091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f39b50b05a66a15007217836deefb54b5a010ccb672f523333175aaac71060`  
		Last Modified: Thu, 16 May 2019 01:05:11 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3cb093b0aa27904752372821c5637de3428ee0d84ab02c8d0e8d7c555cce77`  
		Last Modified: Thu, 16 May 2019 01:05:11 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-alpine3.9`

```console
$ docker pull redis@sha256:2c8839911829aac720d41690edc07c0aff8385294fccd3a892af46d1a83b1ac0
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
$ docker pull redis@sha256:c9ceb889735c7f679286e7c0f4f2c6c2498d71681391f604c697c3fe0370bc61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17785903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e76053ebb73c258af5020c9ef27ba9302a6ee182f2c9c51b43c1689f1983c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:43:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 01:43:52 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:52:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:52:11 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:52:11 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:52:12 GMT
WORKDIR /data
# Thu, 16 May 2019 00:52:12 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:52:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:52:12 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:52:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8af38234db8796d645ec9541647315cdae2830b8f7c477b618feabbeee672cc`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b5e96879e00e980373ed29b9088020ea3d931c156252c1aae326b86a6775d4`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 403.8 KB (403836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979331f0d18ba64a84740fb84bac957330246e83c0869f7ba9cf9eff3b074dd7`  
		Last Modified: Thu, 16 May 2019 00:53:17 GMT  
		Size: 14.6 MB (14623266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d24058052e73e86d3b6e2b7cbbbabfe0d754dd7e6b13d2850412efcdd666bc`  
		Last Modified: Thu, 16 May 2019 00:53:14 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b87029df34535a9c84886663d1fb8d6fc76979f3d795eaf8c1cee4e1e5d86`  
		Last Modified: Thu, 16 May 2019 00:53:14 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:fffabb3f3beee0ba08f5a8b42c2e90fa3c8ab19847e7126799a878a3f74352a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17161056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ff1d5dfa48b15e001277c1ba0c143a51f94fe74e0904ec465fa3945220f263`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:29:26 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:29:28 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:49:30 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:49:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:49:31 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:50:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:50:28 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:50:28 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:50:29 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:30 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3b26f48db5b9f4aef841aedcaf84ca5b2036b4bc8d60ec400562dcc83b0e64`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c63408643782fafd48e9f99babe3c37e4192927a6bb12b7130619e8baffc64f`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 406.2 KB (406229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87951bfe4172b07b3854b0333fb68e6aeba559bbae037af3ad3e319f8b7a853e`  
		Last Modified: Thu, 16 May 2019 00:51:04 GMT  
		Size: 14.2 MB (14209570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6476f1115771a404904d680e03104bfe67379c3beced075741c567260dde783`  
		Last Modified: Thu, 16 May 2019 00:51:01 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abab16fb38f5768497c81de63998358233528219b11729326d3ce0935bbf827c`  
		Last Modified: Thu, 16 May 2019 00:51:01 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:c5c90f835d3c03b7d0360ef29069447fcb65772c3500c29a7bfff63e3627f671
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16713641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7364b13b17c27437ace7f254a9fcf7a81fe162dcbead2336a673e2a58475a0fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:44:03 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:44:05 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:02:48 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:02:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:02:49 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:03:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:03:39 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:03:39 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:03:40 GMT
WORKDIR /data
# Thu, 16 May 2019 00:03:41 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:03:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:03:42 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:03:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565eef49c17c1dbf08900c5f718bb6bf370c8fd8266c79aa5ab210dc41a3efd7`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a85d46778feb34d5ec3c1a011b9fddcb2fe7135bbfe170c0bf4fd77ff837a0`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 400.1 KB (400099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f7bed1e6321d469756d876f17cd2f4feabf31db8e65491d8407fb98955c4f25`  
		Last Modified: Thu, 16 May 2019 00:04:47 GMT  
		Size: 14.0 MB (13961048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6eb9fd464e2ea064a3cbe134aab49aee7dc14f4b52ef6c35c661564b372ffb`  
		Last Modified: Thu, 16 May 2019 00:04:42 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99bd1c3191e2cd9521e6cdd88c7c7f5057e00868ebdc4b29653e3563c03d075`  
		Last Modified: Thu, 16 May 2019 00:04:42 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:2f19c3aa8f393875a62060b858a86ba5183e61bd9a759f5bf168367a319344ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17624806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcde0e6a76e029d0ca814dab5183762e90ec30ff3a19de0ea80ce77e324524bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 01:07:39 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 16 May 2019 01:07:43 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 01:07:44 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:07:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:07:46 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:08:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 01:08:57 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:08:57 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:08:58 GMT
WORKDIR /data
# Thu, 16 May 2019 01:08:59 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 01:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:09:00 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:09:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b3a49ce31ca23e2611efdf316f0a9838b50f5ec8f186a20552aa22ae44906f`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6d8b3a94783c7f17b1cd84b113af2e4bcdf64b9fdbb7db5182af9774c79475`  
		Last Modified: Thu, 16 May 2019 01:12:47 GMT  
		Size: 406.0 KB (406020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c46c2ffb63594a41f6deddcd16ab80858cdaed8385bc3aa29c4c48fb554f88`  
		Last Modified: Thu, 16 May 2019 01:12:52 GMT  
		Size: 14.5 MB (14528175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36b677a872a5182d51a074be78178e3edd30ce82f352a310dba90a56bc26e27`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87588c0ff4b46685dab6c217d4f53ba93b343ebccfcea7d96d1d0d557fe8b170`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:8374fa70aac1f1444ef39bcb31b7abaa8126fa16f0a6916822402dcc650a139d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17142280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75465648de3bbfe96ed37784ee7f131ea4407d4c4ce55645498d47a3ca99777`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:19:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 14:19:53 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 02:10:46 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 02:10:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 02:10:47 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 02:11:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 02:11:50 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 02:11:50 GMT
VOLUME [/data]
# Thu, 16 May 2019 02:11:50 GMT
WORKDIR /data
# Thu, 16 May 2019 02:11:51 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 02:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:11:51 GMT
EXPOSE 6379
# Thu, 16 May 2019 02:11:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc09a60a7057123e651fa66030d2eb409f37acbcb6225df90a961c884bcd6ae`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342305f7d88077eba4d5d9428acb6d7250fdbae9a7cccab0eb143131ebab831`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 409.0 KB (408975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fda595ca26205f758955ea6d4d8d038f3941149bed6e217e05f349e0e9ab360`  
		Last Modified: Thu, 16 May 2019 02:12:30 GMT  
		Size: 14.0 MB (13979451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0ff33de2a7d2516f63d51c9fe50b7aee125a99bc658a421805506881367a66`  
		Last Modified: Thu, 16 May 2019 02:12:26 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4bcb23ca0fc8f8d621a6a30ca835064a756904822eb41b591b09e4b47e5795`  
		Last Modified: Thu, 16 May 2019 02:12:26 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:2131f58de319a847ed3e0086577849c758c22c8987276436eed775eba3603dce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18639005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a2573ff9529e9291addfb5a2be68039d82d841d4a64b665492f096bc8dfb19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:58:56 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:48:50 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:48:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:48:54 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:49:54 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:49:58 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:49:59 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:00 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:05 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1f873094cdec16153e6440266d174f7a212d084ef10eaee74f2131622f0a65`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a0313c41cb3c045368f5b83e91440077e3c713f4fa98ae890d3aac07fd1338`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 411.2 KB (411203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534782911a336474f3e2868061baea8b792a4481a07b0abe2d82401622a522a`  
		Last Modified: Thu, 16 May 2019 00:51:36 GMT  
		Size: 15.4 MB (15444950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4cd517c617d5f5f4e3e77d5e4ed4104d49d97889c178c16be633bc8430a7ef5`  
		Last Modified: Thu, 16 May 2019 00:51:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca176910b2aa18ae0ca6fb90c1617cc25c19b828463a4c6291d5c1bce5be8046`  
		Last Modified: Thu, 16 May 2019 00:51:31 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:a41fe208c0e2b25d3dffe86d8f53e59e7bf85bed25e4bcd63896d0b24df96cc1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17842941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc33072c421fb526ca5eaf31ea98d347838b2f33b5c3642c8f2c79c5bca42e5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:29:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 13:29:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 01:01:14 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:01:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:01:16 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:03:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 01:03:16 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:03:17 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:03:18 GMT
WORKDIR /data
# Thu, 16 May 2019 01:03:18 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 01:03:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:03:20 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:03:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2038b2ec161be7e2f3c8ef364d60480ba3ca4bd5dc4869be8908551986c7d6f5`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7082e9e057aef8a7fefd028f8f5f6822021e7319e216b4ab9b0decef6c34a7`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 408.8 KB (408752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30adf6bcc13dd1cfb98b2042d134cf6ad2aaed83e83ff11c1a84809a3a3bc299`  
		Last Modified: Thu, 16 May 2019 01:05:19 GMT  
		Size: 14.9 MB (14889091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f39b50b05a66a15007217836deefb54b5a010ccb672f523333175aaac71060`  
		Last Modified: Thu, 16 May 2019 01:05:11 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3cb093b0aa27904752372821c5637de3428ee0d84ab02c8d0e8d7c555cce77`  
		Last Modified: Thu, 16 May 2019 01:05:11 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-stretch`

```console
$ docker pull redis@sha256:e549a30b3c31e6305b973e0d9113a3d38d60566708137af9ed7cbdce5650c5cc
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
$ docker pull redis@sha256:2720a72fb05febf7994e422b7cd327a031dcca2863a808e2825bf3cbb8d4c804
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35224772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e3588af5178bae2c8ffdbfa227c7d0305518d3821a71615c14ffb8643d7eb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:48:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:48:40 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:48:41 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:48:41 GMT
WORKDIR /data
# Thu, 16 May 2019 00:48:41 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:48:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:48:41 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:48:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0b11956c7210838cbb4ab1a9f5083a646b313f6a8f4f89b5414d3008014c8c`  
		Last Modified: Thu, 16 May 2019 00:52:57 GMT  
		Size: 11.8 MB (11791799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09dbd716637eb4357876adc2398d0e1fe2b98afb7003b3099e5362c10eff9628`  
		Last Modified: Thu, 16 May 2019 00:52:54 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09046fd44816fc8bcb817fd60b854d18f5c89b6e06cfff7d08670376b1c9074`  
		Last Modified: Thu, 16 May 2019 00:52:54 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:05f98dbb3ef8eb53566a46a6adf5514394fa29120b0033cc9e30d1aea41fb8a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33550061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d613ca9335d852802284ef79af77a56478678ea2709eb67a8284fb95b17c8482`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:44:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 09:44:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 09:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:48:30 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:48:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:48:31 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:49:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:49:42 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:49:43 GMT
WORKDIR /data
# Thu, 16 May 2019 00:49:43 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:49:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:49:44 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:49:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9042d288dd3256571141d375b77cd76ad30099bb2dc13f80e91fbf472e6b1`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2a42a5237467b8424f4e6421ff0a721a0f135a647799991c350c08aca04400`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 931.2 KB (931193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35e4cd73fac730f62773e04644c7ea42c04a1dbd7f0b3588baa46e37e426cd4`  
		Last Modified: Thu, 16 May 2019 00:50:17 GMT  
		Size: 11.5 MB (11460720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68ab7a056a41635f692347b21a08c379e94abed92b3b387efd12419bf671b0d`  
		Last Modified: Thu, 16 May 2019 00:50:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c18de47fb4cd88147ad8c55593e13f29a439acc06cec69c3e8abf45f140575a`  
		Last Modified: Thu, 16 May 2019 00:50:14 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:45027d4f22fca31c1a341b1d168f71d36615df5bb4d3840117e4cc7a80194c0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31347653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61c27474610c8b324d42968497d1a8f07b158821cfcb28d9de54b8c8eb94d2cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:54:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:54:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:54:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:01:33 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:01:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:01:34 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:02:35 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:02:37 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:02:37 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:02:38 GMT
WORKDIR /data
# Thu, 16 May 2019 00:02:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:02:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:02:39 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:02:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04ed9d6e5c55be71a7578af699db21acfa7d9dd81dc0feefea5ab6c7fc9d3`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d7b0643ad1873b502f90a920e652822474851a731a233a0be7dafee3fb1bcc`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 915.8 KB (915827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e16cba97d24e33a673f3b3b6c2333783f2a309a8cdee47555e2b79ab44b630`  
		Last Modified: Thu, 16 May 2019 00:04:23 GMT  
		Size: 11.2 MB (11153327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c225bcdc75e993c3c97cc0336d03eead391af26eeade2f1ba733eb40bdf6cf`  
		Last Modified: Thu, 16 May 2019 00:04:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54475dfedeaadc109235cff1214f522ae9ee8ca9f563e7bf4bd2d23e46fa2619`  
		Last Modified: Thu, 16 May 2019 00:04:20 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:77859ef1211d65e314a95782c90dfaa4bd43cf36dfdac9c6ecddcaf4c55dd01c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32850031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a4e737c0a3806823fa6d9ba1d930462f362feeb7a8dfbf3087f250fe29e9e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Thu, 16 May 2019 01:04:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 16 May 2019 01:04:52 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 01:05:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 01:05:35 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:05:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:05:37 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:07:17 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:07:22 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:07:22 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:07:23 GMT
WORKDIR /data
# Thu, 16 May 2019 01:07:25 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:07:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:07:26 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:07:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b47765258d397f39f0ca0d0b06dbc96995d2b8e7ed2c6961982cbea83cbbf52`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ef2ae43b989ae901049515810f82bcb828d20239bc7bad82eca8de79328be3`  
		Last Modified: Thu, 16 May 2019 01:12:20 GMT  
		Size: 908.0 KB (907958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c0c86fd51dc6871a6a999b3e3ca91bd5788f4bda24ef5bdd4c1b0e1d2eeb30`  
		Last Modified: Thu, 16 May 2019 01:12:23 GMT  
		Size: 11.6 MB (11605963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3458ae93cdfc79a80922a5cdb500acd76a5291e1b0cb0a0ce4db3dc3bc3e2e65`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b95cf35341c8570b208e5bdbac3ce0b9d882815aa12eea27deeb805f34eb4ee`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; 386

```console
$ docker pull redis@sha256:eac0c7120e689fc18c90c8c607740c28a504b4220190064e9857be99c291fd49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35244514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f1a80a6e6be91424438906acd0a53d336b4023f09bdd093e6cee02cb055daf6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:27:13 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:27:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:27:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 02:09:32 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 02:09:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 02:09:33 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 02:10:37 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 02:10:38 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 02:10:38 GMT
VOLUME [/data]
# Thu, 16 May 2019 02:10:38 GMT
WORKDIR /data
# Thu, 16 May 2019 02:10:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 02:10:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:10:39 GMT
EXPOSE 6379
# Thu, 16 May 2019 02:10:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33b9d5023cb64a3e2105aa585763e0f894f9c8bad0cd7255f4270ca658cb230`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd525c34aa87726465ac825c4e2672a834143ab46dcc2281b78c8cee8040c6d2`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 920.2 KB (920170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308c994448375c571c22b1be21a1484f72560830c9ff2b5a646c02cb9f82874c`  
		Last Modified: Thu, 16 May 2019 02:12:18 GMT  
		Size: 11.2 MB (11201252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9098a426ff04cb90c2e856152adb7fa4de027f72972d90434a0b09f92046b9`  
		Last Modified: Thu, 16 May 2019 02:12:16 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0781da06b9d68188b8be7568feed3fbad46a0b7f34a53ca3bd1b2574edaec102`  
		Last Modified: Thu, 16 May 2019 02:12:16 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:a966f78de2cfc0de4f0c6fe6203c40ca9a79e0e0620d13b9ce10e885f64cbe92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35639680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1279708270c90148f33777b051c1556aadd5a3e138f258469ddde2c80e3ec5dc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:53:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 13:53:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 13:57:13 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:46:09 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:46:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:46:12 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:48:12 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:48:19 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:48:22 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:48:24 GMT
WORKDIR /data
# Thu, 16 May 2019 00:48:25 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:48:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:48:29 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:48:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff669625b2edb1e0931d0870b1809e38cff4dcef53234334cd3cf4de1c49c7ce`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169e96a284a165ec6a0775d6b3aeeb4d6a67a0f098f207acbb7ce857a3fd50d`  
		Last Modified: Wed, 08 May 2019 14:09:37 GMT  
		Size: 910.1 KB (910104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515eff492ce00a96d2692bdc05dfa2b16c6578a8b63c7a62710df32ca5d5b0dc`  
		Last Modified: Thu, 16 May 2019 00:50:57 GMT  
		Size: 12.0 MB (11982367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a335ec7cf18608aae558a248b285b9341758ca61106b87ac3f47cd149c0b0e23`  
		Last Modified: Thu, 16 May 2019 00:50:54 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c075c08ab286e874675271621ad72476e811de183eddc51b0f91d0c4589876a`  
		Last Modified: Thu, 16 May 2019 00:50:54 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; s390x

```console
$ docker pull redis@sha256:0b03c9cf4a1a67b252539785c0474b3a90ab181ec5efbafce23d038a83b37e97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35523010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb89ced0c47db902fb8d1c2adea1a14abbae504a1740e023873ff84ea7cb954`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:38:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:38:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:39:38 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:59:10 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:59:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:59:11 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:00:56 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:00:58 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:00:58 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:00:59 GMT
WORKDIR /data
# Thu, 16 May 2019 01:00:59 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:01:00 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:01:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d667d9ec29251877608296ac4170b4d495aa961dd3297c6f8379f4df1f68aa98`  
		Last Modified: Wed, 08 May 2019 14:46:52 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3467c4b72354e2f6a442998daf9a3501b37844ed98edc512e0cfc147185c4b`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 927.0 KB (926960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45affb2cff9ff50d2e40e5547c22524a2bf0264b11f01fe9370d69899e1d212`  
		Last Modified: Thu, 16 May 2019 01:04:45 GMT  
		Size: 12.3 MB (12254908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d4090e99bae7a3a0e9030cf7d3764bbca2be43820f45567e2d2a8e11f41c8c`  
		Last Modified: Thu, 16 May 2019 01:04:39 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b291a062e3d7c8d2e45c55bfd6e9faee581df29059ee8d5da4039b42b1f572`  
		Last Modified: Thu, 16 May 2019 01:04:39 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:2c8839911829aac720d41690edc07c0aff8385294fccd3a892af46d1a83b1ac0
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
$ docker pull redis@sha256:c9ceb889735c7f679286e7c0f4f2c6c2498d71681391f604c697c3fe0370bc61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17785903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e76053ebb73c258af5020c9ef27ba9302a6ee182f2c9c51b43c1689f1983c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:43:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 01:43:52 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:52:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:52:11 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:52:11 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:52:12 GMT
WORKDIR /data
# Thu, 16 May 2019 00:52:12 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:52:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:52:12 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:52:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8af38234db8796d645ec9541647315cdae2830b8f7c477b618feabbeee672cc`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b5e96879e00e980373ed29b9088020ea3d931c156252c1aae326b86a6775d4`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 403.8 KB (403836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979331f0d18ba64a84740fb84bac957330246e83c0869f7ba9cf9eff3b074dd7`  
		Last Modified: Thu, 16 May 2019 00:53:17 GMT  
		Size: 14.6 MB (14623266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d24058052e73e86d3b6e2b7cbbbabfe0d754dd7e6b13d2850412efcdd666bc`  
		Last Modified: Thu, 16 May 2019 00:53:14 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b87029df34535a9c84886663d1fb8d6fc76979f3d795eaf8c1cee4e1e5d86`  
		Last Modified: Thu, 16 May 2019 00:53:14 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:fffabb3f3beee0ba08f5a8b42c2e90fa3c8ab19847e7126799a878a3f74352a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17161056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ff1d5dfa48b15e001277c1ba0c143a51f94fe74e0904ec465fa3945220f263`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:29:26 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:29:28 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:49:30 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:49:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:49:31 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:50:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:50:28 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:50:28 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:50:29 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:30 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3b26f48db5b9f4aef841aedcaf84ca5b2036b4bc8d60ec400562dcc83b0e64`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c63408643782fafd48e9f99babe3c37e4192927a6bb12b7130619e8baffc64f`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 406.2 KB (406229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87951bfe4172b07b3854b0333fb68e6aeba559bbae037af3ad3e319f8b7a853e`  
		Last Modified: Thu, 16 May 2019 00:51:04 GMT  
		Size: 14.2 MB (14209570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6476f1115771a404904d680e03104bfe67379c3beced075741c567260dde783`  
		Last Modified: Thu, 16 May 2019 00:51:01 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abab16fb38f5768497c81de63998358233528219b11729326d3ce0935bbf827c`  
		Last Modified: Thu, 16 May 2019 00:51:01 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:c5c90f835d3c03b7d0360ef29069447fcb65772c3500c29a7bfff63e3627f671
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16713641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7364b13b17c27437ace7f254a9fcf7a81fe162dcbead2336a673e2a58475a0fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:44:03 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:44:05 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:02:48 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:02:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:02:49 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:03:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:03:39 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:03:39 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:03:40 GMT
WORKDIR /data
# Thu, 16 May 2019 00:03:41 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:03:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:03:42 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:03:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565eef49c17c1dbf08900c5f718bb6bf370c8fd8266c79aa5ab210dc41a3efd7`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a85d46778feb34d5ec3c1a011b9fddcb2fe7135bbfe170c0bf4fd77ff837a0`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 400.1 KB (400099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f7bed1e6321d469756d876f17cd2f4feabf31db8e65491d8407fb98955c4f25`  
		Last Modified: Thu, 16 May 2019 00:04:47 GMT  
		Size: 14.0 MB (13961048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6eb9fd464e2ea064a3cbe134aab49aee7dc14f4b52ef6c35c661564b372ffb`  
		Last Modified: Thu, 16 May 2019 00:04:42 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99bd1c3191e2cd9521e6cdd88c7c7f5057e00868ebdc4b29653e3563c03d075`  
		Last Modified: Thu, 16 May 2019 00:04:42 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:2f19c3aa8f393875a62060b858a86ba5183e61bd9a759f5bf168367a319344ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17624806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcde0e6a76e029d0ca814dab5183762e90ec30ff3a19de0ea80ce77e324524bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 01:07:39 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 16 May 2019 01:07:43 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 01:07:44 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:07:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:07:46 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:08:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 01:08:57 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:08:57 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:08:58 GMT
WORKDIR /data
# Thu, 16 May 2019 01:08:59 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 01:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:09:00 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:09:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b3a49ce31ca23e2611efdf316f0a9838b50f5ec8f186a20552aa22ae44906f`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6d8b3a94783c7f17b1cd84b113af2e4bcdf64b9fdbb7db5182af9774c79475`  
		Last Modified: Thu, 16 May 2019 01:12:47 GMT  
		Size: 406.0 KB (406020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c46c2ffb63594a41f6deddcd16ab80858cdaed8385bc3aa29c4c48fb554f88`  
		Last Modified: Thu, 16 May 2019 01:12:52 GMT  
		Size: 14.5 MB (14528175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36b677a872a5182d51a074be78178e3edd30ce82f352a310dba90a56bc26e27`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87588c0ff4b46685dab6c217d4f53ba93b343ebccfcea7d96d1d0d557fe8b170`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; 386

```console
$ docker pull redis@sha256:8374fa70aac1f1444ef39bcb31b7abaa8126fa16f0a6916822402dcc650a139d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17142280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75465648de3bbfe96ed37784ee7f131ea4407d4c4ce55645498d47a3ca99777`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:19:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 14:19:53 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 02:10:46 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 02:10:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 02:10:47 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 02:11:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 02:11:50 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 02:11:50 GMT
VOLUME [/data]
# Thu, 16 May 2019 02:11:50 GMT
WORKDIR /data
# Thu, 16 May 2019 02:11:51 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 02:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:11:51 GMT
EXPOSE 6379
# Thu, 16 May 2019 02:11:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc09a60a7057123e651fa66030d2eb409f37acbcb6225df90a961c884bcd6ae`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342305f7d88077eba4d5d9428acb6d7250fdbae9a7cccab0eb143131ebab831`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 409.0 KB (408975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fda595ca26205f758955ea6d4d8d038f3941149bed6e217e05f349e0e9ab360`  
		Last Modified: Thu, 16 May 2019 02:12:30 GMT  
		Size: 14.0 MB (13979451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0ff33de2a7d2516f63d51c9fe50b7aee125a99bc658a421805506881367a66`  
		Last Modified: Thu, 16 May 2019 02:12:26 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4bcb23ca0fc8f8d621a6a30ca835064a756904822eb41b591b09e4b47e5795`  
		Last Modified: Thu, 16 May 2019 02:12:26 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:2131f58de319a847ed3e0086577849c758c22c8987276436eed775eba3603dce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18639005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a2573ff9529e9291addfb5a2be68039d82d841d4a64b665492f096bc8dfb19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:58:56 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:48:50 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:48:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:48:54 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:49:54 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:49:58 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:49:59 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:00 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:05 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1f873094cdec16153e6440266d174f7a212d084ef10eaee74f2131622f0a65`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a0313c41cb3c045368f5b83e91440077e3c713f4fa98ae890d3aac07fd1338`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 411.2 KB (411203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534782911a336474f3e2868061baea8b792a4481a07b0abe2d82401622a522a`  
		Last Modified: Thu, 16 May 2019 00:51:36 GMT  
		Size: 15.4 MB (15444950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4cd517c617d5f5f4e3e77d5e4ed4104d49d97889c178c16be633bc8430a7ef5`  
		Last Modified: Thu, 16 May 2019 00:51:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca176910b2aa18ae0ca6fb90c1617cc25c19b828463a4c6291d5c1bce5be8046`  
		Last Modified: Thu, 16 May 2019 00:51:31 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; s390x

```console
$ docker pull redis@sha256:a41fe208c0e2b25d3dffe86d8f53e59e7bf85bed25e4bcd63896d0b24df96cc1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17842941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc33072c421fb526ca5eaf31ea98d347838b2f33b5c3642c8f2c79c5bca42e5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:29:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 13:29:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 01:01:14 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:01:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:01:16 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:03:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 01:03:16 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:03:17 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:03:18 GMT
WORKDIR /data
# Thu, 16 May 2019 01:03:18 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 01:03:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:03:20 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:03:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2038b2ec161be7e2f3c8ef364d60480ba3ca4bd5dc4869be8908551986c7d6f5`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7082e9e057aef8a7fefd028f8f5f6822021e7319e216b4ab9b0decef6c34a7`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 408.8 KB (408752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30adf6bcc13dd1cfb98b2042d134cf6ad2aaed83e83ff11c1a84809a3a3bc299`  
		Last Modified: Thu, 16 May 2019 01:05:19 GMT  
		Size: 14.9 MB (14889091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f39b50b05a66a15007217836deefb54b5a010ccb672f523333175aaac71060`  
		Last Modified: Thu, 16 May 2019 01:05:11 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3cb093b0aa27904752372821c5637de3428ee0d84ab02c8d0e8d7c555cce77`  
		Last Modified: Thu, 16 May 2019 01:05:11 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine3.9`

```console
$ docker pull redis@sha256:2c8839911829aac720d41690edc07c0aff8385294fccd3a892af46d1a83b1ac0
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
$ docker pull redis@sha256:c9ceb889735c7f679286e7c0f4f2c6c2498d71681391f604c697c3fe0370bc61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17785903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e76053ebb73c258af5020c9ef27ba9302a6ee182f2c9c51b43c1689f1983c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:43:50 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 01:43:52 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:50:55 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:52:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:52:11 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:52:11 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:52:12 GMT
WORKDIR /data
# Thu, 16 May 2019 00:52:12 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:52:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:52:12 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:52:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8af38234db8796d645ec9541647315cdae2830b8f7c477b618feabbeee672cc`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b5e96879e00e980373ed29b9088020ea3d931c156252c1aae326b86a6775d4`  
		Last Modified: Sat, 11 May 2019 01:48:15 GMT  
		Size: 403.8 KB (403836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979331f0d18ba64a84740fb84bac957330246e83c0869f7ba9cf9eff3b074dd7`  
		Last Modified: Thu, 16 May 2019 00:53:17 GMT  
		Size: 14.6 MB (14623266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d24058052e73e86d3b6e2b7cbbbabfe0d754dd7e6b13d2850412efcdd666bc`  
		Last Modified: Thu, 16 May 2019 00:53:14 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b87029df34535a9c84886663d1fb8d6fc76979f3d795eaf8c1cee4e1e5d86`  
		Last Modified: Thu, 16 May 2019 00:53:14 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:fffabb3f3beee0ba08f5a8b42c2e90fa3c8ab19847e7126799a878a3f74352a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17161056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ff1d5dfa48b15e001277c1ba0c143a51f94fe74e0904ec465fa3945220f263`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:29:26 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:29:28 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:49:30 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:49:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:49:31 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:50:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:50:28 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:50:28 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:50:29 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:29 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:30 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3b26f48db5b9f4aef841aedcaf84ca5b2036b4bc8d60ec400562dcc83b0e64`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c63408643782fafd48e9f99babe3c37e4192927a6bb12b7130619e8baffc64f`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 406.2 KB (406229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87951bfe4172b07b3854b0333fb68e6aeba559bbae037af3ad3e319f8b7a853e`  
		Last Modified: Thu, 16 May 2019 00:51:04 GMT  
		Size: 14.2 MB (14209570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6476f1115771a404904d680e03104bfe67379c3beced075741c567260dde783`  
		Last Modified: Thu, 16 May 2019 00:51:01 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abab16fb38f5768497c81de63998358233528219b11729326d3ce0935bbf827c`  
		Last Modified: Thu, 16 May 2019 00:51:01 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:c5c90f835d3c03b7d0360ef29069447fcb65772c3500c29a7bfff63e3627f671
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16713641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7364b13b17c27437ace7f254a9fcf7a81fe162dcbead2336a673e2a58475a0fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:44:03 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:44:05 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:02:48 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:02:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:02:49 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:03:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:03:39 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:03:39 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:03:40 GMT
WORKDIR /data
# Thu, 16 May 2019 00:03:41 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:03:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:03:42 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:03:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565eef49c17c1dbf08900c5f718bb6bf370c8fd8266c79aa5ab210dc41a3efd7`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a85d46778feb34d5ec3c1a011b9fddcb2fe7135bbfe170c0bf4fd77ff837a0`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 400.1 KB (400099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f7bed1e6321d469756d876f17cd2f4feabf31db8e65491d8407fb98955c4f25`  
		Last Modified: Thu, 16 May 2019 00:04:47 GMT  
		Size: 14.0 MB (13961048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6eb9fd464e2ea064a3cbe134aab49aee7dc14f4b52ef6c35c661564b372ffb`  
		Last Modified: Thu, 16 May 2019 00:04:42 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99bd1c3191e2cd9521e6cdd88c7c7f5057e00868ebdc4b29653e3563c03d075`  
		Last Modified: Thu, 16 May 2019 00:04:42 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:2f19c3aa8f393875a62060b858a86ba5183e61bd9a759f5bf168367a319344ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17624806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcde0e6a76e029d0ca814dab5183762e90ec30ff3a19de0ea80ce77e324524bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 01:07:39 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 16 May 2019 01:07:43 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 01:07:44 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:07:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:07:46 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:08:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 01:08:57 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:08:57 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:08:58 GMT
WORKDIR /data
# Thu, 16 May 2019 01:08:59 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 01:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:09:00 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:09:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b3a49ce31ca23e2611efdf316f0a9838b50f5ec8f186a20552aa22ae44906f`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6d8b3a94783c7f17b1cd84b113af2e4bcdf64b9fdbb7db5182af9774c79475`  
		Last Modified: Thu, 16 May 2019 01:12:47 GMT  
		Size: 406.0 KB (406020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c46c2ffb63594a41f6deddcd16ab80858cdaed8385bc3aa29c4c48fb554f88`  
		Last Modified: Thu, 16 May 2019 01:12:52 GMT  
		Size: 14.5 MB (14528175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36b677a872a5182d51a074be78178e3edd30ce82f352a310dba90a56bc26e27`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87588c0ff4b46685dab6c217d4f53ba93b343ebccfcea7d96d1d0d557fe8b170`  
		Last Modified: Thu, 16 May 2019 01:12:46 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:8374fa70aac1f1444ef39bcb31b7abaa8126fa16f0a6916822402dcc650a139d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17142280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75465648de3bbfe96ed37784ee7f131ea4407d4c4ce55645498d47a3ca99777`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:19:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 14:19:53 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 02:10:46 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 02:10:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 02:10:47 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 02:11:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 02:11:50 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 02:11:50 GMT
VOLUME [/data]
# Thu, 16 May 2019 02:11:50 GMT
WORKDIR /data
# Thu, 16 May 2019 02:11:51 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 02:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:11:51 GMT
EXPOSE 6379
# Thu, 16 May 2019 02:11:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc09a60a7057123e651fa66030d2eb409f37acbcb6225df90a961c884bcd6ae`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342305f7d88077eba4d5d9428acb6d7250fdbae9a7cccab0eb143131ebab831`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 409.0 KB (408975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fda595ca26205f758955ea6d4d8d038f3941149bed6e217e05f349e0e9ab360`  
		Last Modified: Thu, 16 May 2019 02:12:30 GMT  
		Size: 14.0 MB (13979451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0ff33de2a7d2516f63d51c9fe50b7aee125a99bc658a421805506881367a66`  
		Last Modified: Thu, 16 May 2019 02:12:26 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4bcb23ca0fc8f8d621a6a30ca835064a756904822eb41b591b09e4b47e5795`  
		Last Modified: Thu, 16 May 2019 02:12:26 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:2131f58de319a847ed3e0086577849c758c22c8987276436eed775eba3603dce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18639005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a2573ff9529e9291addfb5a2be68039d82d841d4a64b665492f096bc8dfb19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:58:48 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 08:58:56 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 00:48:50 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:48:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:48:54 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 00:49:54 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:49:58 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:49:59 GMT
WORKDIR /data
# Thu, 16 May 2019 00:50:00 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 00:50:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:50:05 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:50:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1f873094cdec16153e6440266d174f7a212d084ef10eaee74f2131622f0a65`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a0313c41cb3c045368f5b83e91440077e3c713f4fa98ae890d3aac07fd1338`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 411.2 KB (411203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534782911a336474f3e2868061baea8b792a4481a07b0abe2d82401622a522a`  
		Last Modified: Thu, 16 May 2019 00:51:36 GMT  
		Size: 15.4 MB (15444950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4cd517c617d5f5f4e3e77d5e4ed4104d49d97889c178c16be633bc8430a7ef5`  
		Last Modified: Thu, 16 May 2019 00:51:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca176910b2aa18ae0ca6fb90c1617cc25c19b828463a4c6291d5c1bce5be8046`  
		Last Modified: Thu, 16 May 2019 00:51:31 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:a41fe208c0e2b25d3dffe86d8f53e59e7bf85bed25e4bcd63896d0b24df96cc1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17842941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc33072c421fb526ca5eaf31ea98d347838b2f33b5c3642c8f2c79c5bca42e5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:29:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 13:29:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 16 May 2019 01:01:14 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:01:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:01:16 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:03:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 16 May 2019 01:03:16 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:03:17 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:03:18 GMT
WORKDIR /data
# Thu, 16 May 2019 01:03:18 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 16 May 2019 01:03:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:03:20 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:03:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2038b2ec161be7e2f3c8ef364d60480ba3ca4bd5dc4869be8908551986c7d6f5`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7082e9e057aef8a7fefd028f8f5f6822021e7319e216b4ab9b0decef6c34a7`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 408.8 KB (408752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30adf6bcc13dd1cfb98b2042d134cf6ad2aaed83e83ff11c1a84809a3a3bc299`  
		Last Modified: Thu, 16 May 2019 01:05:19 GMT  
		Size: 14.9 MB (14889091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f39b50b05a66a15007217836deefb54b5a010ccb672f523333175aaac71060`  
		Last Modified: Thu, 16 May 2019 01:05:11 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3cb093b0aa27904752372821c5637de3428ee0d84ab02c8d0e8d7c555cce77`  
		Last Modified: Thu, 16 May 2019 01:05:11 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:e549a30b3c31e6305b973e0d9113a3d38d60566708137af9ed7cbdce5650c5cc
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
$ docker pull redis@sha256:2720a72fb05febf7994e422b7cd327a031dcca2863a808e2825bf3cbb8d4c804
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35224772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e3588af5178bae2c8ffdbfa227c7d0305518d3821a71615c14ffb8643d7eb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:48:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:48:40 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:48:41 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:48:41 GMT
WORKDIR /data
# Thu, 16 May 2019 00:48:41 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:48:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:48:41 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:48:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0b11956c7210838cbb4ab1a9f5083a646b313f6a8f4f89b5414d3008014c8c`  
		Last Modified: Thu, 16 May 2019 00:52:57 GMT  
		Size: 11.8 MB (11791799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09dbd716637eb4357876adc2398d0e1fe2b98afb7003b3099e5362c10eff9628`  
		Last Modified: Thu, 16 May 2019 00:52:54 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09046fd44816fc8bcb817fd60b854d18f5c89b6e06cfff7d08670376b1c9074`  
		Last Modified: Thu, 16 May 2019 00:52:54 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v5

```console
$ docker pull redis@sha256:05f98dbb3ef8eb53566a46a6adf5514394fa29120b0033cc9e30d1aea41fb8a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33550061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d613ca9335d852802284ef79af77a56478678ea2709eb67a8284fb95b17c8482`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:44:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 09:44:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 09:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:48:30 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:48:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:48:31 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:49:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:49:42 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:49:43 GMT
WORKDIR /data
# Thu, 16 May 2019 00:49:43 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:49:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:49:44 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:49:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9042d288dd3256571141d375b77cd76ad30099bb2dc13f80e91fbf472e6b1`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2a42a5237467b8424f4e6421ff0a721a0f135a647799991c350c08aca04400`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 931.2 KB (931193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35e4cd73fac730f62773e04644c7ea42c04a1dbd7f0b3588baa46e37e426cd4`  
		Last Modified: Thu, 16 May 2019 00:50:17 GMT  
		Size: 11.5 MB (11460720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68ab7a056a41635f692347b21a08c379e94abed92b3b387efd12419bf671b0d`  
		Last Modified: Thu, 16 May 2019 00:50:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c18de47fb4cd88147ad8c55593e13f29a439acc06cec69c3e8abf45f140575a`  
		Last Modified: Thu, 16 May 2019 00:50:14 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v7

```console
$ docker pull redis@sha256:45027d4f22fca31c1a341b1d168f71d36615df5bb4d3840117e4cc7a80194c0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31347653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61c27474610c8b324d42968497d1a8f07b158821cfcb28d9de54b8c8eb94d2cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:54:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:54:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:54:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:01:33 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:01:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:01:34 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:02:35 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:02:37 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:02:37 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:02:38 GMT
WORKDIR /data
# Thu, 16 May 2019 00:02:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:02:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:02:39 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:02:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04ed9d6e5c55be71a7578af699db21acfa7d9dd81dc0feefea5ab6c7fc9d3`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d7b0643ad1873b502f90a920e652822474851a731a233a0be7dafee3fb1bcc`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 915.8 KB (915827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e16cba97d24e33a673f3b3b6c2333783f2a309a8cdee47555e2b79ab44b630`  
		Last Modified: Thu, 16 May 2019 00:04:23 GMT  
		Size: 11.2 MB (11153327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c225bcdc75e993c3c97cc0336d03eead391af26eeade2f1ba733eb40bdf6cf`  
		Last Modified: Thu, 16 May 2019 00:04:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54475dfedeaadc109235cff1214f522ae9ee8ca9f563e7bf4bd2d23e46fa2619`  
		Last Modified: Thu, 16 May 2019 00:04:20 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:77859ef1211d65e314a95782c90dfaa4bd43cf36dfdac9c6ecddcaf4c55dd01c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32850031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a4e737c0a3806823fa6d9ba1d930462f362feeb7a8dfbf3087f250fe29e9e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Thu, 16 May 2019 01:04:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 16 May 2019 01:04:52 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 01:05:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 01:05:35 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:05:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:05:37 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:07:17 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:07:22 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:07:22 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:07:23 GMT
WORKDIR /data
# Thu, 16 May 2019 01:07:25 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:07:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:07:26 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:07:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b47765258d397f39f0ca0d0b06dbc96995d2b8e7ed2c6961982cbea83cbbf52`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ef2ae43b989ae901049515810f82bcb828d20239bc7bad82eca8de79328be3`  
		Last Modified: Thu, 16 May 2019 01:12:20 GMT  
		Size: 908.0 KB (907958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c0c86fd51dc6871a6a999b3e3ca91bd5788f4bda24ef5bdd4c1b0e1d2eeb30`  
		Last Modified: Thu, 16 May 2019 01:12:23 GMT  
		Size: 11.6 MB (11605963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3458ae93cdfc79a80922a5cdb500acd76a5291e1b0cb0a0ce4db3dc3bc3e2e65`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b95cf35341c8570b208e5bdbac3ce0b9d882815aa12eea27deeb805f34eb4ee`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; 386

```console
$ docker pull redis@sha256:eac0c7120e689fc18c90c8c607740c28a504b4220190064e9857be99c291fd49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35244514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f1a80a6e6be91424438906acd0a53d336b4023f09bdd093e6cee02cb055daf6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:27:13 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:27:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:27:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 02:09:32 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 02:09:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 02:09:33 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 02:10:37 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 02:10:38 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 02:10:38 GMT
VOLUME [/data]
# Thu, 16 May 2019 02:10:38 GMT
WORKDIR /data
# Thu, 16 May 2019 02:10:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 02:10:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:10:39 GMT
EXPOSE 6379
# Thu, 16 May 2019 02:10:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33b9d5023cb64a3e2105aa585763e0f894f9c8bad0cd7255f4270ca658cb230`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd525c34aa87726465ac825c4e2672a834143ab46dcc2281b78c8cee8040c6d2`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 920.2 KB (920170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308c994448375c571c22b1be21a1484f72560830c9ff2b5a646c02cb9f82874c`  
		Last Modified: Thu, 16 May 2019 02:12:18 GMT  
		Size: 11.2 MB (11201252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9098a426ff04cb90c2e856152adb7fa4de027f72972d90434a0b09f92046b9`  
		Last Modified: Thu, 16 May 2019 02:12:16 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0781da06b9d68188b8be7568feed3fbad46a0b7f34a53ca3bd1b2574edaec102`  
		Last Modified: Thu, 16 May 2019 02:12:16 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; ppc64le

```console
$ docker pull redis@sha256:a966f78de2cfc0de4f0c6fe6203c40ca9a79e0e0620d13b9ce10e885f64cbe92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35639680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1279708270c90148f33777b051c1556aadd5a3e138f258469ddde2c80e3ec5dc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:53:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 13:53:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 13:57:13 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:46:09 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:46:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:46:12 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:48:12 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:48:19 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:48:22 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:48:24 GMT
WORKDIR /data
# Thu, 16 May 2019 00:48:25 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:48:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:48:29 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:48:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff669625b2edb1e0931d0870b1809e38cff4dcef53234334cd3cf4de1c49c7ce`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169e96a284a165ec6a0775d6b3aeeb4d6a67a0f098f207acbb7ce857a3fd50d`  
		Last Modified: Wed, 08 May 2019 14:09:37 GMT  
		Size: 910.1 KB (910104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515eff492ce00a96d2692bdc05dfa2b16c6578a8b63c7a62710df32ca5d5b0dc`  
		Last Modified: Thu, 16 May 2019 00:50:57 GMT  
		Size: 12.0 MB (11982367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a335ec7cf18608aae558a248b285b9341758ca61106b87ac3f47cd149c0b0e23`  
		Last Modified: Thu, 16 May 2019 00:50:54 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c075c08ab286e874675271621ad72476e811de183eddc51b0f91d0c4589876a`  
		Last Modified: Thu, 16 May 2019 00:50:54 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; s390x

```console
$ docker pull redis@sha256:0b03c9cf4a1a67b252539785c0474b3a90ab181ec5efbafce23d038a83b37e97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35523010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb89ced0c47db902fb8d1c2adea1a14abbae504a1740e023873ff84ea7cb954`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:38:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:38:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:39:38 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:59:10 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:59:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:59:11 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:00:56 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:00:58 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:00:58 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:00:59 GMT
WORKDIR /data
# Thu, 16 May 2019 01:00:59 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:01:00 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:01:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d667d9ec29251877608296ac4170b4d495aa961dd3297c6f8379f4df1f68aa98`  
		Last Modified: Wed, 08 May 2019 14:46:52 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3467c4b72354e2f6a442998daf9a3501b37844ed98edc512e0cfc147185c4b`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 927.0 KB (926960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45affb2cff9ff50d2e40e5547c22524a2bf0264b11f01fe9370d69899e1d212`  
		Last Modified: Thu, 16 May 2019 01:04:45 GMT  
		Size: 12.3 MB (12254908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d4090e99bae7a3a0e9030cf7d3764bbca2be43820f45567e2d2a8e11f41c8c`  
		Last Modified: Thu, 16 May 2019 01:04:39 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b291a062e3d7c8d2e45c55bfd6e9faee581df29059ee8d5da4039b42b1f572`  
		Last Modified: Thu, 16 May 2019 01:04:39 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:stretch`

```console
$ docker pull redis@sha256:e549a30b3c31e6305b973e0d9113a3d38d60566708137af9ed7cbdce5650c5cc
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
$ docker pull redis@sha256:2720a72fb05febf7994e422b7cd327a031dcca2863a808e2825bf3cbb8d4c804
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35224772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e3588af5178bae2c8ffdbfa227c7d0305518d3821a71615c14ffb8643d7eb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 04:49:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 04:49:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 04:49:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:47:29 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:48:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:48:40 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:48:41 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:48:41 GMT
WORKDIR /data
# Thu, 16 May 2019 00:48:41 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:48:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:48:41 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:48:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171658c5966df12c2adc35727b4261d6c4a6e69d386d1cf4f9114fca9b74b5a6`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbef10bd7a65862f2b28ebbf91c566752931d823483d4c6854c11a1fac6b12e7`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 941.4 KB (941364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0b11956c7210838cbb4ab1a9f5083a646b313f6a8f4f89b5414d3008014c8c`  
		Last Modified: Thu, 16 May 2019 00:52:57 GMT  
		Size: 11.8 MB (11791799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09dbd716637eb4357876adc2398d0e1fe2b98afb7003b3099e5362c10eff9628`  
		Last Modified: Thu, 16 May 2019 00:52:54 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09046fd44816fc8bcb817fd60b854d18f5c89b6e06cfff7d08670376b1c9074`  
		Last Modified: Thu, 16 May 2019 00:52:54 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:05f98dbb3ef8eb53566a46a6adf5514394fa29120b0033cc9e30d1aea41fb8a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33550061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d613ca9335d852802284ef79af77a56478678ea2709eb67a8284fb95b17c8482`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:44:59 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 09:44:59 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 09:45:28 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:48:30 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:48:31 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:48:31 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:49:39 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:49:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:49:42 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:49:43 GMT
WORKDIR /data
# Thu, 16 May 2019 00:49:43 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:49:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:49:44 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:49:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac9042d288dd3256571141d375b77cd76ad30099bb2dc13f80e91fbf472e6b1`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2a42a5237467b8424f4e6421ff0a721a0f135a647799991c350c08aca04400`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 931.2 KB (931193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35e4cd73fac730f62773e04644c7ea42c04a1dbd7f0b3588baa46e37e426cd4`  
		Last Modified: Thu, 16 May 2019 00:50:17 GMT  
		Size: 11.5 MB (11460720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68ab7a056a41635f692347b21a08c379e94abed92b3b387efd12419bf671b0d`  
		Last Modified: Thu, 16 May 2019 00:50:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c18de47fb4cd88147ad8c55593e13f29a439acc06cec69c3e8abf45f140575a`  
		Last Modified: Thu, 16 May 2019 00:50:14 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:45027d4f22fca31c1a341b1d168f71d36615df5bb4d3840117e4cc7a80194c0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31347653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61c27474610c8b324d42968497d1a8f07b158821cfcb28d9de54b8c8eb94d2cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:54:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:54:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:54:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:01:33 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:01:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:01:34 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:02:35 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:02:37 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:02:37 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:02:38 GMT
WORKDIR /data
# Thu, 16 May 2019 00:02:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:02:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:02:39 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:02:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04ed9d6e5c55be71a7578af699db21acfa7d9dd81dc0feefea5ab6c7fc9d3`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d7b0643ad1873b502f90a920e652822474851a731a233a0be7dafee3fb1bcc`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 915.8 KB (915827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e16cba97d24e33a673f3b3b6c2333783f2a309a8cdee47555e2b79ab44b630`  
		Last Modified: Thu, 16 May 2019 00:04:23 GMT  
		Size: 11.2 MB (11153327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c225bcdc75e993c3c97cc0336d03eead391af26eeade2f1ba733eb40bdf6cf`  
		Last Modified: Thu, 16 May 2019 00:04:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54475dfedeaadc109235cff1214f522ae9ee8ca9f563e7bf4bd2d23e46fa2619`  
		Last Modified: Thu, 16 May 2019 00:04:20 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:77859ef1211d65e314a95782c90dfaa4bd43cf36dfdac9c6ecddcaf4c55dd01c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32850031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a4e737c0a3806823fa6d9ba1d930462f362feeb7a8dfbf3087f250fe29e9e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Thu, 16 May 2019 01:04:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 16 May 2019 01:04:52 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 May 2019 01:05:35 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 01:05:35 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 01:05:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 01:05:37 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:07:17 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:07:22 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:07:22 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:07:23 GMT
WORKDIR /data
# Thu, 16 May 2019 01:07:25 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:07:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:07:26 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:07:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b47765258d397f39f0ca0d0b06dbc96995d2b8e7ed2c6961982cbea83cbbf52`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ef2ae43b989ae901049515810f82bcb828d20239bc7bad82eca8de79328be3`  
		Last Modified: Thu, 16 May 2019 01:12:20 GMT  
		Size: 908.0 KB (907958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c0c86fd51dc6871a6a999b3e3ca91bd5788f4bda24ef5bdd4c1b0e1d2eeb30`  
		Last Modified: Thu, 16 May 2019 01:12:23 GMT  
		Size: 11.6 MB (11605963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3458ae93cdfc79a80922a5cdb500acd76a5291e1b0cb0a0ce4db3dc3bc3e2e65`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b95cf35341c8570b208e5bdbac3ce0b9d882815aa12eea27deeb805f34eb4ee`  
		Last Modified: Thu, 16 May 2019 01:12:19 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; 386

```console
$ docker pull redis@sha256:eac0c7120e689fc18c90c8c607740c28a504b4220190064e9857be99c291fd49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35244514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f1a80a6e6be91424438906acd0a53d336b4023f09bdd093e6cee02cb055daf6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:27:13 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:27:14 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:27:29 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 02:09:32 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 02:09:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 02:09:33 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 02:10:37 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 02:10:38 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 02:10:38 GMT
VOLUME [/data]
# Thu, 16 May 2019 02:10:38 GMT
WORKDIR /data
# Thu, 16 May 2019 02:10:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 02:10:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:10:39 GMT
EXPOSE 6379
# Thu, 16 May 2019 02:10:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33b9d5023cb64a3e2105aa585763e0f894f9c8bad0cd7255f4270ca658cb230`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd525c34aa87726465ac825c4e2672a834143ab46dcc2281b78c8cee8040c6d2`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 920.2 KB (920170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308c994448375c571c22b1be21a1484f72560830c9ff2b5a646c02cb9f82874c`  
		Last Modified: Thu, 16 May 2019 02:12:18 GMT  
		Size: 11.2 MB (11201252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9098a426ff04cb90c2e856152adb7fa4de027f72972d90434a0b09f92046b9`  
		Last Modified: Thu, 16 May 2019 02:12:16 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0781da06b9d68188b8be7568feed3fbad46a0b7f34a53ca3bd1b2574edaec102`  
		Last Modified: Thu, 16 May 2019 02:12:16 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:a966f78de2cfc0de4f0c6fe6203c40ca9a79e0e0620d13b9ce10e885f64cbe92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35639680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1279708270c90148f33777b051c1556aadd5a3e138f258469ddde2c80e3ec5dc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:53:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 13:53:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 13:57:13 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:46:09 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:46:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:46:12 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 00:48:12 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 00:48:19 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 00:48:22 GMT
VOLUME [/data]
# Thu, 16 May 2019 00:48:24 GMT
WORKDIR /data
# Thu, 16 May 2019 00:48:25 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 00:48:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:48:29 GMT
EXPOSE 6379
# Thu, 16 May 2019 00:48:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff669625b2edb1e0931d0870b1809e38cff4dcef53234334cd3cf4de1c49c7ce`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169e96a284a165ec6a0775d6b3aeeb4d6a67a0f098f207acbb7ce857a3fd50d`  
		Last Modified: Wed, 08 May 2019 14:09:37 GMT  
		Size: 910.1 KB (910104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515eff492ce00a96d2692bdc05dfa2b16c6578a8b63c7a62710df32ca5d5b0dc`  
		Last Modified: Thu, 16 May 2019 00:50:57 GMT  
		Size: 12.0 MB (11982367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a335ec7cf18608aae558a248b285b9341758ca61106b87ac3f47cd149c0b0e23`  
		Last Modified: Thu, 16 May 2019 00:50:54 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c075c08ab286e874675271621ad72476e811de183eddc51b0f91d0c4589876a`  
		Last Modified: Thu, 16 May 2019 00:50:54 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; s390x

```console
$ docker pull redis@sha256:0b03c9cf4a1a67b252539785c0474b3a90ab181ec5efbafce23d038a83b37e97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35523010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb89ced0c47db902fb8d1c2adea1a14abbae504a1740e023873ff84ea7cb954`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:38:45 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 14:38:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 14:39:38 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 May 2019 00:59:10 GMT
ENV REDIS_VERSION=5.0.5
# Thu, 16 May 2019 00:59:10 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.5.tar.gz
# Thu, 16 May 2019 00:59:11 GMT
ENV REDIS_DOWNLOAD_SHA=2139009799d21d8ff94fc40b7f36ac46699b9e1254086299f8d3b223ca54a375
# Thu, 16 May 2019 01:00:56 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 16 May 2019 01:00:58 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 16 May 2019 01:00:58 GMT
VOLUME [/data]
# Thu, 16 May 2019 01:00:59 GMT
WORKDIR /data
# Thu, 16 May 2019 01:00:59 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 16 May 2019 01:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:01:00 GMT
EXPOSE 6379
# Thu, 16 May 2019 01:01:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d667d9ec29251877608296ac4170b4d495aa961dd3297c6f8379f4df1f68aa98`  
		Last Modified: Wed, 08 May 2019 14:46:52 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3467c4b72354e2f6a442998daf9a3501b37844ed98edc512e0cfc147185c4b`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 927.0 KB (926960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45affb2cff9ff50d2e40e5547c22524a2bf0264b11f01fe9370d69899e1d212`  
		Last Modified: Thu, 16 May 2019 01:04:45 GMT  
		Size: 12.3 MB (12254908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d4090e99bae7a3a0e9030cf7d3764bbca2be43820f45567e2d2a8e11f41c8c`  
		Last Modified: Thu, 16 May 2019 01:04:39 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b291a062e3d7c8d2e45c55bfd6e9faee581df29059ee8d5da4039b42b1f572`  
		Last Modified: Thu, 16 May 2019 01:04:39 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
