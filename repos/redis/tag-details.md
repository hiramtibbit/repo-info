<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redis`

-	[`redis:32bit`](#redis32bit)
-	[`redis:32bit-stretch`](#redis32bit-stretch)
-	[`redis:4`](#redis4)
-	[`redis:4.0`](#redis40)
-	[`redis:4.0.11`](#redis4011)
-	[`redis:4.0.11-32bit`](#redis4011-32bit)
-	[`redis:4.0.11-32bit-stretch`](#redis4011-32bit-stretch)
-	[`redis:4.0.11-alpine`](#redis4011-alpine)
-	[`redis:4.0.11-alpine3.8`](#redis4011-alpine38)
-	[`redis:4.0.11-stretch`](#redis4011-stretch)
-	[`redis:4.0-32bit`](#redis40-32bit)
-	[`redis:4.0-32bit-stretch`](#redis40-32bit-stretch)
-	[`redis:4.0-alpine`](#redis40-alpine)
-	[`redis:4.0-alpine3.8`](#redis40-alpine38)
-	[`redis:4.0-stretch`](#redis40-stretch)
-	[`redis:4-32bit`](#redis4-32bit)
-	[`redis:4-32bit-stretch`](#redis4-32bit-stretch)
-	[`redis:4-alpine`](#redis4-alpine)
-	[`redis:4-alpine3.8`](#redis4-alpine38)
-	[`redis:4-stretch`](#redis4-stretch)
-	[`redis:5`](#redis5)
-	[`redis:5.0`](#redis50)
-	[`redis:5.0.0`](#redis500)
-	[`redis:5.0.0-32bit`](#redis500-32bit)
-	[`redis:5.0.0-32bit-stretch`](#redis500-32bit-stretch)
-	[`redis:5.0.0-alpine`](#redis500-alpine)
-	[`redis:5.0.0-alpine3.8`](#redis500-alpine38)
-	[`redis:5.0.0-stretch`](#redis500-stretch)
-	[`redis:5.0-32bit`](#redis50-32bit)
-	[`redis:5.0-32bit-stretch`](#redis50-32bit-stretch)
-	[`redis:5.0-alpine`](#redis50-alpine)
-	[`redis:5.0-alpine3.8`](#redis50-alpine38)
-	[`redis:5.0-stretch`](#redis50-stretch)
-	[`redis:5-32bit`](#redis5-32bit)
-	[`redis:5-32bit-stretch`](#redis5-32bit-stretch)
-	[`redis:5-alpine`](#redis5-alpine)
-	[`redis:5-alpine3.8`](#redis5-alpine38)
-	[`redis:5-stretch`](#redis5-stretch)
-	[`redis:alpine`](#redisalpine)
-	[`redis:alpine3.8`](#redisalpine38)
-	[`redis:latest`](#redislatest)
-	[`redis:stretch`](#redisstretch)

## `redis:32bit`

```console
$ docker pull redis@sha256:fcd708a85270504a3b594f51d838bc3ed99e62a8ddd1ed9e8ddbc86bd13547ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:adb60803470429bdc61247986c46867c7b6d9d6f591188b7312c1009bd8d0369
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39446143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff7108df51c4c089cea96d8e59aa13ea8181bf20ead2a94bc9380ba4d6b8115`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:47:48 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 18 Oct 2018 23:50:51 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 18 Oct 2018 23:50:52 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:50:52 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:50:52 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:50:53 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:50:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:50:53 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:50:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b80a1c5f67a4ee346945c812599568e517ee70f53f70b460ca189c8ba292a7a`  
		Last Modified: Thu, 18 Oct 2018 23:54:39 GMT  
		Size: 4.8 MB (4848295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb49f26ef285da2a6cf2774d9c3acab4f6236085b4212fde8e78ab2cfce4acf`  
		Last Modified: Thu, 18 Oct 2018 23:54:40 GMT  
		Size: 11.2 MB (11168260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ef129f83dbf19489e12657a5d3871793e1664319ad23670339bb84216ecf4a`  
		Last Modified: Thu, 18 Oct 2018 23:54:38 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7a77fb676825049ecb0d88c3a3890b8ccc4e1b0ca03ea003af88deeeb12715`  
		Last Modified: Thu, 18 Oct 2018 23:54:38 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit-stretch`

```console
$ docker pull redis@sha256:fcd708a85270504a3b594f51d838bc3ed99e62a8ddd1ed9e8ddbc86bd13547ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:adb60803470429bdc61247986c46867c7b6d9d6f591188b7312c1009bd8d0369
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39446143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff7108df51c4c089cea96d8e59aa13ea8181bf20ead2a94bc9380ba4d6b8115`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:47:48 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 18 Oct 2018 23:50:51 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 18 Oct 2018 23:50:52 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:50:52 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:50:52 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:50:53 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:50:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:50:53 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:50:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b80a1c5f67a4ee346945c812599568e517ee70f53f70b460ca189c8ba292a7a`  
		Last Modified: Thu, 18 Oct 2018 23:54:39 GMT  
		Size: 4.8 MB (4848295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb49f26ef285da2a6cf2774d9c3acab4f6236085b4212fde8e78ab2cfce4acf`  
		Last Modified: Thu, 18 Oct 2018 23:54:40 GMT  
		Size: 11.2 MB (11168260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ef129f83dbf19489e12657a5d3871793e1664319ad23670339bb84216ecf4a`  
		Last Modified: Thu, 18 Oct 2018 23:54:38 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7a77fb676825049ecb0d88c3a3890b8ccc4e1b0ca03ea003af88deeeb12715`  
		Last Modified: Thu, 18 Oct 2018 23:54:38 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4`

```console
$ docker pull redis@sha256:b6977d3ce8c7ee5c1a59146cd58912b5945b8b5ecf887ef2f3d1b2e402387f4e
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
$ docker pull redis@sha256:616fdab51679e064fca66537cf77292c6dfe43d3d9a26bf83973438043a2dd33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32123605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1897cdc2c6b41217b73899298717e81d10dda561cdd4939dfb7ecbaf35b4b94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 04:34:40 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 04:34:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 04:34:44 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 04:35:27 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 04:35:28 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 04:35:28 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 04:35:28 GMT
WORKDIR /data
# Tue, 16 Oct 2018 04:35:29 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 04:35:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 04:35:29 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 04:35:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ceb2908b0a65cc345fa8843e7f1be3a6ac727780e34674a40d0b45759be5d9`  
		Last Modified: Tue, 16 Oct 2018 04:40:31 GMT  
		Size: 8.7 MB (8694023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4330a6e801e5e4567c7c7666c0bd6059fb1ada3db368b865f24b89f44ab467e6`  
		Last Modified: Tue, 16 Oct 2018 04:40:30 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac88bc721c38110be35da2292e06a77eaae52bc11f6353fcfe4c79e3027318c5`  
		Last Modified: Tue, 16 Oct 2018 04:40:29 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v5

```console
$ docker pull redis@sha256:2e6fcdac7da008e59d30e958c6304406600e0b9986b8c0fe12ee0baf7c2c3dc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30514903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c18c78edfe68e86117574e63a52c5d71dc25dae1de359b170ac400b7e3944e47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:51:25 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 11:51:25 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 11:51:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 11:53:03 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 11:53:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 11:53:04 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 11:53:45 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 11:53:46 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 11:53:47 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 11:53:47 GMT
WORKDIR /data
# Tue, 16 Oct 2018 11:53:48 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:53:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 11:53:48 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 11:53:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733a90629314d385813dadaf06358b96313c3b8d8ff3a05c365c3046438093b`  
		Last Modified: Tue, 16 Oct 2018 11:54:47 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab615d6d3a0515d15f239426aae170d2faf94a8be9857af117040f2bccc5390`  
		Last Modified: Tue, 16 Oct 2018 11:54:48 GMT  
		Size: 931.1 KB (931116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4b14cac93025ba9aecb9f3e5e9026f15c2a8faddee5d46d151d18db405090f`  
		Last Modified: Tue, 16 Oct 2018 11:55:15 GMT  
		Size: 8.4 MB (8418535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f804708f1f644176cdff8e57137908355115352e8386985480b6e63168d5cac0`  
		Last Modified: Tue, 16 Oct 2018 11:55:11 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aad632aa5fe1b6c7051b608a50ade46989fb0a2dbc58ca112acc5d14835c6a8`  
		Last Modified: Tue, 16 Oct 2018 11:55:11 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v7

```console
$ docker pull redis@sha256:2ec891e7f1962524a9e283b3a4a74a90e1391662a6c1905911d0853357d8e46e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28376483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:159a4f024827d94d36956a638a4fcde4495e2a718c4ba1127f133c5a5848920f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:41:12 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 05 Sep 2018 15:41:13 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 15:41:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 15:42:45 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 05 Sep 2018 15:42:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 05 Sep 2018 15:42:46 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 05 Sep 2018 15:43:21 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 15:43:22 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 05 Sep 2018 15:43:22 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 15:43:23 GMT
WORKDIR /data
# Wed, 03 Oct 2018 12:19:07 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 03 Oct 2018 12:19:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 12:19:08 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 12:19:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c851488a5d9b243d717f7029e95bb014395a4bac2c39e59eb1961a611d02866`  
		Last Modified: Wed, 05 Sep 2018 15:44:25 GMT  
		Size: 1.7 KB (1729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cea588168542d6e1519c8713af803138383f54efd83fa5735993be6b0408875`  
		Last Modified: Wed, 05 Sep 2018 15:44:26 GMT  
		Size: 915.7 KB (915715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152135578d80e81b8219be11f13681a3738ec0284b2988f535cb4a980c3d4542`  
		Last Modified: Wed, 05 Sep 2018 15:45:04 GMT  
		Size: 8.2 MB (8188321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c706f4edf3c924f2362a02ffd3f02307fb46b4e1be8a0882e443ac993bf300`  
		Last Modified: Wed, 05 Sep 2018 15:45:00 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01eebbe99fda800667b67bb7312d17053a4f49d724700ead7fa139cf0b16cb26`  
		Last Modified: Wed, 03 Oct 2018 12:20:51 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:0eb108c08cd4b0183bf506978a2dbfe8a38d20a3696527c9c34a0ed55071d37f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29733854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102046cc4ad7f725f25be22cb91b9b93f3fe086be91a8afe9339a67e6a598d3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 18:57:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 18:57:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 18:58:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 19:01:36 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 19:01:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 19:01:38 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 19:03:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 19:03:54 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 19:03:57 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 19:04:00 GMT
WORKDIR /data
# Tue, 16 Oct 2018 19:04:04 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 19:04:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 19:04:11 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 19:04:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04371d693c006bd0812a3cfbf90922a03d72f21611c8d8ca79adf350eeab5f9`  
		Last Modified: Tue, 16 Oct 2018 19:09:55 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a750879aa6a2633e1bd33beb42a61de8c1708af030957eb556836a4e4dbe15`  
		Last Modified: Tue, 16 Oct 2018 19:09:56 GMT  
		Size: 908.0 KB (907952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0359e887791256d85c53ac1d2a1205f0d731398a594fe06cdcda33e91acb938a`  
		Last Modified: Tue, 16 Oct 2018 19:10:41 GMT  
		Size: 8.5 MB (8492053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee441c075acdd3b5b895a3ea6cceee7aba596b97b9d08f15fb80424630903614`  
		Last Modified: Tue, 16 Oct 2018 19:10:38 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c85c21d400564c983927b83a071ca4fb8fd08ee45b2c2b46ecc21d910cd4b7`  
		Last Modified: Tue, 16 Oct 2018 19:10:38 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; 386

```console
$ docker pull redis@sha256:9f6c7624489d116ffa44b7ee9c8160d10095d5ac7aa72871bb04efc82121301e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32299541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8463d2cd60f5fbb1820a9a944296e8f7648056e7f849de75dc4e297473fcb799`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Wed, 17 Oct 2018 00:40:51 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 17 Oct 2018 00:40:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 17 Oct 2018 00:41:05 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 17 Oct 2018 00:42:23 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 17 Oct 2018 00:42:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 17 Oct 2018 00:42:24 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 17 Oct 2018 00:43:02 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 17 Oct 2018 00:43:02 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 17 Oct 2018 00:43:03 GMT
VOLUME [/data]
# Wed, 17 Oct 2018 00:43:03 GMT
WORKDIR /data
# Wed, 17 Oct 2018 00:43:03 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 17 Oct 2018 00:43:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 17 Oct 2018 00:43:04 GMT
EXPOSE 6379/tcp
# Wed, 17 Oct 2018 00:43:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13b6cbc0304f13dc32184df00d9ccbfcddbac740ffb0b5e629e76c46d927ce2`  
		Last Modified: Wed, 17 Oct 2018 00:44:14 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b119e96a7281de6b65ba40dd9eaf271a6bf3a4529813b9d4c0979b7d12467a7f`  
		Last Modified: Wed, 17 Oct 2018 00:44:10 GMT  
		Size: 920.0 KB (920050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801a42c9d8f7af5a1b0d46cd82b25b5a3dad86b4ed528037b72dfc2fd1d8b5fc`  
		Last Modified: Wed, 17 Oct 2018 00:44:49 GMT  
		Size: 8.3 MB (8250636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b873d04a9fa78bc1dbc4063eaa1219017d8e13b105d6047486e416ceeaf5e10`  
		Last Modified: Wed, 17 Oct 2018 00:44:47 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2159afca1f58290ec58d2a375756dd4392fbe5201e95ed2b06856bcec7e1b0f3`  
		Last Modified: Wed, 17 Oct 2018 00:44:47 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; ppc64le

```console
$ docker pull redis@sha256:f7939c486882295ed5e07366d434add4a0c60afd0c1505eb4aa3032ae8ef689e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32521090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7cfa89e83053c3e57f1e5227716998052373b2f67cb4a59cb7e29529f77bf68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:37:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 13:37:20 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 13:38:58 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 13:41:43 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 13:41:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 13:41:45 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 13:43:23 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 13:43:28 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 13:43:29 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 13:43:31 GMT
WORKDIR /data
# Tue, 16 Oct 2018 13:43:33 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 13:43:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 13:43:35 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 13:43:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28132c90b79bace619811b7809e3955cca7109e85cf1003829e52dbcb023be80`  
		Last Modified: Tue, 16 Oct 2018 13:46:13 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a54e6c5f6d05c9e443db90d940598952d64830a759c25c3cd45cd62c6177fb`  
		Last Modified: Tue, 16 Oct 2018 13:46:14 GMT  
		Size: 909.8 KB (909783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e81d8ed09132485b24b8c354ea0b0c06ff04a9dbe19347e12a7a7403b9ddb6`  
		Last Modified: Tue, 16 Oct 2018 13:46:54 GMT  
		Size: 8.9 MB (8868425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45a590d8de836cefb42d7064ac0a6489e40a89d6d76ca8ae64a4cfab33bc22ff`  
		Last Modified: Tue, 16 Oct 2018 13:46:51 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405abf8546f8cc6fe4893366a8a914a0c77b08784a26c2152cab527b1c89b84e`  
		Last Modified: Tue, 16 Oct 2018 13:46:51 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; s390x

```console
$ docker pull redis@sha256:8e7fe20a9fc0d470568d32fefc8fecc556395f78ff412c3e130630d2f9279081
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32347542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4217c813400dc9eb35c83e8bfdfc983c47b51c0c774181c882cc188ea1dbb8d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:52 GMT
ADD file:a7cc9e5280b465a6e72c8b1331e009ddd18bff12c000c9e49ababac631179edc in / 
# Tue, 16 Oct 2018 11:42:52 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:50:06 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 13:50:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 13:50:21 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 13:51:27 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 13:51:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 13:51:27 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 13:52:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 13:52:05 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 13:52:05 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 13:52:06 GMT
WORKDIR /data
# Tue, 16 Oct 2018 13:52:06 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 13:52:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 13:52:06 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 13:52:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b16a7816eac3ca0893b75f07b37e5e276ba331e1a35619343718d1c33f877877`  
		Last Modified: Tue, 16 Oct 2018 11:46:03 GMT  
		Size: 22.3 MB (22334662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c3d0c40cae4c3fa639160e8215ea00b8ae8701a33b0f8603c9c2ac33f795ec`  
		Last Modified: Tue, 16 Oct 2018 13:53:06 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1330deccd36202d5a6a39bf5cfd82166d773239a108ba08375f7a3d208db6bb5`  
		Last Modified: Tue, 16 Oct 2018 13:53:06 GMT  
		Size: 926.7 KB (926709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077f65e4997824a73802840c579f2b1299cf2013dee1c5a5dc186e23147f4b6c`  
		Last Modified: Tue, 16 Oct 2018 13:53:24 GMT  
		Size: 9.1 MB (9083909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad20b051efb3efd7b155ed60137efbc0c5a67efa5bd822ae818bc0b13a85a22`  
		Last Modified: Tue, 16 Oct 2018 13:53:22 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9b4e1afee203a304b6a564592e1d92b5369e7088b23ee6e898b6b5261db870`  
		Last Modified: Tue, 16 Oct 2018 13:53:22 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0`

```console
$ docker pull redis@sha256:b6977d3ce8c7ee5c1a59146cd58912b5945b8b5ecf887ef2f3d1b2e402387f4e
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
$ docker pull redis@sha256:616fdab51679e064fca66537cf77292c6dfe43d3d9a26bf83973438043a2dd33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32123605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1897cdc2c6b41217b73899298717e81d10dda561cdd4939dfb7ecbaf35b4b94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 04:34:40 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 04:34:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 04:34:44 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 04:35:27 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 04:35:28 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 04:35:28 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 04:35:28 GMT
WORKDIR /data
# Tue, 16 Oct 2018 04:35:29 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 04:35:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 04:35:29 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 04:35:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ceb2908b0a65cc345fa8843e7f1be3a6ac727780e34674a40d0b45759be5d9`  
		Last Modified: Tue, 16 Oct 2018 04:40:31 GMT  
		Size: 8.7 MB (8694023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4330a6e801e5e4567c7c7666c0bd6059fb1ada3db368b865f24b89f44ab467e6`  
		Last Modified: Tue, 16 Oct 2018 04:40:30 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac88bc721c38110be35da2292e06a77eaae52bc11f6353fcfe4c79e3027318c5`  
		Last Modified: Tue, 16 Oct 2018 04:40:29 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v5

```console
$ docker pull redis@sha256:2e6fcdac7da008e59d30e958c6304406600e0b9986b8c0fe12ee0baf7c2c3dc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30514903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c18c78edfe68e86117574e63a52c5d71dc25dae1de359b170ac400b7e3944e47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:51:25 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 11:51:25 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 11:51:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 11:53:03 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 11:53:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 11:53:04 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 11:53:45 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 11:53:46 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 11:53:47 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 11:53:47 GMT
WORKDIR /data
# Tue, 16 Oct 2018 11:53:48 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:53:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 11:53:48 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 11:53:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733a90629314d385813dadaf06358b96313c3b8d8ff3a05c365c3046438093b`  
		Last Modified: Tue, 16 Oct 2018 11:54:47 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab615d6d3a0515d15f239426aae170d2faf94a8be9857af117040f2bccc5390`  
		Last Modified: Tue, 16 Oct 2018 11:54:48 GMT  
		Size: 931.1 KB (931116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4b14cac93025ba9aecb9f3e5e9026f15c2a8faddee5d46d151d18db405090f`  
		Last Modified: Tue, 16 Oct 2018 11:55:15 GMT  
		Size: 8.4 MB (8418535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f804708f1f644176cdff8e57137908355115352e8386985480b6e63168d5cac0`  
		Last Modified: Tue, 16 Oct 2018 11:55:11 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aad632aa5fe1b6c7051b608a50ade46989fb0a2dbc58ca112acc5d14835c6a8`  
		Last Modified: Tue, 16 Oct 2018 11:55:11 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v7

```console
$ docker pull redis@sha256:2ec891e7f1962524a9e283b3a4a74a90e1391662a6c1905911d0853357d8e46e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28376483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:159a4f024827d94d36956a638a4fcde4495e2a718c4ba1127f133c5a5848920f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:41:12 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 05 Sep 2018 15:41:13 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 15:41:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 15:42:45 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 05 Sep 2018 15:42:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 05 Sep 2018 15:42:46 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 05 Sep 2018 15:43:21 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 15:43:22 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 05 Sep 2018 15:43:22 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 15:43:23 GMT
WORKDIR /data
# Wed, 03 Oct 2018 12:19:07 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 03 Oct 2018 12:19:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 12:19:08 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 12:19:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c851488a5d9b243d717f7029e95bb014395a4bac2c39e59eb1961a611d02866`  
		Last Modified: Wed, 05 Sep 2018 15:44:25 GMT  
		Size: 1.7 KB (1729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cea588168542d6e1519c8713af803138383f54efd83fa5735993be6b0408875`  
		Last Modified: Wed, 05 Sep 2018 15:44:26 GMT  
		Size: 915.7 KB (915715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152135578d80e81b8219be11f13681a3738ec0284b2988f535cb4a980c3d4542`  
		Last Modified: Wed, 05 Sep 2018 15:45:04 GMT  
		Size: 8.2 MB (8188321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c706f4edf3c924f2362a02ffd3f02307fb46b4e1be8a0882e443ac993bf300`  
		Last Modified: Wed, 05 Sep 2018 15:45:00 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01eebbe99fda800667b67bb7312d17053a4f49d724700ead7fa139cf0b16cb26`  
		Last Modified: Wed, 03 Oct 2018 12:20:51 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:0eb108c08cd4b0183bf506978a2dbfe8a38d20a3696527c9c34a0ed55071d37f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29733854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102046cc4ad7f725f25be22cb91b9b93f3fe086be91a8afe9339a67e6a598d3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 18:57:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 18:57:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 18:58:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 19:01:36 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 19:01:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 19:01:38 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 19:03:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 19:03:54 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 19:03:57 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 19:04:00 GMT
WORKDIR /data
# Tue, 16 Oct 2018 19:04:04 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 19:04:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 19:04:11 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 19:04:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04371d693c006bd0812a3cfbf90922a03d72f21611c8d8ca79adf350eeab5f9`  
		Last Modified: Tue, 16 Oct 2018 19:09:55 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a750879aa6a2633e1bd33beb42a61de8c1708af030957eb556836a4e4dbe15`  
		Last Modified: Tue, 16 Oct 2018 19:09:56 GMT  
		Size: 908.0 KB (907952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0359e887791256d85c53ac1d2a1205f0d731398a594fe06cdcda33e91acb938a`  
		Last Modified: Tue, 16 Oct 2018 19:10:41 GMT  
		Size: 8.5 MB (8492053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee441c075acdd3b5b895a3ea6cceee7aba596b97b9d08f15fb80424630903614`  
		Last Modified: Tue, 16 Oct 2018 19:10:38 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c85c21d400564c983927b83a071ca4fb8fd08ee45b2c2b46ecc21d910cd4b7`  
		Last Modified: Tue, 16 Oct 2018 19:10:38 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; 386

```console
$ docker pull redis@sha256:9f6c7624489d116ffa44b7ee9c8160d10095d5ac7aa72871bb04efc82121301e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32299541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8463d2cd60f5fbb1820a9a944296e8f7648056e7f849de75dc4e297473fcb799`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Wed, 17 Oct 2018 00:40:51 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 17 Oct 2018 00:40:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 17 Oct 2018 00:41:05 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 17 Oct 2018 00:42:23 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 17 Oct 2018 00:42:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 17 Oct 2018 00:42:24 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 17 Oct 2018 00:43:02 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 17 Oct 2018 00:43:02 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 17 Oct 2018 00:43:03 GMT
VOLUME [/data]
# Wed, 17 Oct 2018 00:43:03 GMT
WORKDIR /data
# Wed, 17 Oct 2018 00:43:03 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 17 Oct 2018 00:43:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 17 Oct 2018 00:43:04 GMT
EXPOSE 6379/tcp
# Wed, 17 Oct 2018 00:43:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13b6cbc0304f13dc32184df00d9ccbfcddbac740ffb0b5e629e76c46d927ce2`  
		Last Modified: Wed, 17 Oct 2018 00:44:14 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b119e96a7281de6b65ba40dd9eaf271a6bf3a4529813b9d4c0979b7d12467a7f`  
		Last Modified: Wed, 17 Oct 2018 00:44:10 GMT  
		Size: 920.0 KB (920050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801a42c9d8f7af5a1b0d46cd82b25b5a3dad86b4ed528037b72dfc2fd1d8b5fc`  
		Last Modified: Wed, 17 Oct 2018 00:44:49 GMT  
		Size: 8.3 MB (8250636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b873d04a9fa78bc1dbc4063eaa1219017d8e13b105d6047486e416ceeaf5e10`  
		Last Modified: Wed, 17 Oct 2018 00:44:47 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2159afca1f58290ec58d2a375756dd4392fbe5201e95ed2b06856bcec7e1b0f3`  
		Last Modified: Wed, 17 Oct 2018 00:44:47 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; ppc64le

```console
$ docker pull redis@sha256:f7939c486882295ed5e07366d434add4a0c60afd0c1505eb4aa3032ae8ef689e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32521090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7cfa89e83053c3e57f1e5227716998052373b2f67cb4a59cb7e29529f77bf68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:37:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 13:37:20 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 13:38:58 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 13:41:43 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 13:41:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 13:41:45 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 13:43:23 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 13:43:28 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 13:43:29 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 13:43:31 GMT
WORKDIR /data
# Tue, 16 Oct 2018 13:43:33 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 13:43:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 13:43:35 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 13:43:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28132c90b79bace619811b7809e3955cca7109e85cf1003829e52dbcb023be80`  
		Last Modified: Tue, 16 Oct 2018 13:46:13 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a54e6c5f6d05c9e443db90d940598952d64830a759c25c3cd45cd62c6177fb`  
		Last Modified: Tue, 16 Oct 2018 13:46:14 GMT  
		Size: 909.8 KB (909783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e81d8ed09132485b24b8c354ea0b0c06ff04a9dbe19347e12a7a7403b9ddb6`  
		Last Modified: Tue, 16 Oct 2018 13:46:54 GMT  
		Size: 8.9 MB (8868425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45a590d8de836cefb42d7064ac0a6489e40a89d6d76ca8ae64a4cfab33bc22ff`  
		Last Modified: Tue, 16 Oct 2018 13:46:51 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405abf8546f8cc6fe4893366a8a914a0c77b08784a26c2152cab527b1c89b84e`  
		Last Modified: Tue, 16 Oct 2018 13:46:51 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; s390x

```console
$ docker pull redis@sha256:8e7fe20a9fc0d470568d32fefc8fecc556395f78ff412c3e130630d2f9279081
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32347542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4217c813400dc9eb35c83e8bfdfc983c47b51c0c774181c882cc188ea1dbb8d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:52 GMT
ADD file:a7cc9e5280b465a6e72c8b1331e009ddd18bff12c000c9e49ababac631179edc in / 
# Tue, 16 Oct 2018 11:42:52 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:50:06 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 13:50:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 13:50:21 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 13:51:27 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 13:51:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 13:51:27 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 13:52:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 13:52:05 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 13:52:05 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 13:52:06 GMT
WORKDIR /data
# Tue, 16 Oct 2018 13:52:06 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 13:52:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 13:52:06 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 13:52:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b16a7816eac3ca0893b75f07b37e5e276ba331e1a35619343718d1c33f877877`  
		Last Modified: Tue, 16 Oct 2018 11:46:03 GMT  
		Size: 22.3 MB (22334662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c3d0c40cae4c3fa639160e8215ea00b8ae8701a33b0f8603c9c2ac33f795ec`  
		Last Modified: Tue, 16 Oct 2018 13:53:06 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1330deccd36202d5a6a39bf5cfd82166d773239a108ba08375f7a3d208db6bb5`  
		Last Modified: Tue, 16 Oct 2018 13:53:06 GMT  
		Size: 926.7 KB (926709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077f65e4997824a73802840c579f2b1299cf2013dee1c5a5dc186e23147f4b6c`  
		Last Modified: Tue, 16 Oct 2018 13:53:24 GMT  
		Size: 9.1 MB (9083909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad20b051efb3efd7b155ed60137efbc0c5a67efa5bd822ae818bc0b13a85a22`  
		Last Modified: Tue, 16 Oct 2018 13:53:22 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9b4e1afee203a304b6a564592e1d92b5369e7088b23ee6e898b6b5261db870`  
		Last Modified: Tue, 16 Oct 2018 13:53:22 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.11`

```console
$ docker pull redis@sha256:b6977d3ce8c7ee5c1a59146cd58912b5945b8b5ecf887ef2f3d1b2e402387f4e
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

### `redis:4.0.11` - linux; amd64

```console
$ docker pull redis@sha256:616fdab51679e064fca66537cf77292c6dfe43d3d9a26bf83973438043a2dd33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32123605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1897cdc2c6b41217b73899298717e81d10dda561cdd4939dfb7ecbaf35b4b94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 04:34:40 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 04:34:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 04:34:44 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 04:35:27 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 04:35:28 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 04:35:28 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 04:35:28 GMT
WORKDIR /data
# Tue, 16 Oct 2018 04:35:29 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 04:35:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 04:35:29 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 04:35:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ceb2908b0a65cc345fa8843e7f1be3a6ac727780e34674a40d0b45759be5d9`  
		Last Modified: Tue, 16 Oct 2018 04:40:31 GMT  
		Size: 8.7 MB (8694023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4330a6e801e5e4567c7c7666c0bd6059fb1ada3db368b865f24b89f44ab467e6`  
		Last Modified: Tue, 16 Oct 2018 04:40:30 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac88bc721c38110be35da2292e06a77eaae52bc11f6353fcfe4c79e3027318c5`  
		Last Modified: Tue, 16 Oct 2018 04:40:29 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11` - linux; arm variant v5

```console
$ docker pull redis@sha256:2e6fcdac7da008e59d30e958c6304406600e0b9986b8c0fe12ee0baf7c2c3dc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30514903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c18c78edfe68e86117574e63a52c5d71dc25dae1de359b170ac400b7e3944e47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:51:25 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 11:51:25 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 11:51:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 11:53:03 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 11:53:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 11:53:04 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 11:53:45 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 11:53:46 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 11:53:47 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 11:53:47 GMT
WORKDIR /data
# Tue, 16 Oct 2018 11:53:48 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:53:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 11:53:48 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 11:53:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733a90629314d385813dadaf06358b96313c3b8d8ff3a05c365c3046438093b`  
		Last Modified: Tue, 16 Oct 2018 11:54:47 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab615d6d3a0515d15f239426aae170d2faf94a8be9857af117040f2bccc5390`  
		Last Modified: Tue, 16 Oct 2018 11:54:48 GMT  
		Size: 931.1 KB (931116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4b14cac93025ba9aecb9f3e5e9026f15c2a8faddee5d46d151d18db405090f`  
		Last Modified: Tue, 16 Oct 2018 11:55:15 GMT  
		Size: 8.4 MB (8418535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f804708f1f644176cdff8e57137908355115352e8386985480b6e63168d5cac0`  
		Last Modified: Tue, 16 Oct 2018 11:55:11 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aad632aa5fe1b6c7051b608a50ade46989fb0a2dbc58ca112acc5d14835c6a8`  
		Last Modified: Tue, 16 Oct 2018 11:55:11 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11` - linux; arm variant v7

```console
$ docker pull redis@sha256:2ec891e7f1962524a9e283b3a4a74a90e1391662a6c1905911d0853357d8e46e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28376483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:159a4f024827d94d36956a638a4fcde4495e2a718c4ba1127f133c5a5848920f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:41:12 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 05 Sep 2018 15:41:13 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 15:41:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 15:42:45 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 05 Sep 2018 15:42:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 05 Sep 2018 15:42:46 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 05 Sep 2018 15:43:21 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 15:43:22 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 05 Sep 2018 15:43:22 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 15:43:23 GMT
WORKDIR /data
# Wed, 03 Oct 2018 12:19:07 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 03 Oct 2018 12:19:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 12:19:08 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 12:19:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c851488a5d9b243d717f7029e95bb014395a4bac2c39e59eb1961a611d02866`  
		Last Modified: Wed, 05 Sep 2018 15:44:25 GMT  
		Size: 1.7 KB (1729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cea588168542d6e1519c8713af803138383f54efd83fa5735993be6b0408875`  
		Last Modified: Wed, 05 Sep 2018 15:44:26 GMT  
		Size: 915.7 KB (915715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152135578d80e81b8219be11f13681a3738ec0284b2988f535cb4a980c3d4542`  
		Last Modified: Wed, 05 Sep 2018 15:45:04 GMT  
		Size: 8.2 MB (8188321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c706f4edf3c924f2362a02ffd3f02307fb46b4e1be8a0882e443ac993bf300`  
		Last Modified: Wed, 05 Sep 2018 15:45:00 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01eebbe99fda800667b67bb7312d17053a4f49d724700ead7fa139cf0b16cb26`  
		Last Modified: Wed, 03 Oct 2018 12:20:51 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:0eb108c08cd4b0183bf506978a2dbfe8a38d20a3696527c9c34a0ed55071d37f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29733854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102046cc4ad7f725f25be22cb91b9b93f3fe086be91a8afe9339a67e6a598d3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 18:57:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 18:57:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 18:58:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 19:01:36 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 19:01:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 19:01:38 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 19:03:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 19:03:54 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 19:03:57 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 19:04:00 GMT
WORKDIR /data
# Tue, 16 Oct 2018 19:04:04 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 19:04:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 19:04:11 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 19:04:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04371d693c006bd0812a3cfbf90922a03d72f21611c8d8ca79adf350eeab5f9`  
		Last Modified: Tue, 16 Oct 2018 19:09:55 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a750879aa6a2633e1bd33beb42a61de8c1708af030957eb556836a4e4dbe15`  
		Last Modified: Tue, 16 Oct 2018 19:09:56 GMT  
		Size: 908.0 KB (907952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0359e887791256d85c53ac1d2a1205f0d731398a594fe06cdcda33e91acb938a`  
		Last Modified: Tue, 16 Oct 2018 19:10:41 GMT  
		Size: 8.5 MB (8492053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee441c075acdd3b5b895a3ea6cceee7aba596b97b9d08f15fb80424630903614`  
		Last Modified: Tue, 16 Oct 2018 19:10:38 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c85c21d400564c983927b83a071ca4fb8fd08ee45b2c2b46ecc21d910cd4b7`  
		Last Modified: Tue, 16 Oct 2018 19:10:38 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11` - linux; 386

```console
$ docker pull redis@sha256:9f6c7624489d116ffa44b7ee9c8160d10095d5ac7aa72871bb04efc82121301e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32299541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8463d2cd60f5fbb1820a9a944296e8f7648056e7f849de75dc4e297473fcb799`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Wed, 17 Oct 2018 00:40:51 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 17 Oct 2018 00:40:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 17 Oct 2018 00:41:05 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 17 Oct 2018 00:42:23 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 17 Oct 2018 00:42:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 17 Oct 2018 00:42:24 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 17 Oct 2018 00:43:02 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 17 Oct 2018 00:43:02 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 17 Oct 2018 00:43:03 GMT
VOLUME [/data]
# Wed, 17 Oct 2018 00:43:03 GMT
WORKDIR /data
# Wed, 17 Oct 2018 00:43:03 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 17 Oct 2018 00:43:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 17 Oct 2018 00:43:04 GMT
EXPOSE 6379/tcp
# Wed, 17 Oct 2018 00:43:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13b6cbc0304f13dc32184df00d9ccbfcddbac740ffb0b5e629e76c46d927ce2`  
		Last Modified: Wed, 17 Oct 2018 00:44:14 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b119e96a7281de6b65ba40dd9eaf271a6bf3a4529813b9d4c0979b7d12467a7f`  
		Last Modified: Wed, 17 Oct 2018 00:44:10 GMT  
		Size: 920.0 KB (920050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801a42c9d8f7af5a1b0d46cd82b25b5a3dad86b4ed528037b72dfc2fd1d8b5fc`  
		Last Modified: Wed, 17 Oct 2018 00:44:49 GMT  
		Size: 8.3 MB (8250636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b873d04a9fa78bc1dbc4063eaa1219017d8e13b105d6047486e416ceeaf5e10`  
		Last Modified: Wed, 17 Oct 2018 00:44:47 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2159afca1f58290ec58d2a375756dd4392fbe5201e95ed2b06856bcec7e1b0f3`  
		Last Modified: Wed, 17 Oct 2018 00:44:47 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11` - linux; ppc64le

```console
$ docker pull redis@sha256:f7939c486882295ed5e07366d434add4a0c60afd0c1505eb4aa3032ae8ef689e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32521090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7cfa89e83053c3e57f1e5227716998052373b2f67cb4a59cb7e29529f77bf68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:37:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 13:37:20 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 13:38:58 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 13:41:43 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 13:41:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 13:41:45 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 13:43:23 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 13:43:28 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 13:43:29 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 13:43:31 GMT
WORKDIR /data
# Tue, 16 Oct 2018 13:43:33 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 13:43:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 13:43:35 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 13:43:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28132c90b79bace619811b7809e3955cca7109e85cf1003829e52dbcb023be80`  
		Last Modified: Tue, 16 Oct 2018 13:46:13 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a54e6c5f6d05c9e443db90d940598952d64830a759c25c3cd45cd62c6177fb`  
		Last Modified: Tue, 16 Oct 2018 13:46:14 GMT  
		Size: 909.8 KB (909783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e81d8ed09132485b24b8c354ea0b0c06ff04a9dbe19347e12a7a7403b9ddb6`  
		Last Modified: Tue, 16 Oct 2018 13:46:54 GMT  
		Size: 8.9 MB (8868425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45a590d8de836cefb42d7064ac0a6489e40a89d6d76ca8ae64a4cfab33bc22ff`  
		Last Modified: Tue, 16 Oct 2018 13:46:51 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405abf8546f8cc6fe4893366a8a914a0c77b08784a26c2152cab527b1c89b84e`  
		Last Modified: Tue, 16 Oct 2018 13:46:51 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11` - linux; s390x

```console
$ docker pull redis@sha256:8e7fe20a9fc0d470568d32fefc8fecc556395f78ff412c3e130630d2f9279081
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32347542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4217c813400dc9eb35c83e8bfdfc983c47b51c0c774181c882cc188ea1dbb8d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:52 GMT
ADD file:a7cc9e5280b465a6e72c8b1331e009ddd18bff12c000c9e49ababac631179edc in / 
# Tue, 16 Oct 2018 11:42:52 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:50:06 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 13:50:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 13:50:21 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 13:51:27 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 13:51:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 13:51:27 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 13:52:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 13:52:05 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 13:52:05 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 13:52:06 GMT
WORKDIR /data
# Tue, 16 Oct 2018 13:52:06 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 13:52:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 13:52:06 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 13:52:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b16a7816eac3ca0893b75f07b37e5e276ba331e1a35619343718d1c33f877877`  
		Last Modified: Tue, 16 Oct 2018 11:46:03 GMT  
		Size: 22.3 MB (22334662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c3d0c40cae4c3fa639160e8215ea00b8ae8701a33b0f8603c9c2ac33f795ec`  
		Last Modified: Tue, 16 Oct 2018 13:53:06 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1330deccd36202d5a6a39bf5cfd82166d773239a108ba08375f7a3d208db6bb5`  
		Last Modified: Tue, 16 Oct 2018 13:53:06 GMT  
		Size: 926.7 KB (926709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077f65e4997824a73802840c579f2b1299cf2013dee1c5a5dc186e23147f4b6c`  
		Last Modified: Tue, 16 Oct 2018 13:53:24 GMT  
		Size: 9.1 MB (9083909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad20b051efb3efd7b155ed60137efbc0c5a67efa5bd822ae818bc0b13a85a22`  
		Last Modified: Tue, 16 Oct 2018 13:53:22 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9b4e1afee203a304b6a564592e1d92b5369e7088b23ee6e898b6b5261db870`  
		Last Modified: Tue, 16 Oct 2018 13:53:22 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.11-32bit`

```console
$ docker pull redis@sha256:de889eb101ab1d3ce14aba608bd21ad5880cd5b2a2562413364be8b2f952afd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.11-32bit` - linux; amd64

```console
$ docker pull redis@sha256:4f521031ebce8ec935eea221e1fd9b202cd321bb7a8e7ff9fd1d2cc46e74abef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36532833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5bcabe20ed59b5d17bee64d059ddf7b30035a6b86aeeff296eec844cc900d21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 04:34:40 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 04:34:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 04:34:44 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 04:35:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:36:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 04:36:38 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 04:36:38 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 04:36:38 GMT
WORKDIR /data
# Tue, 16 Oct 2018 04:36:39 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 04:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 04:36:39 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 04:36:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613dea1a51d047da5233c71dd3ed807045f2ff487c39f6457d2d0a13f33ae964`  
		Last Modified: Tue, 16 Oct 2018 04:41:58 GMT  
		Size: 4.8 MB (4848269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e35f7ab4c9fc728e6cc5f678875e147188c8eb89648f5ff36524716c192a61`  
		Last Modified: Tue, 16 Oct 2018 04:41:58 GMT  
		Size: 8.3 MB (8254977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eee205fb7a487e6afa74a6f1b3182d5d45fc908a2749b8bd90805c0e33a0fee`  
		Last Modified: Tue, 16 Oct 2018 04:41:57 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c7063e3993087ca55deb77b84b5c1701bb5e03e10dccfd38e34b6599cb3e8f`  
		Last Modified: Tue, 16 Oct 2018 04:41:57 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.11-32bit-stretch`

```console
$ docker pull redis@sha256:de889eb101ab1d3ce14aba608bd21ad5880cd5b2a2562413364be8b2f952afd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.11-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:4f521031ebce8ec935eea221e1fd9b202cd321bb7a8e7ff9fd1d2cc46e74abef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36532833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5bcabe20ed59b5d17bee64d059ddf7b30035a6b86aeeff296eec844cc900d21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 04:34:40 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 04:34:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 04:34:44 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 04:35:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:36:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 04:36:38 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 04:36:38 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 04:36:38 GMT
WORKDIR /data
# Tue, 16 Oct 2018 04:36:39 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 04:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 04:36:39 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 04:36:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613dea1a51d047da5233c71dd3ed807045f2ff487c39f6457d2d0a13f33ae964`  
		Last Modified: Tue, 16 Oct 2018 04:41:58 GMT  
		Size: 4.8 MB (4848269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e35f7ab4c9fc728e6cc5f678875e147188c8eb89648f5ff36524716c192a61`  
		Last Modified: Tue, 16 Oct 2018 04:41:58 GMT  
		Size: 8.3 MB (8254977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eee205fb7a487e6afa74a6f1b3182d5d45fc908a2749b8bd90805c0e33a0fee`  
		Last Modified: Tue, 16 Oct 2018 04:41:57 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c7063e3993087ca55deb77b84b5c1701bb5e03e10dccfd38e34b6599cb3e8f`  
		Last Modified: Tue, 16 Oct 2018 04:41:57 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.11-alpine`

```console
$ docker pull redis@sha256:2953e537b8eaa5120855285497d4f936d9f02a16480a9d76e8ba014dc3998704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4.0.11-alpine` - linux; amd64

```console
$ docker pull redis@sha256:33f47f1f7a268ec5ea10184737ecec8c4348b030e6c160e5915d03507ce76d0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12047792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05097a3a0549ad993281c2d1f7bbfa807e13217a7afa119f9111d8fd804f420c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:26:27 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 03:26:29 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 03:28:24 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 03:28:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 03:28:25 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 03:29:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 03:29:30 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 03:29:31 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 03:29:31 GMT
WORKDIR /data
# Tue, 02 Oct 2018 18:10:52 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Tue, 02 Oct 2018 18:10:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 02 Oct 2018 18:10:52 GMT
EXPOSE 6379/tcp
# Tue, 02 Oct 2018 18:10:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb758dc2e0380088f86e84055736737a7147cc918d44dd7b9d6b3d10b8846478`  
		Last Modified: Wed, 12 Sep 2018 03:31:03 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989f7b0c858b7747b3a6dd43de74fe166d16abf090b2df6a51687fdf9ae27b2d`  
		Last Modified: Wed, 12 Sep 2018 03:31:02 GMT  
		Size: 402.1 KB (402130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5318f13abaaa6894a9b5a66b3850e7b3b2075ee79d6fb62c1cadf419677d07f`  
		Last Modified: Wed, 12 Sep 2018 03:31:31 GMT  
		Size: 9.4 MB (9436966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521559474dd09f731b973aa0953dd77df4e52b37bea4af934d99896d5423335`  
		Last Modified: Wed, 12 Sep 2018 03:31:28 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add04b11388627e72d85a02b3ded03d5cc2191aa44894dde3f1ddc09869c0989`  
		Last Modified: Tue, 02 Oct 2018 18:16:56 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:92cb9bb3e06fbf77ca4fc37111ea758cc8f5ea2b1de77a3858c8dfc9b913ca63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8395533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4e355e5ba8d835aa403e41dffb7759e11a46c7b48a5da7177d357f254ad47c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:48:17 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 13:48:26 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 13:53:15 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 13:53:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 13:53:17 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 13:56:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 13:56:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 13:56:58 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 13:56:59 GMT
WORKDIR /data
# Wed, 03 Oct 2018 09:05:58 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 09:05:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 09:05:59 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 09:06:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0282f47fed57cf0edb74497b0117f3bda5406a7b722499f98cfd1cfe84071abd`  
		Last Modified: Wed, 12 Sep 2018 14:02:59 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f05f53c51b59f1cf2512bc366489d8279414dcfdf4d3a44d2b36b407f0d1179`  
		Last Modified: Wed, 12 Sep 2018 14:03:02 GMT  
		Size: 404.7 KB (404670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a34e65c07693a619522ca6dd68b452c7bbd75218446944c24c97b9bac5354f`  
		Last Modified: Wed, 12 Sep 2018 14:04:08 GMT  
		Size: 5.8 MB (5842407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:129711ab179d884297cd710da314a4f86bcf9c90b35cca5292291b1705098b10`  
		Last Modified: Wed, 12 Sep 2018 14:04:01 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d28a851fdcba077765404e1a395a44ac188417c125d4373cfb5a9d3b95ddd8`  
		Last Modified: Wed, 03 Oct 2018 09:07:18 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:df61a4a702f7f60125c6bf4315797a646a64787f4ddaeaaf1acf94375ea20364
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11697966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8584cdee5a5fdda1e6a3b5c26ba2032ba27abb05d46ff442325a15082a97a07e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 11:24:22 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 15 Sep 2018 11:24:26 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 15 Sep 2018 11:26:53 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 15 Sep 2018 11:26:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 15 Sep 2018 11:27:03 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 15 Sep 2018 11:28:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 15 Sep 2018 11:28:27 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 15 Sep 2018 11:28:30 GMT
VOLUME [/data]
# Sat, 15 Sep 2018 11:28:32 GMT
WORKDIR /data
# Wed, 03 Oct 2018 10:08:37 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 10:08:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 10:08:39 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 10:08:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fbd813e350b4987a2ae8ea02e0a5e9f94bdf531dbd060fb3f9b48f75615e79`  
		Last Modified: Sat, 15 Sep 2018 11:32:25 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0c4e1e080718745f6953bd2c106b3a8f95d80969ae1170c532d005111bc038`  
		Last Modified: Sat, 15 Sep 2018 11:32:25 GMT  
		Size: 400.5 KB (400519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07ead242813c29a2415c2002ca4369f2e176fdc5f487f4266470579a0946780`  
		Last Modified: Sat, 15 Sep 2018 11:33:20 GMT  
		Size: 9.2 MB (9195743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51be18ee735146e5e10576e3de90147f76988b4d64d24ea17ac84bf8d083110c`  
		Last Modified: Sat, 15 Sep 2018 11:33:17 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5622a881215ed301dfd5caeabb2fe2990679ac29204d1f3b97f54424dca691`  
		Last Modified: Wed, 03 Oct 2018 10:14:27 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-alpine` - linux; 386

```console
$ docker pull redis@sha256:d3cc91e30d252933ab11ce95516fbb5d9ca2532f2aff048e8019d0c972226c1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11658653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62ca9bf6489dfb4741e8b0c99f90c2cc3c322dc8c730eb31300d2a3f57bde6c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 17:19:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 17:19:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 17:21:09 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 17:21:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 17:21:10 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 17:21:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 17:21:42 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 17:21:42 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 17:21:43 GMT
WORKDIR /data
# Wed, 03 Oct 2018 12:02:52 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 12:02:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 12:02:52 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 12:02:52 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66f3eda904fd49ce410925fb7a9c881efd1a8963c0629d993094e288faa52b4`  
		Last Modified: Wed, 12 Sep 2018 17:22:41 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc8259a71237d638c384b24f5a1dceb2c11501d45c4f34bec4569a3a8ed464c`  
		Last Modified: Wed, 12 Sep 2018 17:22:42 GMT  
		Size: 406.6 KB (406559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07dca06dca03069442805da20ab3db5aadab297ea6317dcb4cf0a649d10f63c`  
		Last Modified: Wed, 12 Sep 2018 17:23:06 GMT  
		Size: 9.0 MB (8978696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f99895f61f057dc09bd73f5b53415fd0882a1a6c05e8ad9ed4f93969f85f34`  
		Last Modified: Wed, 12 Sep 2018 17:23:03 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6538470c9add5fe3b683dcfd3d7ff9d19f60930f43f4cd656627f8193bf115`  
		Last Modified: Wed, 03 Oct 2018 12:05:21 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:ccbad503e3eabe391c05516db9e5a4686efb8b3fa51b9cef4a245926d5615e09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12134707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a974e52e7cf7abe08430ac2cbda5da9fc512e253a66cf64db1e25c137b415d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:46:51 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 12:46:56 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 12:48:23 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 12:48:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 12:48:24 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 12:49:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 12:49:06 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 12:49:08 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 12:49:10 GMT
WORKDIR /data
# Wed, 03 Oct 2018 10:26:16 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 10:26:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 10:26:19 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 10:26:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf7586f18b2066373cb5094be8898e1e33840c1f4cddee3e8f8b873075fb5ab`  
		Last Modified: Wed, 12 Sep 2018 12:50:56 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92415845fc066af3f720f0e6b9e348e4769da935329f65effd80736be62d1f91`  
		Last Modified: Wed, 12 Sep 2018 12:50:56 GMT  
		Size: 406.8 KB (406845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075fbcc950c7534091da95819d1c8f70d4a4377a8ce604e92335b6f1e7920e51`  
		Last Modified: Wed, 12 Sep 2018 12:51:53 GMT  
		Size: 9.5 MB (9530629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd235e16f04b6859331d402823433765283b5e4021f0137f52ece828f6682ddf`  
		Last Modified: Wed, 12 Sep 2018 12:51:50 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9b9e2ef4a58450d359ba3b2168611d0ba99d14acaf9fb9e8b67f97fb4b4c2d`  
		Last Modified: Wed, 03 Oct 2018 10:34:20 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-alpine` - linux; s390x

```console
$ docker pull redis@sha256:3b3a4f5241eb9457dd411a42f4747d9c4c2ef8f127c9611fd7cc69646076181d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12295793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52d5d7ac86216e83c78439305787237d0c69463dfb139a72ec225b89f6d331ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:19:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 13:19:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 13:20:48 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 13:20:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 13:20:49 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 13:21:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 13:21:13 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 13:21:13 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 13:21:13 GMT
WORKDIR /data
# Wed, 03 Oct 2018 12:25:20 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 12:25:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 12:25:21 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 12:25:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4783fcf5616fd256cd37b848c921a4c368fb868509715757477d1719e8ad5f`  
		Last Modified: Wed, 12 Sep 2018 13:22:18 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a126c000d8dae10977adebe9cfc4a4adf463db95e95f790eb271bd6b675c99de`  
		Last Modified: Wed, 12 Sep 2018 13:22:18 GMT  
		Size: 407.8 KB (407806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbc63facbda344c7abd329637070c0d99379cbb5f4102047325d698d84a8433`  
		Last Modified: Wed, 12 Sep 2018 13:22:55 GMT  
		Size: 9.6 MB (9578301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dac25f6e898f6aee09525f7464895efe4640e4e0287a575f684ce128c16c9af`  
		Last Modified: Wed, 12 Sep 2018 13:22:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28488f5142d39126a9281e71c052ebf40c78afb7218f01c669a776185819abb9`  
		Last Modified: Wed, 03 Oct 2018 12:28:15 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.11-alpine3.8`

```console
$ docker pull redis@sha256:2953e537b8eaa5120855285497d4f936d9f02a16480a9d76e8ba014dc3998704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4.0.11-alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:33f47f1f7a268ec5ea10184737ecec8c4348b030e6c160e5915d03507ce76d0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12047792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05097a3a0549ad993281c2d1f7bbfa807e13217a7afa119f9111d8fd804f420c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:26:27 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 03:26:29 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 03:28:24 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 03:28:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 03:28:25 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 03:29:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 03:29:30 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 03:29:31 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 03:29:31 GMT
WORKDIR /data
# Tue, 02 Oct 2018 18:10:52 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Tue, 02 Oct 2018 18:10:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 02 Oct 2018 18:10:52 GMT
EXPOSE 6379/tcp
# Tue, 02 Oct 2018 18:10:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb758dc2e0380088f86e84055736737a7147cc918d44dd7b9d6b3d10b8846478`  
		Last Modified: Wed, 12 Sep 2018 03:31:03 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989f7b0c858b7747b3a6dd43de74fe166d16abf090b2df6a51687fdf9ae27b2d`  
		Last Modified: Wed, 12 Sep 2018 03:31:02 GMT  
		Size: 402.1 KB (402130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5318f13abaaa6894a9b5a66b3850e7b3b2075ee79d6fb62c1cadf419677d07f`  
		Last Modified: Wed, 12 Sep 2018 03:31:31 GMT  
		Size: 9.4 MB (9436966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521559474dd09f731b973aa0953dd77df4e52b37bea4af934d99896d5423335`  
		Last Modified: Wed, 12 Sep 2018 03:31:28 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add04b11388627e72d85a02b3ded03d5cc2191aa44894dde3f1ddc09869c0989`  
		Last Modified: Tue, 02 Oct 2018 18:16:56 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-alpine3.8` - linux; arm variant v6

```console
$ docker pull redis@sha256:92cb9bb3e06fbf77ca4fc37111ea758cc8f5ea2b1de77a3858c8dfc9b913ca63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8395533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4e355e5ba8d835aa403e41dffb7759e11a46c7b48a5da7177d357f254ad47c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:48:17 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 13:48:26 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 13:53:15 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 13:53:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 13:53:17 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 13:56:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 13:56:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 13:56:58 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 13:56:59 GMT
WORKDIR /data
# Wed, 03 Oct 2018 09:05:58 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 09:05:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 09:05:59 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 09:06:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0282f47fed57cf0edb74497b0117f3bda5406a7b722499f98cfd1cfe84071abd`  
		Last Modified: Wed, 12 Sep 2018 14:02:59 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f05f53c51b59f1cf2512bc366489d8279414dcfdf4d3a44d2b36b407f0d1179`  
		Last Modified: Wed, 12 Sep 2018 14:03:02 GMT  
		Size: 404.7 KB (404670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a34e65c07693a619522ca6dd68b452c7bbd75218446944c24c97b9bac5354f`  
		Last Modified: Wed, 12 Sep 2018 14:04:08 GMT  
		Size: 5.8 MB (5842407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:129711ab179d884297cd710da314a4f86bcf9c90b35cca5292291b1705098b10`  
		Last Modified: Wed, 12 Sep 2018 14:04:01 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d28a851fdcba077765404e1a395a44ac188417c125d4373cfb5a9d3b95ddd8`  
		Last Modified: Wed, 03 Oct 2018 09:07:18 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-alpine3.8` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:df61a4a702f7f60125c6bf4315797a646a64787f4ddaeaaf1acf94375ea20364
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11697966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8584cdee5a5fdda1e6a3b5c26ba2032ba27abb05d46ff442325a15082a97a07e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 11:24:22 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 15 Sep 2018 11:24:26 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 15 Sep 2018 11:26:53 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 15 Sep 2018 11:26:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 15 Sep 2018 11:27:03 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 15 Sep 2018 11:28:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 15 Sep 2018 11:28:27 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 15 Sep 2018 11:28:30 GMT
VOLUME [/data]
# Sat, 15 Sep 2018 11:28:32 GMT
WORKDIR /data
# Wed, 03 Oct 2018 10:08:37 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 10:08:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 10:08:39 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 10:08:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fbd813e350b4987a2ae8ea02e0a5e9f94bdf531dbd060fb3f9b48f75615e79`  
		Last Modified: Sat, 15 Sep 2018 11:32:25 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0c4e1e080718745f6953bd2c106b3a8f95d80969ae1170c532d005111bc038`  
		Last Modified: Sat, 15 Sep 2018 11:32:25 GMT  
		Size: 400.5 KB (400519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07ead242813c29a2415c2002ca4369f2e176fdc5f487f4266470579a0946780`  
		Last Modified: Sat, 15 Sep 2018 11:33:20 GMT  
		Size: 9.2 MB (9195743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51be18ee735146e5e10576e3de90147f76988b4d64d24ea17ac84bf8d083110c`  
		Last Modified: Sat, 15 Sep 2018 11:33:17 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5622a881215ed301dfd5caeabb2fe2990679ac29204d1f3b97f54424dca691`  
		Last Modified: Wed, 03 Oct 2018 10:14:27 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-alpine3.8` - linux; 386

```console
$ docker pull redis@sha256:d3cc91e30d252933ab11ce95516fbb5d9ca2532f2aff048e8019d0c972226c1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11658653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62ca9bf6489dfb4741e8b0c99f90c2cc3c322dc8c730eb31300d2a3f57bde6c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 17:19:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 17:19:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 17:21:09 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 17:21:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 17:21:10 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 17:21:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 17:21:42 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 17:21:42 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 17:21:43 GMT
WORKDIR /data
# Wed, 03 Oct 2018 12:02:52 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 12:02:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 12:02:52 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 12:02:52 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66f3eda904fd49ce410925fb7a9c881efd1a8963c0629d993094e288faa52b4`  
		Last Modified: Wed, 12 Sep 2018 17:22:41 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc8259a71237d638c384b24f5a1dceb2c11501d45c4f34bec4569a3a8ed464c`  
		Last Modified: Wed, 12 Sep 2018 17:22:42 GMT  
		Size: 406.6 KB (406559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07dca06dca03069442805da20ab3db5aadab297ea6317dcb4cf0a649d10f63c`  
		Last Modified: Wed, 12 Sep 2018 17:23:06 GMT  
		Size: 9.0 MB (8978696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f99895f61f057dc09bd73f5b53415fd0882a1a6c05e8ad9ed4f93969f85f34`  
		Last Modified: Wed, 12 Sep 2018 17:23:03 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6538470c9add5fe3b683dcfd3d7ff9d19f60930f43f4cd656627f8193bf115`  
		Last Modified: Wed, 03 Oct 2018 12:05:21 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-alpine3.8` - linux; ppc64le

```console
$ docker pull redis@sha256:ccbad503e3eabe391c05516db9e5a4686efb8b3fa51b9cef4a245926d5615e09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12134707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a974e52e7cf7abe08430ac2cbda5da9fc512e253a66cf64db1e25c137b415d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:46:51 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 12:46:56 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 12:48:23 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 12:48:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 12:48:24 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 12:49:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 12:49:06 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 12:49:08 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 12:49:10 GMT
WORKDIR /data
# Wed, 03 Oct 2018 10:26:16 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 10:26:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 10:26:19 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 10:26:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf7586f18b2066373cb5094be8898e1e33840c1f4cddee3e8f8b873075fb5ab`  
		Last Modified: Wed, 12 Sep 2018 12:50:56 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92415845fc066af3f720f0e6b9e348e4769da935329f65effd80736be62d1f91`  
		Last Modified: Wed, 12 Sep 2018 12:50:56 GMT  
		Size: 406.8 KB (406845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075fbcc950c7534091da95819d1c8f70d4a4377a8ce604e92335b6f1e7920e51`  
		Last Modified: Wed, 12 Sep 2018 12:51:53 GMT  
		Size: 9.5 MB (9530629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd235e16f04b6859331d402823433765283b5e4021f0137f52ece828f6682ddf`  
		Last Modified: Wed, 12 Sep 2018 12:51:50 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9b9e2ef4a58450d359ba3b2168611d0ba99d14acaf9fb9e8b67f97fb4b4c2d`  
		Last Modified: Wed, 03 Oct 2018 10:34:20 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-alpine3.8` - linux; s390x

```console
$ docker pull redis@sha256:3b3a4f5241eb9457dd411a42f4747d9c4c2ef8f127c9611fd7cc69646076181d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12295793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52d5d7ac86216e83c78439305787237d0c69463dfb139a72ec225b89f6d331ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:19:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 13:19:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 13:20:48 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 13:20:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 13:20:49 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 13:21:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 13:21:13 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 13:21:13 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 13:21:13 GMT
WORKDIR /data
# Wed, 03 Oct 2018 12:25:20 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 12:25:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 12:25:21 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 12:25:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4783fcf5616fd256cd37b848c921a4c368fb868509715757477d1719e8ad5f`  
		Last Modified: Wed, 12 Sep 2018 13:22:18 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a126c000d8dae10977adebe9cfc4a4adf463db95e95f790eb271bd6b675c99de`  
		Last Modified: Wed, 12 Sep 2018 13:22:18 GMT  
		Size: 407.8 KB (407806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbc63facbda344c7abd329637070c0d99379cbb5f4102047325d698d84a8433`  
		Last Modified: Wed, 12 Sep 2018 13:22:55 GMT  
		Size: 9.6 MB (9578301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dac25f6e898f6aee09525f7464895efe4640e4e0287a575f684ce128c16c9af`  
		Last Modified: Wed, 12 Sep 2018 13:22:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28488f5142d39126a9281e71c052ebf40c78afb7218f01c669a776185819abb9`  
		Last Modified: Wed, 03 Oct 2018 12:28:15 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.11-stretch`

```console
$ docker pull redis@sha256:b6977d3ce8c7ee5c1a59146cd58912b5945b8b5ecf887ef2f3d1b2e402387f4e
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

### `redis:4.0.11-stretch` - linux; amd64

```console
$ docker pull redis@sha256:616fdab51679e064fca66537cf77292c6dfe43d3d9a26bf83973438043a2dd33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32123605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1897cdc2c6b41217b73899298717e81d10dda561cdd4939dfb7ecbaf35b4b94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 04:34:40 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 04:34:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 04:34:44 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 04:35:27 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 04:35:28 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 04:35:28 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 04:35:28 GMT
WORKDIR /data
# Tue, 16 Oct 2018 04:35:29 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 04:35:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 04:35:29 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 04:35:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ceb2908b0a65cc345fa8843e7f1be3a6ac727780e34674a40d0b45759be5d9`  
		Last Modified: Tue, 16 Oct 2018 04:40:31 GMT  
		Size: 8.7 MB (8694023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4330a6e801e5e4567c7c7666c0bd6059fb1ada3db368b865f24b89f44ab467e6`  
		Last Modified: Tue, 16 Oct 2018 04:40:30 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac88bc721c38110be35da2292e06a77eaae52bc11f6353fcfe4c79e3027318c5`  
		Last Modified: Tue, 16 Oct 2018 04:40:29 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:2e6fcdac7da008e59d30e958c6304406600e0b9986b8c0fe12ee0baf7c2c3dc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30514903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c18c78edfe68e86117574e63a52c5d71dc25dae1de359b170ac400b7e3944e47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:51:25 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 11:51:25 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 11:51:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 11:53:03 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 11:53:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 11:53:04 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 11:53:45 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 11:53:46 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 11:53:47 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 11:53:47 GMT
WORKDIR /data
# Tue, 16 Oct 2018 11:53:48 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:53:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 11:53:48 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 11:53:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733a90629314d385813dadaf06358b96313c3b8d8ff3a05c365c3046438093b`  
		Last Modified: Tue, 16 Oct 2018 11:54:47 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab615d6d3a0515d15f239426aae170d2faf94a8be9857af117040f2bccc5390`  
		Last Modified: Tue, 16 Oct 2018 11:54:48 GMT  
		Size: 931.1 KB (931116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4b14cac93025ba9aecb9f3e5e9026f15c2a8faddee5d46d151d18db405090f`  
		Last Modified: Tue, 16 Oct 2018 11:55:15 GMT  
		Size: 8.4 MB (8418535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f804708f1f644176cdff8e57137908355115352e8386985480b6e63168d5cac0`  
		Last Modified: Tue, 16 Oct 2018 11:55:11 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aad632aa5fe1b6c7051b608a50ade46989fb0a2dbc58ca112acc5d14835c6a8`  
		Last Modified: Tue, 16 Oct 2018 11:55:11 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:2ec891e7f1962524a9e283b3a4a74a90e1391662a6c1905911d0853357d8e46e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28376483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:159a4f024827d94d36956a638a4fcde4495e2a718c4ba1127f133c5a5848920f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:41:12 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 05 Sep 2018 15:41:13 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 15:41:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 15:42:45 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 05 Sep 2018 15:42:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 05 Sep 2018 15:42:46 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 05 Sep 2018 15:43:21 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 15:43:22 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 05 Sep 2018 15:43:22 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 15:43:23 GMT
WORKDIR /data
# Wed, 03 Oct 2018 12:19:07 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 03 Oct 2018 12:19:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 12:19:08 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 12:19:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c851488a5d9b243d717f7029e95bb014395a4bac2c39e59eb1961a611d02866`  
		Last Modified: Wed, 05 Sep 2018 15:44:25 GMT  
		Size: 1.7 KB (1729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cea588168542d6e1519c8713af803138383f54efd83fa5735993be6b0408875`  
		Last Modified: Wed, 05 Sep 2018 15:44:26 GMT  
		Size: 915.7 KB (915715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152135578d80e81b8219be11f13681a3738ec0284b2988f535cb4a980c3d4542`  
		Last Modified: Wed, 05 Sep 2018 15:45:04 GMT  
		Size: 8.2 MB (8188321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c706f4edf3c924f2362a02ffd3f02307fb46b4e1be8a0882e443ac993bf300`  
		Last Modified: Wed, 05 Sep 2018 15:45:00 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01eebbe99fda800667b67bb7312d17053a4f49d724700ead7fa139cf0b16cb26`  
		Last Modified: Wed, 03 Oct 2018 12:20:51 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:0eb108c08cd4b0183bf506978a2dbfe8a38d20a3696527c9c34a0ed55071d37f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29733854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102046cc4ad7f725f25be22cb91b9b93f3fe086be91a8afe9339a67e6a598d3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 18:57:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 18:57:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 18:58:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 19:01:36 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 19:01:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 19:01:38 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 19:03:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 19:03:54 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 19:03:57 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 19:04:00 GMT
WORKDIR /data
# Tue, 16 Oct 2018 19:04:04 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 19:04:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 19:04:11 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 19:04:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04371d693c006bd0812a3cfbf90922a03d72f21611c8d8ca79adf350eeab5f9`  
		Last Modified: Tue, 16 Oct 2018 19:09:55 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a750879aa6a2633e1bd33beb42a61de8c1708af030957eb556836a4e4dbe15`  
		Last Modified: Tue, 16 Oct 2018 19:09:56 GMT  
		Size: 908.0 KB (907952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0359e887791256d85c53ac1d2a1205f0d731398a594fe06cdcda33e91acb938a`  
		Last Modified: Tue, 16 Oct 2018 19:10:41 GMT  
		Size: 8.5 MB (8492053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee441c075acdd3b5b895a3ea6cceee7aba596b97b9d08f15fb80424630903614`  
		Last Modified: Tue, 16 Oct 2018 19:10:38 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c85c21d400564c983927b83a071ca4fb8fd08ee45b2c2b46ecc21d910cd4b7`  
		Last Modified: Tue, 16 Oct 2018 19:10:38 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-stretch` - linux; 386

```console
$ docker pull redis@sha256:9f6c7624489d116ffa44b7ee9c8160d10095d5ac7aa72871bb04efc82121301e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32299541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8463d2cd60f5fbb1820a9a944296e8f7648056e7f849de75dc4e297473fcb799`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Wed, 17 Oct 2018 00:40:51 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 17 Oct 2018 00:40:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 17 Oct 2018 00:41:05 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 17 Oct 2018 00:42:23 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 17 Oct 2018 00:42:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 17 Oct 2018 00:42:24 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 17 Oct 2018 00:43:02 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 17 Oct 2018 00:43:02 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 17 Oct 2018 00:43:03 GMT
VOLUME [/data]
# Wed, 17 Oct 2018 00:43:03 GMT
WORKDIR /data
# Wed, 17 Oct 2018 00:43:03 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 17 Oct 2018 00:43:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 17 Oct 2018 00:43:04 GMT
EXPOSE 6379/tcp
# Wed, 17 Oct 2018 00:43:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13b6cbc0304f13dc32184df00d9ccbfcddbac740ffb0b5e629e76c46d927ce2`  
		Last Modified: Wed, 17 Oct 2018 00:44:14 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b119e96a7281de6b65ba40dd9eaf271a6bf3a4529813b9d4c0979b7d12467a7f`  
		Last Modified: Wed, 17 Oct 2018 00:44:10 GMT  
		Size: 920.0 KB (920050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801a42c9d8f7af5a1b0d46cd82b25b5a3dad86b4ed528037b72dfc2fd1d8b5fc`  
		Last Modified: Wed, 17 Oct 2018 00:44:49 GMT  
		Size: 8.3 MB (8250636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b873d04a9fa78bc1dbc4063eaa1219017d8e13b105d6047486e416ceeaf5e10`  
		Last Modified: Wed, 17 Oct 2018 00:44:47 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2159afca1f58290ec58d2a375756dd4392fbe5201e95ed2b06856bcec7e1b0f3`  
		Last Modified: Wed, 17 Oct 2018 00:44:47 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:f7939c486882295ed5e07366d434add4a0c60afd0c1505eb4aa3032ae8ef689e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32521090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7cfa89e83053c3e57f1e5227716998052373b2f67cb4a59cb7e29529f77bf68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:37:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 13:37:20 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 13:38:58 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 13:41:43 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 13:41:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 13:41:45 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 13:43:23 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 13:43:28 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 13:43:29 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 13:43:31 GMT
WORKDIR /data
# Tue, 16 Oct 2018 13:43:33 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 13:43:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 13:43:35 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 13:43:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28132c90b79bace619811b7809e3955cca7109e85cf1003829e52dbcb023be80`  
		Last Modified: Tue, 16 Oct 2018 13:46:13 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a54e6c5f6d05c9e443db90d940598952d64830a759c25c3cd45cd62c6177fb`  
		Last Modified: Tue, 16 Oct 2018 13:46:14 GMT  
		Size: 909.8 KB (909783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e81d8ed09132485b24b8c354ea0b0c06ff04a9dbe19347e12a7a7403b9ddb6`  
		Last Modified: Tue, 16 Oct 2018 13:46:54 GMT  
		Size: 8.9 MB (8868425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45a590d8de836cefb42d7064ac0a6489e40a89d6d76ca8ae64a4cfab33bc22ff`  
		Last Modified: Tue, 16 Oct 2018 13:46:51 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405abf8546f8cc6fe4893366a8a914a0c77b08784a26c2152cab527b1c89b84e`  
		Last Modified: Tue, 16 Oct 2018 13:46:51 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-stretch` - linux; s390x

```console
$ docker pull redis@sha256:8e7fe20a9fc0d470568d32fefc8fecc556395f78ff412c3e130630d2f9279081
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32347542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4217c813400dc9eb35c83e8bfdfc983c47b51c0c774181c882cc188ea1dbb8d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:52 GMT
ADD file:a7cc9e5280b465a6e72c8b1331e009ddd18bff12c000c9e49ababac631179edc in / 
# Tue, 16 Oct 2018 11:42:52 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:50:06 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 13:50:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 13:50:21 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 13:51:27 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 13:51:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 13:51:27 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 13:52:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 13:52:05 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 13:52:05 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 13:52:06 GMT
WORKDIR /data
# Tue, 16 Oct 2018 13:52:06 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 13:52:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 13:52:06 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 13:52:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b16a7816eac3ca0893b75f07b37e5e276ba331e1a35619343718d1c33f877877`  
		Last Modified: Tue, 16 Oct 2018 11:46:03 GMT  
		Size: 22.3 MB (22334662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c3d0c40cae4c3fa639160e8215ea00b8ae8701a33b0f8603c9c2ac33f795ec`  
		Last Modified: Tue, 16 Oct 2018 13:53:06 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1330deccd36202d5a6a39bf5cfd82166d773239a108ba08375f7a3d208db6bb5`  
		Last Modified: Tue, 16 Oct 2018 13:53:06 GMT  
		Size: 926.7 KB (926709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077f65e4997824a73802840c579f2b1299cf2013dee1c5a5dc186e23147f4b6c`  
		Last Modified: Tue, 16 Oct 2018 13:53:24 GMT  
		Size: 9.1 MB (9083909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad20b051efb3efd7b155ed60137efbc0c5a67efa5bd822ae818bc0b13a85a22`  
		Last Modified: Tue, 16 Oct 2018 13:53:22 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9b4e1afee203a304b6a564592e1d92b5369e7088b23ee6e898b6b5261db870`  
		Last Modified: Tue, 16 Oct 2018 13:53:22 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit`

```console
$ docker pull redis@sha256:de889eb101ab1d3ce14aba608bd21ad5880cd5b2a2562413364be8b2f952afd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:4f521031ebce8ec935eea221e1fd9b202cd321bb7a8e7ff9fd1d2cc46e74abef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36532833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5bcabe20ed59b5d17bee64d059ddf7b30035a6b86aeeff296eec844cc900d21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 04:34:40 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 04:34:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 04:34:44 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 04:35:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:36:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 04:36:38 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 04:36:38 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 04:36:38 GMT
WORKDIR /data
# Tue, 16 Oct 2018 04:36:39 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 04:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 04:36:39 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 04:36:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613dea1a51d047da5233c71dd3ed807045f2ff487c39f6457d2d0a13f33ae964`  
		Last Modified: Tue, 16 Oct 2018 04:41:58 GMT  
		Size: 4.8 MB (4848269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e35f7ab4c9fc728e6cc5f678875e147188c8eb89648f5ff36524716c192a61`  
		Last Modified: Tue, 16 Oct 2018 04:41:58 GMT  
		Size: 8.3 MB (8254977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eee205fb7a487e6afa74a6f1b3182d5d45fc908a2749b8bd90805c0e33a0fee`  
		Last Modified: Tue, 16 Oct 2018 04:41:57 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c7063e3993087ca55deb77b84b5c1701bb5e03e10dccfd38e34b6599cb3e8f`  
		Last Modified: Tue, 16 Oct 2018 04:41:57 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit-stretch`

```console
$ docker pull redis@sha256:de889eb101ab1d3ce14aba608bd21ad5880cd5b2a2562413364be8b2f952afd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:4f521031ebce8ec935eea221e1fd9b202cd321bb7a8e7ff9fd1d2cc46e74abef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36532833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5bcabe20ed59b5d17bee64d059ddf7b30035a6b86aeeff296eec844cc900d21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 04:34:40 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 04:34:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 04:34:44 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 04:35:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:36:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 04:36:38 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 04:36:38 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 04:36:38 GMT
WORKDIR /data
# Tue, 16 Oct 2018 04:36:39 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 04:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 04:36:39 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 04:36:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613dea1a51d047da5233c71dd3ed807045f2ff487c39f6457d2d0a13f33ae964`  
		Last Modified: Tue, 16 Oct 2018 04:41:58 GMT  
		Size: 4.8 MB (4848269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e35f7ab4c9fc728e6cc5f678875e147188c8eb89648f5ff36524716c192a61`  
		Last Modified: Tue, 16 Oct 2018 04:41:58 GMT  
		Size: 8.3 MB (8254977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eee205fb7a487e6afa74a6f1b3182d5d45fc908a2749b8bd90805c0e33a0fee`  
		Last Modified: Tue, 16 Oct 2018 04:41:57 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c7063e3993087ca55deb77b84b5c1701bb5e03e10dccfd38e34b6599cb3e8f`  
		Last Modified: Tue, 16 Oct 2018 04:41:57 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine`

```console
$ docker pull redis@sha256:2953e537b8eaa5120855285497d4f936d9f02a16480a9d76e8ba014dc3998704
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
$ docker pull redis@sha256:33f47f1f7a268ec5ea10184737ecec8c4348b030e6c160e5915d03507ce76d0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12047792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05097a3a0549ad993281c2d1f7bbfa807e13217a7afa119f9111d8fd804f420c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:26:27 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 03:26:29 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 03:28:24 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 03:28:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 03:28:25 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 03:29:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 03:29:30 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 03:29:31 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 03:29:31 GMT
WORKDIR /data
# Tue, 02 Oct 2018 18:10:52 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Tue, 02 Oct 2018 18:10:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 02 Oct 2018 18:10:52 GMT
EXPOSE 6379/tcp
# Tue, 02 Oct 2018 18:10:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb758dc2e0380088f86e84055736737a7147cc918d44dd7b9d6b3d10b8846478`  
		Last Modified: Wed, 12 Sep 2018 03:31:03 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989f7b0c858b7747b3a6dd43de74fe166d16abf090b2df6a51687fdf9ae27b2d`  
		Last Modified: Wed, 12 Sep 2018 03:31:02 GMT  
		Size: 402.1 KB (402130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5318f13abaaa6894a9b5a66b3850e7b3b2075ee79d6fb62c1cadf419677d07f`  
		Last Modified: Wed, 12 Sep 2018 03:31:31 GMT  
		Size: 9.4 MB (9436966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521559474dd09f731b973aa0953dd77df4e52b37bea4af934d99896d5423335`  
		Last Modified: Wed, 12 Sep 2018 03:31:28 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add04b11388627e72d85a02b3ded03d5cc2191aa44894dde3f1ddc09869c0989`  
		Last Modified: Tue, 02 Oct 2018 18:16:56 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:92cb9bb3e06fbf77ca4fc37111ea758cc8f5ea2b1de77a3858c8dfc9b913ca63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8395533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4e355e5ba8d835aa403e41dffb7759e11a46c7b48a5da7177d357f254ad47c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:48:17 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 13:48:26 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 13:53:15 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 13:53:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 13:53:17 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 13:56:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 13:56:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 13:56:58 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 13:56:59 GMT
WORKDIR /data
# Wed, 03 Oct 2018 09:05:58 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 09:05:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 09:05:59 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 09:06:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0282f47fed57cf0edb74497b0117f3bda5406a7b722499f98cfd1cfe84071abd`  
		Last Modified: Wed, 12 Sep 2018 14:02:59 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f05f53c51b59f1cf2512bc366489d8279414dcfdf4d3a44d2b36b407f0d1179`  
		Last Modified: Wed, 12 Sep 2018 14:03:02 GMT  
		Size: 404.7 KB (404670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a34e65c07693a619522ca6dd68b452c7bbd75218446944c24c97b9bac5354f`  
		Last Modified: Wed, 12 Sep 2018 14:04:08 GMT  
		Size: 5.8 MB (5842407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:129711ab179d884297cd710da314a4f86bcf9c90b35cca5292291b1705098b10`  
		Last Modified: Wed, 12 Sep 2018 14:04:01 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d28a851fdcba077765404e1a395a44ac188417c125d4373cfb5a9d3b95ddd8`  
		Last Modified: Wed, 03 Oct 2018 09:07:18 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:df61a4a702f7f60125c6bf4315797a646a64787f4ddaeaaf1acf94375ea20364
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11697966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8584cdee5a5fdda1e6a3b5c26ba2032ba27abb05d46ff442325a15082a97a07e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 11:24:22 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 15 Sep 2018 11:24:26 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 15 Sep 2018 11:26:53 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 15 Sep 2018 11:26:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 15 Sep 2018 11:27:03 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 15 Sep 2018 11:28:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 15 Sep 2018 11:28:27 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 15 Sep 2018 11:28:30 GMT
VOLUME [/data]
# Sat, 15 Sep 2018 11:28:32 GMT
WORKDIR /data
# Wed, 03 Oct 2018 10:08:37 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 10:08:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 10:08:39 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 10:08:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fbd813e350b4987a2ae8ea02e0a5e9f94bdf531dbd060fb3f9b48f75615e79`  
		Last Modified: Sat, 15 Sep 2018 11:32:25 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0c4e1e080718745f6953bd2c106b3a8f95d80969ae1170c532d005111bc038`  
		Last Modified: Sat, 15 Sep 2018 11:32:25 GMT  
		Size: 400.5 KB (400519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07ead242813c29a2415c2002ca4369f2e176fdc5f487f4266470579a0946780`  
		Last Modified: Sat, 15 Sep 2018 11:33:20 GMT  
		Size: 9.2 MB (9195743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51be18ee735146e5e10576e3de90147f76988b4d64d24ea17ac84bf8d083110c`  
		Last Modified: Sat, 15 Sep 2018 11:33:17 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5622a881215ed301dfd5caeabb2fe2990679ac29204d1f3b97f54424dca691`  
		Last Modified: Wed, 03 Oct 2018 10:14:27 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; 386

```console
$ docker pull redis@sha256:d3cc91e30d252933ab11ce95516fbb5d9ca2532f2aff048e8019d0c972226c1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11658653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62ca9bf6489dfb4741e8b0c99f90c2cc3c322dc8c730eb31300d2a3f57bde6c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 17:19:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 17:19:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 17:21:09 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 17:21:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 17:21:10 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 17:21:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 17:21:42 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 17:21:42 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 17:21:43 GMT
WORKDIR /data
# Wed, 03 Oct 2018 12:02:52 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 12:02:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 12:02:52 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 12:02:52 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66f3eda904fd49ce410925fb7a9c881efd1a8963c0629d993094e288faa52b4`  
		Last Modified: Wed, 12 Sep 2018 17:22:41 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc8259a71237d638c384b24f5a1dceb2c11501d45c4f34bec4569a3a8ed464c`  
		Last Modified: Wed, 12 Sep 2018 17:22:42 GMT  
		Size: 406.6 KB (406559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07dca06dca03069442805da20ab3db5aadab297ea6317dcb4cf0a649d10f63c`  
		Last Modified: Wed, 12 Sep 2018 17:23:06 GMT  
		Size: 9.0 MB (8978696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f99895f61f057dc09bd73f5b53415fd0882a1a6c05e8ad9ed4f93969f85f34`  
		Last Modified: Wed, 12 Sep 2018 17:23:03 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6538470c9add5fe3b683dcfd3d7ff9d19f60930f43f4cd656627f8193bf115`  
		Last Modified: Wed, 03 Oct 2018 12:05:21 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:ccbad503e3eabe391c05516db9e5a4686efb8b3fa51b9cef4a245926d5615e09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12134707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a974e52e7cf7abe08430ac2cbda5da9fc512e253a66cf64db1e25c137b415d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:46:51 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 12:46:56 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 12:48:23 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 12:48:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 12:48:24 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 12:49:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 12:49:06 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 12:49:08 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 12:49:10 GMT
WORKDIR /data
# Wed, 03 Oct 2018 10:26:16 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 10:26:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 10:26:19 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 10:26:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf7586f18b2066373cb5094be8898e1e33840c1f4cddee3e8f8b873075fb5ab`  
		Last Modified: Wed, 12 Sep 2018 12:50:56 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92415845fc066af3f720f0e6b9e348e4769da935329f65effd80736be62d1f91`  
		Last Modified: Wed, 12 Sep 2018 12:50:56 GMT  
		Size: 406.8 KB (406845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075fbcc950c7534091da95819d1c8f70d4a4377a8ce604e92335b6f1e7920e51`  
		Last Modified: Wed, 12 Sep 2018 12:51:53 GMT  
		Size: 9.5 MB (9530629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd235e16f04b6859331d402823433765283b5e4021f0137f52ece828f6682ddf`  
		Last Modified: Wed, 12 Sep 2018 12:51:50 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9b9e2ef4a58450d359ba3b2168611d0ba99d14acaf9fb9e8b67f97fb4b4c2d`  
		Last Modified: Wed, 03 Oct 2018 10:34:20 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; s390x

```console
$ docker pull redis@sha256:3b3a4f5241eb9457dd411a42f4747d9c4c2ef8f127c9611fd7cc69646076181d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12295793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52d5d7ac86216e83c78439305787237d0c69463dfb139a72ec225b89f6d331ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:19:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 13:19:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 13:20:48 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 13:20:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 13:20:49 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 13:21:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 13:21:13 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 13:21:13 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 13:21:13 GMT
WORKDIR /data
# Wed, 03 Oct 2018 12:25:20 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 12:25:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 12:25:21 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 12:25:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4783fcf5616fd256cd37b848c921a4c368fb868509715757477d1719e8ad5f`  
		Last Modified: Wed, 12 Sep 2018 13:22:18 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a126c000d8dae10977adebe9cfc4a4adf463db95e95f790eb271bd6b675c99de`  
		Last Modified: Wed, 12 Sep 2018 13:22:18 GMT  
		Size: 407.8 KB (407806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbc63facbda344c7abd329637070c0d99379cbb5f4102047325d698d84a8433`  
		Last Modified: Wed, 12 Sep 2018 13:22:55 GMT  
		Size: 9.6 MB (9578301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dac25f6e898f6aee09525f7464895efe4640e4e0287a575f684ce128c16c9af`  
		Last Modified: Wed, 12 Sep 2018 13:22:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28488f5142d39126a9281e71c052ebf40c78afb7218f01c669a776185819abb9`  
		Last Modified: Wed, 03 Oct 2018 12:28:15 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine3.8`

```console
$ docker pull redis@sha256:2953e537b8eaa5120855285497d4f936d9f02a16480a9d76e8ba014dc3998704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4.0-alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:33f47f1f7a268ec5ea10184737ecec8c4348b030e6c160e5915d03507ce76d0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12047792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05097a3a0549ad993281c2d1f7bbfa807e13217a7afa119f9111d8fd804f420c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:26:27 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 03:26:29 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 03:28:24 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 03:28:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 03:28:25 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 03:29:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 03:29:30 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 03:29:31 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 03:29:31 GMT
WORKDIR /data
# Tue, 02 Oct 2018 18:10:52 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Tue, 02 Oct 2018 18:10:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 02 Oct 2018 18:10:52 GMT
EXPOSE 6379/tcp
# Tue, 02 Oct 2018 18:10:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb758dc2e0380088f86e84055736737a7147cc918d44dd7b9d6b3d10b8846478`  
		Last Modified: Wed, 12 Sep 2018 03:31:03 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989f7b0c858b7747b3a6dd43de74fe166d16abf090b2df6a51687fdf9ae27b2d`  
		Last Modified: Wed, 12 Sep 2018 03:31:02 GMT  
		Size: 402.1 KB (402130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5318f13abaaa6894a9b5a66b3850e7b3b2075ee79d6fb62c1cadf419677d07f`  
		Last Modified: Wed, 12 Sep 2018 03:31:31 GMT  
		Size: 9.4 MB (9436966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521559474dd09f731b973aa0953dd77df4e52b37bea4af934d99896d5423335`  
		Last Modified: Wed, 12 Sep 2018 03:31:28 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add04b11388627e72d85a02b3ded03d5cc2191aa44894dde3f1ddc09869c0989`  
		Last Modified: Tue, 02 Oct 2018 18:16:56 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.8` - linux; arm variant v6

```console
$ docker pull redis@sha256:92cb9bb3e06fbf77ca4fc37111ea758cc8f5ea2b1de77a3858c8dfc9b913ca63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8395533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4e355e5ba8d835aa403e41dffb7759e11a46c7b48a5da7177d357f254ad47c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:48:17 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 13:48:26 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 13:53:15 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 13:53:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 13:53:17 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 13:56:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 13:56:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 13:56:58 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 13:56:59 GMT
WORKDIR /data
# Wed, 03 Oct 2018 09:05:58 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 09:05:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 09:05:59 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 09:06:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0282f47fed57cf0edb74497b0117f3bda5406a7b722499f98cfd1cfe84071abd`  
		Last Modified: Wed, 12 Sep 2018 14:02:59 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f05f53c51b59f1cf2512bc366489d8279414dcfdf4d3a44d2b36b407f0d1179`  
		Last Modified: Wed, 12 Sep 2018 14:03:02 GMT  
		Size: 404.7 KB (404670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a34e65c07693a619522ca6dd68b452c7bbd75218446944c24c97b9bac5354f`  
		Last Modified: Wed, 12 Sep 2018 14:04:08 GMT  
		Size: 5.8 MB (5842407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:129711ab179d884297cd710da314a4f86bcf9c90b35cca5292291b1705098b10`  
		Last Modified: Wed, 12 Sep 2018 14:04:01 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d28a851fdcba077765404e1a395a44ac188417c125d4373cfb5a9d3b95ddd8`  
		Last Modified: Wed, 03 Oct 2018 09:07:18 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.8` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:df61a4a702f7f60125c6bf4315797a646a64787f4ddaeaaf1acf94375ea20364
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11697966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8584cdee5a5fdda1e6a3b5c26ba2032ba27abb05d46ff442325a15082a97a07e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 11:24:22 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 15 Sep 2018 11:24:26 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 15 Sep 2018 11:26:53 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 15 Sep 2018 11:26:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 15 Sep 2018 11:27:03 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 15 Sep 2018 11:28:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 15 Sep 2018 11:28:27 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 15 Sep 2018 11:28:30 GMT
VOLUME [/data]
# Sat, 15 Sep 2018 11:28:32 GMT
WORKDIR /data
# Wed, 03 Oct 2018 10:08:37 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 10:08:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 10:08:39 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 10:08:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fbd813e350b4987a2ae8ea02e0a5e9f94bdf531dbd060fb3f9b48f75615e79`  
		Last Modified: Sat, 15 Sep 2018 11:32:25 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0c4e1e080718745f6953bd2c106b3a8f95d80969ae1170c532d005111bc038`  
		Last Modified: Sat, 15 Sep 2018 11:32:25 GMT  
		Size: 400.5 KB (400519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07ead242813c29a2415c2002ca4369f2e176fdc5f487f4266470579a0946780`  
		Last Modified: Sat, 15 Sep 2018 11:33:20 GMT  
		Size: 9.2 MB (9195743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51be18ee735146e5e10576e3de90147f76988b4d64d24ea17ac84bf8d083110c`  
		Last Modified: Sat, 15 Sep 2018 11:33:17 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5622a881215ed301dfd5caeabb2fe2990679ac29204d1f3b97f54424dca691`  
		Last Modified: Wed, 03 Oct 2018 10:14:27 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.8` - linux; 386

```console
$ docker pull redis@sha256:d3cc91e30d252933ab11ce95516fbb5d9ca2532f2aff048e8019d0c972226c1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11658653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62ca9bf6489dfb4741e8b0c99f90c2cc3c322dc8c730eb31300d2a3f57bde6c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 17:19:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 17:19:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 17:21:09 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 17:21:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 17:21:10 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 17:21:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 17:21:42 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 17:21:42 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 17:21:43 GMT
WORKDIR /data
# Wed, 03 Oct 2018 12:02:52 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 12:02:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 12:02:52 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 12:02:52 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66f3eda904fd49ce410925fb7a9c881efd1a8963c0629d993094e288faa52b4`  
		Last Modified: Wed, 12 Sep 2018 17:22:41 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc8259a71237d638c384b24f5a1dceb2c11501d45c4f34bec4569a3a8ed464c`  
		Last Modified: Wed, 12 Sep 2018 17:22:42 GMT  
		Size: 406.6 KB (406559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07dca06dca03069442805da20ab3db5aadab297ea6317dcb4cf0a649d10f63c`  
		Last Modified: Wed, 12 Sep 2018 17:23:06 GMT  
		Size: 9.0 MB (8978696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f99895f61f057dc09bd73f5b53415fd0882a1a6c05e8ad9ed4f93969f85f34`  
		Last Modified: Wed, 12 Sep 2018 17:23:03 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6538470c9add5fe3b683dcfd3d7ff9d19f60930f43f4cd656627f8193bf115`  
		Last Modified: Wed, 03 Oct 2018 12:05:21 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.8` - linux; ppc64le

```console
$ docker pull redis@sha256:ccbad503e3eabe391c05516db9e5a4686efb8b3fa51b9cef4a245926d5615e09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12134707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a974e52e7cf7abe08430ac2cbda5da9fc512e253a66cf64db1e25c137b415d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:46:51 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 12:46:56 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 12:48:23 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 12:48:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 12:48:24 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 12:49:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 12:49:06 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 12:49:08 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 12:49:10 GMT
WORKDIR /data
# Wed, 03 Oct 2018 10:26:16 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 10:26:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 10:26:19 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 10:26:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf7586f18b2066373cb5094be8898e1e33840c1f4cddee3e8f8b873075fb5ab`  
		Last Modified: Wed, 12 Sep 2018 12:50:56 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92415845fc066af3f720f0e6b9e348e4769da935329f65effd80736be62d1f91`  
		Last Modified: Wed, 12 Sep 2018 12:50:56 GMT  
		Size: 406.8 KB (406845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075fbcc950c7534091da95819d1c8f70d4a4377a8ce604e92335b6f1e7920e51`  
		Last Modified: Wed, 12 Sep 2018 12:51:53 GMT  
		Size: 9.5 MB (9530629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd235e16f04b6859331d402823433765283b5e4021f0137f52ece828f6682ddf`  
		Last Modified: Wed, 12 Sep 2018 12:51:50 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9b9e2ef4a58450d359ba3b2168611d0ba99d14acaf9fb9e8b67f97fb4b4c2d`  
		Last Modified: Wed, 03 Oct 2018 10:34:20 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.8` - linux; s390x

```console
$ docker pull redis@sha256:3b3a4f5241eb9457dd411a42f4747d9c4c2ef8f127c9611fd7cc69646076181d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12295793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52d5d7ac86216e83c78439305787237d0c69463dfb139a72ec225b89f6d331ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:19:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 13:19:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 13:20:48 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 13:20:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 13:20:49 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 13:21:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 13:21:13 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 13:21:13 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 13:21:13 GMT
WORKDIR /data
# Wed, 03 Oct 2018 12:25:20 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 12:25:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 12:25:21 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 12:25:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4783fcf5616fd256cd37b848c921a4c368fb868509715757477d1719e8ad5f`  
		Last Modified: Wed, 12 Sep 2018 13:22:18 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a126c000d8dae10977adebe9cfc4a4adf463db95e95f790eb271bd6b675c99de`  
		Last Modified: Wed, 12 Sep 2018 13:22:18 GMT  
		Size: 407.8 KB (407806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbc63facbda344c7abd329637070c0d99379cbb5f4102047325d698d84a8433`  
		Last Modified: Wed, 12 Sep 2018 13:22:55 GMT  
		Size: 9.6 MB (9578301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dac25f6e898f6aee09525f7464895efe4640e4e0287a575f684ce128c16c9af`  
		Last Modified: Wed, 12 Sep 2018 13:22:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28488f5142d39126a9281e71c052ebf40c78afb7218f01c669a776185819abb9`  
		Last Modified: Wed, 03 Oct 2018 12:28:15 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-stretch`

```console
$ docker pull redis@sha256:b6977d3ce8c7ee5c1a59146cd58912b5945b8b5ecf887ef2f3d1b2e402387f4e
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
$ docker pull redis@sha256:616fdab51679e064fca66537cf77292c6dfe43d3d9a26bf83973438043a2dd33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32123605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1897cdc2c6b41217b73899298717e81d10dda561cdd4939dfb7ecbaf35b4b94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 04:34:40 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 04:34:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 04:34:44 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 04:35:27 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 04:35:28 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 04:35:28 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 04:35:28 GMT
WORKDIR /data
# Tue, 16 Oct 2018 04:35:29 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 04:35:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 04:35:29 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 04:35:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ceb2908b0a65cc345fa8843e7f1be3a6ac727780e34674a40d0b45759be5d9`  
		Last Modified: Tue, 16 Oct 2018 04:40:31 GMT  
		Size: 8.7 MB (8694023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4330a6e801e5e4567c7c7666c0bd6059fb1ada3db368b865f24b89f44ab467e6`  
		Last Modified: Tue, 16 Oct 2018 04:40:30 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac88bc721c38110be35da2292e06a77eaae52bc11f6353fcfe4c79e3027318c5`  
		Last Modified: Tue, 16 Oct 2018 04:40:29 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:2e6fcdac7da008e59d30e958c6304406600e0b9986b8c0fe12ee0baf7c2c3dc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30514903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c18c78edfe68e86117574e63a52c5d71dc25dae1de359b170ac400b7e3944e47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:51:25 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 11:51:25 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 11:51:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 11:53:03 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 11:53:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 11:53:04 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 11:53:45 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 11:53:46 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 11:53:47 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 11:53:47 GMT
WORKDIR /data
# Tue, 16 Oct 2018 11:53:48 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:53:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 11:53:48 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 11:53:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733a90629314d385813dadaf06358b96313c3b8d8ff3a05c365c3046438093b`  
		Last Modified: Tue, 16 Oct 2018 11:54:47 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab615d6d3a0515d15f239426aae170d2faf94a8be9857af117040f2bccc5390`  
		Last Modified: Tue, 16 Oct 2018 11:54:48 GMT  
		Size: 931.1 KB (931116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4b14cac93025ba9aecb9f3e5e9026f15c2a8faddee5d46d151d18db405090f`  
		Last Modified: Tue, 16 Oct 2018 11:55:15 GMT  
		Size: 8.4 MB (8418535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f804708f1f644176cdff8e57137908355115352e8386985480b6e63168d5cac0`  
		Last Modified: Tue, 16 Oct 2018 11:55:11 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aad632aa5fe1b6c7051b608a50ade46989fb0a2dbc58ca112acc5d14835c6a8`  
		Last Modified: Tue, 16 Oct 2018 11:55:11 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:2ec891e7f1962524a9e283b3a4a74a90e1391662a6c1905911d0853357d8e46e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28376483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:159a4f024827d94d36956a638a4fcde4495e2a718c4ba1127f133c5a5848920f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:41:12 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 05 Sep 2018 15:41:13 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 15:41:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 15:42:45 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 05 Sep 2018 15:42:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 05 Sep 2018 15:42:46 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 05 Sep 2018 15:43:21 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 15:43:22 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 05 Sep 2018 15:43:22 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 15:43:23 GMT
WORKDIR /data
# Wed, 03 Oct 2018 12:19:07 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 03 Oct 2018 12:19:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 12:19:08 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 12:19:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c851488a5d9b243d717f7029e95bb014395a4bac2c39e59eb1961a611d02866`  
		Last Modified: Wed, 05 Sep 2018 15:44:25 GMT  
		Size: 1.7 KB (1729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cea588168542d6e1519c8713af803138383f54efd83fa5735993be6b0408875`  
		Last Modified: Wed, 05 Sep 2018 15:44:26 GMT  
		Size: 915.7 KB (915715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152135578d80e81b8219be11f13681a3738ec0284b2988f535cb4a980c3d4542`  
		Last Modified: Wed, 05 Sep 2018 15:45:04 GMT  
		Size: 8.2 MB (8188321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c706f4edf3c924f2362a02ffd3f02307fb46b4e1be8a0882e443ac993bf300`  
		Last Modified: Wed, 05 Sep 2018 15:45:00 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01eebbe99fda800667b67bb7312d17053a4f49d724700ead7fa139cf0b16cb26`  
		Last Modified: Wed, 03 Oct 2018 12:20:51 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:0eb108c08cd4b0183bf506978a2dbfe8a38d20a3696527c9c34a0ed55071d37f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29733854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102046cc4ad7f725f25be22cb91b9b93f3fe086be91a8afe9339a67e6a598d3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 18:57:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 18:57:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 18:58:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 19:01:36 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 19:01:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 19:01:38 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 19:03:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 19:03:54 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 19:03:57 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 19:04:00 GMT
WORKDIR /data
# Tue, 16 Oct 2018 19:04:04 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 19:04:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 19:04:11 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 19:04:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04371d693c006bd0812a3cfbf90922a03d72f21611c8d8ca79adf350eeab5f9`  
		Last Modified: Tue, 16 Oct 2018 19:09:55 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a750879aa6a2633e1bd33beb42a61de8c1708af030957eb556836a4e4dbe15`  
		Last Modified: Tue, 16 Oct 2018 19:09:56 GMT  
		Size: 908.0 KB (907952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0359e887791256d85c53ac1d2a1205f0d731398a594fe06cdcda33e91acb938a`  
		Last Modified: Tue, 16 Oct 2018 19:10:41 GMT  
		Size: 8.5 MB (8492053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee441c075acdd3b5b895a3ea6cceee7aba596b97b9d08f15fb80424630903614`  
		Last Modified: Tue, 16 Oct 2018 19:10:38 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c85c21d400564c983927b83a071ca4fb8fd08ee45b2c2b46ecc21d910cd4b7`  
		Last Modified: Tue, 16 Oct 2018 19:10:38 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; 386

```console
$ docker pull redis@sha256:9f6c7624489d116ffa44b7ee9c8160d10095d5ac7aa72871bb04efc82121301e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32299541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8463d2cd60f5fbb1820a9a944296e8f7648056e7f849de75dc4e297473fcb799`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Wed, 17 Oct 2018 00:40:51 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 17 Oct 2018 00:40:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 17 Oct 2018 00:41:05 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 17 Oct 2018 00:42:23 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 17 Oct 2018 00:42:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 17 Oct 2018 00:42:24 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 17 Oct 2018 00:43:02 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 17 Oct 2018 00:43:02 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 17 Oct 2018 00:43:03 GMT
VOLUME [/data]
# Wed, 17 Oct 2018 00:43:03 GMT
WORKDIR /data
# Wed, 17 Oct 2018 00:43:03 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 17 Oct 2018 00:43:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 17 Oct 2018 00:43:04 GMT
EXPOSE 6379/tcp
# Wed, 17 Oct 2018 00:43:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13b6cbc0304f13dc32184df00d9ccbfcddbac740ffb0b5e629e76c46d927ce2`  
		Last Modified: Wed, 17 Oct 2018 00:44:14 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b119e96a7281de6b65ba40dd9eaf271a6bf3a4529813b9d4c0979b7d12467a7f`  
		Last Modified: Wed, 17 Oct 2018 00:44:10 GMT  
		Size: 920.0 KB (920050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801a42c9d8f7af5a1b0d46cd82b25b5a3dad86b4ed528037b72dfc2fd1d8b5fc`  
		Last Modified: Wed, 17 Oct 2018 00:44:49 GMT  
		Size: 8.3 MB (8250636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b873d04a9fa78bc1dbc4063eaa1219017d8e13b105d6047486e416ceeaf5e10`  
		Last Modified: Wed, 17 Oct 2018 00:44:47 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2159afca1f58290ec58d2a375756dd4392fbe5201e95ed2b06856bcec7e1b0f3`  
		Last Modified: Wed, 17 Oct 2018 00:44:47 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:f7939c486882295ed5e07366d434add4a0c60afd0c1505eb4aa3032ae8ef689e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32521090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7cfa89e83053c3e57f1e5227716998052373b2f67cb4a59cb7e29529f77bf68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:37:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 13:37:20 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 13:38:58 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 13:41:43 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 13:41:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 13:41:45 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 13:43:23 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 13:43:28 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 13:43:29 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 13:43:31 GMT
WORKDIR /data
# Tue, 16 Oct 2018 13:43:33 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 13:43:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 13:43:35 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 13:43:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28132c90b79bace619811b7809e3955cca7109e85cf1003829e52dbcb023be80`  
		Last Modified: Tue, 16 Oct 2018 13:46:13 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a54e6c5f6d05c9e443db90d940598952d64830a759c25c3cd45cd62c6177fb`  
		Last Modified: Tue, 16 Oct 2018 13:46:14 GMT  
		Size: 909.8 KB (909783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e81d8ed09132485b24b8c354ea0b0c06ff04a9dbe19347e12a7a7403b9ddb6`  
		Last Modified: Tue, 16 Oct 2018 13:46:54 GMT  
		Size: 8.9 MB (8868425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45a590d8de836cefb42d7064ac0a6489e40a89d6d76ca8ae64a4cfab33bc22ff`  
		Last Modified: Tue, 16 Oct 2018 13:46:51 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405abf8546f8cc6fe4893366a8a914a0c77b08784a26c2152cab527b1c89b84e`  
		Last Modified: Tue, 16 Oct 2018 13:46:51 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; s390x

```console
$ docker pull redis@sha256:8e7fe20a9fc0d470568d32fefc8fecc556395f78ff412c3e130630d2f9279081
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32347542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4217c813400dc9eb35c83e8bfdfc983c47b51c0c774181c882cc188ea1dbb8d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:52 GMT
ADD file:a7cc9e5280b465a6e72c8b1331e009ddd18bff12c000c9e49ababac631179edc in / 
# Tue, 16 Oct 2018 11:42:52 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:50:06 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 13:50:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 13:50:21 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 13:51:27 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 13:51:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 13:51:27 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 13:52:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 13:52:05 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 13:52:05 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 13:52:06 GMT
WORKDIR /data
# Tue, 16 Oct 2018 13:52:06 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 13:52:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 13:52:06 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 13:52:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b16a7816eac3ca0893b75f07b37e5e276ba331e1a35619343718d1c33f877877`  
		Last Modified: Tue, 16 Oct 2018 11:46:03 GMT  
		Size: 22.3 MB (22334662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c3d0c40cae4c3fa639160e8215ea00b8ae8701a33b0f8603c9c2ac33f795ec`  
		Last Modified: Tue, 16 Oct 2018 13:53:06 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1330deccd36202d5a6a39bf5cfd82166d773239a108ba08375f7a3d208db6bb5`  
		Last Modified: Tue, 16 Oct 2018 13:53:06 GMT  
		Size: 926.7 KB (926709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077f65e4997824a73802840c579f2b1299cf2013dee1c5a5dc186e23147f4b6c`  
		Last Modified: Tue, 16 Oct 2018 13:53:24 GMT  
		Size: 9.1 MB (9083909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad20b051efb3efd7b155ed60137efbc0c5a67efa5bd822ae818bc0b13a85a22`  
		Last Modified: Tue, 16 Oct 2018 13:53:22 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9b4e1afee203a304b6a564592e1d92b5369e7088b23ee6e898b6b5261db870`  
		Last Modified: Tue, 16 Oct 2018 13:53:22 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit`

```console
$ docker pull redis@sha256:de889eb101ab1d3ce14aba608bd21ad5880cd5b2a2562413364be8b2f952afd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:4f521031ebce8ec935eea221e1fd9b202cd321bb7a8e7ff9fd1d2cc46e74abef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36532833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5bcabe20ed59b5d17bee64d059ddf7b30035a6b86aeeff296eec844cc900d21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 04:34:40 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 04:34:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 04:34:44 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 04:35:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:36:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 04:36:38 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 04:36:38 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 04:36:38 GMT
WORKDIR /data
# Tue, 16 Oct 2018 04:36:39 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 04:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 04:36:39 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 04:36:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613dea1a51d047da5233c71dd3ed807045f2ff487c39f6457d2d0a13f33ae964`  
		Last Modified: Tue, 16 Oct 2018 04:41:58 GMT  
		Size: 4.8 MB (4848269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e35f7ab4c9fc728e6cc5f678875e147188c8eb89648f5ff36524716c192a61`  
		Last Modified: Tue, 16 Oct 2018 04:41:58 GMT  
		Size: 8.3 MB (8254977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eee205fb7a487e6afa74a6f1b3182d5d45fc908a2749b8bd90805c0e33a0fee`  
		Last Modified: Tue, 16 Oct 2018 04:41:57 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c7063e3993087ca55deb77b84b5c1701bb5e03e10dccfd38e34b6599cb3e8f`  
		Last Modified: Tue, 16 Oct 2018 04:41:57 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit-stretch`

```console
$ docker pull redis@sha256:de889eb101ab1d3ce14aba608bd21ad5880cd5b2a2562413364be8b2f952afd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:4f521031ebce8ec935eea221e1fd9b202cd321bb7a8e7ff9fd1d2cc46e74abef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36532833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5bcabe20ed59b5d17bee64d059ddf7b30035a6b86aeeff296eec844cc900d21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 04:34:40 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 04:34:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 04:34:44 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 04:35:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:36:33 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 04:36:38 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 04:36:38 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 04:36:38 GMT
WORKDIR /data
# Tue, 16 Oct 2018 04:36:39 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 04:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 04:36:39 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 04:36:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613dea1a51d047da5233c71dd3ed807045f2ff487c39f6457d2d0a13f33ae964`  
		Last Modified: Tue, 16 Oct 2018 04:41:58 GMT  
		Size: 4.8 MB (4848269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e35f7ab4c9fc728e6cc5f678875e147188c8eb89648f5ff36524716c192a61`  
		Last Modified: Tue, 16 Oct 2018 04:41:58 GMT  
		Size: 8.3 MB (8254977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eee205fb7a487e6afa74a6f1b3182d5d45fc908a2749b8bd90805c0e33a0fee`  
		Last Modified: Tue, 16 Oct 2018 04:41:57 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c7063e3993087ca55deb77b84b5c1701bb5e03e10dccfd38e34b6599cb3e8f`  
		Last Modified: Tue, 16 Oct 2018 04:41:57 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine`

```console
$ docker pull redis@sha256:2953e537b8eaa5120855285497d4f936d9f02a16480a9d76e8ba014dc3998704
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
$ docker pull redis@sha256:33f47f1f7a268ec5ea10184737ecec8c4348b030e6c160e5915d03507ce76d0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12047792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05097a3a0549ad993281c2d1f7bbfa807e13217a7afa119f9111d8fd804f420c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:26:27 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 03:26:29 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 03:28:24 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 03:28:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 03:28:25 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 03:29:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 03:29:30 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 03:29:31 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 03:29:31 GMT
WORKDIR /data
# Tue, 02 Oct 2018 18:10:52 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Tue, 02 Oct 2018 18:10:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 02 Oct 2018 18:10:52 GMT
EXPOSE 6379/tcp
# Tue, 02 Oct 2018 18:10:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb758dc2e0380088f86e84055736737a7147cc918d44dd7b9d6b3d10b8846478`  
		Last Modified: Wed, 12 Sep 2018 03:31:03 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989f7b0c858b7747b3a6dd43de74fe166d16abf090b2df6a51687fdf9ae27b2d`  
		Last Modified: Wed, 12 Sep 2018 03:31:02 GMT  
		Size: 402.1 KB (402130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5318f13abaaa6894a9b5a66b3850e7b3b2075ee79d6fb62c1cadf419677d07f`  
		Last Modified: Wed, 12 Sep 2018 03:31:31 GMT  
		Size: 9.4 MB (9436966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521559474dd09f731b973aa0953dd77df4e52b37bea4af934d99896d5423335`  
		Last Modified: Wed, 12 Sep 2018 03:31:28 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add04b11388627e72d85a02b3ded03d5cc2191aa44894dde3f1ddc09869c0989`  
		Last Modified: Tue, 02 Oct 2018 18:16:56 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:92cb9bb3e06fbf77ca4fc37111ea758cc8f5ea2b1de77a3858c8dfc9b913ca63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8395533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4e355e5ba8d835aa403e41dffb7759e11a46c7b48a5da7177d357f254ad47c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:48:17 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 13:48:26 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 13:53:15 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 13:53:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 13:53:17 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 13:56:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 13:56:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 13:56:58 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 13:56:59 GMT
WORKDIR /data
# Wed, 03 Oct 2018 09:05:58 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 09:05:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 09:05:59 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 09:06:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0282f47fed57cf0edb74497b0117f3bda5406a7b722499f98cfd1cfe84071abd`  
		Last Modified: Wed, 12 Sep 2018 14:02:59 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f05f53c51b59f1cf2512bc366489d8279414dcfdf4d3a44d2b36b407f0d1179`  
		Last Modified: Wed, 12 Sep 2018 14:03:02 GMT  
		Size: 404.7 KB (404670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a34e65c07693a619522ca6dd68b452c7bbd75218446944c24c97b9bac5354f`  
		Last Modified: Wed, 12 Sep 2018 14:04:08 GMT  
		Size: 5.8 MB (5842407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:129711ab179d884297cd710da314a4f86bcf9c90b35cca5292291b1705098b10`  
		Last Modified: Wed, 12 Sep 2018 14:04:01 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d28a851fdcba077765404e1a395a44ac188417c125d4373cfb5a9d3b95ddd8`  
		Last Modified: Wed, 03 Oct 2018 09:07:18 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:df61a4a702f7f60125c6bf4315797a646a64787f4ddaeaaf1acf94375ea20364
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11697966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8584cdee5a5fdda1e6a3b5c26ba2032ba27abb05d46ff442325a15082a97a07e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 11:24:22 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 15 Sep 2018 11:24:26 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 15 Sep 2018 11:26:53 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 15 Sep 2018 11:26:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 15 Sep 2018 11:27:03 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 15 Sep 2018 11:28:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 15 Sep 2018 11:28:27 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 15 Sep 2018 11:28:30 GMT
VOLUME [/data]
# Sat, 15 Sep 2018 11:28:32 GMT
WORKDIR /data
# Wed, 03 Oct 2018 10:08:37 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 10:08:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 10:08:39 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 10:08:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fbd813e350b4987a2ae8ea02e0a5e9f94bdf531dbd060fb3f9b48f75615e79`  
		Last Modified: Sat, 15 Sep 2018 11:32:25 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0c4e1e080718745f6953bd2c106b3a8f95d80969ae1170c532d005111bc038`  
		Last Modified: Sat, 15 Sep 2018 11:32:25 GMT  
		Size: 400.5 KB (400519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07ead242813c29a2415c2002ca4369f2e176fdc5f487f4266470579a0946780`  
		Last Modified: Sat, 15 Sep 2018 11:33:20 GMT  
		Size: 9.2 MB (9195743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51be18ee735146e5e10576e3de90147f76988b4d64d24ea17ac84bf8d083110c`  
		Last Modified: Sat, 15 Sep 2018 11:33:17 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5622a881215ed301dfd5caeabb2fe2990679ac29204d1f3b97f54424dca691`  
		Last Modified: Wed, 03 Oct 2018 10:14:27 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; 386

```console
$ docker pull redis@sha256:d3cc91e30d252933ab11ce95516fbb5d9ca2532f2aff048e8019d0c972226c1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11658653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62ca9bf6489dfb4741e8b0c99f90c2cc3c322dc8c730eb31300d2a3f57bde6c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 17:19:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 17:19:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 17:21:09 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 17:21:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 17:21:10 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 17:21:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 17:21:42 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 17:21:42 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 17:21:43 GMT
WORKDIR /data
# Wed, 03 Oct 2018 12:02:52 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 12:02:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 12:02:52 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 12:02:52 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66f3eda904fd49ce410925fb7a9c881efd1a8963c0629d993094e288faa52b4`  
		Last Modified: Wed, 12 Sep 2018 17:22:41 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc8259a71237d638c384b24f5a1dceb2c11501d45c4f34bec4569a3a8ed464c`  
		Last Modified: Wed, 12 Sep 2018 17:22:42 GMT  
		Size: 406.6 KB (406559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07dca06dca03069442805da20ab3db5aadab297ea6317dcb4cf0a649d10f63c`  
		Last Modified: Wed, 12 Sep 2018 17:23:06 GMT  
		Size: 9.0 MB (8978696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f99895f61f057dc09bd73f5b53415fd0882a1a6c05e8ad9ed4f93969f85f34`  
		Last Modified: Wed, 12 Sep 2018 17:23:03 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6538470c9add5fe3b683dcfd3d7ff9d19f60930f43f4cd656627f8193bf115`  
		Last Modified: Wed, 03 Oct 2018 12:05:21 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:ccbad503e3eabe391c05516db9e5a4686efb8b3fa51b9cef4a245926d5615e09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12134707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a974e52e7cf7abe08430ac2cbda5da9fc512e253a66cf64db1e25c137b415d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:46:51 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 12:46:56 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 12:48:23 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 12:48:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 12:48:24 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 12:49:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 12:49:06 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 12:49:08 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 12:49:10 GMT
WORKDIR /data
# Wed, 03 Oct 2018 10:26:16 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 10:26:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 10:26:19 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 10:26:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf7586f18b2066373cb5094be8898e1e33840c1f4cddee3e8f8b873075fb5ab`  
		Last Modified: Wed, 12 Sep 2018 12:50:56 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92415845fc066af3f720f0e6b9e348e4769da935329f65effd80736be62d1f91`  
		Last Modified: Wed, 12 Sep 2018 12:50:56 GMT  
		Size: 406.8 KB (406845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075fbcc950c7534091da95819d1c8f70d4a4377a8ce604e92335b6f1e7920e51`  
		Last Modified: Wed, 12 Sep 2018 12:51:53 GMT  
		Size: 9.5 MB (9530629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd235e16f04b6859331d402823433765283b5e4021f0137f52ece828f6682ddf`  
		Last Modified: Wed, 12 Sep 2018 12:51:50 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9b9e2ef4a58450d359ba3b2168611d0ba99d14acaf9fb9e8b67f97fb4b4c2d`  
		Last Modified: Wed, 03 Oct 2018 10:34:20 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; s390x

```console
$ docker pull redis@sha256:3b3a4f5241eb9457dd411a42f4747d9c4c2ef8f127c9611fd7cc69646076181d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12295793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52d5d7ac86216e83c78439305787237d0c69463dfb139a72ec225b89f6d331ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:19:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 13:19:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 13:20:48 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 13:20:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 13:20:49 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 13:21:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 13:21:13 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 13:21:13 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 13:21:13 GMT
WORKDIR /data
# Wed, 03 Oct 2018 12:25:20 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 12:25:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 12:25:21 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 12:25:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4783fcf5616fd256cd37b848c921a4c368fb868509715757477d1719e8ad5f`  
		Last Modified: Wed, 12 Sep 2018 13:22:18 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a126c000d8dae10977adebe9cfc4a4adf463db95e95f790eb271bd6b675c99de`  
		Last Modified: Wed, 12 Sep 2018 13:22:18 GMT  
		Size: 407.8 KB (407806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbc63facbda344c7abd329637070c0d99379cbb5f4102047325d698d84a8433`  
		Last Modified: Wed, 12 Sep 2018 13:22:55 GMT  
		Size: 9.6 MB (9578301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dac25f6e898f6aee09525f7464895efe4640e4e0287a575f684ce128c16c9af`  
		Last Modified: Wed, 12 Sep 2018 13:22:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28488f5142d39126a9281e71c052ebf40c78afb7218f01c669a776185819abb9`  
		Last Modified: Wed, 03 Oct 2018 12:28:15 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine3.8`

```console
$ docker pull redis@sha256:2953e537b8eaa5120855285497d4f936d9f02a16480a9d76e8ba014dc3998704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4-alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:33f47f1f7a268ec5ea10184737ecec8c4348b030e6c160e5915d03507ce76d0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12047792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05097a3a0549ad993281c2d1f7bbfa807e13217a7afa119f9111d8fd804f420c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:26:27 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 03:26:29 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 03:28:24 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 03:28:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 03:28:25 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 03:29:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 03:29:30 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 03:29:31 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 03:29:31 GMT
WORKDIR /data
# Tue, 02 Oct 2018 18:10:52 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Tue, 02 Oct 2018 18:10:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 02 Oct 2018 18:10:52 GMT
EXPOSE 6379/tcp
# Tue, 02 Oct 2018 18:10:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb758dc2e0380088f86e84055736737a7147cc918d44dd7b9d6b3d10b8846478`  
		Last Modified: Wed, 12 Sep 2018 03:31:03 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989f7b0c858b7747b3a6dd43de74fe166d16abf090b2df6a51687fdf9ae27b2d`  
		Last Modified: Wed, 12 Sep 2018 03:31:02 GMT  
		Size: 402.1 KB (402130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5318f13abaaa6894a9b5a66b3850e7b3b2075ee79d6fb62c1cadf419677d07f`  
		Last Modified: Wed, 12 Sep 2018 03:31:31 GMT  
		Size: 9.4 MB (9436966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521559474dd09f731b973aa0953dd77df4e52b37bea4af934d99896d5423335`  
		Last Modified: Wed, 12 Sep 2018 03:31:28 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add04b11388627e72d85a02b3ded03d5cc2191aa44894dde3f1ddc09869c0989`  
		Last Modified: Tue, 02 Oct 2018 18:16:56 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.8` - linux; arm variant v6

```console
$ docker pull redis@sha256:92cb9bb3e06fbf77ca4fc37111ea758cc8f5ea2b1de77a3858c8dfc9b913ca63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8395533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4e355e5ba8d835aa403e41dffb7759e11a46c7b48a5da7177d357f254ad47c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:48:17 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 13:48:26 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 13:53:15 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 13:53:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 13:53:17 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 13:56:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 13:56:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 13:56:58 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 13:56:59 GMT
WORKDIR /data
# Wed, 03 Oct 2018 09:05:58 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 09:05:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 09:05:59 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 09:06:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0282f47fed57cf0edb74497b0117f3bda5406a7b722499f98cfd1cfe84071abd`  
		Last Modified: Wed, 12 Sep 2018 14:02:59 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f05f53c51b59f1cf2512bc366489d8279414dcfdf4d3a44d2b36b407f0d1179`  
		Last Modified: Wed, 12 Sep 2018 14:03:02 GMT  
		Size: 404.7 KB (404670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a34e65c07693a619522ca6dd68b452c7bbd75218446944c24c97b9bac5354f`  
		Last Modified: Wed, 12 Sep 2018 14:04:08 GMT  
		Size: 5.8 MB (5842407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:129711ab179d884297cd710da314a4f86bcf9c90b35cca5292291b1705098b10`  
		Last Modified: Wed, 12 Sep 2018 14:04:01 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d28a851fdcba077765404e1a395a44ac188417c125d4373cfb5a9d3b95ddd8`  
		Last Modified: Wed, 03 Oct 2018 09:07:18 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.8` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:df61a4a702f7f60125c6bf4315797a646a64787f4ddaeaaf1acf94375ea20364
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11697966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8584cdee5a5fdda1e6a3b5c26ba2032ba27abb05d46ff442325a15082a97a07e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 11:24:22 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 15 Sep 2018 11:24:26 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 15 Sep 2018 11:26:53 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 15 Sep 2018 11:26:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 15 Sep 2018 11:27:03 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 15 Sep 2018 11:28:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 15 Sep 2018 11:28:27 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 15 Sep 2018 11:28:30 GMT
VOLUME [/data]
# Sat, 15 Sep 2018 11:28:32 GMT
WORKDIR /data
# Wed, 03 Oct 2018 10:08:37 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 10:08:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 10:08:39 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 10:08:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fbd813e350b4987a2ae8ea02e0a5e9f94bdf531dbd060fb3f9b48f75615e79`  
		Last Modified: Sat, 15 Sep 2018 11:32:25 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0c4e1e080718745f6953bd2c106b3a8f95d80969ae1170c532d005111bc038`  
		Last Modified: Sat, 15 Sep 2018 11:32:25 GMT  
		Size: 400.5 KB (400519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07ead242813c29a2415c2002ca4369f2e176fdc5f487f4266470579a0946780`  
		Last Modified: Sat, 15 Sep 2018 11:33:20 GMT  
		Size: 9.2 MB (9195743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51be18ee735146e5e10576e3de90147f76988b4d64d24ea17ac84bf8d083110c`  
		Last Modified: Sat, 15 Sep 2018 11:33:17 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5622a881215ed301dfd5caeabb2fe2990679ac29204d1f3b97f54424dca691`  
		Last Modified: Wed, 03 Oct 2018 10:14:27 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.8` - linux; 386

```console
$ docker pull redis@sha256:d3cc91e30d252933ab11ce95516fbb5d9ca2532f2aff048e8019d0c972226c1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11658653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62ca9bf6489dfb4741e8b0c99f90c2cc3c322dc8c730eb31300d2a3f57bde6c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 17:19:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 17:19:51 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 17:21:09 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 17:21:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 17:21:10 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 17:21:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 17:21:42 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 17:21:42 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 17:21:43 GMT
WORKDIR /data
# Wed, 03 Oct 2018 12:02:52 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 12:02:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 12:02:52 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 12:02:52 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66f3eda904fd49ce410925fb7a9c881efd1a8963c0629d993094e288faa52b4`  
		Last Modified: Wed, 12 Sep 2018 17:22:41 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc8259a71237d638c384b24f5a1dceb2c11501d45c4f34bec4569a3a8ed464c`  
		Last Modified: Wed, 12 Sep 2018 17:22:42 GMT  
		Size: 406.6 KB (406559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07dca06dca03069442805da20ab3db5aadab297ea6317dcb4cf0a649d10f63c`  
		Last Modified: Wed, 12 Sep 2018 17:23:06 GMT  
		Size: 9.0 MB (8978696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f99895f61f057dc09bd73f5b53415fd0882a1a6c05e8ad9ed4f93969f85f34`  
		Last Modified: Wed, 12 Sep 2018 17:23:03 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6538470c9add5fe3b683dcfd3d7ff9d19f60930f43f4cd656627f8193bf115`  
		Last Modified: Wed, 03 Oct 2018 12:05:21 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.8` - linux; ppc64le

```console
$ docker pull redis@sha256:ccbad503e3eabe391c05516db9e5a4686efb8b3fa51b9cef4a245926d5615e09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12134707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a974e52e7cf7abe08430ac2cbda5da9fc512e253a66cf64db1e25c137b415d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:46:51 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 12:46:56 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 12:48:23 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 12:48:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 12:48:24 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 12:49:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 12:49:06 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 12:49:08 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 12:49:10 GMT
WORKDIR /data
# Wed, 03 Oct 2018 10:26:16 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 10:26:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 10:26:19 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 10:26:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf7586f18b2066373cb5094be8898e1e33840c1f4cddee3e8f8b873075fb5ab`  
		Last Modified: Wed, 12 Sep 2018 12:50:56 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92415845fc066af3f720f0e6b9e348e4769da935329f65effd80736be62d1f91`  
		Last Modified: Wed, 12 Sep 2018 12:50:56 GMT  
		Size: 406.8 KB (406845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075fbcc950c7534091da95819d1c8f70d4a4377a8ce604e92335b6f1e7920e51`  
		Last Modified: Wed, 12 Sep 2018 12:51:53 GMT  
		Size: 9.5 MB (9530629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd235e16f04b6859331d402823433765283b5e4021f0137f52ece828f6682ddf`  
		Last Modified: Wed, 12 Sep 2018 12:51:50 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9b9e2ef4a58450d359ba3b2168611d0ba99d14acaf9fb9e8b67f97fb4b4c2d`  
		Last Modified: Wed, 03 Oct 2018 10:34:20 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.8` - linux; s390x

```console
$ docker pull redis@sha256:3b3a4f5241eb9457dd411a42f4747d9c4c2ef8f127c9611fd7cc69646076181d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12295793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52d5d7ac86216e83c78439305787237d0c69463dfb139a72ec225b89f6d331ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:19:49 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 13:19:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Wed, 12 Sep 2018 13:20:48 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 12 Sep 2018 13:20:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 12 Sep 2018 13:20:49 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 12 Sep 2018 13:21:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Sep 2018 13:21:13 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Sep 2018 13:21:13 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 13:21:13 GMT
WORKDIR /data
# Wed, 03 Oct 2018 12:25:20 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 03 Oct 2018 12:25:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 12:25:21 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 12:25:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4783fcf5616fd256cd37b848c921a4c368fb868509715757477d1719e8ad5f`  
		Last Modified: Wed, 12 Sep 2018 13:22:18 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a126c000d8dae10977adebe9cfc4a4adf463db95e95f790eb271bd6b675c99de`  
		Last Modified: Wed, 12 Sep 2018 13:22:18 GMT  
		Size: 407.8 KB (407806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbc63facbda344c7abd329637070c0d99379cbb5f4102047325d698d84a8433`  
		Last Modified: Wed, 12 Sep 2018 13:22:55 GMT  
		Size: 9.6 MB (9578301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dac25f6e898f6aee09525f7464895efe4640e4e0287a575f684ce128c16c9af`  
		Last Modified: Wed, 12 Sep 2018 13:22:52 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28488f5142d39126a9281e71c052ebf40c78afb7218f01c669a776185819abb9`  
		Last Modified: Wed, 03 Oct 2018 12:28:15 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-stretch`

```console
$ docker pull redis@sha256:b6977d3ce8c7ee5c1a59146cd58912b5945b8b5ecf887ef2f3d1b2e402387f4e
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
$ docker pull redis@sha256:616fdab51679e064fca66537cf77292c6dfe43d3d9a26bf83973438043a2dd33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32123605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1897cdc2c6b41217b73899298717e81d10dda561cdd4939dfb7ecbaf35b4b94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 04:34:40 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 04:34:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 04:34:44 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 04:35:27 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 04:35:28 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 04:35:28 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 04:35:28 GMT
WORKDIR /data
# Tue, 16 Oct 2018 04:35:29 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 04:35:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 04:35:29 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 04:35:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ceb2908b0a65cc345fa8843e7f1be3a6ac727780e34674a40d0b45759be5d9`  
		Last Modified: Tue, 16 Oct 2018 04:40:31 GMT  
		Size: 8.7 MB (8694023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4330a6e801e5e4567c7c7666c0bd6059fb1ada3db368b865f24b89f44ab467e6`  
		Last Modified: Tue, 16 Oct 2018 04:40:30 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac88bc721c38110be35da2292e06a77eaae52bc11f6353fcfe4c79e3027318c5`  
		Last Modified: Tue, 16 Oct 2018 04:40:29 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:2e6fcdac7da008e59d30e958c6304406600e0b9986b8c0fe12ee0baf7c2c3dc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30514903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c18c78edfe68e86117574e63a52c5d71dc25dae1de359b170ac400b7e3944e47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:51:25 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 11:51:25 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 11:51:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 11:53:03 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 11:53:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 11:53:04 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 11:53:45 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 11:53:46 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 11:53:47 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 11:53:47 GMT
WORKDIR /data
# Tue, 16 Oct 2018 11:53:48 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:53:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 11:53:48 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 11:53:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733a90629314d385813dadaf06358b96313c3b8d8ff3a05c365c3046438093b`  
		Last Modified: Tue, 16 Oct 2018 11:54:47 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab615d6d3a0515d15f239426aae170d2faf94a8be9857af117040f2bccc5390`  
		Last Modified: Tue, 16 Oct 2018 11:54:48 GMT  
		Size: 931.1 KB (931116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4b14cac93025ba9aecb9f3e5e9026f15c2a8faddee5d46d151d18db405090f`  
		Last Modified: Tue, 16 Oct 2018 11:55:15 GMT  
		Size: 8.4 MB (8418535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f804708f1f644176cdff8e57137908355115352e8386985480b6e63168d5cac0`  
		Last Modified: Tue, 16 Oct 2018 11:55:11 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aad632aa5fe1b6c7051b608a50ade46989fb0a2dbc58ca112acc5d14835c6a8`  
		Last Modified: Tue, 16 Oct 2018 11:55:11 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:2ec891e7f1962524a9e283b3a4a74a90e1391662a6c1905911d0853357d8e46e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28376483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:159a4f024827d94d36956a638a4fcde4495e2a718c4ba1127f133c5a5848920f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:41:12 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 05 Sep 2018 15:41:13 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 15:41:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 15:42:45 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 05 Sep 2018 15:42:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 05 Sep 2018 15:42:46 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 05 Sep 2018 15:43:21 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 15:43:22 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 05 Sep 2018 15:43:22 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 15:43:23 GMT
WORKDIR /data
# Wed, 03 Oct 2018 12:19:07 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 03 Oct 2018 12:19:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 12:19:08 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 12:19:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c851488a5d9b243d717f7029e95bb014395a4bac2c39e59eb1961a611d02866`  
		Last Modified: Wed, 05 Sep 2018 15:44:25 GMT  
		Size: 1.7 KB (1729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cea588168542d6e1519c8713af803138383f54efd83fa5735993be6b0408875`  
		Last Modified: Wed, 05 Sep 2018 15:44:26 GMT  
		Size: 915.7 KB (915715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152135578d80e81b8219be11f13681a3738ec0284b2988f535cb4a980c3d4542`  
		Last Modified: Wed, 05 Sep 2018 15:45:04 GMT  
		Size: 8.2 MB (8188321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c706f4edf3c924f2362a02ffd3f02307fb46b4e1be8a0882e443ac993bf300`  
		Last Modified: Wed, 05 Sep 2018 15:45:00 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01eebbe99fda800667b67bb7312d17053a4f49d724700ead7fa139cf0b16cb26`  
		Last Modified: Wed, 03 Oct 2018 12:20:51 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:0eb108c08cd4b0183bf506978a2dbfe8a38d20a3696527c9c34a0ed55071d37f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29733854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102046cc4ad7f725f25be22cb91b9b93f3fe086be91a8afe9339a67e6a598d3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 18:57:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 18:57:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 18:58:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 19:01:36 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 19:01:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 19:01:38 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 19:03:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 19:03:54 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 19:03:57 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 19:04:00 GMT
WORKDIR /data
# Tue, 16 Oct 2018 19:04:04 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 19:04:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 19:04:11 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 19:04:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04371d693c006bd0812a3cfbf90922a03d72f21611c8d8ca79adf350eeab5f9`  
		Last Modified: Tue, 16 Oct 2018 19:09:55 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a750879aa6a2633e1bd33beb42a61de8c1708af030957eb556836a4e4dbe15`  
		Last Modified: Tue, 16 Oct 2018 19:09:56 GMT  
		Size: 908.0 KB (907952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0359e887791256d85c53ac1d2a1205f0d731398a594fe06cdcda33e91acb938a`  
		Last Modified: Tue, 16 Oct 2018 19:10:41 GMT  
		Size: 8.5 MB (8492053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee441c075acdd3b5b895a3ea6cceee7aba596b97b9d08f15fb80424630903614`  
		Last Modified: Tue, 16 Oct 2018 19:10:38 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c85c21d400564c983927b83a071ca4fb8fd08ee45b2c2b46ecc21d910cd4b7`  
		Last Modified: Tue, 16 Oct 2018 19:10:38 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; 386

```console
$ docker pull redis@sha256:9f6c7624489d116ffa44b7ee9c8160d10095d5ac7aa72871bb04efc82121301e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32299541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8463d2cd60f5fbb1820a9a944296e8f7648056e7f849de75dc4e297473fcb799`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Wed, 17 Oct 2018 00:40:51 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 17 Oct 2018 00:40:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 17 Oct 2018 00:41:05 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 17 Oct 2018 00:42:23 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 17 Oct 2018 00:42:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 17 Oct 2018 00:42:24 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 17 Oct 2018 00:43:02 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 17 Oct 2018 00:43:02 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 17 Oct 2018 00:43:03 GMT
VOLUME [/data]
# Wed, 17 Oct 2018 00:43:03 GMT
WORKDIR /data
# Wed, 17 Oct 2018 00:43:03 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 17 Oct 2018 00:43:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 17 Oct 2018 00:43:04 GMT
EXPOSE 6379/tcp
# Wed, 17 Oct 2018 00:43:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13b6cbc0304f13dc32184df00d9ccbfcddbac740ffb0b5e629e76c46d927ce2`  
		Last Modified: Wed, 17 Oct 2018 00:44:14 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b119e96a7281de6b65ba40dd9eaf271a6bf3a4529813b9d4c0979b7d12467a7f`  
		Last Modified: Wed, 17 Oct 2018 00:44:10 GMT  
		Size: 920.0 KB (920050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801a42c9d8f7af5a1b0d46cd82b25b5a3dad86b4ed528037b72dfc2fd1d8b5fc`  
		Last Modified: Wed, 17 Oct 2018 00:44:49 GMT  
		Size: 8.3 MB (8250636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b873d04a9fa78bc1dbc4063eaa1219017d8e13b105d6047486e416ceeaf5e10`  
		Last Modified: Wed, 17 Oct 2018 00:44:47 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2159afca1f58290ec58d2a375756dd4392fbe5201e95ed2b06856bcec7e1b0f3`  
		Last Modified: Wed, 17 Oct 2018 00:44:47 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:f7939c486882295ed5e07366d434add4a0c60afd0c1505eb4aa3032ae8ef689e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32521090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7cfa89e83053c3e57f1e5227716998052373b2f67cb4a59cb7e29529f77bf68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:37:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 13:37:20 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 13:38:58 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 13:41:43 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 13:41:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 13:41:45 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 13:43:23 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 13:43:28 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 13:43:29 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 13:43:31 GMT
WORKDIR /data
# Tue, 16 Oct 2018 13:43:33 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 13:43:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 13:43:35 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 13:43:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28132c90b79bace619811b7809e3955cca7109e85cf1003829e52dbcb023be80`  
		Last Modified: Tue, 16 Oct 2018 13:46:13 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a54e6c5f6d05c9e443db90d940598952d64830a759c25c3cd45cd62c6177fb`  
		Last Modified: Tue, 16 Oct 2018 13:46:14 GMT  
		Size: 909.8 KB (909783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e81d8ed09132485b24b8c354ea0b0c06ff04a9dbe19347e12a7a7403b9ddb6`  
		Last Modified: Tue, 16 Oct 2018 13:46:54 GMT  
		Size: 8.9 MB (8868425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45a590d8de836cefb42d7064ac0a6489e40a89d6d76ca8ae64a4cfab33bc22ff`  
		Last Modified: Tue, 16 Oct 2018 13:46:51 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405abf8546f8cc6fe4893366a8a914a0c77b08784a26c2152cab527b1c89b84e`  
		Last Modified: Tue, 16 Oct 2018 13:46:51 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; s390x

```console
$ docker pull redis@sha256:8e7fe20a9fc0d470568d32fefc8fecc556395f78ff412c3e130630d2f9279081
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32347542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4217c813400dc9eb35c83e8bfdfc983c47b51c0c774181c882cc188ea1dbb8d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:52 GMT
ADD file:a7cc9e5280b465a6e72c8b1331e009ddd18bff12c000c9e49ababac631179edc in / 
# Tue, 16 Oct 2018 11:42:52 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:50:06 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 13:50:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 13:50:21 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 13:51:27 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 13:51:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 13:51:27 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 13:52:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 13:52:05 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 13:52:05 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 13:52:06 GMT
WORKDIR /data
# Tue, 16 Oct 2018 13:52:06 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 13:52:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 13:52:06 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 13:52:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b16a7816eac3ca0893b75f07b37e5e276ba331e1a35619343718d1c33f877877`  
		Last Modified: Tue, 16 Oct 2018 11:46:03 GMT  
		Size: 22.3 MB (22334662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c3d0c40cae4c3fa639160e8215ea00b8ae8701a33b0f8603c9c2ac33f795ec`  
		Last Modified: Tue, 16 Oct 2018 13:53:06 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1330deccd36202d5a6a39bf5cfd82166d773239a108ba08375f7a3d208db6bb5`  
		Last Modified: Tue, 16 Oct 2018 13:53:06 GMT  
		Size: 926.7 KB (926709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077f65e4997824a73802840c579f2b1299cf2013dee1c5a5dc186e23147f4b6c`  
		Last Modified: Tue, 16 Oct 2018 13:53:24 GMT  
		Size: 9.1 MB (9083909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad20b051efb3efd7b155ed60137efbc0c5a67efa5bd822ae818bc0b13a85a22`  
		Last Modified: Tue, 16 Oct 2018 13:53:22 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9b4e1afee203a304b6a564592e1d92b5369e7088b23ee6e898b6b5261db870`  
		Last Modified: Tue, 16 Oct 2018 13:53:22 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5`

```console
$ docker pull redis@sha256:e71621e6711e10425dc0ce1afbcb2ea02081bdae5e9fb46e57a009f9ce250f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5` - linux; amd64

```console
$ docker pull redis@sha256:4da5768becdde8b439a4af1a4f45624d4bc635edfbcbe60b25402f0cb71a5e61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35180038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1babb1dde7e1fc7520ce56ce6d39843a074151bb192522b1988c65a067b15e96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:47:48 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:48:50 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 18 Oct 2018 23:48:51 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:48:51 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:48:52 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:48:52 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:48:52 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:48:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2719bdbf9516505371d4df94f682d903fa0be9150b86eaa46d263dacdbdc5b48`  
		Last Modified: Thu, 18 Oct 2018 23:53:08 GMT  
		Size: 11.8 MB (11750456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f306130d78e32095bd8ce43f23dd580cda3ac76f4f6c756f8d30ad9fc9f2a4b3`  
		Last Modified: Thu, 18 Oct 2018 23:53:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e09204f8155f75a867e5de4789a621609a363d4a728806bea7a66576a0b7c68`  
		Last Modified: Thu, 18 Oct 2018 23:53:05 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0`

```console
$ docker pull redis@sha256:e71621e6711e10425dc0ce1afbcb2ea02081bdae5e9fb46e57a009f9ce250f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0` - linux; amd64

```console
$ docker pull redis@sha256:4da5768becdde8b439a4af1a4f45624d4bc635edfbcbe60b25402f0cb71a5e61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35180038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1babb1dde7e1fc7520ce56ce6d39843a074151bb192522b1988c65a067b15e96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:47:48 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:48:50 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 18 Oct 2018 23:48:51 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:48:51 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:48:52 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:48:52 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:48:52 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:48:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2719bdbf9516505371d4df94f682d903fa0be9150b86eaa46d263dacdbdc5b48`  
		Last Modified: Thu, 18 Oct 2018 23:53:08 GMT  
		Size: 11.8 MB (11750456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f306130d78e32095bd8ce43f23dd580cda3ac76f4f6c756f8d30ad9fc9f2a4b3`  
		Last Modified: Thu, 18 Oct 2018 23:53:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e09204f8155f75a867e5de4789a621609a363d4a728806bea7a66576a0b7c68`  
		Last Modified: Thu, 18 Oct 2018 23:53:05 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.0`

```console
$ docker pull redis@sha256:e71621e6711e10425dc0ce1afbcb2ea02081bdae5e9fb46e57a009f9ce250f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.0` - linux; amd64

```console
$ docker pull redis@sha256:4da5768becdde8b439a4af1a4f45624d4bc635edfbcbe60b25402f0cb71a5e61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35180038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1babb1dde7e1fc7520ce56ce6d39843a074151bb192522b1988c65a067b15e96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:47:48 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:48:50 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 18 Oct 2018 23:48:51 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:48:51 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:48:52 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:48:52 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:48:52 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:48:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2719bdbf9516505371d4df94f682d903fa0be9150b86eaa46d263dacdbdc5b48`  
		Last Modified: Thu, 18 Oct 2018 23:53:08 GMT  
		Size: 11.8 MB (11750456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f306130d78e32095bd8ce43f23dd580cda3ac76f4f6c756f8d30ad9fc9f2a4b3`  
		Last Modified: Thu, 18 Oct 2018 23:53:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e09204f8155f75a867e5de4789a621609a363d4a728806bea7a66576a0b7c68`  
		Last Modified: Thu, 18 Oct 2018 23:53:05 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.0-32bit`

```console
$ docker pull redis@sha256:fcd708a85270504a3b594f51d838bc3ed99e62a8ddd1ed9e8ddbc86bd13547ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:adb60803470429bdc61247986c46867c7b6d9d6f591188b7312c1009bd8d0369
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39446143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff7108df51c4c089cea96d8e59aa13ea8181bf20ead2a94bc9380ba4d6b8115`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:47:48 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 18 Oct 2018 23:50:51 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 18 Oct 2018 23:50:52 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:50:52 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:50:52 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:50:53 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:50:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:50:53 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:50:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b80a1c5f67a4ee346945c812599568e517ee70f53f70b460ca189c8ba292a7a`  
		Last Modified: Thu, 18 Oct 2018 23:54:39 GMT  
		Size: 4.8 MB (4848295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb49f26ef285da2a6cf2774d9c3acab4f6236085b4212fde8e78ab2cfce4acf`  
		Last Modified: Thu, 18 Oct 2018 23:54:40 GMT  
		Size: 11.2 MB (11168260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ef129f83dbf19489e12657a5d3871793e1664319ad23670339bb84216ecf4a`  
		Last Modified: Thu, 18 Oct 2018 23:54:38 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7a77fb676825049ecb0d88c3a3890b8ccc4e1b0ca03ea003af88deeeb12715`  
		Last Modified: Thu, 18 Oct 2018 23:54:38 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.0-32bit-stretch`

```console
$ docker pull redis@sha256:fcd708a85270504a3b594f51d838bc3ed99e62a8ddd1ed9e8ddbc86bd13547ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.0-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:adb60803470429bdc61247986c46867c7b6d9d6f591188b7312c1009bd8d0369
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39446143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff7108df51c4c089cea96d8e59aa13ea8181bf20ead2a94bc9380ba4d6b8115`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:47:48 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 18 Oct 2018 23:50:51 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 18 Oct 2018 23:50:52 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:50:52 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:50:52 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:50:53 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:50:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:50:53 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:50:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b80a1c5f67a4ee346945c812599568e517ee70f53f70b460ca189c8ba292a7a`  
		Last Modified: Thu, 18 Oct 2018 23:54:39 GMT  
		Size: 4.8 MB (4848295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb49f26ef285da2a6cf2774d9c3acab4f6236085b4212fde8e78ab2cfce4acf`  
		Last Modified: Thu, 18 Oct 2018 23:54:40 GMT  
		Size: 11.2 MB (11168260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ef129f83dbf19489e12657a5d3871793e1664319ad23670339bb84216ecf4a`  
		Last Modified: Thu, 18 Oct 2018 23:54:38 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7a77fb676825049ecb0d88c3a3890b8ccc4e1b0ca03ea003af88deeeb12715`  
		Last Modified: Thu, 18 Oct 2018 23:54:38 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.0-alpine`

```console
$ docker pull redis@sha256:c790bdfe012a2f7162e31a116e1c562cf5b22ea767b6d995ff1b57f0d54e6666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.0-alpine` - linux; amd64

```console
$ docker pull redis@sha256:5b886145b1a00e045a8b6eae81c0b29edb95dd48597bc51934bc02d80f6ac080
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14922621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05635ee9e1c7e8bf4b0b3265c5085126aced903a9b69cada10796ca13aa033e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:26:27 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 03:26:29 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:52:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 18 Oct 2018 23:52:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:52:09 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:52:10 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:52:10 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:52:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:52:10 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:52:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb758dc2e0380088f86e84055736737a7147cc918d44dd7b9d6b3d10b8846478`  
		Last Modified: Wed, 12 Sep 2018 03:31:03 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989f7b0c858b7747b3a6dd43de74fe166d16abf090b2df6a51687fdf9ae27b2d`  
		Last Modified: Wed, 12 Sep 2018 03:31:02 GMT  
		Size: 402.1 KB (402130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8bd3a94284287e988bb18ff4395638e539d3670fdf1b93e09008cdd843cfc8`  
		Last Modified: Thu, 18 Oct 2018 23:56:26 GMT  
		Size: 12.3 MB (12311798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997d9e740b77232b840a0a8dfc6372ae5d3f9919120e2987223cb9e830ba855d`  
		Last Modified: Thu, 18 Oct 2018 23:56:24 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76bc130a47af656081fced58fb70b3a0dd9b55ccdb2aca60adc0bc2a2961461`  
		Last Modified: Thu, 18 Oct 2018 23:56:24 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.0-alpine3.8`

```console
$ docker pull redis@sha256:c790bdfe012a2f7162e31a116e1c562cf5b22ea767b6d995ff1b57f0d54e6666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.0-alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:5b886145b1a00e045a8b6eae81c0b29edb95dd48597bc51934bc02d80f6ac080
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14922621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05635ee9e1c7e8bf4b0b3265c5085126aced903a9b69cada10796ca13aa033e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:26:27 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 03:26:29 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:52:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 18 Oct 2018 23:52:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:52:09 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:52:10 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:52:10 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:52:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:52:10 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:52:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb758dc2e0380088f86e84055736737a7147cc918d44dd7b9d6b3d10b8846478`  
		Last Modified: Wed, 12 Sep 2018 03:31:03 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989f7b0c858b7747b3a6dd43de74fe166d16abf090b2df6a51687fdf9ae27b2d`  
		Last Modified: Wed, 12 Sep 2018 03:31:02 GMT  
		Size: 402.1 KB (402130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8bd3a94284287e988bb18ff4395638e539d3670fdf1b93e09008cdd843cfc8`  
		Last Modified: Thu, 18 Oct 2018 23:56:26 GMT  
		Size: 12.3 MB (12311798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997d9e740b77232b840a0a8dfc6372ae5d3f9919120e2987223cb9e830ba855d`  
		Last Modified: Thu, 18 Oct 2018 23:56:24 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76bc130a47af656081fced58fb70b3a0dd9b55ccdb2aca60adc0bc2a2961461`  
		Last Modified: Thu, 18 Oct 2018 23:56:24 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.0-stretch`

```console
$ docker pull redis@sha256:e71621e6711e10425dc0ce1afbcb2ea02081bdae5e9fb46e57a009f9ce250f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.0-stretch` - linux; amd64

```console
$ docker pull redis@sha256:4da5768becdde8b439a4af1a4f45624d4bc635edfbcbe60b25402f0cb71a5e61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35180038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1babb1dde7e1fc7520ce56ce6d39843a074151bb192522b1988c65a067b15e96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:47:48 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:48:50 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 18 Oct 2018 23:48:51 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:48:51 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:48:52 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:48:52 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:48:52 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:48:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2719bdbf9516505371d4df94f682d903fa0be9150b86eaa46d263dacdbdc5b48`  
		Last Modified: Thu, 18 Oct 2018 23:53:08 GMT  
		Size: 11.8 MB (11750456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f306130d78e32095bd8ce43f23dd580cda3ac76f4f6c756f8d30ad9fc9f2a4b3`  
		Last Modified: Thu, 18 Oct 2018 23:53:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e09204f8155f75a867e5de4789a621609a363d4a728806bea7a66576a0b7c68`  
		Last Modified: Thu, 18 Oct 2018 23:53:05 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-32bit`

```console
$ docker pull redis@sha256:fcd708a85270504a3b594f51d838bc3ed99e62a8ddd1ed9e8ddbc86bd13547ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:adb60803470429bdc61247986c46867c7b6d9d6f591188b7312c1009bd8d0369
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39446143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff7108df51c4c089cea96d8e59aa13ea8181bf20ead2a94bc9380ba4d6b8115`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:47:48 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 18 Oct 2018 23:50:51 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 18 Oct 2018 23:50:52 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:50:52 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:50:52 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:50:53 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:50:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:50:53 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:50:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b80a1c5f67a4ee346945c812599568e517ee70f53f70b460ca189c8ba292a7a`  
		Last Modified: Thu, 18 Oct 2018 23:54:39 GMT  
		Size: 4.8 MB (4848295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb49f26ef285da2a6cf2774d9c3acab4f6236085b4212fde8e78ab2cfce4acf`  
		Last Modified: Thu, 18 Oct 2018 23:54:40 GMT  
		Size: 11.2 MB (11168260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ef129f83dbf19489e12657a5d3871793e1664319ad23670339bb84216ecf4a`  
		Last Modified: Thu, 18 Oct 2018 23:54:38 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7a77fb676825049ecb0d88c3a3890b8ccc4e1b0ca03ea003af88deeeb12715`  
		Last Modified: Thu, 18 Oct 2018 23:54:38 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-32bit-stretch`

```console
$ docker pull redis@sha256:fcd708a85270504a3b594f51d838bc3ed99e62a8ddd1ed9e8ddbc86bd13547ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:adb60803470429bdc61247986c46867c7b6d9d6f591188b7312c1009bd8d0369
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39446143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff7108df51c4c089cea96d8e59aa13ea8181bf20ead2a94bc9380ba4d6b8115`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:47:48 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 18 Oct 2018 23:50:51 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 18 Oct 2018 23:50:52 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:50:52 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:50:52 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:50:53 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:50:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:50:53 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:50:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b80a1c5f67a4ee346945c812599568e517ee70f53f70b460ca189c8ba292a7a`  
		Last Modified: Thu, 18 Oct 2018 23:54:39 GMT  
		Size: 4.8 MB (4848295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb49f26ef285da2a6cf2774d9c3acab4f6236085b4212fde8e78ab2cfce4acf`  
		Last Modified: Thu, 18 Oct 2018 23:54:40 GMT  
		Size: 11.2 MB (11168260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ef129f83dbf19489e12657a5d3871793e1664319ad23670339bb84216ecf4a`  
		Last Modified: Thu, 18 Oct 2018 23:54:38 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7a77fb676825049ecb0d88c3a3890b8ccc4e1b0ca03ea003af88deeeb12715`  
		Last Modified: Thu, 18 Oct 2018 23:54:38 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-alpine`

```console
$ docker pull redis@sha256:c790bdfe012a2f7162e31a116e1c562cf5b22ea767b6d995ff1b57f0d54e6666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-alpine` - linux; amd64

```console
$ docker pull redis@sha256:5b886145b1a00e045a8b6eae81c0b29edb95dd48597bc51934bc02d80f6ac080
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14922621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05635ee9e1c7e8bf4b0b3265c5085126aced903a9b69cada10796ca13aa033e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:26:27 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 03:26:29 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:52:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 18 Oct 2018 23:52:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:52:09 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:52:10 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:52:10 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:52:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:52:10 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:52:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb758dc2e0380088f86e84055736737a7147cc918d44dd7b9d6b3d10b8846478`  
		Last Modified: Wed, 12 Sep 2018 03:31:03 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989f7b0c858b7747b3a6dd43de74fe166d16abf090b2df6a51687fdf9ae27b2d`  
		Last Modified: Wed, 12 Sep 2018 03:31:02 GMT  
		Size: 402.1 KB (402130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8bd3a94284287e988bb18ff4395638e539d3670fdf1b93e09008cdd843cfc8`  
		Last Modified: Thu, 18 Oct 2018 23:56:26 GMT  
		Size: 12.3 MB (12311798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997d9e740b77232b840a0a8dfc6372ae5d3f9919120e2987223cb9e830ba855d`  
		Last Modified: Thu, 18 Oct 2018 23:56:24 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76bc130a47af656081fced58fb70b3a0dd9b55ccdb2aca60adc0bc2a2961461`  
		Last Modified: Thu, 18 Oct 2018 23:56:24 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-alpine3.8`

```console
$ docker pull redis@sha256:c790bdfe012a2f7162e31a116e1c562cf5b22ea767b6d995ff1b57f0d54e6666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:5b886145b1a00e045a8b6eae81c0b29edb95dd48597bc51934bc02d80f6ac080
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14922621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05635ee9e1c7e8bf4b0b3265c5085126aced903a9b69cada10796ca13aa033e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:26:27 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 03:26:29 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:52:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 18 Oct 2018 23:52:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:52:09 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:52:10 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:52:10 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:52:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:52:10 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:52:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb758dc2e0380088f86e84055736737a7147cc918d44dd7b9d6b3d10b8846478`  
		Last Modified: Wed, 12 Sep 2018 03:31:03 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989f7b0c858b7747b3a6dd43de74fe166d16abf090b2df6a51687fdf9ae27b2d`  
		Last Modified: Wed, 12 Sep 2018 03:31:02 GMT  
		Size: 402.1 KB (402130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8bd3a94284287e988bb18ff4395638e539d3670fdf1b93e09008cdd843cfc8`  
		Last Modified: Thu, 18 Oct 2018 23:56:26 GMT  
		Size: 12.3 MB (12311798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997d9e740b77232b840a0a8dfc6372ae5d3f9919120e2987223cb9e830ba855d`  
		Last Modified: Thu, 18 Oct 2018 23:56:24 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76bc130a47af656081fced58fb70b3a0dd9b55ccdb2aca60adc0bc2a2961461`  
		Last Modified: Thu, 18 Oct 2018 23:56:24 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-stretch`

```console
$ docker pull redis@sha256:e71621e6711e10425dc0ce1afbcb2ea02081bdae5e9fb46e57a009f9ce250f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-stretch` - linux; amd64

```console
$ docker pull redis@sha256:4da5768becdde8b439a4af1a4f45624d4bc635edfbcbe60b25402f0cb71a5e61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35180038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1babb1dde7e1fc7520ce56ce6d39843a074151bb192522b1988c65a067b15e96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:47:48 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:48:50 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 18 Oct 2018 23:48:51 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:48:51 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:48:52 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:48:52 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:48:52 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:48:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2719bdbf9516505371d4df94f682d903fa0be9150b86eaa46d263dacdbdc5b48`  
		Last Modified: Thu, 18 Oct 2018 23:53:08 GMT  
		Size: 11.8 MB (11750456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f306130d78e32095bd8ce43f23dd580cda3ac76f4f6c756f8d30ad9fc9f2a4b3`  
		Last Modified: Thu, 18 Oct 2018 23:53:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e09204f8155f75a867e5de4789a621609a363d4a728806bea7a66576a0b7c68`  
		Last Modified: Thu, 18 Oct 2018 23:53:05 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-32bit`

```console
$ docker pull redis@sha256:fcd708a85270504a3b594f51d838bc3ed99e62a8ddd1ed9e8ddbc86bd13547ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-32bit` - linux; amd64

```console
$ docker pull redis@sha256:adb60803470429bdc61247986c46867c7b6d9d6f591188b7312c1009bd8d0369
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39446143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff7108df51c4c089cea96d8e59aa13ea8181bf20ead2a94bc9380ba4d6b8115`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:47:48 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 18 Oct 2018 23:50:51 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 18 Oct 2018 23:50:52 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:50:52 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:50:52 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:50:53 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:50:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:50:53 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:50:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b80a1c5f67a4ee346945c812599568e517ee70f53f70b460ca189c8ba292a7a`  
		Last Modified: Thu, 18 Oct 2018 23:54:39 GMT  
		Size: 4.8 MB (4848295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb49f26ef285da2a6cf2774d9c3acab4f6236085b4212fde8e78ab2cfce4acf`  
		Last Modified: Thu, 18 Oct 2018 23:54:40 GMT  
		Size: 11.2 MB (11168260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ef129f83dbf19489e12657a5d3871793e1664319ad23670339bb84216ecf4a`  
		Last Modified: Thu, 18 Oct 2018 23:54:38 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7a77fb676825049ecb0d88c3a3890b8ccc4e1b0ca03ea003af88deeeb12715`  
		Last Modified: Thu, 18 Oct 2018 23:54:38 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-32bit-stretch`

```console
$ docker pull redis@sha256:fcd708a85270504a3b594f51d838bc3ed99e62a8ddd1ed9e8ddbc86bd13547ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:adb60803470429bdc61247986c46867c7b6d9d6f591188b7312c1009bd8d0369
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39446143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff7108df51c4c089cea96d8e59aa13ea8181bf20ead2a94bc9380ba4d6b8115`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:47:48 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 18 Oct 2018 23:50:51 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 18 Oct 2018 23:50:52 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:50:52 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:50:52 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:50:53 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:50:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:50:53 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:50:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b80a1c5f67a4ee346945c812599568e517ee70f53f70b460ca189c8ba292a7a`  
		Last Modified: Thu, 18 Oct 2018 23:54:39 GMT  
		Size: 4.8 MB (4848295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb49f26ef285da2a6cf2774d9c3acab4f6236085b4212fde8e78ab2cfce4acf`  
		Last Modified: Thu, 18 Oct 2018 23:54:40 GMT  
		Size: 11.2 MB (11168260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ef129f83dbf19489e12657a5d3871793e1664319ad23670339bb84216ecf4a`  
		Last Modified: Thu, 18 Oct 2018 23:54:38 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7a77fb676825049ecb0d88c3a3890b8ccc4e1b0ca03ea003af88deeeb12715`  
		Last Modified: Thu, 18 Oct 2018 23:54:38 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-alpine`

```console
$ docker pull redis@sha256:c790bdfe012a2f7162e31a116e1c562cf5b22ea767b6d995ff1b57f0d54e6666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-alpine` - linux; amd64

```console
$ docker pull redis@sha256:5b886145b1a00e045a8b6eae81c0b29edb95dd48597bc51934bc02d80f6ac080
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14922621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05635ee9e1c7e8bf4b0b3265c5085126aced903a9b69cada10796ca13aa033e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:26:27 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 03:26:29 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:52:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 18 Oct 2018 23:52:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:52:09 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:52:10 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:52:10 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:52:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:52:10 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:52:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb758dc2e0380088f86e84055736737a7147cc918d44dd7b9d6b3d10b8846478`  
		Last Modified: Wed, 12 Sep 2018 03:31:03 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989f7b0c858b7747b3a6dd43de74fe166d16abf090b2df6a51687fdf9ae27b2d`  
		Last Modified: Wed, 12 Sep 2018 03:31:02 GMT  
		Size: 402.1 KB (402130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8bd3a94284287e988bb18ff4395638e539d3670fdf1b93e09008cdd843cfc8`  
		Last Modified: Thu, 18 Oct 2018 23:56:26 GMT  
		Size: 12.3 MB (12311798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997d9e740b77232b840a0a8dfc6372ae5d3f9919120e2987223cb9e830ba855d`  
		Last Modified: Thu, 18 Oct 2018 23:56:24 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76bc130a47af656081fced58fb70b3a0dd9b55ccdb2aca60adc0bc2a2961461`  
		Last Modified: Thu, 18 Oct 2018 23:56:24 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-alpine3.8`

```console
$ docker pull redis@sha256:c790bdfe012a2f7162e31a116e1c562cf5b22ea767b6d995ff1b57f0d54e6666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:5b886145b1a00e045a8b6eae81c0b29edb95dd48597bc51934bc02d80f6ac080
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14922621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05635ee9e1c7e8bf4b0b3265c5085126aced903a9b69cada10796ca13aa033e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:26:27 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 03:26:29 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:52:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 18 Oct 2018 23:52:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:52:09 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:52:10 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:52:10 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:52:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:52:10 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:52:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb758dc2e0380088f86e84055736737a7147cc918d44dd7b9d6b3d10b8846478`  
		Last Modified: Wed, 12 Sep 2018 03:31:03 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989f7b0c858b7747b3a6dd43de74fe166d16abf090b2df6a51687fdf9ae27b2d`  
		Last Modified: Wed, 12 Sep 2018 03:31:02 GMT  
		Size: 402.1 KB (402130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8bd3a94284287e988bb18ff4395638e539d3670fdf1b93e09008cdd843cfc8`  
		Last Modified: Thu, 18 Oct 2018 23:56:26 GMT  
		Size: 12.3 MB (12311798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997d9e740b77232b840a0a8dfc6372ae5d3f9919120e2987223cb9e830ba855d`  
		Last Modified: Thu, 18 Oct 2018 23:56:24 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76bc130a47af656081fced58fb70b3a0dd9b55ccdb2aca60adc0bc2a2961461`  
		Last Modified: Thu, 18 Oct 2018 23:56:24 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-stretch`

```console
$ docker pull redis@sha256:e71621e6711e10425dc0ce1afbcb2ea02081bdae5e9fb46e57a009f9ce250f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-stretch` - linux; amd64

```console
$ docker pull redis@sha256:4da5768becdde8b439a4af1a4f45624d4bc635edfbcbe60b25402f0cb71a5e61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35180038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1babb1dde7e1fc7520ce56ce6d39843a074151bb192522b1988c65a067b15e96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:47:48 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:48:50 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 18 Oct 2018 23:48:51 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:48:51 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:48:52 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:48:52 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:48:52 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:48:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2719bdbf9516505371d4df94f682d903fa0be9150b86eaa46d263dacdbdc5b48`  
		Last Modified: Thu, 18 Oct 2018 23:53:08 GMT  
		Size: 11.8 MB (11750456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f306130d78e32095bd8ce43f23dd580cda3ac76f4f6c756f8d30ad9fc9f2a4b3`  
		Last Modified: Thu, 18 Oct 2018 23:53:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e09204f8155f75a867e5de4789a621609a363d4a728806bea7a66576a0b7c68`  
		Last Modified: Thu, 18 Oct 2018 23:53:05 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:c790bdfe012a2f7162e31a116e1c562cf5b22ea767b6d995ff1b57f0d54e6666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

```console
$ docker pull redis@sha256:5b886145b1a00e045a8b6eae81c0b29edb95dd48597bc51934bc02d80f6ac080
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14922621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05635ee9e1c7e8bf4b0b3265c5085126aced903a9b69cada10796ca13aa033e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:26:27 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 03:26:29 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:52:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 18 Oct 2018 23:52:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:52:09 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:52:10 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:52:10 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:52:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:52:10 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:52:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb758dc2e0380088f86e84055736737a7147cc918d44dd7b9d6b3d10b8846478`  
		Last Modified: Wed, 12 Sep 2018 03:31:03 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989f7b0c858b7747b3a6dd43de74fe166d16abf090b2df6a51687fdf9ae27b2d`  
		Last Modified: Wed, 12 Sep 2018 03:31:02 GMT  
		Size: 402.1 KB (402130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8bd3a94284287e988bb18ff4395638e539d3670fdf1b93e09008cdd843cfc8`  
		Last Modified: Thu, 18 Oct 2018 23:56:26 GMT  
		Size: 12.3 MB (12311798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997d9e740b77232b840a0a8dfc6372ae5d3f9919120e2987223cb9e830ba855d`  
		Last Modified: Thu, 18 Oct 2018 23:56:24 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76bc130a47af656081fced58fb70b3a0dd9b55ccdb2aca60adc0bc2a2961461`  
		Last Modified: Thu, 18 Oct 2018 23:56:24 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine3.8`

```console
$ docker pull redis@sha256:c790bdfe012a2f7162e31a116e1c562cf5b22ea767b6d995ff1b57f0d54e6666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:5b886145b1a00e045a8b6eae81c0b29edb95dd48597bc51934bc02d80f6ac080
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14922621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05635ee9e1c7e8bf4b0b3265c5085126aced903a9b69cada10796ca13aa033e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:26:27 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 12 Sep 2018 03:26:29 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:51:05 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:52:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 18 Oct 2018 23:52:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:52:09 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:52:10 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:52:10 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:52:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:52:10 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:52:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb758dc2e0380088f86e84055736737a7147cc918d44dd7b9d6b3d10b8846478`  
		Last Modified: Wed, 12 Sep 2018 03:31:03 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989f7b0c858b7747b3a6dd43de74fe166d16abf090b2df6a51687fdf9ae27b2d`  
		Last Modified: Wed, 12 Sep 2018 03:31:02 GMT  
		Size: 402.1 KB (402130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8bd3a94284287e988bb18ff4395638e539d3670fdf1b93e09008cdd843cfc8`  
		Last Modified: Thu, 18 Oct 2018 23:56:26 GMT  
		Size: 12.3 MB (12311798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997d9e740b77232b840a0a8dfc6372ae5d3f9919120e2987223cb9e830ba855d`  
		Last Modified: Thu, 18 Oct 2018 23:56:24 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76bc130a47af656081fced58fb70b3a0dd9b55ccdb2aca60adc0bc2a2961461`  
		Last Modified: Thu, 18 Oct 2018 23:56:24 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:b6977d3ce8c7ee5c1a59146cd58912b5945b8b5ecf887ef2f3d1b2e402387f4e
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
$ docker pull redis@sha256:616fdab51679e064fca66537cf77292c6dfe43d3d9a26bf83973438043a2dd33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32123605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1897cdc2c6b41217b73899298717e81d10dda561cdd4939dfb7ecbaf35b4b94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 04:34:40 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 04:34:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 04:34:44 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 04:35:27 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 04:35:28 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 04:35:28 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 04:35:28 GMT
WORKDIR /data
# Tue, 16 Oct 2018 04:35:29 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 04:35:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 04:35:29 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 04:35:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ceb2908b0a65cc345fa8843e7f1be3a6ac727780e34674a40d0b45759be5d9`  
		Last Modified: Tue, 16 Oct 2018 04:40:31 GMT  
		Size: 8.7 MB (8694023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4330a6e801e5e4567c7c7666c0bd6059fb1ada3db368b865f24b89f44ab467e6`  
		Last Modified: Tue, 16 Oct 2018 04:40:30 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac88bc721c38110be35da2292e06a77eaae52bc11f6353fcfe4c79e3027318c5`  
		Last Modified: Tue, 16 Oct 2018 04:40:29 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v5

```console
$ docker pull redis@sha256:2e6fcdac7da008e59d30e958c6304406600e0b9986b8c0fe12ee0baf7c2c3dc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30514903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c18c78edfe68e86117574e63a52c5d71dc25dae1de359b170ac400b7e3944e47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:51:25 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 11:51:25 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 11:51:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 11:53:03 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 11:53:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 11:53:04 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 11:53:45 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 11:53:46 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 11:53:47 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 11:53:47 GMT
WORKDIR /data
# Tue, 16 Oct 2018 11:53:48 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:53:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 11:53:48 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 11:53:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733a90629314d385813dadaf06358b96313c3b8d8ff3a05c365c3046438093b`  
		Last Modified: Tue, 16 Oct 2018 11:54:47 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab615d6d3a0515d15f239426aae170d2faf94a8be9857af117040f2bccc5390`  
		Last Modified: Tue, 16 Oct 2018 11:54:48 GMT  
		Size: 931.1 KB (931116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4b14cac93025ba9aecb9f3e5e9026f15c2a8faddee5d46d151d18db405090f`  
		Last Modified: Tue, 16 Oct 2018 11:55:15 GMT  
		Size: 8.4 MB (8418535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f804708f1f644176cdff8e57137908355115352e8386985480b6e63168d5cac0`  
		Last Modified: Tue, 16 Oct 2018 11:55:11 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aad632aa5fe1b6c7051b608a50ade46989fb0a2dbc58ca112acc5d14835c6a8`  
		Last Modified: Tue, 16 Oct 2018 11:55:11 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v7

```console
$ docker pull redis@sha256:2ec891e7f1962524a9e283b3a4a74a90e1391662a6c1905911d0853357d8e46e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28376483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:159a4f024827d94d36956a638a4fcde4495e2a718c4ba1127f133c5a5848920f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:41:12 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 05 Sep 2018 15:41:13 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 15:41:32 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 15:42:45 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 05 Sep 2018 15:42:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 05 Sep 2018 15:42:46 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 05 Sep 2018 15:43:21 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 15:43:22 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 05 Sep 2018 15:43:22 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 15:43:23 GMT
WORKDIR /data
# Wed, 03 Oct 2018 12:19:07 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 03 Oct 2018 12:19:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 12:19:08 GMT
EXPOSE 6379/tcp
# Wed, 03 Oct 2018 12:19:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c851488a5d9b243d717f7029e95bb014395a4bac2c39e59eb1961a611d02866`  
		Last Modified: Wed, 05 Sep 2018 15:44:25 GMT  
		Size: 1.7 KB (1729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cea588168542d6e1519c8713af803138383f54efd83fa5735993be6b0408875`  
		Last Modified: Wed, 05 Sep 2018 15:44:26 GMT  
		Size: 915.7 KB (915715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152135578d80e81b8219be11f13681a3738ec0284b2988f535cb4a980c3d4542`  
		Last Modified: Wed, 05 Sep 2018 15:45:04 GMT  
		Size: 8.2 MB (8188321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c706f4edf3c924f2362a02ffd3f02307fb46b4e1be8a0882e443ac993bf300`  
		Last Modified: Wed, 05 Sep 2018 15:45:00 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01eebbe99fda800667b67bb7312d17053a4f49d724700ead7fa139cf0b16cb26`  
		Last Modified: Wed, 03 Oct 2018 12:20:51 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:0eb108c08cd4b0183bf506978a2dbfe8a38d20a3696527c9c34a0ed55071d37f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29733854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102046cc4ad7f725f25be22cb91b9b93f3fe086be91a8afe9339a67e6a598d3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 18:57:56 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 18:57:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 18:58:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 19:01:36 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 19:01:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 19:01:38 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 19:03:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 19:03:54 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 19:03:57 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 19:04:00 GMT
WORKDIR /data
# Tue, 16 Oct 2018 19:04:04 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 19:04:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 19:04:11 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 19:04:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04371d693c006bd0812a3cfbf90922a03d72f21611c8d8ca79adf350eeab5f9`  
		Last Modified: Tue, 16 Oct 2018 19:09:55 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a750879aa6a2633e1bd33beb42a61de8c1708af030957eb556836a4e4dbe15`  
		Last Modified: Tue, 16 Oct 2018 19:09:56 GMT  
		Size: 908.0 KB (907952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0359e887791256d85c53ac1d2a1205f0d731398a594fe06cdcda33e91acb938a`  
		Last Modified: Tue, 16 Oct 2018 19:10:41 GMT  
		Size: 8.5 MB (8492053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee441c075acdd3b5b895a3ea6cceee7aba596b97b9d08f15fb80424630903614`  
		Last Modified: Tue, 16 Oct 2018 19:10:38 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c85c21d400564c983927b83a071ca4fb8fd08ee45b2c2b46ecc21d910cd4b7`  
		Last Modified: Tue, 16 Oct 2018 19:10:38 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; 386

```console
$ docker pull redis@sha256:9f6c7624489d116ffa44b7ee9c8160d10095d5ac7aa72871bb04efc82121301e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32299541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8463d2cd60f5fbb1820a9a944296e8f7648056e7f849de75dc4e297473fcb799`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Wed, 17 Oct 2018 00:40:51 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 17 Oct 2018 00:40:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 17 Oct 2018 00:41:05 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 17 Oct 2018 00:42:23 GMT
ENV REDIS_VERSION=4.0.11
# Wed, 17 Oct 2018 00:42:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Wed, 17 Oct 2018 00:42:24 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Wed, 17 Oct 2018 00:43:02 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 17 Oct 2018 00:43:02 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 17 Oct 2018 00:43:03 GMT
VOLUME [/data]
# Wed, 17 Oct 2018 00:43:03 GMT
WORKDIR /data
# Wed, 17 Oct 2018 00:43:03 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 17 Oct 2018 00:43:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 17 Oct 2018 00:43:04 GMT
EXPOSE 6379/tcp
# Wed, 17 Oct 2018 00:43:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13b6cbc0304f13dc32184df00d9ccbfcddbac740ffb0b5e629e76c46d927ce2`  
		Last Modified: Wed, 17 Oct 2018 00:44:14 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b119e96a7281de6b65ba40dd9eaf271a6bf3a4529813b9d4c0979b7d12467a7f`  
		Last Modified: Wed, 17 Oct 2018 00:44:10 GMT  
		Size: 920.0 KB (920050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801a42c9d8f7af5a1b0d46cd82b25b5a3dad86b4ed528037b72dfc2fd1d8b5fc`  
		Last Modified: Wed, 17 Oct 2018 00:44:49 GMT  
		Size: 8.3 MB (8250636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b873d04a9fa78bc1dbc4063eaa1219017d8e13b105d6047486e416ceeaf5e10`  
		Last Modified: Wed, 17 Oct 2018 00:44:47 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2159afca1f58290ec58d2a375756dd4392fbe5201e95ed2b06856bcec7e1b0f3`  
		Last Modified: Wed, 17 Oct 2018 00:44:47 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; ppc64le

```console
$ docker pull redis@sha256:f7939c486882295ed5e07366d434add4a0c60afd0c1505eb4aa3032ae8ef689e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32521090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7cfa89e83053c3e57f1e5227716998052373b2f67cb4a59cb7e29529f77bf68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:37:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 13:37:20 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 13:38:58 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 13:41:43 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 13:41:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 13:41:45 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 13:43:23 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 13:43:28 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 13:43:29 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 13:43:31 GMT
WORKDIR /data
# Tue, 16 Oct 2018 13:43:33 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 13:43:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 13:43:35 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 13:43:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28132c90b79bace619811b7809e3955cca7109e85cf1003829e52dbcb023be80`  
		Last Modified: Tue, 16 Oct 2018 13:46:13 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a54e6c5f6d05c9e443db90d940598952d64830a759c25c3cd45cd62c6177fb`  
		Last Modified: Tue, 16 Oct 2018 13:46:14 GMT  
		Size: 909.8 KB (909783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e81d8ed09132485b24b8c354ea0b0c06ff04a9dbe19347e12a7a7403b9ddb6`  
		Last Modified: Tue, 16 Oct 2018 13:46:54 GMT  
		Size: 8.9 MB (8868425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45a590d8de836cefb42d7064ac0a6489e40a89d6d76ca8ae64a4cfab33bc22ff`  
		Last Modified: Tue, 16 Oct 2018 13:46:51 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405abf8546f8cc6fe4893366a8a914a0c77b08784a26c2152cab527b1c89b84e`  
		Last Modified: Tue, 16 Oct 2018 13:46:51 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; s390x

```console
$ docker pull redis@sha256:8e7fe20a9fc0d470568d32fefc8fecc556395f78ff412c3e130630d2f9279081
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32347542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4217c813400dc9eb35c83e8bfdfc983c47b51c0c774181c882cc188ea1dbb8d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:52 GMT
ADD file:a7cc9e5280b465a6e72c8b1331e009ddd18bff12c000c9e49ababac631179edc in / 
# Tue, 16 Oct 2018 11:42:52 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:50:06 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 13:50:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 13:50:21 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 13:51:27 GMT
ENV REDIS_VERSION=4.0.11
# Tue, 16 Oct 2018 13:51:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Tue, 16 Oct 2018 13:51:27 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Tue, 16 Oct 2018 13:52:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 13:52:05 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 16 Oct 2018 13:52:05 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 13:52:06 GMT
WORKDIR /data
# Tue, 16 Oct 2018 13:52:06 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Tue, 16 Oct 2018 13:52:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 13:52:06 GMT
EXPOSE 6379/tcp
# Tue, 16 Oct 2018 13:52:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b16a7816eac3ca0893b75f07b37e5e276ba331e1a35619343718d1c33f877877`  
		Last Modified: Tue, 16 Oct 2018 11:46:03 GMT  
		Size: 22.3 MB (22334662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c3d0c40cae4c3fa639160e8215ea00b8ae8701a33b0f8603c9c2ac33f795ec`  
		Last Modified: Tue, 16 Oct 2018 13:53:06 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1330deccd36202d5a6a39bf5cfd82166d773239a108ba08375f7a3d208db6bb5`  
		Last Modified: Tue, 16 Oct 2018 13:53:06 GMT  
		Size: 926.7 KB (926709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077f65e4997824a73802840c579f2b1299cf2013dee1c5a5dc186e23147f4b6c`  
		Last Modified: Tue, 16 Oct 2018 13:53:24 GMT  
		Size: 9.1 MB (9083909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad20b051efb3efd7b155ed60137efbc0c5a67efa5bd822ae818bc0b13a85a22`  
		Last Modified: Tue, 16 Oct 2018 13:53:22 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9b4e1afee203a304b6a564592e1d92b5369e7088b23ee6e898b6b5261db870`  
		Last Modified: Tue, 16 Oct 2018 13:53:22 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:stretch`

```console
$ docker pull redis@sha256:e71621e6711e10425dc0ce1afbcb2ea02081bdae5e9fb46e57a009f9ce250f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:stretch` - linux; amd64

```console
$ docker pull redis@sha256:4da5768becdde8b439a4af1a4f45624d4bc635edfbcbe60b25402f0cb71a5e61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35180038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1babb1dde7e1fc7520ce56ce6d39843a074151bb192522b1988c65a067b15e96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:31:42 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 16 Oct 2018 04:31:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:31:55 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_VERSION=5.0.0
# Thu, 18 Oct 2018 23:47:47 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
# Thu, 18 Oct 2018 23:47:48 GMT
ENV REDIS_DOWNLOAD_SHA=70c98b2d0640b2b73c9d8adb4df63bcb62bad34b788fe46d1634b6cf87dc99a4
# Thu, 18 Oct 2018 23:48:50 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 18 Oct 2018 23:48:51 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 Oct 2018 23:48:51 GMT
VOLUME [/data]
# Thu, 18 Oct 2018 23:48:52 GMT
WORKDIR /data
# Thu, 18 Oct 2018 23:48:52 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:48:52 GMT
EXPOSE 6379/tcp
# Thu, 18 Oct 2018 23:48:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3247409875798b846053cdc995cd766fedae8f94e2d78dc1b5276abc8546673`  
		Last Modified: Tue, 16 Oct 2018 04:38:56 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cabe8bc2f8337a120768556d2068f45dec94847c8ae007fac56d54384e09`  
		Last Modified: Tue, 16 Oct 2018 04:38:57 GMT  
		Size: 941.3 KB (941284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2719bdbf9516505371d4df94f682d903fa0be9150b86eaa46d263dacdbdc5b48`  
		Last Modified: Thu, 18 Oct 2018 23:53:08 GMT  
		Size: 11.8 MB (11750456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f306130d78e32095bd8ce43f23dd580cda3ac76f4f6c756f8d30ad9fc9f2a4b3`  
		Last Modified: Thu, 18 Oct 2018 23:53:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e09204f8155f75a867e5de4789a621609a363d4a728806bea7a66576a0b7c68`  
		Last Modified: Thu, 18 Oct 2018 23:53:05 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
