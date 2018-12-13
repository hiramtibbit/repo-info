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
-	[`redis:4.0.12-alpine3.8`](#redis4012-alpine38)
-	[`redis:4.0.12-stretch`](#redis4012-stretch)
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
-	[`redis:5.0.3`](#redis503)
-	[`redis:5.0-32bit`](#redis50-32bit)
-	[`redis:5.0-32bit-stretch`](#redis50-32bit-stretch)
-	[`redis:5.0.3-32bit`](#redis503-32bit)
-	[`redis:5.0.3-32bit-stretch`](#redis503-32bit-stretch)
-	[`redis:5.0.3-alpine`](#redis503-alpine)
-	[`redis:5.0.3-alpine3.8`](#redis503-alpine38)
-	[`redis:5.0.3-stretch`](#redis503-stretch)
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
$ docker pull redis@sha256:2f397e9a1bc494daa72f3d7a1d91ec5e6067cd5fc32b0f29208b506efef100d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:b058b6f24f63c720106b11282c23bee1a3516418a02e68cedb903f83e6274085
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39461689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b68c07c3f128bddaac51b97d61fced2c9abb6dcc44eebe0112011a2db9e809d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:22:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 17:23:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 17:23:47 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:23:48 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:23:48 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:23:48 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:23:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:23:49 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:23:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befe9c4f3126d0cb29d7dcb1f92198ba55bc60d64797af189c601bc853ae63b8`  
		Last Modified: Thu, 13 Dec 2018 17:28:07 GMT  
		Size: 4.8 MB (4848359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b340992a79bab441a7894bb36e41366913fd355b73357426f8c360c63e9d866d`  
		Last Modified: Thu, 13 Dec 2018 17:28:07 GMT  
		Size: 11.2 MB (11183501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37cc50d5dbdab46376a268bc7108fe053038c51751e17df437cdb15c6dbb4011`  
		Last Modified: Thu, 13 Dec 2018 17:28:05 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce827d034e5d4059c0658d4f6249419cbbf5112a06b126c57bff7eea74f1db80`  
		Last Modified: Thu, 13 Dec 2018 17:28:05 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit-stretch`

```console
$ docker pull redis@sha256:2f397e9a1bc494daa72f3d7a1d91ec5e6067cd5fc32b0f29208b506efef100d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:b058b6f24f63c720106b11282c23bee1a3516418a02e68cedb903f83e6274085
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39461689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b68c07c3f128bddaac51b97d61fced2c9abb6dcc44eebe0112011a2db9e809d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:22:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 17:23:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 17:23:47 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:23:48 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:23:48 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:23:48 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:23:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:23:49 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:23:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befe9c4f3126d0cb29d7dcb1f92198ba55bc60d64797af189c601bc853ae63b8`  
		Last Modified: Thu, 13 Dec 2018 17:28:07 GMT  
		Size: 4.8 MB (4848359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b340992a79bab441a7894bb36e41366913fd355b73357426f8c360c63e9d866d`  
		Last Modified: Thu, 13 Dec 2018 17:28:07 GMT  
		Size: 11.2 MB (11183501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37cc50d5dbdab46376a268bc7108fe053038c51751e17df437cdb15c6dbb4011`  
		Last Modified: Thu, 13 Dec 2018 17:28:05 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce827d034e5d4059c0658d4f6249419cbbf5112a06b126c57bff7eea74f1db80`  
		Last Modified: Thu, 13 Dec 2018 17:28:05 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4`

```console
$ docker pull redis@sha256:bc6d2f2369b142e502e90693dcb29db6f80e70b072b96d64ccee754279b81c86
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
$ docker pull redis@sha256:3bb7b6cf91233b36662ac6accb3ec6bc400bdfc91685265025724df59c6bf83b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32126072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b00f982f9bf7cf1931020b1460429ba86cba6b82054fd1280633096aa9364acf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 12 Dec 2018 20:19:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 12 Dec 2018 20:19:28 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Dec 2018 20:19:28 GMT
VOLUME [/data]
# Wed, 12 Dec 2018 20:19:28 GMT
WORKDIR /data
# Wed, 12 Dec 2018 20:19:29 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 12 Dec 2018 20:19:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Dec 2018 20:19:29 GMT
EXPOSE 6379/tcp
# Wed, 12 Dec 2018 20:19:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b277a6a176ed426bc99e9d1490d67d9a67bf55b7d7d575a12ab013e66d5daf`  
		Last Modified: Wed, 12 Dec 2018 20:23:01 GMT  
		Size: 8.7 MB (8696247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18816bfc8c42f450ff65197bc4acf746e012199b5bd20c46ec8fab27b3269cd7`  
		Last Modified: Wed, 12 Dec 2018 20:22:59 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8353860f55df845ba04ecef31075569274ac3525eacaba877d63e127cf3aa6`  
		Last Modified: Wed, 12 Dec 2018 20:22:59 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v5

```console
$ docker pull redis@sha256:a601a05c4dfffca154582178761ed63ee6eaedc4a30d0e982dfa7cb6a9a7d612
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30518771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2081181bce6d4ce06d344a47aaa0f21421b93fa08960619136e1bde779124033`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:22:27 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 16:22:28 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 16:22:54 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 10:26:58 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 10:26:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 10:26:59 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 10:27:41 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 10:27:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 10:27:42 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 10:27:43 GMT
WORKDIR /data
# Thu, 13 Dec 2018 10:27:44 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 10:27:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 10:27:44 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 10:27:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdf922272e491614fbf43a202c8e5874d54801ca5d750d160381aeeac02e9bc`  
		Last Modified: Fri, 16 Nov 2018 16:25:29 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465a419c6c3730862c73a0d4d6a342aada4ca5166e563783aca7d1634ff7da4c`  
		Last Modified: Fri, 16 Nov 2018 16:25:29 GMT  
		Size: 931.1 KB (931113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc718362f8d45d088dff700295c03588c85904a770a55f288193c12ec4e4b3a`  
		Last Modified: Thu, 13 Dec 2018 10:28:08 GMT  
		Size: 8.4 MB (8422365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520abafd57dfdf49873fc45c8e70c5f0289f85281d080abeb5a2b124c00d8cd6`  
		Last Modified: Thu, 13 Dec 2018 10:28:05 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39f424b693ddee5f946124c9dda7517e2d4dba69e5fe67317e952959d2dd0a1`  
		Last Modified: Thu, 13 Dec 2018 10:28:06 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v7

```console
$ docker pull redis@sha256:cb7976f9194609ed196b9cc57b2ae1900094b72053e760bb66802d6647749038
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28383373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5673b0f4252bcbd0d2cd1472742d73d318f03e5b4ab0ecc028a7c71785fb7034`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 17:06:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 17:06:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 17:07:09 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 12:59:35 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 12:59:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 12:59:36 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 13:00:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 13:00:20 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 13:00:21 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 13:00:21 GMT
WORKDIR /data
# Thu, 13 Dec 2018 13:00:22 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 13:00:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 13:00:23 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 13:00:23 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2d80930f583a9833248b9df64411ea5dcf76871a290dff6b5b8e6c9c7e3e4f`  
		Last Modified: Fri, 16 Nov 2018 17:09:36 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e9757baaea6fea7641dff63b08ee174d270a36123beb43c8bcc1eb14f030dd`  
		Last Modified: Fri, 16 Nov 2018 17:09:37 GMT  
		Size: 915.8 KB (915788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54091744f943723de81246759f8274c5da77cc1f86aa00180eea1bb485031053`  
		Last Modified: Thu, 13 Dec 2018 13:00:44 GMT  
		Size: 8.2 MB (8195239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1809313645cb682b6da77ef8ab4ce7239518569be5358db862ee2d85ee7fe0`  
		Last Modified: Thu, 13 Dec 2018 13:00:41 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7213247129d187fd271dc22a0f94be70d8681f04bed6142ad35107dad8cd4972`  
		Last Modified: Thu, 13 Dec 2018 13:00:41 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:388c08acc014c4010b6b168cbf54d8ce40a5c97da6d7566479cf43057ec906a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29738131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4405f4c0b58672a375ab0b6463c812f6f518b3f979b24d3611399739dcc4ea5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 23:18:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 23:18:33 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 23:19:30 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 13:51:50 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 13:51:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 13:51:51 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 13:53:19 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 13:53:20 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 13:53:21 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 13:53:22 GMT
WORKDIR /data
# Thu, 13 Dec 2018 13:53:22 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 13:53:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 13:53:24 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 13:53:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30486ebbbf15de4bae2ee331725f016847747a4b99f2a35d7e5499d3e6fa9ea`  
		Last Modified: Fri, 16 Nov 2018 23:27:15 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c396b63e865772d0a63c58fea87fe76a8daba403801b6b65a6bd1a3504e19f3`  
		Last Modified: Fri, 16 Nov 2018 23:27:15 GMT  
		Size: 908.0 KB (907972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c00f704c53543e09de1c8e2224901450af33e4cacb32e1f067caf64d4152728`  
		Last Modified: Thu, 13 Dec 2018 13:55:09 GMT  
		Size: 8.5 MB (8496585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13466d1789fd48cf30fc75863df4d3a5375d43fde4e08e74517cbb6743c61f66`  
		Last Modified: Thu, 13 Dec 2018 13:55:06 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10fcf8b7b74ad1ff43ff71e6e5352ee84d9dd4085bcf4b8f7f54898eb37f8594`  
		Last Modified: Thu, 13 Dec 2018 13:55:06 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; 386

```console
$ docker pull redis@sha256:52c5b99e36cd9668177c08c775272a4af8ecf9f4967281332d6dae0476a1b5d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed62571ef5305703aa7e25487859d4e919f373f914e4b51141d952e863d86a56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:09:40 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 17 Nov 2018 06:09:40 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 06:10:01 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 14:21:40 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:21:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:21:40 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:22:27 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 14:22:28 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:22:28 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:22:28 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:22:28 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:22:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:22:29 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:22:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f12aaafb04623ca047b7fd06a3ee6c44815b18f2fd10d1c508e1416e5b4210`  
		Last Modified: Sat, 17 Nov 2018 06:14:19 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7798210102e9030bcff25d93adeb1c361988cacaff78a553c4e566544739d114`  
		Last Modified: Sat, 17 Nov 2018 06:14:20 GMT  
		Size: 920.1 KB (920077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619f28b95ae93df968ca3519467a7640e42e6e36e81d7ea7b318599488df9a50`  
		Last Modified: Thu, 13 Dec 2018 14:23:58 GMT  
		Size: 8.3 MB (8257754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e85081db86f4b118c218cdb2c7e4676aabd698cbea1834337c1c7f191c7e05`  
		Last Modified: Thu, 13 Dec 2018 14:23:56 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acaca037d26eb61add1674150301733ef67d300f583ac83462a960364ce14bde`  
		Last Modified: Thu, 13 Dec 2018 14:23:56 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; ppc64le

```console
$ docker pull redis@sha256:62917c64f62fcb10b3481658f138c2eff9940c2c8c17fc6a84c7876f0796cdc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32525088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bd76297861161061b1517fb5beac66afa2cc620baef776ee17d86a9f0aa63b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:52:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 16:52:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 16:53:54 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 11:31:54 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 11:31:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 11:32:01 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 11:33:38 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 11:33:56 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 11:33:57 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 11:33:58 GMT
WORKDIR /data
# Thu, 13 Dec 2018 11:33:59 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 11:34:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 11:34:02 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 11:34:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0c5eb162bdb0306fe8f40fca03869ae40b121ab0599a7a5f26b2a47c064a16`  
		Last Modified: Fri, 16 Nov 2018 17:00:08 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf93e18136797b688758dafe1a4525b9d82cbf85c31cd036ddb244da71950c2`  
		Last Modified: Fri, 16 Nov 2018 17:00:08 GMT  
		Size: 909.7 KB (909734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76083525e5f290afab1340c5ec55c9c6557d0f62e30776c21d4ff245020dc8ae`  
		Last Modified: Thu, 13 Dec 2018 11:37:01 GMT  
		Size: 8.9 MB (8872347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd4897f0a6573220437d0714b115c165049eb5f0dd1e21cef8faf0c9aed0757`  
		Last Modified: Thu, 13 Dec 2018 11:36:57 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d238762945e665052a154a54b9f3e37de2ad651ad72d782b5b002bfdd3851560`  
		Last Modified: Thu, 13 Dec 2018 11:36:57 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; s390x

```console
$ docker pull redis@sha256:852b74255763264f365a57337bb4a57d2abab6ae02a1ec88753e507b76490fc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32354070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f18e8dfaed7cf492d4e09d094a81b1465b495c20029e04a8e6d4efde5cfb02e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:03:01 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 19:03:01 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 19:03:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 14:06:03 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:06:03 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:06:04 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:06:35 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 14:06:36 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:06:36 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:06:36 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:06:36 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:06:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:06:37 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:06:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1df1ec8504f31b83153c15e397b2b1bd84be3411dc4c29a44c46fb33346c47`  
		Last Modified: Fri, 16 Nov 2018 19:06:06 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff16e78a01a74d4790f4731e304c3db33582d2979c3ada740370ce986ef9bb4e`  
		Last Modified: Fri, 16 Nov 2018 19:06:09 GMT  
		Size: 926.8 KB (926750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77ab61a8d40a23d5561aaabe7403341bcf8e2f61000fecd17e33bf090155b4f`  
		Last Modified: Thu, 13 Dec 2018 14:07:37 GMT  
		Size: 9.1 MB (9090344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f81c44678a3ee81683b7000e6113f99c9b2eda73aef3843090ed849f155c84`  
		Last Modified: Thu, 13 Dec 2018 14:07:35 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0cc74259a1b9fdf6c4cb997d42b610a0de189cda2c48df5dfd902c42bb0584`  
		Last Modified: Thu, 13 Dec 2018 14:07:35 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0`

```console
$ docker pull redis@sha256:bc6d2f2369b142e502e90693dcb29db6f80e70b072b96d64ccee754279b81c86
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
$ docker pull redis@sha256:3bb7b6cf91233b36662ac6accb3ec6bc400bdfc91685265025724df59c6bf83b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32126072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b00f982f9bf7cf1931020b1460429ba86cba6b82054fd1280633096aa9364acf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 12 Dec 2018 20:19:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 12 Dec 2018 20:19:28 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Dec 2018 20:19:28 GMT
VOLUME [/data]
# Wed, 12 Dec 2018 20:19:28 GMT
WORKDIR /data
# Wed, 12 Dec 2018 20:19:29 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 12 Dec 2018 20:19:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Dec 2018 20:19:29 GMT
EXPOSE 6379/tcp
# Wed, 12 Dec 2018 20:19:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b277a6a176ed426bc99e9d1490d67d9a67bf55b7d7d575a12ab013e66d5daf`  
		Last Modified: Wed, 12 Dec 2018 20:23:01 GMT  
		Size: 8.7 MB (8696247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18816bfc8c42f450ff65197bc4acf746e012199b5bd20c46ec8fab27b3269cd7`  
		Last Modified: Wed, 12 Dec 2018 20:22:59 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8353860f55df845ba04ecef31075569274ac3525eacaba877d63e127cf3aa6`  
		Last Modified: Wed, 12 Dec 2018 20:22:59 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v5

```console
$ docker pull redis@sha256:a601a05c4dfffca154582178761ed63ee6eaedc4a30d0e982dfa7cb6a9a7d612
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30518771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2081181bce6d4ce06d344a47aaa0f21421b93fa08960619136e1bde779124033`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:22:27 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 16:22:28 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 16:22:54 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 10:26:58 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 10:26:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 10:26:59 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 10:27:41 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 10:27:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 10:27:42 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 10:27:43 GMT
WORKDIR /data
# Thu, 13 Dec 2018 10:27:44 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 10:27:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 10:27:44 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 10:27:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdf922272e491614fbf43a202c8e5874d54801ca5d750d160381aeeac02e9bc`  
		Last Modified: Fri, 16 Nov 2018 16:25:29 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465a419c6c3730862c73a0d4d6a342aada4ca5166e563783aca7d1634ff7da4c`  
		Last Modified: Fri, 16 Nov 2018 16:25:29 GMT  
		Size: 931.1 KB (931113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc718362f8d45d088dff700295c03588c85904a770a55f288193c12ec4e4b3a`  
		Last Modified: Thu, 13 Dec 2018 10:28:08 GMT  
		Size: 8.4 MB (8422365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520abafd57dfdf49873fc45c8e70c5f0289f85281d080abeb5a2b124c00d8cd6`  
		Last Modified: Thu, 13 Dec 2018 10:28:05 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39f424b693ddee5f946124c9dda7517e2d4dba69e5fe67317e952959d2dd0a1`  
		Last Modified: Thu, 13 Dec 2018 10:28:06 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v7

```console
$ docker pull redis@sha256:cb7976f9194609ed196b9cc57b2ae1900094b72053e760bb66802d6647749038
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28383373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5673b0f4252bcbd0d2cd1472742d73d318f03e5b4ab0ecc028a7c71785fb7034`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 17:06:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 17:06:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 17:07:09 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 12:59:35 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 12:59:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 12:59:36 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 13:00:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 13:00:20 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 13:00:21 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 13:00:21 GMT
WORKDIR /data
# Thu, 13 Dec 2018 13:00:22 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 13:00:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 13:00:23 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 13:00:23 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2d80930f583a9833248b9df64411ea5dcf76871a290dff6b5b8e6c9c7e3e4f`  
		Last Modified: Fri, 16 Nov 2018 17:09:36 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e9757baaea6fea7641dff63b08ee174d270a36123beb43c8bcc1eb14f030dd`  
		Last Modified: Fri, 16 Nov 2018 17:09:37 GMT  
		Size: 915.8 KB (915788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54091744f943723de81246759f8274c5da77cc1f86aa00180eea1bb485031053`  
		Last Modified: Thu, 13 Dec 2018 13:00:44 GMT  
		Size: 8.2 MB (8195239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1809313645cb682b6da77ef8ab4ce7239518569be5358db862ee2d85ee7fe0`  
		Last Modified: Thu, 13 Dec 2018 13:00:41 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7213247129d187fd271dc22a0f94be70d8681f04bed6142ad35107dad8cd4972`  
		Last Modified: Thu, 13 Dec 2018 13:00:41 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:388c08acc014c4010b6b168cbf54d8ce40a5c97da6d7566479cf43057ec906a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29738131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4405f4c0b58672a375ab0b6463c812f6f518b3f979b24d3611399739dcc4ea5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 23:18:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 23:18:33 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 23:19:30 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 13:51:50 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 13:51:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 13:51:51 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 13:53:19 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 13:53:20 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 13:53:21 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 13:53:22 GMT
WORKDIR /data
# Thu, 13 Dec 2018 13:53:22 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 13:53:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 13:53:24 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 13:53:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30486ebbbf15de4bae2ee331725f016847747a4b99f2a35d7e5499d3e6fa9ea`  
		Last Modified: Fri, 16 Nov 2018 23:27:15 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c396b63e865772d0a63c58fea87fe76a8daba403801b6b65a6bd1a3504e19f3`  
		Last Modified: Fri, 16 Nov 2018 23:27:15 GMT  
		Size: 908.0 KB (907972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c00f704c53543e09de1c8e2224901450af33e4cacb32e1f067caf64d4152728`  
		Last Modified: Thu, 13 Dec 2018 13:55:09 GMT  
		Size: 8.5 MB (8496585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13466d1789fd48cf30fc75863df4d3a5375d43fde4e08e74517cbb6743c61f66`  
		Last Modified: Thu, 13 Dec 2018 13:55:06 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10fcf8b7b74ad1ff43ff71e6e5352ee84d9dd4085bcf4b8f7f54898eb37f8594`  
		Last Modified: Thu, 13 Dec 2018 13:55:06 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; 386

```console
$ docker pull redis@sha256:52c5b99e36cd9668177c08c775272a4af8ecf9f4967281332d6dae0476a1b5d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed62571ef5305703aa7e25487859d4e919f373f914e4b51141d952e863d86a56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:09:40 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 17 Nov 2018 06:09:40 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 06:10:01 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 14:21:40 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:21:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:21:40 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:22:27 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 14:22:28 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:22:28 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:22:28 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:22:28 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:22:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:22:29 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:22:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f12aaafb04623ca047b7fd06a3ee6c44815b18f2fd10d1c508e1416e5b4210`  
		Last Modified: Sat, 17 Nov 2018 06:14:19 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7798210102e9030bcff25d93adeb1c361988cacaff78a553c4e566544739d114`  
		Last Modified: Sat, 17 Nov 2018 06:14:20 GMT  
		Size: 920.1 KB (920077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619f28b95ae93df968ca3519467a7640e42e6e36e81d7ea7b318599488df9a50`  
		Last Modified: Thu, 13 Dec 2018 14:23:58 GMT  
		Size: 8.3 MB (8257754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e85081db86f4b118c218cdb2c7e4676aabd698cbea1834337c1c7f191c7e05`  
		Last Modified: Thu, 13 Dec 2018 14:23:56 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acaca037d26eb61add1674150301733ef67d300f583ac83462a960364ce14bde`  
		Last Modified: Thu, 13 Dec 2018 14:23:56 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; ppc64le

```console
$ docker pull redis@sha256:62917c64f62fcb10b3481658f138c2eff9940c2c8c17fc6a84c7876f0796cdc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32525088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bd76297861161061b1517fb5beac66afa2cc620baef776ee17d86a9f0aa63b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:52:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 16:52:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 16:53:54 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 11:31:54 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 11:31:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 11:32:01 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 11:33:38 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 11:33:56 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 11:33:57 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 11:33:58 GMT
WORKDIR /data
# Thu, 13 Dec 2018 11:33:59 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 11:34:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 11:34:02 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 11:34:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0c5eb162bdb0306fe8f40fca03869ae40b121ab0599a7a5f26b2a47c064a16`  
		Last Modified: Fri, 16 Nov 2018 17:00:08 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf93e18136797b688758dafe1a4525b9d82cbf85c31cd036ddb244da71950c2`  
		Last Modified: Fri, 16 Nov 2018 17:00:08 GMT  
		Size: 909.7 KB (909734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76083525e5f290afab1340c5ec55c9c6557d0f62e30776c21d4ff245020dc8ae`  
		Last Modified: Thu, 13 Dec 2018 11:37:01 GMT  
		Size: 8.9 MB (8872347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd4897f0a6573220437d0714b115c165049eb5f0dd1e21cef8faf0c9aed0757`  
		Last Modified: Thu, 13 Dec 2018 11:36:57 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d238762945e665052a154a54b9f3e37de2ad651ad72d782b5b002bfdd3851560`  
		Last Modified: Thu, 13 Dec 2018 11:36:57 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; s390x

```console
$ docker pull redis@sha256:852b74255763264f365a57337bb4a57d2abab6ae02a1ec88753e507b76490fc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32354070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f18e8dfaed7cf492d4e09d094a81b1465b495c20029e04a8e6d4efde5cfb02e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:03:01 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 19:03:01 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 19:03:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 14:06:03 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:06:03 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:06:04 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:06:35 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 14:06:36 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:06:36 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:06:36 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:06:36 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:06:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:06:37 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:06:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1df1ec8504f31b83153c15e397b2b1bd84be3411dc4c29a44c46fb33346c47`  
		Last Modified: Fri, 16 Nov 2018 19:06:06 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff16e78a01a74d4790f4731e304c3db33582d2979c3ada740370ce986ef9bb4e`  
		Last Modified: Fri, 16 Nov 2018 19:06:09 GMT  
		Size: 926.8 KB (926750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77ab61a8d40a23d5561aaabe7403341bcf8e2f61000fecd17e33bf090155b4f`  
		Last Modified: Thu, 13 Dec 2018 14:07:37 GMT  
		Size: 9.1 MB (9090344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f81c44678a3ee81683b7000e6113f99c9b2eda73aef3843090ed849f155c84`  
		Last Modified: Thu, 13 Dec 2018 14:07:35 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0cc74259a1b9fdf6c4cb997d42b610a0de189cda2c48df5dfd902c42bb0584`  
		Last Modified: Thu, 13 Dec 2018 14:07:35 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.12`

```console
$ docker pull redis@sha256:bc6d2f2369b142e502e90693dcb29db6f80e70b072b96d64ccee754279b81c86
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
$ docker pull redis@sha256:3bb7b6cf91233b36662ac6accb3ec6bc400bdfc91685265025724df59c6bf83b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32126072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b00f982f9bf7cf1931020b1460429ba86cba6b82054fd1280633096aa9364acf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 12 Dec 2018 20:19:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 12 Dec 2018 20:19:28 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Dec 2018 20:19:28 GMT
VOLUME [/data]
# Wed, 12 Dec 2018 20:19:28 GMT
WORKDIR /data
# Wed, 12 Dec 2018 20:19:29 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 12 Dec 2018 20:19:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Dec 2018 20:19:29 GMT
EXPOSE 6379/tcp
# Wed, 12 Dec 2018 20:19:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b277a6a176ed426bc99e9d1490d67d9a67bf55b7d7d575a12ab013e66d5daf`  
		Last Modified: Wed, 12 Dec 2018 20:23:01 GMT  
		Size: 8.7 MB (8696247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18816bfc8c42f450ff65197bc4acf746e012199b5bd20c46ec8fab27b3269cd7`  
		Last Modified: Wed, 12 Dec 2018 20:22:59 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8353860f55df845ba04ecef31075569274ac3525eacaba877d63e127cf3aa6`  
		Last Modified: Wed, 12 Dec 2018 20:22:59 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12` - linux; arm variant v5

```console
$ docker pull redis@sha256:a601a05c4dfffca154582178761ed63ee6eaedc4a30d0e982dfa7cb6a9a7d612
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30518771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2081181bce6d4ce06d344a47aaa0f21421b93fa08960619136e1bde779124033`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:22:27 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 16:22:28 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 16:22:54 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 10:26:58 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 10:26:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 10:26:59 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 10:27:41 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 10:27:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 10:27:42 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 10:27:43 GMT
WORKDIR /data
# Thu, 13 Dec 2018 10:27:44 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 10:27:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 10:27:44 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 10:27:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdf922272e491614fbf43a202c8e5874d54801ca5d750d160381aeeac02e9bc`  
		Last Modified: Fri, 16 Nov 2018 16:25:29 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465a419c6c3730862c73a0d4d6a342aada4ca5166e563783aca7d1634ff7da4c`  
		Last Modified: Fri, 16 Nov 2018 16:25:29 GMT  
		Size: 931.1 KB (931113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc718362f8d45d088dff700295c03588c85904a770a55f288193c12ec4e4b3a`  
		Last Modified: Thu, 13 Dec 2018 10:28:08 GMT  
		Size: 8.4 MB (8422365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520abafd57dfdf49873fc45c8e70c5f0289f85281d080abeb5a2b124c00d8cd6`  
		Last Modified: Thu, 13 Dec 2018 10:28:05 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39f424b693ddee5f946124c9dda7517e2d4dba69e5fe67317e952959d2dd0a1`  
		Last Modified: Thu, 13 Dec 2018 10:28:06 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12` - linux; arm variant v7

```console
$ docker pull redis@sha256:cb7976f9194609ed196b9cc57b2ae1900094b72053e760bb66802d6647749038
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28383373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5673b0f4252bcbd0d2cd1472742d73d318f03e5b4ab0ecc028a7c71785fb7034`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 17:06:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 17:06:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 17:07:09 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 12:59:35 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 12:59:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 12:59:36 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 13:00:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 13:00:20 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 13:00:21 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 13:00:21 GMT
WORKDIR /data
# Thu, 13 Dec 2018 13:00:22 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 13:00:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 13:00:23 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 13:00:23 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2d80930f583a9833248b9df64411ea5dcf76871a290dff6b5b8e6c9c7e3e4f`  
		Last Modified: Fri, 16 Nov 2018 17:09:36 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e9757baaea6fea7641dff63b08ee174d270a36123beb43c8bcc1eb14f030dd`  
		Last Modified: Fri, 16 Nov 2018 17:09:37 GMT  
		Size: 915.8 KB (915788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54091744f943723de81246759f8274c5da77cc1f86aa00180eea1bb485031053`  
		Last Modified: Thu, 13 Dec 2018 13:00:44 GMT  
		Size: 8.2 MB (8195239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1809313645cb682b6da77ef8ab4ce7239518569be5358db862ee2d85ee7fe0`  
		Last Modified: Thu, 13 Dec 2018 13:00:41 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7213247129d187fd271dc22a0f94be70d8681f04bed6142ad35107dad8cd4972`  
		Last Modified: Thu, 13 Dec 2018 13:00:41 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:388c08acc014c4010b6b168cbf54d8ce40a5c97da6d7566479cf43057ec906a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29738131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4405f4c0b58672a375ab0b6463c812f6f518b3f979b24d3611399739dcc4ea5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 23:18:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 23:18:33 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 23:19:30 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 13:51:50 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 13:51:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 13:51:51 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 13:53:19 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 13:53:20 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 13:53:21 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 13:53:22 GMT
WORKDIR /data
# Thu, 13 Dec 2018 13:53:22 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 13:53:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 13:53:24 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 13:53:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30486ebbbf15de4bae2ee331725f016847747a4b99f2a35d7e5499d3e6fa9ea`  
		Last Modified: Fri, 16 Nov 2018 23:27:15 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c396b63e865772d0a63c58fea87fe76a8daba403801b6b65a6bd1a3504e19f3`  
		Last Modified: Fri, 16 Nov 2018 23:27:15 GMT  
		Size: 908.0 KB (907972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c00f704c53543e09de1c8e2224901450af33e4cacb32e1f067caf64d4152728`  
		Last Modified: Thu, 13 Dec 2018 13:55:09 GMT  
		Size: 8.5 MB (8496585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13466d1789fd48cf30fc75863df4d3a5375d43fde4e08e74517cbb6743c61f66`  
		Last Modified: Thu, 13 Dec 2018 13:55:06 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10fcf8b7b74ad1ff43ff71e6e5352ee84d9dd4085bcf4b8f7f54898eb37f8594`  
		Last Modified: Thu, 13 Dec 2018 13:55:06 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12` - linux; 386

```console
$ docker pull redis@sha256:52c5b99e36cd9668177c08c775272a4af8ecf9f4967281332d6dae0476a1b5d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed62571ef5305703aa7e25487859d4e919f373f914e4b51141d952e863d86a56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:09:40 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 17 Nov 2018 06:09:40 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 06:10:01 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 14:21:40 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:21:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:21:40 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:22:27 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 14:22:28 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:22:28 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:22:28 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:22:28 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:22:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:22:29 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:22:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f12aaafb04623ca047b7fd06a3ee6c44815b18f2fd10d1c508e1416e5b4210`  
		Last Modified: Sat, 17 Nov 2018 06:14:19 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7798210102e9030bcff25d93adeb1c361988cacaff78a553c4e566544739d114`  
		Last Modified: Sat, 17 Nov 2018 06:14:20 GMT  
		Size: 920.1 KB (920077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619f28b95ae93df968ca3519467a7640e42e6e36e81d7ea7b318599488df9a50`  
		Last Modified: Thu, 13 Dec 2018 14:23:58 GMT  
		Size: 8.3 MB (8257754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e85081db86f4b118c218cdb2c7e4676aabd698cbea1834337c1c7f191c7e05`  
		Last Modified: Thu, 13 Dec 2018 14:23:56 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acaca037d26eb61add1674150301733ef67d300f583ac83462a960364ce14bde`  
		Last Modified: Thu, 13 Dec 2018 14:23:56 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12` - linux; ppc64le

```console
$ docker pull redis@sha256:62917c64f62fcb10b3481658f138c2eff9940c2c8c17fc6a84c7876f0796cdc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32525088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bd76297861161061b1517fb5beac66afa2cc620baef776ee17d86a9f0aa63b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:52:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 16:52:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 16:53:54 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 11:31:54 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 11:31:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 11:32:01 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 11:33:38 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 11:33:56 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 11:33:57 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 11:33:58 GMT
WORKDIR /data
# Thu, 13 Dec 2018 11:33:59 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 11:34:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 11:34:02 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 11:34:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0c5eb162bdb0306fe8f40fca03869ae40b121ab0599a7a5f26b2a47c064a16`  
		Last Modified: Fri, 16 Nov 2018 17:00:08 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf93e18136797b688758dafe1a4525b9d82cbf85c31cd036ddb244da71950c2`  
		Last Modified: Fri, 16 Nov 2018 17:00:08 GMT  
		Size: 909.7 KB (909734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76083525e5f290afab1340c5ec55c9c6557d0f62e30776c21d4ff245020dc8ae`  
		Last Modified: Thu, 13 Dec 2018 11:37:01 GMT  
		Size: 8.9 MB (8872347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd4897f0a6573220437d0714b115c165049eb5f0dd1e21cef8faf0c9aed0757`  
		Last Modified: Thu, 13 Dec 2018 11:36:57 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d238762945e665052a154a54b9f3e37de2ad651ad72d782b5b002bfdd3851560`  
		Last Modified: Thu, 13 Dec 2018 11:36:57 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12` - linux; s390x

```console
$ docker pull redis@sha256:852b74255763264f365a57337bb4a57d2abab6ae02a1ec88753e507b76490fc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32354070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f18e8dfaed7cf492d4e09d094a81b1465b495c20029e04a8e6d4efde5cfb02e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:03:01 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 19:03:01 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 19:03:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 14:06:03 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:06:03 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:06:04 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:06:35 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 14:06:36 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:06:36 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:06:36 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:06:36 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:06:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:06:37 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:06:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1df1ec8504f31b83153c15e397b2b1bd84be3411dc4c29a44c46fb33346c47`  
		Last Modified: Fri, 16 Nov 2018 19:06:06 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff16e78a01a74d4790f4731e304c3db33582d2979c3ada740370ce986ef9bb4e`  
		Last Modified: Fri, 16 Nov 2018 19:06:09 GMT  
		Size: 926.8 KB (926750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77ab61a8d40a23d5561aaabe7403341bcf8e2f61000fecd17e33bf090155b4f`  
		Last Modified: Thu, 13 Dec 2018 14:07:37 GMT  
		Size: 9.1 MB (9090344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f81c44678a3ee81683b7000e6113f99c9b2eda73aef3843090ed849f155c84`  
		Last Modified: Thu, 13 Dec 2018 14:07:35 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0cc74259a1b9fdf6c4cb997d42b610a0de189cda2c48df5dfd902c42bb0584`  
		Last Modified: Thu, 13 Dec 2018 14:07:35 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.12-32bit`

```console
$ docker pull redis@sha256:3f9adf33d625b28f577fd24178565a8afc6217aec53ec2bcc992daeeef6fc936
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.12-32bit` - linux; amd64

```console
$ docker pull redis@sha256:e950072adcdeb55034461ad0bf96ff1952a4d3525133d3ea197e33ca1fdfd5eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36540170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:973ef6c0ea038be4c3cedf093fffb342e00afa89048233181ee661b4d9937908`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 12 Dec 2018 20:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 20:20:59 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 12 Dec 2018 20:21:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Dec 2018 20:21:00 GMT
VOLUME [/data]
# Wed, 12 Dec 2018 20:21:01 GMT
WORKDIR /data
# Wed, 12 Dec 2018 20:21:01 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 12 Dec 2018 20:21:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Dec 2018 20:21:02 GMT
EXPOSE 6379/tcp
# Wed, 12 Dec 2018 20:21:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01075eb98c180d1d50a4585ef953aeb72f1a350fb7bae5cca588a076ca253ca`  
		Last Modified: Wed, 12 Dec 2018 20:24:48 GMT  
		Size: 4.8 MB (4848315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a5e94fb12cb056350aae877206f7ed2d4e3169a3fe8b1b6409eaff14f0aea0`  
		Last Modified: Wed, 12 Dec 2018 20:24:48 GMT  
		Size: 8.3 MB (8262026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d309a97a1f5de51bfedbfd5698a272dcff19833cdd99a391e38f0350577c430`  
		Last Modified: Wed, 12 Dec 2018 20:24:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed03bd268df37e30fdcc898bd60c75b88e6bc0144be1c494b36cad2555879c85`  
		Last Modified: Wed, 12 Dec 2018 20:24:47 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.12-32bit-stretch`

```console
$ docker pull redis@sha256:3f9adf33d625b28f577fd24178565a8afc6217aec53ec2bcc992daeeef6fc936
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.12-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:e950072adcdeb55034461ad0bf96ff1952a4d3525133d3ea197e33ca1fdfd5eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36540170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:973ef6c0ea038be4c3cedf093fffb342e00afa89048233181ee661b4d9937908`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 12 Dec 2018 20:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 20:20:59 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 12 Dec 2018 20:21:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Dec 2018 20:21:00 GMT
VOLUME [/data]
# Wed, 12 Dec 2018 20:21:01 GMT
WORKDIR /data
# Wed, 12 Dec 2018 20:21:01 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 12 Dec 2018 20:21:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Dec 2018 20:21:02 GMT
EXPOSE 6379/tcp
# Wed, 12 Dec 2018 20:21:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01075eb98c180d1d50a4585ef953aeb72f1a350fb7bae5cca588a076ca253ca`  
		Last Modified: Wed, 12 Dec 2018 20:24:48 GMT  
		Size: 4.8 MB (4848315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a5e94fb12cb056350aae877206f7ed2d4e3169a3fe8b1b6409eaff14f0aea0`  
		Last Modified: Wed, 12 Dec 2018 20:24:48 GMT  
		Size: 8.3 MB (8262026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d309a97a1f5de51bfedbfd5698a272dcff19833cdd99a391e38f0350577c430`  
		Last Modified: Wed, 12 Dec 2018 20:24:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed03bd268df37e30fdcc898bd60c75b88e6bc0144be1c494b36cad2555879c85`  
		Last Modified: Wed, 12 Dec 2018 20:24:47 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.12-alpine`

```console
$ docker pull redis@sha256:83a686210acbcd4d3cb965773ae7a005564796b6281c39d309ef2ceb889e19f9
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
$ docker pull redis@sha256:020c22bcd7292d513380bc1df6aa842be3a07679f6558270a193d4ac1c7afdc2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12053404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:101062d624546375497d4860f925e585553fac0f619fdd736b4d928275bdbea4`
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
# Wed, 12 Dec 2018 20:21:34 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 12 Dec 2018 20:21:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 12 Dec 2018 20:21:35 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 12 Dec 2018 20:22:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Dec 2018 20:22:24 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Dec 2018 20:22:24 GMT
VOLUME [/data]
# Wed, 12 Dec 2018 20:22:25 GMT
WORKDIR /data
# Wed, 12 Dec 2018 20:22:25 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 12 Dec 2018 20:22:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Dec 2018 20:22:26 GMT
EXPOSE 6379/tcp
# Wed, 12 Dec 2018 20:22:26 GMT
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
	-	`sha256:50b36025d3dfa7f4a94cd176205dbd91a07d9d00de6c1ec65563de7269845e4f`  
		Last Modified: Wed, 12 Dec 2018 20:27:17 GMT  
		Size: 9.4 MB (9442579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0bfcf36ab8edb9f330b3273f3a92b5871df83f2155dbee3d4a419fb382c691`  
		Last Modified: Wed, 12 Dec 2018 20:27:15 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1333fecc92555fd9f9afd264751d231b27be5699cb28881595ad2aa443498a`  
		Last Modified: Wed, 12 Dec 2018 20:27:15 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:18aae071e8add6c69b3f738895801f88a6ac0da68e714120f7746e7aa1f4e6ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8399499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17e65a31cc7bb041f64c66e44b159b1f9c808e54a0ec5f67d9362fcc216c2b40`
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
# Thu, 13 Dec 2018 08:49:32 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 08:49:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 08:49:34 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 08:53:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 08:53:23 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 08:53:25 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 08:53:26 GMT
WORKDIR /data
# Thu, 13 Dec 2018 08:53:28 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 13 Dec 2018 08:53:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 08:53:31 GMT
EXPOSE 6379
# Thu, 13 Dec 2018 08:53:32 GMT
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
	-	`sha256:ec095b4cd6a4df6bdc37650613004eb9cc3a5d5add0bc452e5af3f8a08ea5eee`  
		Last Modified: Thu, 13 Dec 2018 08:53:56 GMT  
		Size: 5.8 MB (5846372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5182c145e8e816a9b8f7422ca9ab175501aa38640143389d98c2497f24474d`  
		Last Modified: Thu, 13 Dec 2018 08:53:51 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4468eb170545bbfdf475830ed1a5db94d496d19012959fb6f16b2db1549b441b`  
		Last Modified: Thu, 13 Dec 2018 08:53:51 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:ddb9690c46f333d9a6f2e5e4c5c599be016e56961ac7adf4788cc522bbda4e13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11702382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72788d7c0cc1fef5e6485d9211d341a3f36caabcfd02c5e1254df681ea0f506d`
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
# Thu, 13 Dec 2018 13:53:45 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 13:53:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 13:53:47 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 13:54:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 13:54:27 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 13:54:28 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 13:54:29 GMT
WORKDIR /data
# Thu, 13 Dec 2018 13:54:29 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 13:54:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 13:54:31 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 13:54:31 GMT
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
	-	`sha256:a9364a42e6c27232196f8b12b9e092d2d50cd99633e58dede342da8dc49ad27a`  
		Last Modified: Thu, 13 Dec 2018 13:56:32 GMT  
		Size: 9.2 MB (9200161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39e37934772561343377785e530b633425a3b9602699349a9cdf193a7b5de9e`  
		Last Modified: Thu, 13 Dec 2018 13:56:26 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5395c455f91985bc87e7bb9ede889c8b5cdcb509c69b46e52d0b4eb0a57b8334`  
		Last Modified: Thu, 13 Dec 2018 13:56:26 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-alpine` - linux; 386

```console
$ docker pull redis@sha256:122569b85079481fa27a36748b5f84d6547a6e09f774e5e84424122434e16eb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11660819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:885110ad31ccf3bd16659460106ed722a702b323dacf7c2a577bdd6edffd2dc2`
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
# Thu, 13 Dec 2018 14:22:49 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:22:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:22:49 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:23:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 14:23:23 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:23:23 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:23:23 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:23:24 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:23:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:23:24 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:23:24 GMT
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
	-	`sha256:377dd3ca5eef96b0ffa54577800c1e87db9c2cd5b1119403da81cc5171850c3d`  
		Last Modified: Thu, 13 Dec 2018 14:25:36 GMT  
		Size: 9.0 MB (8980863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544bf9369cf36057996f0970f7d51e4b5a22657dbb3b1e7ed65eab11e5a5e5a8`  
		Last Modified: Thu, 13 Dec 2018 14:25:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a280a7ddf481f43bc2d5329ecf7d373fc2f318fff0f15f71d6b4aa600d08dd7`  
		Last Modified: Thu, 13 Dec 2018 14:25:34 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:08bb626fb4010837ace09a1ac735ce39ee99cc4d4542552c977b19621f40546b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12139094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0321a1c4824f8471e22154ab2c7dd44114ec6944239319d871bd6385c720ba`
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
# Thu, 13 Dec 2018 11:34:52 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 11:34:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 11:34:55 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 11:35:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 11:35:38 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 11:35:39 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 11:35:41 GMT
WORKDIR /data
# Thu, 13 Dec 2018 11:35:44 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 11:35:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 11:35:47 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 11:35:49 GMT
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
	-	`sha256:16ee538288e27bbbec204ea7408fb0c774254956a5cc095aa3878a8b3d6b6344`  
		Last Modified: Thu, 13 Dec 2018 11:41:10 GMT  
		Size: 9.5 MB (9535016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a318980b9b3d11d5ca16fe991997c8f22d1bc0fe92d3e3585be2787678baaf28`  
		Last Modified: Thu, 13 Dec 2018 11:41:05 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c029ff154c0dfe9881f4d4ed9e8a1c887731184cbce720a5e40580b7791fa923`  
		Last Modified: Thu, 13 Dec 2018 11:41:05 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-alpine` - linux; s390x

```console
$ docker pull redis@sha256:62c45cd8369e70e423c6c014f055f96b6a175f7d86600204f1c1795b10393bbf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12299818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c16ddf225fe340db4740fc5c9f1d6c512175432d4ed8c2e823310cbcd11aaff`
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
# Thu, 13 Dec 2018 14:06:48 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:06:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:06:48 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:07:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 14:07:15 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:07:15 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:07:16 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:07:16 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:07:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:07:16 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:07:16 GMT
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
	-	`sha256:c3917ed4e4e9e5885351f6049749d9e3cfa40f137d98b5b789b0c2d04d372c4e`  
		Last Modified: Thu, 13 Dec 2018 14:08:11 GMT  
		Size: 9.6 MB (9582325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bfa6f424824c387e98145f71e0365fadf533c342dd3ff536165e62d6626e97`  
		Last Modified: Thu, 13 Dec 2018 14:08:09 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68c638bab051bd470ac344403d5ea6e1519ca23f08ef121d879f94fd3457ab7`  
		Last Modified: Thu, 13 Dec 2018 14:08:09 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.12-alpine3.8`

```console
$ docker pull redis@sha256:83a686210acbcd4d3cb965773ae7a005564796b6281c39d309ef2ceb889e19f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4.0.12-alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:020c22bcd7292d513380bc1df6aa842be3a07679f6558270a193d4ac1c7afdc2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12053404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:101062d624546375497d4860f925e585553fac0f619fdd736b4d928275bdbea4`
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
# Wed, 12 Dec 2018 20:21:34 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 12 Dec 2018 20:21:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 12 Dec 2018 20:21:35 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 12 Dec 2018 20:22:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Dec 2018 20:22:24 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Dec 2018 20:22:24 GMT
VOLUME [/data]
# Wed, 12 Dec 2018 20:22:25 GMT
WORKDIR /data
# Wed, 12 Dec 2018 20:22:25 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 12 Dec 2018 20:22:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Dec 2018 20:22:26 GMT
EXPOSE 6379/tcp
# Wed, 12 Dec 2018 20:22:26 GMT
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
	-	`sha256:50b36025d3dfa7f4a94cd176205dbd91a07d9d00de6c1ec65563de7269845e4f`  
		Last Modified: Wed, 12 Dec 2018 20:27:17 GMT  
		Size: 9.4 MB (9442579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0bfcf36ab8edb9f330b3273f3a92b5871df83f2155dbee3d4a419fb382c691`  
		Last Modified: Wed, 12 Dec 2018 20:27:15 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1333fecc92555fd9f9afd264751d231b27be5699cb28881595ad2aa443498a`  
		Last Modified: Wed, 12 Dec 2018 20:27:15 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-alpine3.8` - linux; arm variant v6

```console
$ docker pull redis@sha256:18aae071e8add6c69b3f738895801f88a6ac0da68e714120f7746e7aa1f4e6ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8399499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17e65a31cc7bb041f64c66e44b159b1f9c808e54a0ec5f67d9362fcc216c2b40`
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
# Thu, 13 Dec 2018 08:49:32 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 08:49:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 08:49:34 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 08:53:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 08:53:23 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 08:53:25 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 08:53:26 GMT
WORKDIR /data
# Thu, 13 Dec 2018 08:53:28 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 13 Dec 2018 08:53:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 08:53:31 GMT
EXPOSE 6379
# Thu, 13 Dec 2018 08:53:32 GMT
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
	-	`sha256:ec095b4cd6a4df6bdc37650613004eb9cc3a5d5add0bc452e5af3f8a08ea5eee`  
		Last Modified: Thu, 13 Dec 2018 08:53:56 GMT  
		Size: 5.8 MB (5846372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5182c145e8e816a9b8f7422ca9ab175501aa38640143389d98c2497f24474d`  
		Last Modified: Thu, 13 Dec 2018 08:53:51 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4468eb170545bbfdf475830ed1a5db94d496d19012959fb6f16b2db1549b441b`  
		Last Modified: Thu, 13 Dec 2018 08:53:51 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-alpine3.8` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:ddb9690c46f333d9a6f2e5e4c5c599be016e56961ac7adf4788cc522bbda4e13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11702382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72788d7c0cc1fef5e6485d9211d341a3f36caabcfd02c5e1254df681ea0f506d`
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
# Thu, 13 Dec 2018 13:53:45 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 13:53:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 13:53:47 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 13:54:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 13:54:27 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 13:54:28 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 13:54:29 GMT
WORKDIR /data
# Thu, 13 Dec 2018 13:54:29 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 13:54:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 13:54:31 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 13:54:31 GMT
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
	-	`sha256:a9364a42e6c27232196f8b12b9e092d2d50cd99633e58dede342da8dc49ad27a`  
		Last Modified: Thu, 13 Dec 2018 13:56:32 GMT  
		Size: 9.2 MB (9200161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39e37934772561343377785e530b633425a3b9602699349a9cdf193a7b5de9e`  
		Last Modified: Thu, 13 Dec 2018 13:56:26 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5395c455f91985bc87e7bb9ede889c8b5cdcb509c69b46e52d0b4eb0a57b8334`  
		Last Modified: Thu, 13 Dec 2018 13:56:26 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-alpine3.8` - linux; 386

```console
$ docker pull redis@sha256:122569b85079481fa27a36748b5f84d6547a6e09f774e5e84424122434e16eb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11660819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:885110ad31ccf3bd16659460106ed722a702b323dacf7c2a577bdd6edffd2dc2`
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
# Thu, 13 Dec 2018 14:22:49 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:22:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:22:49 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:23:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 14:23:23 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:23:23 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:23:23 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:23:24 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:23:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:23:24 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:23:24 GMT
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
	-	`sha256:377dd3ca5eef96b0ffa54577800c1e87db9c2cd5b1119403da81cc5171850c3d`  
		Last Modified: Thu, 13 Dec 2018 14:25:36 GMT  
		Size: 9.0 MB (8980863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544bf9369cf36057996f0970f7d51e4b5a22657dbb3b1e7ed65eab11e5a5e5a8`  
		Last Modified: Thu, 13 Dec 2018 14:25:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a280a7ddf481f43bc2d5329ecf7d373fc2f318fff0f15f71d6b4aa600d08dd7`  
		Last Modified: Thu, 13 Dec 2018 14:25:34 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-alpine3.8` - linux; ppc64le

```console
$ docker pull redis@sha256:08bb626fb4010837ace09a1ac735ce39ee99cc4d4542552c977b19621f40546b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12139094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0321a1c4824f8471e22154ab2c7dd44114ec6944239319d871bd6385c720ba`
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
# Thu, 13 Dec 2018 11:34:52 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 11:34:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 11:34:55 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 11:35:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 11:35:38 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 11:35:39 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 11:35:41 GMT
WORKDIR /data
# Thu, 13 Dec 2018 11:35:44 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 11:35:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 11:35:47 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 11:35:49 GMT
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
	-	`sha256:16ee538288e27bbbec204ea7408fb0c774254956a5cc095aa3878a8b3d6b6344`  
		Last Modified: Thu, 13 Dec 2018 11:41:10 GMT  
		Size: 9.5 MB (9535016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a318980b9b3d11d5ca16fe991997c8f22d1bc0fe92d3e3585be2787678baaf28`  
		Last Modified: Thu, 13 Dec 2018 11:41:05 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c029ff154c0dfe9881f4d4ed9e8a1c887731184cbce720a5e40580b7791fa923`  
		Last Modified: Thu, 13 Dec 2018 11:41:05 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-alpine3.8` - linux; s390x

```console
$ docker pull redis@sha256:62c45cd8369e70e423c6c014f055f96b6a175f7d86600204f1c1795b10393bbf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12299818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c16ddf225fe340db4740fc5c9f1d6c512175432d4ed8c2e823310cbcd11aaff`
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
# Thu, 13 Dec 2018 14:06:48 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:06:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:06:48 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:07:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 14:07:15 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:07:15 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:07:16 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:07:16 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:07:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:07:16 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:07:16 GMT
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
	-	`sha256:c3917ed4e4e9e5885351f6049749d9e3cfa40f137d98b5b789b0c2d04d372c4e`  
		Last Modified: Thu, 13 Dec 2018 14:08:11 GMT  
		Size: 9.6 MB (9582325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bfa6f424824c387e98145f71e0365fadf533c342dd3ff536165e62d6626e97`  
		Last Modified: Thu, 13 Dec 2018 14:08:09 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68c638bab051bd470ac344403d5ea6e1519ca23f08ef121d879f94fd3457ab7`  
		Last Modified: Thu, 13 Dec 2018 14:08:09 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.12-stretch`

```console
$ docker pull redis@sha256:bc6d2f2369b142e502e90693dcb29db6f80e70b072b96d64ccee754279b81c86
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
$ docker pull redis@sha256:3bb7b6cf91233b36662ac6accb3ec6bc400bdfc91685265025724df59c6bf83b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32126072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b00f982f9bf7cf1931020b1460429ba86cba6b82054fd1280633096aa9364acf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 12 Dec 2018 20:19:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 12 Dec 2018 20:19:28 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Dec 2018 20:19:28 GMT
VOLUME [/data]
# Wed, 12 Dec 2018 20:19:28 GMT
WORKDIR /data
# Wed, 12 Dec 2018 20:19:29 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 12 Dec 2018 20:19:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Dec 2018 20:19:29 GMT
EXPOSE 6379/tcp
# Wed, 12 Dec 2018 20:19:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b277a6a176ed426bc99e9d1490d67d9a67bf55b7d7d575a12ab013e66d5daf`  
		Last Modified: Wed, 12 Dec 2018 20:23:01 GMT  
		Size: 8.7 MB (8696247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18816bfc8c42f450ff65197bc4acf746e012199b5bd20c46ec8fab27b3269cd7`  
		Last Modified: Wed, 12 Dec 2018 20:22:59 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8353860f55df845ba04ecef31075569274ac3525eacaba877d63e127cf3aa6`  
		Last Modified: Wed, 12 Dec 2018 20:22:59 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:a601a05c4dfffca154582178761ed63ee6eaedc4a30d0e982dfa7cb6a9a7d612
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30518771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2081181bce6d4ce06d344a47aaa0f21421b93fa08960619136e1bde779124033`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:22:27 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 16:22:28 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 16:22:54 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 10:26:58 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 10:26:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 10:26:59 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 10:27:41 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 10:27:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 10:27:42 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 10:27:43 GMT
WORKDIR /data
# Thu, 13 Dec 2018 10:27:44 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 10:27:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 10:27:44 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 10:27:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdf922272e491614fbf43a202c8e5874d54801ca5d750d160381aeeac02e9bc`  
		Last Modified: Fri, 16 Nov 2018 16:25:29 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465a419c6c3730862c73a0d4d6a342aada4ca5166e563783aca7d1634ff7da4c`  
		Last Modified: Fri, 16 Nov 2018 16:25:29 GMT  
		Size: 931.1 KB (931113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc718362f8d45d088dff700295c03588c85904a770a55f288193c12ec4e4b3a`  
		Last Modified: Thu, 13 Dec 2018 10:28:08 GMT  
		Size: 8.4 MB (8422365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520abafd57dfdf49873fc45c8e70c5f0289f85281d080abeb5a2b124c00d8cd6`  
		Last Modified: Thu, 13 Dec 2018 10:28:05 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39f424b693ddee5f946124c9dda7517e2d4dba69e5fe67317e952959d2dd0a1`  
		Last Modified: Thu, 13 Dec 2018 10:28:06 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:cb7976f9194609ed196b9cc57b2ae1900094b72053e760bb66802d6647749038
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28383373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5673b0f4252bcbd0d2cd1472742d73d318f03e5b4ab0ecc028a7c71785fb7034`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 17:06:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 17:06:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 17:07:09 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 12:59:35 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 12:59:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 12:59:36 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 13:00:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 13:00:20 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 13:00:21 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 13:00:21 GMT
WORKDIR /data
# Thu, 13 Dec 2018 13:00:22 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 13:00:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 13:00:23 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 13:00:23 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2d80930f583a9833248b9df64411ea5dcf76871a290dff6b5b8e6c9c7e3e4f`  
		Last Modified: Fri, 16 Nov 2018 17:09:36 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e9757baaea6fea7641dff63b08ee174d270a36123beb43c8bcc1eb14f030dd`  
		Last Modified: Fri, 16 Nov 2018 17:09:37 GMT  
		Size: 915.8 KB (915788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54091744f943723de81246759f8274c5da77cc1f86aa00180eea1bb485031053`  
		Last Modified: Thu, 13 Dec 2018 13:00:44 GMT  
		Size: 8.2 MB (8195239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1809313645cb682b6da77ef8ab4ce7239518569be5358db862ee2d85ee7fe0`  
		Last Modified: Thu, 13 Dec 2018 13:00:41 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7213247129d187fd271dc22a0f94be70d8681f04bed6142ad35107dad8cd4972`  
		Last Modified: Thu, 13 Dec 2018 13:00:41 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:388c08acc014c4010b6b168cbf54d8ce40a5c97da6d7566479cf43057ec906a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29738131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4405f4c0b58672a375ab0b6463c812f6f518b3f979b24d3611399739dcc4ea5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 23:18:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 23:18:33 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 23:19:30 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 13:51:50 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 13:51:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 13:51:51 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 13:53:19 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 13:53:20 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 13:53:21 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 13:53:22 GMT
WORKDIR /data
# Thu, 13 Dec 2018 13:53:22 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 13:53:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 13:53:24 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 13:53:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30486ebbbf15de4bae2ee331725f016847747a4b99f2a35d7e5499d3e6fa9ea`  
		Last Modified: Fri, 16 Nov 2018 23:27:15 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c396b63e865772d0a63c58fea87fe76a8daba403801b6b65a6bd1a3504e19f3`  
		Last Modified: Fri, 16 Nov 2018 23:27:15 GMT  
		Size: 908.0 KB (907972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c00f704c53543e09de1c8e2224901450af33e4cacb32e1f067caf64d4152728`  
		Last Modified: Thu, 13 Dec 2018 13:55:09 GMT  
		Size: 8.5 MB (8496585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13466d1789fd48cf30fc75863df4d3a5375d43fde4e08e74517cbb6743c61f66`  
		Last Modified: Thu, 13 Dec 2018 13:55:06 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10fcf8b7b74ad1ff43ff71e6e5352ee84d9dd4085bcf4b8f7f54898eb37f8594`  
		Last Modified: Thu, 13 Dec 2018 13:55:06 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-stretch` - linux; 386

```console
$ docker pull redis@sha256:52c5b99e36cd9668177c08c775272a4af8ecf9f4967281332d6dae0476a1b5d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed62571ef5305703aa7e25487859d4e919f373f914e4b51141d952e863d86a56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:09:40 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 17 Nov 2018 06:09:40 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 06:10:01 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 14:21:40 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:21:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:21:40 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:22:27 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 14:22:28 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:22:28 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:22:28 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:22:28 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:22:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:22:29 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:22:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f12aaafb04623ca047b7fd06a3ee6c44815b18f2fd10d1c508e1416e5b4210`  
		Last Modified: Sat, 17 Nov 2018 06:14:19 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7798210102e9030bcff25d93adeb1c361988cacaff78a553c4e566544739d114`  
		Last Modified: Sat, 17 Nov 2018 06:14:20 GMT  
		Size: 920.1 KB (920077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619f28b95ae93df968ca3519467a7640e42e6e36e81d7ea7b318599488df9a50`  
		Last Modified: Thu, 13 Dec 2018 14:23:58 GMT  
		Size: 8.3 MB (8257754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e85081db86f4b118c218cdb2c7e4676aabd698cbea1834337c1c7f191c7e05`  
		Last Modified: Thu, 13 Dec 2018 14:23:56 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acaca037d26eb61add1674150301733ef67d300f583ac83462a960364ce14bde`  
		Last Modified: Thu, 13 Dec 2018 14:23:56 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:62917c64f62fcb10b3481658f138c2eff9940c2c8c17fc6a84c7876f0796cdc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32525088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bd76297861161061b1517fb5beac66afa2cc620baef776ee17d86a9f0aa63b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:52:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 16:52:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 16:53:54 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 11:31:54 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 11:31:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 11:32:01 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 11:33:38 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 11:33:56 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 11:33:57 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 11:33:58 GMT
WORKDIR /data
# Thu, 13 Dec 2018 11:33:59 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 11:34:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 11:34:02 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 11:34:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0c5eb162bdb0306fe8f40fca03869ae40b121ab0599a7a5f26b2a47c064a16`  
		Last Modified: Fri, 16 Nov 2018 17:00:08 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf93e18136797b688758dafe1a4525b9d82cbf85c31cd036ddb244da71950c2`  
		Last Modified: Fri, 16 Nov 2018 17:00:08 GMT  
		Size: 909.7 KB (909734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76083525e5f290afab1340c5ec55c9c6557d0f62e30776c21d4ff245020dc8ae`  
		Last Modified: Thu, 13 Dec 2018 11:37:01 GMT  
		Size: 8.9 MB (8872347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd4897f0a6573220437d0714b115c165049eb5f0dd1e21cef8faf0c9aed0757`  
		Last Modified: Thu, 13 Dec 2018 11:36:57 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d238762945e665052a154a54b9f3e37de2ad651ad72d782b5b002bfdd3851560`  
		Last Modified: Thu, 13 Dec 2018 11:36:57 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.12-stretch` - linux; s390x

```console
$ docker pull redis@sha256:852b74255763264f365a57337bb4a57d2abab6ae02a1ec88753e507b76490fc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32354070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f18e8dfaed7cf492d4e09d094a81b1465b495c20029e04a8e6d4efde5cfb02e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:03:01 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 19:03:01 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 19:03:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 14:06:03 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:06:03 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:06:04 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:06:35 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 14:06:36 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:06:36 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:06:36 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:06:36 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:06:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:06:37 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:06:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1df1ec8504f31b83153c15e397b2b1bd84be3411dc4c29a44c46fb33346c47`  
		Last Modified: Fri, 16 Nov 2018 19:06:06 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff16e78a01a74d4790f4731e304c3db33582d2979c3ada740370ce986ef9bb4e`  
		Last Modified: Fri, 16 Nov 2018 19:06:09 GMT  
		Size: 926.8 KB (926750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77ab61a8d40a23d5561aaabe7403341bcf8e2f61000fecd17e33bf090155b4f`  
		Last Modified: Thu, 13 Dec 2018 14:07:37 GMT  
		Size: 9.1 MB (9090344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f81c44678a3ee81683b7000e6113f99c9b2eda73aef3843090ed849f155c84`  
		Last Modified: Thu, 13 Dec 2018 14:07:35 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0cc74259a1b9fdf6c4cb997d42b610a0de189cda2c48df5dfd902c42bb0584`  
		Last Modified: Thu, 13 Dec 2018 14:07:35 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit`

```console
$ docker pull redis@sha256:3f9adf33d625b28f577fd24178565a8afc6217aec53ec2bcc992daeeef6fc936
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:e950072adcdeb55034461ad0bf96ff1952a4d3525133d3ea197e33ca1fdfd5eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36540170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:973ef6c0ea038be4c3cedf093fffb342e00afa89048233181ee661b4d9937908`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 12 Dec 2018 20:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 20:20:59 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 12 Dec 2018 20:21:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Dec 2018 20:21:00 GMT
VOLUME [/data]
# Wed, 12 Dec 2018 20:21:01 GMT
WORKDIR /data
# Wed, 12 Dec 2018 20:21:01 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 12 Dec 2018 20:21:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Dec 2018 20:21:02 GMT
EXPOSE 6379/tcp
# Wed, 12 Dec 2018 20:21:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01075eb98c180d1d50a4585ef953aeb72f1a350fb7bae5cca588a076ca253ca`  
		Last Modified: Wed, 12 Dec 2018 20:24:48 GMT  
		Size: 4.8 MB (4848315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a5e94fb12cb056350aae877206f7ed2d4e3169a3fe8b1b6409eaff14f0aea0`  
		Last Modified: Wed, 12 Dec 2018 20:24:48 GMT  
		Size: 8.3 MB (8262026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d309a97a1f5de51bfedbfd5698a272dcff19833cdd99a391e38f0350577c430`  
		Last Modified: Wed, 12 Dec 2018 20:24:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed03bd268df37e30fdcc898bd60c75b88e6bc0144be1c494b36cad2555879c85`  
		Last Modified: Wed, 12 Dec 2018 20:24:47 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit-stretch`

```console
$ docker pull redis@sha256:3f9adf33d625b28f577fd24178565a8afc6217aec53ec2bcc992daeeef6fc936
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:e950072adcdeb55034461ad0bf96ff1952a4d3525133d3ea197e33ca1fdfd5eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36540170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:973ef6c0ea038be4c3cedf093fffb342e00afa89048233181ee661b4d9937908`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 12 Dec 2018 20:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 20:20:59 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 12 Dec 2018 20:21:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Dec 2018 20:21:00 GMT
VOLUME [/data]
# Wed, 12 Dec 2018 20:21:01 GMT
WORKDIR /data
# Wed, 12 Dec 2018 20:21:01 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 12 Dec 2018 20:21:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Dec 2018 20:21:02 GMT
EXPOSE 6379/tcp
# Wed, 12 Dec 2018 20:21:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01075eb98c180d1d50a4585ef953aeb72f1a350fb7bae5cca588a076ca253ca`  
		Last Modified: Wed, 12 Dec 2018 20:24:48 GMT  
		Size: 4.8 MB (4848315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a5e94fb12cb056350aae877206f7ed2d4e3169a3fe8b1b6409eaff14f0aea0`  
		Last Modified: Wed, 12 Dec 2018 20:24:48 GMT  
		Size: 8.3 MB (8262026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d309a97a1f5de51bfedbfd5698a272dcff19833cdd99a391e38f0350577c430`  
		Last Modified: Wed, 12 Dec 2018 20:24:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed03bd268df37e30fdcc898bd60c75b88e6bc0144be1c494b36cad2555879c85`  
		Last Modified: Wed, 12 Dec 2018 20:24:47 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine`

```console
$ docker pull redis@sha256:83a686210acbcd4d3cb965773ae7a005564796b6281c39d309ef2ceb889e19f9
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
$ docker pull redis@sha256:020c22bcd7292d513380bc1df6aa842be3a07679f6558270a193d4ac1c7afdc2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12053404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:101062d624546375497d4860f925e585553fac0f619fdd736b4d928275bdbea4`
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
# Wed, 12 Dec 2018 20:21:34 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 12 Dec 2018 20:21:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 12 Dec 2018 20:21:35 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 12 Dec 2018 20:22:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Dec 2018 20:22:24 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Dec 2018 20:22:24 GMT
VOLUME [/data]
# Wed, 12 Dec 2018 20:22:25 GMT
WORKDIR /data
# Wed, 12 Dec 2018 20:22:25 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 12 Dec 2018 20:22:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Dec 2018 20:22:26 GMT
EXPOSE 6379/tcp
# Wed, 12 Dec 2018 20:22:26 GMT
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
	-	`sha256:50b36025d3dfa7f4a94cd176205dbd91a07d9d00de6c1ec65563de7269845e4f`  
		Last Modified: Wed, 12 Dec 2018 20:27:17 GMT  
		Size: 9.4 MB (9442579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0bfcf36ab8edb9f330b3273f3a92b5871df83f2155dbee3d4a419fb382c691`  
		Last Modified: Wed, 12 Dec 2018 20:27:15 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1333fecc92555fd9f9afd264751d231b27be5699cb28881595ad2aa443498a`  
		Last Modified: Wed, 12 Dec 2018 20:27:15 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:18aae071e8add6c69b3f738895801f88a6ac0da68e714120f7746e7aa1f4e6ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8399499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17e65a31cc7bb041f64c66e44b159b1f9c808e54a0ec5f67d9362fcc216c2b40`
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
# Thu, 13 Dec 2018 08:49:32 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 08:49:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 08:49:34 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 08:53:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 08:53:23 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 08:53:25 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 08:53:26 GMT
WORKDIR /data
# Thu, 13 Dec 2018 08:53:28 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 13 Dec 2018 08:53:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 08:53:31 GMT
EXPOSE 6379
# Thu, 13 Dec 2018 08:53:32 GMT
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
	-	`sha256:ec095b4cd6a4df6bdc37650613004eb9cc3a5d5add0bc452e5af3f8a08ea5eee`  
		Last Modified: Thu, 13 Dec 2018 08:53:56 GMT  
		Size: 5.8 MB (5846372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5182c145e8e816a9b8f7422ca9ab175501aa38640143389d98c2497f24474d`  
		Last Modified: Thu, 13 Dec 2018 08:53:51 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4468eb170545bbfdf475830ed1a5db94d496d19012959fb6f16b2db1549b441b`  
		Last Modified: Thu, 13 Dec 2018 08:53:51 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:ddb9690c46f333d9a6f2e5e4c5c599be016e56961ac7adf4788cc522bbda4e13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11702382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72788d7c0cc1fef5e6485d9211d341a3f36caabcfd02c5e1254df681ea0f506d`
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
# Thu, 13 Dec 2018 13:53:45 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 13:53:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 13:53:47 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 13:54:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 13:54:27 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 13:54:28 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 13:54:29 GMT
WORKDIR /data
# Thu, 13 Dec 2018 13:54:29 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 13:54:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 13:54:31 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 13:54:31 GMT
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
	-	`sha256:a9364a42e6c27232196f8b12b9e092d2d50cd99633e58dede342da8dc49ad27a`  
		Last Modified: Thu, 13 Dec 2018 13:56:32 GMT  
		Size: 9.2 MB (9200161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39e37934772561343377785e530b633425a3b9602699349a9cdf193a7b5de9e`  
		Last Modified: Thu, 13 Dec 2018 13:56:26 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5395c455f91985bc87e7bb9ede889c8b5cdcb509c69b46e52d0b4eb0a57b8334`  
		Last Modified: Thu, 13 Dec 2018 13:56:26 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; 386

```console
$ docker pull redis@sha256:122569b85079481fa27a36748b5f84d6547a6e09f774e5e84424122434e16eb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11660819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:885110ad31ccf3bd16659460106ed722a702b323dacf7c2a577bdd6edffd2dc2`
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
# Thu, 13 Dec 2018 14:22:49 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:22:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:22:49 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:23:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 14:23:23 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:23:23 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:23:23 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:23:24 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:23:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:23:24 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:23:24 GMT
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
	-	`sha256:377dd3ca5eef96b0ffa54577800c1e87db9c2cd5b1119403da81cc5171850c3d`  
		Last Modified: Thu, 13 Dec 2018 14:25:36 GMT  
		Size: 9.0 MB (8980863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544bf9369cf36057996f0970f7d51e4b5a22657dbb3b1e7ed65eab11e5a5e5a8`  
		Last Modified: Thu, 13 Dec 2018 14:25:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a280a7ddf481f43bc2d5329ecf7d373fc2f318fff0f15f71d6b4aa600d08dd7`  
		Last Modified: Thu, 13 Dec 2018 14:25:34 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:08bb626fb4010837ace09a1ac735ce39ee99cc4d4542552c977b19621f40546b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12139094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0321a1c4824f8471e22154ab2c7dd44114ec6944239319d871bd6385c720ba`
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
# Thu, 13 Dec 2018 11:34:52 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 11:34:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 11:34:55 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 11:35:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 11:35:38 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 11:35:39 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 11:35:41 GMT
WORKDIR /data
# Thu, 13 Dec 2018 11:35:44 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 11:35:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 11:35:47 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 11:35:49 GMT
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
	-	`sha256:16ee538288e27bbbec204ea7408fb0c774254956a5cc095aa3878a8b3d6b6344`  
		Last Modified: Thu, 13 Dec 2018 11:41:10 GMT  
		Size: 9.5 MB (9535016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a318980b9b3d11d5ca16fe991997c8f22d1bc0fe92d3e3585be2787678baaf28`  
		Last Modified: Thu, 13 Dec 2018 11:41:05 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c029ff154c0dfe9881f4d4ed9e8a1c887731184cbce720a5e40580b7791fa923`  
		Last Modified: Thu, 13 Dec 2018 11:41:05 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; s390x

```console
$ docker pull redis@sha256:62c45cd8369e70e423c6c014f055f96b6a175f7d86600204f1c1795b10393bbf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12299818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c16ddf225fe340db4740fc5c9f1d6c512175432d4ed8c2e823310cbcd11aaff`
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
# Thu, 13 Dec 2018 14:06:48 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:06:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:06:48 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:07:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 14:07:15 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:07:15 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:07:16 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:07:16 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:07:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:07:16 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:07:16 GMT
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
	-	`sha256:c3917ed4e4e9e5885351f6049749d9e3cfa40f137d98b5b789b0c2d04d372c4e`  
		Last Modified: Thu, 13 Dec 2018 14:08:11 GMT  
		Size: 9.6 MB (9582325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bfa6f424824c387e98145f71e0365fadf533c342dd3ff536165e62d6626e97`  
		Last Modified: Thu, 13 Dec 2018 14:08:09 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68c638bab051bd470ac344403d5ea6e1519ca23f08ef121d879f94fd3457ab7`  
		Last Modified: Thu, 13 Dec 2018 14:08:09 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine3.8`

```console
$ docker pull redis@sha256:83a686210acbcd4d3cb965773ae7a005564796b6281c39d309ef2ceb889e19f9
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
$ docker pull redis@sha256:020c22bcd7292d513380bc1df6aa842be3a07679f6558270a193d4ac1c7afdc2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12053404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:101062d624546375497d4860f925e585553fac0f619fdd736b4d928275bdbea4`
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
# Wed, 12 Dec 2018 20:21:34 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 12 Dec 2018 20:21:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 12 Dec 2018 20:21:35 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 12 Dec 2018 20:22:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Dec 2018 20:22:24 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Dec 2018 20:22:24 GMT
VOLUME [/data]
# Wed, 12 Dec 2018 20:22:25 GMT
WORKDIR /data
# Wed, 12 Dec 2018 20:22:25 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 12 Dec 2018 20:22:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Dec 2018 20:22:26 GMT
EXPOSE 6379/tcp
# Wed, 12 Dec 2018 20:22:26 GMT
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
	-	`sha256:50b36025d3dfa7f4a94cd176205dbd91a07d9d00de6c1ec65563de7269845e4f`  
		Last Modified: Wed, 12 Dec 2018 20:27:17 GMT  
		Size: 9.4 MB (9442579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0bfcf36ab8edb9f330b3273f3a92b5871df83f2155dbee3d4a419fb382c691`  
		Last Modified: Wed, 12 Dec 2018 20:27:15 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1333fecc92555fd9f9afd264751d231b27be5699cb28881595ad2aa443498a`  
		Last Modified: Wed, 12 Dec 2018 20:27:15 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.8` - linux; arm variant v6

```console
$ docker pull redis@sha256:18aae071e8add6c69b3f738895801f88a6ac0da68e714120f7746e7aa1f4e6ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8399499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17e65a31cc7bb041f64c66e44b159b1f9c808e54a0ec5f67d9362fcc216c2b40`
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
# Thu, 13 Dec 2018 08:49:32 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 08:49:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 08:49:34 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 08:53:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 08:53:23 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 08:53:25 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 08:53:26 GMT
WORKDIR /data
# Thu, 13 Dec 2018 08:53:28 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 13 Dec 2018 08:53:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 08:53:31 GMT
EXPOSE 6379
# Thu, 13 Dec 2018 08:53:32 GMT
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
	-	`sha256:ec095b4cd6a4df6bdc37650613004eb9cc3a5d5add0bc452e5af3f8a08ea5eee`  
		Last Modified: Thu, 13 Dec 2018 08:53:56 GMT  
		Size: 5.8 MB (5846372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5182c145e8e816a9b8f7422ca9ab175501aa38640143389d98c2497f24474d`  
		Last Modified: Thu, 13 Dec 2018 08:53:51 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4468eb170545bbfdf475830ed1a5db94d496d19012959fb6f16b2db1549b441b`  
		Last Modified: Thu, 13 Dec 2018 08:53:51 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.8` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:ddb9690c46f333d9a6f2e5e4c5c599be016e56961ac7adf4788cc522bbda4e13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11702382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72788d7c0cc1fef5e6485d9211d341a3f36caabcfd02c5e1254df681ea0f506d`
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
# Thu, 13 Dec 2018 13:53:45 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 13:53:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 13:53:47 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 13:54:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 13:54:27 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 13:54:28 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 13:54:29 GMT
WORKDIR /data
# Thu, 13 Dec 2018 13:54:29 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 13:54:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 13:54:31 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 13:54:31 GMT
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
	-	`sha256:a9364a42e6c27232196f8b12b9e092d2d50cd99633e58dede342da8dc49ad27a`  
		Last Modified: Thu, 13 Dec 2018 13:56:32 GMT  
		Size: 9.2 MB (9200161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39e37934772561343377785e530b633425a3b9602699349a9cdf193a7b5de9e`  
		Last Modified: Thu, 13 Dec 2018 13:56:26 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5395c455f91985bc87e7bb9ede889c8b5cdcb509c69b46e52d0b4eb0a57b8334`  
		Last Modified: Thu, 13 Dec 2018 13:56:26 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.8` - linux; 386

```console
$ docker pull redis@sha256:122569b85079481fa27a36748b5f84d6547a6e09f774e5e84424122434e16eb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11660819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:885110ad31ccf3bd16659460106ed722a702b323dacf7c2a577bdd6edffd2dc2`
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
# Thu, 13 Dec 2018 14:22:49 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:22:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:22:49 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:23:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 14:23:23 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:23:23 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:23:23 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:23:24 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:23:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:23:24 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:23:24 GMT
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
	-	`sha256:377dd3ca5eef96b0ffa54577800c1e87db9c2cd5b1119403da81cc5171850c3d`  
		Last Modified: Thu, 13 Dec 2018 14:25:36 GMT  
		Size: 9.0 MB (8980863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544bf9369cf36057996f0970f7d51e4b5a22657dbb3b1e7ed65eab11e5a5e5a8`  
		Last Modified: Thu, 13 Dec 2018 14:25:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a280a7ddf481f43bc2d5329ecf7d373fc2f318fff0f15f71d6b4aa600d08dd7`  
		Last Modified: Thu, 13 Dec 2018 14:25:34 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.8` - linux; ppc64le

```console
$ docker pull redis@sha256:08bb626fb4010837ace09a1ac735ce39ee99cc4d4542552c977b19621f40546b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12139094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0321a1c4824f8471e22154ab2c7dd44114ec6944239319d871bd6385c720ba`
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
# Thu, 13 Dec 2018 11:34:52 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 11:34:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 11:34:55 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 11:35:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 11:35:38 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 11:35:39 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 11:35:41 GMT
WORKDIR /data
# Thu, 13 Dec 2018 11:35:44 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 11:35:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 11:35:47 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 11:35:49 GMT
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
	-	`sha256:16ee538288e27bbbec204ea7408fb0c774254956a5cc095aa3878a8b3d6b6344`  
		Last Modified: Thu, 13 Dec 2018 11:41:10 GMT  
		Size: 9.5 MB (9535016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a318980b9b3d11d5ca16fe991997c8f22d1bc0fe92d3e3585be2787678baaf28`  
		Last Modified: Thu, 13 Dec 2018 11:41:05 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c029ff154c0dfe9881f4d4ed9e8a1c887731184cbce720a5e40580b7791fa923`  
		Last Modified: Thu, 13 Dec 2018 11:41:05 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.8` - linux; s390x

```console
$ docker pull redis@sha256:62c45cd8369e70e423c6c014f055f96b6a175f7d86600204f1c1795b10393bbf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12299818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c16ddf225fe340db4740fc5c9f1d6c512175432d4ed8c2e823310cbcd11aaff`
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
# Thu, 13 Dec 2018 14:06:48 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:06:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:06:48 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:07:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 14:07:15 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:07:15 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:07:16 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:07:16 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:07:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:07:16 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:07:16 GMT
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
	-	`sha256:c3917ed4e4e9e5885351f6049749d9e3cfa40f137d98b5b789b0c2d04d372c4e`  
		Last Modified: Thu, 13 Dec 2018 14:08:11 GMT  
		Size: 9.6 MB (9582325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bfa6f424824c387e98145f71e0365fadf533c342dd3ff536165e62d6626e97`  
		Last Modified: Thu, 13 Dec 2018 14:08:09 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68c638bab051bd470ac344403d5ea6e1519ca23f08ef121d879f94fd3457ab7`  
		Last Modified: Thu, 13 Dec 2018 14:08:09 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-stretch`

```console
$ docker pull redis@sha256:bc6d2f2369b142e502e90693dcb29db6f80e70b072b96d64ccee754279b81c86
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
$ docker pull redis@sha256:3bb7b6cf91233b36662ac6accb3ec6bc400bdfc91685265025724df59c6bf83b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32126072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b00f982f9bf7cf1931020b1460429ba86cba6b82054fd1280633096aa9364acf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 12 Dec 2018 20:19:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 12 Dec 2018 20:19:28 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Dec 2018 20:19:28 GMT
VOLUME [/data]
# Wed, 12 Dec 2018 20:19:28 GMT
WORKDIR /data
# Wed, 12 Dec 2018 20:19:29 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 12 Dec 2018 20:19:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Dec 2018 20:19:29 GMT
EXPOSE 6379/tcp
# Wed, 12 Dec 2018 20:19:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b277a6a176ed426bc99e9d1490d67d9a67bf55b7d7d575a12ab013e66d5daf`  
		Last Modified: Wed, 12 Dec 2018 20:23:01 GMT  
		Size: 8.7 MB (8696247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18816bfc8c42f450ff65197bc4acf746e012199b5bd20c46ec8fab27b3269cd7`  
		Last Modified: Wed, 12 Dec 2018 20:22:59 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8353860f55df845ba04ecef31075569274ac3525eacaba877d63e127cf3aa6`  
		Last Modified: Wed, 12 Dec 2018 20:22:59 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:a601a05c4dfffca154582178761ed63ee6eaedc4a30d0e982dfa7cb6a9a7d612
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30518771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2081181bce6d4ce06d344a47aaa0f21421b93fa08960619136e1bde779124033`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:22:27 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 16:22:28 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 16:22:54 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 10:26:58 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 10:26:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 10:26:59 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 10:27:41 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 10:27:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 10:27:42 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 10:27:43 GMT
WORKDIR /data
# Thu, 13 Dec 2018 10:27:44 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 10:27:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 10:27:44 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 10:27:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdf922272e491614fbf43a202c8e5874d54801ca5d750d160381aeeac02e9bc`  
		Last Modified: Fri, 16 Nov 2018 16:25:29 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465a419c6c3730862c73a0d4d6a342aada4ca5166e563783aca7d1634ff7da4c`  
		Last Modified: Fri, 16 Nov 2018 16:25:29 GMT  
		Size: 931.1 KB (931113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc718362f8d45d088dff700295c03588c85904a770a55f288193c12ec4e4b3a`  
		Last Modified: Thu, 13 Dec 2018 10:28:08 GMT  
		Size: 8.4 MB (8422365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520abafd57dfdf49873fc45c8e70c5f0289f85281d080abeb5a2b124c00d8cd6`  
		Last Modified: Thu, 13 Dec 2018 10:28:05 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39f424b693ddee5f946124c9dda7517e2d4dba69e5fe67317e952959d2dd0a1`  
		Last Modified: Thu, 13 Dec 2018 10:28:06 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:cb7976f9194609ed196b9cc57b2ae1900094b72053e760bb66802d6647749038
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28383373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5673b0f4252bcbd0d2cd1472742d73d318f03e5b4ab0ecc028a7c71785fb7034`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 17:06:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 17:06:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 17:07:09 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 12:59:35 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 12:59:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 12:59:36 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 13:00:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 13:00:20 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 13:00:21 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 13:00:21 GMT
WORKDIR /data
# Thu, 13 Dec 2018 13:00:22 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 13:00:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 13:00:23 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 13:00:23 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2d80930f583a9833248b9df64411ea5dcf76871a290dff6b5b8e6c9c7e3e4f`  
		Last Modified: Fri, 16 Nov 2018 17:09:36 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e9757baaea6fea7641dff63b08ee174d270a36123beb43c8bcc1eb14f030dd`  
		Last Modified: Fri, 16 Nov 2018 17:09:37 GMT  
		Size: 915.8 KB (915788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54091744f943723de81246759f8274c5da77cc1f86aa00180eea1bb485031053`  
		Last Modified: Thu, 13 Dec 2018 13:00:44 GMT  
		Size: 8.2 MB (8195239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1809313645cb682b6da77ef8ab4ce7239518569be5358db862ee2d85ee7fe0`  
		Last Modified: Thu, 13 Dec 2018 13:00:41 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7213247129d187fd271dc22a0f94be70d8681f04bed6142ad35107dad8cd4972`  
		Last Modified: Thu, 13 Dec 2018 13:00:41 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:388c08acc014c4010b6b168cbf54d8ce40a5c97da6d7566479cf43057ec906a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29738131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4405f4c0b58672a375ab0b6463c812f6f518b3f979b24d3611399739dcc4ea5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 23:18:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 23:18:33 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 23:19:30 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 13:51:50 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 13:51:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 13:51:51 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 13:53:19 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 13:53:20 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 13:53:21 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 13:53:22 GMT
WORKDIR /data
# Thu, 13 Dec 2018 13:53:22 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 13:53:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 13:53:24 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 13:53:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30486ebbbf15de4bae2ee331725f016847747a4b99f2a35d7e5499d3e6fa9ea`  
		Last Modified: Fri, 16 Nov 2018 23:27:15 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c396b63e865772d0a63c58fea87fe76a8daba403801b6b65a6bd1a3504e19f3`  
		Last Modified: Fri, 16 Nov 2018 23:27:15 GMT  
		Size: 908.0 KB (907972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c00f704c53543e09de1c8e2224901450af33e4cacb32e1f067caf64d4152728`  
		Last Modified: Thu, 13 Dec 2018 13:55:09 GMT  
		Size: 8.5 MB (8496585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13466d1789fd48cf30fc75863df4d3a5375d43fde4e08e74517cbb6743c61f66`  
		Last Modified: Thu, 13 Dec 2018 13:55:06 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10fcf8b7b74ad1ff43ff71e6e5352ee84d9dd4085bcf4b8f7f54898eb37f8594`  
		Last Modified: Thu, 13 Dec 2018 13:55:06 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; 386

```console
$ docker pull redis@sha256:52c5b99e36cd9668177c08c775272a4af8ecf9f4967281332d6dae0476a1b5d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed62571ef5305703aa7e25487859d4e919f373f914e4b51141d952e863d86a56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:09:40 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 17 Nov 2018 06:09:40 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 06:10:01 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 14:21:40 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:21:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:21:40 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:22:27 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 14:22:28 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:22:28 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:22:28 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:22:28 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:22:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:22:29 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:22:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f12aaafb04623ca047b7fd06a3ee6c44815b18f2fd10d1c508e1416e5b4210`  
		Last Modified: Sat, 17 Nov 2018 06:14:19 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7798210102e9030bcff25d93adeb1c361988cacaff78a553c4e566544739d114`  
		Last Modified: Sat, 17 Nov 2018 06:14:20 GMT  
		Size: 920.1 KB (920077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619f28b95ae93df968ca3519467a7640e42e6e36e81d7ea7b318599488df9a50`  
		Last Modified: Thu, 13 Dec 2018 14:23:58 GMT  
		Size: 8.3 MB (8257754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e85081db86f4b118c218cdb2c7e4676aabd698cbea1834337c1c7f191c7e05`  
		Last Modified: Thu, 13 Dec 2018 14:23:56 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acaca037d26eb61add1674150301733ef67d300f583ac83462a960364ce14bde`  
		Last Modified: Thu, 13 Dec 2018 14:23:56 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:62917c64f62fcb10b3481658f138c2eff9940c2c8c17fc6a84c7876f0796cdc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32525088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bd76297861161061b1517fb5beac66afa2cc620baef776ee17d86a9f0aa63b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:52:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 16:52:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 16:53:54 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 11:31:54 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 11:31:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 11:32:01 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 11:33:38 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 11:33:56 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 11:33:57 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 11:33:58 GMT
WORKDIR /data
# Thu, 13 Dec 2018 11:33:59 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 11:34:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 11:34:02 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 11:34:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0c5eb162bdb0306fe8f40fca03869ae40b121ab0599a7a5f26b2a47c064a16`  
		Last Modified: Fri, 16 Nov 2018 17:00:08 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf93e18136797b688758dafe1a4525b9d82cbf85c31cd036ddb244da71950c2`  
		Last Modified: Fri, 16 Nov 2018 17:00:08 GMT  
		Size: 909.7 KB (909734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76083525e5f290afab1340c5ec55c9c6557d0f62e30776c21d4ff245020dc8ae`  
		Last Modified: Thu, 13 Dec 2018 11:37:01 GMT  
		Size: 8.9 MB (8872347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd4897f0a6573220437d0714b115c165049eb5f0dd1e21cef8faf0c9aed0757`  
		Last Modified: Thu, 13 Dec 2018 11:36:57 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d238762945e665052a154a54b9f3e37de2ad651ad72d782b5b002bfdd3851560`  
		Last Modified: Thu, 13 Dec 2018 11:36:57 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; s390x

```console
$ docker pull redis@sha256:852b74255763264f365a57337bb4a57d2abab6ae02a1ec88753e507b76490fc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32354070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f18e8dfaed7cf492d4e09d094a81b1465b495c20029e04a8e6d4efde5cfb02e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:03:01 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 19:03:01 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 19:03:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 14:06:03 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:06:03 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:06:04 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:06:35 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 14:06:36 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:06:36 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:06:36 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:06:36 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:06:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:06:37 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:06:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1df1ec8504f31b83153c15e397b2b1bd84be3411dc4c29a44c46fb33346c47`  
		Last Modified: Fri, 16 Nov 2018 19:06:06 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff16e78a01a74d4790f4731e304c3db33582d2979c3ada740370ce986ef9bb4e`  
		Last Modified: Fri, 16 Nov 2018 19:06:09 GMT  
		Size: 926.8 KB (926750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77ab61a8d40a23d5561aaabe7403341bcf8e2f61000fecd17e33bf090155b4f`  
		Last Modified: Thu, 13 Dec 2018 14:07:37 GMT  
		Size: 9.1 MB (9090344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f81c44678a3ee81683b7000e6113f99c9b2eda73aef3843090ed849f155c84`  
		Last Modified: Thu, 13 Dec 2018 14:07:35 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0cc74259a1b9fdf6c4cb997d42b610a0de189cda2c48df5dfd902c42bb0584`  
		Last Modified: Thu, 13 Dec 2018 14:07:35 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit`

```console
$ docker pull redis@sha256:3f9adf33d625b28f577fd24178565a8afc6217aec53ec2bcc992daeeef6fc936
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:e950072adcdeb55034461ad0bf96ff1952a4d3525133d3ea197e33ca1fdfd5eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36540170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:973ef6c0ea038be4c3cedf093fffb342e00afa89048233181ee661b4d9937908`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 12 Dec 2018 20:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 20:20:59 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 12 Dec 2018 20:21:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Dec 2018 20:21:00 GMT
VOLUME [/data]
# Wed, 12 Dec 2018 20:21:01 GMT
WORKDIR /data
# Wed, 12 Dec 2018 20:21:01 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 12 Dec 2018 20:21:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Dec 2018 20:21:02 GMT
EXPOSE 6379/tcp
# Wed, 12 Dec 2018 20:21:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01075eb98c180d1d50a4585ef953aeb72f1a350fb7bae5cca588a076ca253ca`  
		Last Modified: Wed, 12 Dec 2018 20:24:48 GMT  
		Size: 4.8 MB (4848315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a5e94fb12cb056350aae877206f7ed2d4e3169a3fe8b1b6409eaff14f0aea0`  
		Last Modified: Wed, 12 Dec 2018 20:24:48 GMT  
		Size: 8.3 MB (8262026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d309a97a1f5de51bfedbfd5698a272dcff19833cdd99a391e38f0350577c430`  
		Last Modified: Wed, 12 Dec 2018 20:24:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed03bd268df37e30fdcc898bd60c75b88e6bc0144be1c494b36cad2555879c85`  
		Last Modified: Wed, 12 Dec 2018 20:24:47 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit-stretch`

```console
$ docker pull redis@sha256:3f9adf33d625b28f577fd24178565a8afc6217aec53ec2bcc992daeeef6fc936
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:e950072adcdeb55034461ad0bf96ff1952a4d3525133d3ea197e33ca1fdfd5eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36540170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:973ef6c0ea038be4c3cedf093fffb342e00afa89048233181ee661b4d9937908`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 12 Dec 2018 20:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 20:20:59 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 12 Dec 2018 20:21:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Dec 2018 20:21:00 GMT
VOLUME [/data]
# Wed, 12 Dec 2018 20:21:01 GMT
WORKDIR /data
# Wed, 12 Dec 2018 20:21:01 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 12 Dec 2018 20:21:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Dec 2018 20:21:02 GMT
EXPOSE 6379/tcp
# Wed, 12 Dec 2018 20:21:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01075eb98c180d1d50a4585ef953aeb72f1a350fb7bae5cca588a076ca253ca`  
		Last Modified: Wed, 12 Dec 2018 20:24:48 GMT  
		Size: 4.8 MB (4848315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a5e94fb12cb056350aae877206f7ed2d4e3169a3fe8b1b6409eaff14f0aea0`  
		Last Modified: Wed, 12 Dec 2018 20:24:48 GMT  
		Size: 8.3 MB (8262026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d309a97a1f5de51bfedbfd5698a272dcff19833cdd99a391e38f0350577c430`  
		Last Modified: Wed, 12 Dec 2018 20:24:48 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed03bd268df37e30fdcc898bd60c75b88e6bc0144be1c494b36cad2555879c85`  
		Last Modified: Wed, 12 Dec 2018 20:24:47 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine`

```console
$ docker pull redis@sha256:83a686210acbcd4d3cb965773ae7a005564796b6281c39d309ef2ceb889e19f9
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
$ docker pull redis@sha256:020c22bcd7292d513380bc1df6aa842be3a07679f6558270a193d4ac1c7afdc2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12053404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:101062d624546375497d4860f925e585553fac0f619fdd736b4d928275bdbea4`
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
# Wed, 12 Dec 2018 20:21:34 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 12 Dec 2018 20:21:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 12 Dec 2018 20:21:35 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 12 Dec 2018 20:22:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Dec 2018 20:22:24 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Dec 2018 20:22:24 GMT
VOLUME [/data]
# Wed, 12 Dec 2018 20:22:25 GMT
WORKDIR /data
# Wed, 12 Dec 2018 20:22:25 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 12 Dec 2018 20:22:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Dec 2018 20:22:26 GMT
EXPOSE 6379/tcp
# Wed, 12 Dec 2018 20:22:26 GMT
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
	-	`sha256:50b36025d3dfa7f4a94cd176205dbd91a07d9d00de6c1ec65563de7269845e4f`  
		Last Modified: Wed, 12 Dec 2018 20:27:17 GMT  
		Size: 9.4 MB (9442579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0bfcf36ab8edb9f330b3273f3a92b5871df83f2155dbee3d4a419fb382c691`  
		Last Modified: Wed, 12 Dec 2018 20:27:15 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1333fecc92555fd9f9afd264751d231b27be5699cb28881595ad2aa443498a`  
		Last Modified: Wed, 12 Dec 2018 20:27:15 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:18aae071e8add6c69b3f738895801f88a6ac0da68e714120f7746e7aa1f4e6ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8399499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17e65a31cc7bb041f64c66e44b159b1f9c808e54a0ec5f67d9362fcc216c2b40`
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
# Thu, 13 Dec 2018 08:49:32 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 08:49:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 08:49:34 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 08:53:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 08:53:23 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 08:53:25 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 08:53:26 GMT
WORKDIR /data
# Thu, 13 Dec 2018 08:53:28 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 13 Dec 2018 08:53:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 08:53:31 GMT
EXPOSE 6379
# Thu, 13 Dec 2018 08:53:32 GMT
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
	-	`sha256:ec095b4cd6a4df6bdc37650613004eb9cc3a5d5add0bc452e5af3f8a08ea5eee`  
		Last Modified: Thu, 13 Dec 2018 08:53:56 GMT  
		Size: 5.8 MB (5846372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5182c145e8e816a9b8f7422ca9ab175501aa38640143389d98c2497f24474d`  
		Last Modified: Thu, 13 Dec 2018 08:53:51 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4468eb170545bbfdf475830ed1a5db94d496d19012959fb6f16b2db1549b441b`  
		Last Modified: Thu, 13 Dec 2018 08:53:51 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:ddb9690c46f333d9a6f2e5e4c5c599be016e56961ac7adf4788cc522bbda4e13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11702382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72788d7c0cc1fef5e6485d9211d341a3f36caabcfd02c5e1254df681ea0f506d`
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
# Thu, 13 Dec 2018 13:53:45 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 13:53:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 13:53:47 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 13:54:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 13:54:27 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 13:54:28 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 13:54:29 GMT
WORKDIR /data
# Thu, 13 Dec 2018 13:54:29 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 13:54:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 13:54:31 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 13:54:31 GMT
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
	-	`sha256:a9364a42e6c27232196f8b12b9e092d2d50cd99633e58dede342da8dc49ad27a`  
		Last Modified: Thu, 13 Dec 2018 13:56:32 GMT  
		Size: 9.2 MB (9200161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39e37934772561343377785e530b633425a3b9602699349a9cdf193a7b5de9e`  
		Last Modified: Thu, 13 Dec 2018 13:56:26 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5395c455f91985bc87e7bb9ede889c8b5cdcb509c69b46e52d0b4eb0a57b8334`  
		Last Modified: Thu, 13 Dec 2018 13:56:26 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; 386

```console
$ docker pull redis@sha256:122569b85079481fa27a36748b5f84d6547a6e09f774e5e84424122434e16eb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11660819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:885110ad31ccf3bd16659460106ed722a702b323dacf7c2a577bdd6edffd2dc2`
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
# Thu, 13 Dec 2018 14:22:49 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:22:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:22:49 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:23:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 14:23:23 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:23:23 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:23:23 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:23:24 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:23:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:23:24 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:23:24 GMT
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
	-	`sha256:377dd3ca5eef96b0ffa54577800c1e87db9c2cd5b1119403da81cc5171850c3d`  
		Last Modified: Thu, 13 Dec 2018 14:25:36 GMT  
		Size: 9.0 MB (8980863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544bf9369cf36057996f0970f7d51e4b5a22657dbb3b1e7ed65eab11e5a5e5a8`  
		Last Modified: Thu, 13 Dec 2018 14:25:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a280a7ddf481f43bc2d5329ecf7d373fc2f318fff0f15f71d6b4aa600d08dd7`  
		Last Modified: Thu, 13 Dec 2018 14:25:34 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:08bb626fb4010837ace09a1ac735ce39ee99cc4d4542552c977b19621f40546b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12139094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0321a1c4824f8471e22154ab2c7dd44114ec6944239319d871bd6385c720ba`
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
# Thu, 13 Dec 2018 11:34:52 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 11:34:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 11:34:55 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 11:35:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 11:35:38 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 11:35:39 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 11:35:41 GMT
WORKDIR /data
# Thu, 13 Dec 2018 11:35:44 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 11:35:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 11:35:47 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 11:35:49 GMT
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
	-	`sha256:16ee538288e27bbbec204ea7408fb0c774254956a5cc095aa3878a8b3d6b6344`  
		Last Modified: Thu, 13 Dec 2018 11:41:10 GMT  
		Size: 9.5 MB (9535016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a318980b9b3d11d5ca16fe991997c8f22d1bc0fe92d3e3585be2787678baaf28`  
		Last Modified: Thu, 13 Dec 2018 11:41:05 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c029ff154c0dfe9881f4d4ed9e8a1c887731184cbce720a5e40580b7791fa923`  
		Last Modified: Thu, 13 Dec 2018 11:41:05 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; s390x

```console
$ docker pull redis@sha256:62c45cd8369e70e423c6c014f055f96b6a175f7d86600204f1c1795b10393bbf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12299818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c16ddf225fe340db4740fc5c9f1d6c512175432d4ed8c2e823310cbcd11aaff`
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
# Thu, 13 Dec 2018 14:06:48 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:06:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:06:48 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:07:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 14:07:15 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:07:15 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:07:16 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:07:16 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:07:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:07:16 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:07:16 GMT
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
	-	`sha256:c3917ed4e4e9e5885351f6049749d9e3cfa40f137d98b5b789b0c2d04d372c4e`  
		Last Modified: Thu, 13 Dec 2018 14:08:11 GMT  
		Size: 9.6 MB (9582325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bfa6f424824c387e98145f71e0365fadf533c342dd3ff536165e62d6626e97`  
		Last Modified: Thu, 13 Dec 2018 14:08:09 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68c638bab051bd470ac344403d5ea6e1519ca23f08ef121d879f94fd3457ab7`  
		Last Modified: Thu, 13 Dec 2018 14:08:09 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine3.8`

```console
$ docker pull redis@sha256:83a686210acbcd4d3cb965773ae7a005564796b6281c39d309ef2ceb889e19f9
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
$ docker pull redis@sha256:020c22bcd7292d513380bc1df6aa842be3a07679f6558270a193d4ac1c7afdc2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12053404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:101062d624546375497d4860f925e585553fac0f619fdd736b4d928275bdbea4`
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
# Wed, 12 Dec 2018 20:21:34 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 12 Dec 2018 20:21:34 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 12 Dec 2018 20:21:35 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 12 Dec 2018 20:22:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 12 Dec 2018 20:22:24 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Dec 2018 20:22:24 GMT
VOLUME [/data]
# Wed, 12 Dec 2018 20:22:25 GMT
WORKDIR /data
# Wed, 12 Dec 2018 20:22:25 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 12 Dec 2018 20:22:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Dec 2018 20:22:26 GMT
EXPOSE 6379/tcp
# Wed, 12 Dec 2018 20:22:26 GMT
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
	-	`sha256:50b36025d3dfa7f4a94cd176205dbd91a07d9d00de6c1ec65563de7269845e4f`  
		Last Modified: Wed, 12 Dec 2018 20:27:17 GMT  
		Size: 9.4 MB (9442579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0bfcf36ab8edb9f330b3273f3a92b5871df83f2155dbee3d4a419fb382c691`  
		Last Modified: Wed, 12 Dec 2018 20:27:15 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1333fecc92555fd9f9afd264751d231b27be5699cb28881595ad2aa443498a`  
		Last Modified: Wed, 12 Dec 2018 20:27:15 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.8` - linux; arm variant v6

```console
$ docker pull redis@sha256:18aae071e8add6c69b3f738895801f88a6ac0da68e714120f7746e7aa1f4e6ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8399499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17e65a31cc7bb041f64c66e44b159b1f9c808e54a0ec5f67d9362fcc216c2b40`
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
# Thu, 13 Dec 2018 08:49:32 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 08:49:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 08:49:34 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 08:53:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 08:53:23 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 08:53:25 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 08:53:26 GMT
WORKDIR /data
# Thu, 13 Dec 2018 08:53:28 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 13 Dec 2018 08:53:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 08:53:31 GMT
EXPOSE 6379
# Thu, 13 Dec 2018 08:53:32 GMT
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
	-	`sha256:ec095b4cd6a4df6bdc37650613004eb9cc3a5d5add0bc452e5af3f8a08ea5eee`  
		Last Modified: Thu, 13 Dec 2018 08:53:56 GMT  
		Size: 5.8 MB (5846372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5182c145e8e816a9b8f7422ca9ab175501aa38640143389d98c2497f24474d`  
		Last Modified: Thu, 13 Dec 2018 08:53:51 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4468eb170545bbfdf475830ed1a5db94d496d19012959fb6f16b2db1549b441b`  
		Last Modified: Thu, 13 Dec 2018 08:53:51 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.8` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:ddb9690c46f333d9a6f2e5e4c5c599be016e56961ac7adf4788cc522bbda4e13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11702382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72788d7c0cc1fef5e6485d9211d341a3f36caabcfd02c5e1254df681ea0f506d`
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
# Thu, 13 Dec 2018 13:53:45 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 13:53:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 13:53:47 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 13:54:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 13:54:27 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 13:54:28 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 13:54:29 GMT
WORKDIR /data
# Thu, 13 Dec 2018 13:54:29 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 13:54:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 13:54:31 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 13:54:31 GMT
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
	-	`sha256:a9364a42e6c27232196f8b12b9e092d2d50cd99633e58dede342da8dc49ad27a`  
		Last Modified: Thu, 13 Dec 2018 13:56:32 GMT  
		Size: 9.2 MB (9200161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39e37934772561343377785e530b633425a3b9602699349a9cdf193a7b5de9e`  
		Last Modified: Thu, 13 Dec 2018 13:56:26 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5395c455f91985bc87e7bb9ede889c8b5cdcb509c69b46e52d0b4eb0a57b8334`  
		Last Modified: Thu, 13 Dec 2018 13:56:26 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.8` - linux; 386

```console
$ docker pull redis@sha256:122569b85079481fa27a36748b5f84d6547a6e09f774e5e84424122434e16eb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11660819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:885110ad31ccf3bd16659460106ed722a702b323dacf7c2a577bdd6edffd2dc2`
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
# Thu, 13 Dec 2018 14:22:49 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:22:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:22:49 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:23:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 14:23:23 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:23:23 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:23:23 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:23:24 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:23:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:23:24 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:23:24 GMT
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
	-	`sha256:377dd3ca5eef96b0ffa54577800c1e87db9c2cd5b1119403da81cc5171850c3d`  
		Last Modified: Thu, 13 Dec 2018 14:25:36 GMT  
		Size: 9.0 MB (8980863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544bf9369cf36057996f0970f7d51e4b5a22657dbb3b1e7ed65eab11e5a5e5a8`  
		Last Modified: Thu, 13 Dec 2018 14:25:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a280a7ddf481f43bc2d5329ecf7d373fc2f318fff0f15f71d6b4aa600d08dd7`  
		Last Modified: Thu, 13 Dec 2018 14:25:34 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.8` - linux; ppc64le

```console
$ docker pull redis@sha256:08bb626fb4010837ace09a1ac735ce39ee99cc4d4542552c977b19621f40546b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12139094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0321a1c4824f8471e22154ab2c7dd44114ec6944239319d871bd6385c720ba`
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
# Thu, 13 Dec 2018 11:34:52 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 11:34:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 11:34:55 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 11:35:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 11:35:38 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 11:35:39 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 11:35:41 GMT
WORKDIR /data
# Thu, 13 Dec 2018 11:35:44 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 11:35:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 11:35:47 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 11:35:49 GMT
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
	-	`sha256:16ee538288e27bbbec204ea7408fb0c774254956a5cc095aa3878a8b3d6b6344`  
		Last Modified: Thu, 13 Dec 2018 11:41:10 GMT  
		Size: 9.5 MB (9535016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a318980b9b3d11d5ca16fe991997c8f22d1bc0fe92d3e3585be2787678baaf28`  
		Last Modified: Thu, 13 Dec 2018 11:41:05 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c029ff154c0dfe9881f4d4ed9e8a1c887731184cbce720a5e40580b7791fa923`  
		Last Modified: Thu, 13 Dec 2018 11:41:05 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.8` - linux; s390x

```console
$ docker pull redis@sha256:62c45cd8369e70e423c6c014f055f96b6a175f7d86600204f1c1795b10393bbf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12299818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c16ddf225fe340db4740fc5c9f1d6c512175432d4ed8c2e823310cbcd11aaff`
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
# Thu, 13 Dec 2018 14:06:48 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:06:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:06:48 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:07:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 14:07:15 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:07:15 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:07:16 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:07:16 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:07:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:07:16 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:07:16 GMT
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
	-	`sha256:c3917ed4e4e9e5885351f6049749d9e3cfa40f137d98b5b789b0c2d04d372c4e`  
		Last Modified: Thu, 13 Dec 2018 14:08:11 GMT  
		Size: 9.6 MB (9582325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bfa6f424824c387e98145f71e0365fadf533c342dd3ff536165e62d6626e97`  
		Last Modified: Thu, 13 Dec 2018 14:08:09 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68c638bab051bd470ac344403d5ea6e1519ca23f08ef121d879f94fd3457ab7`  
		Last Modified: Thu, 13 Dec 2018 14:08:09 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-stretch`

```console
$ docker pull redis@sha256:bc6d2f2369b142e502e90693dcb29db6f80e70b072b96d64ccee754279b81c86
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
$ docker pull redis@sha256:3bb7b6cf91233b36662ac6accb3ec6bc400bdfc91685265025724df59c6bf83b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32126072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b00f982f9bf7cf1931020b1460429ba86cba6b82054fd1280633096aa9364acf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_VERSION=4.0.12
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Wed, 12 Dec 2018 20:18:45 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Wed, 12 Dec 2018 20:19:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 12 Dec 2018 20:19:28 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 12 Dec 2018 20:19:28 GMT
VOLUME [/data]
# Wed, 12 Dec 2018 20:19:28 GMT
WORKDIR /data
# Wed, 12 Dec 2018 20:19:29 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 12 Dec 2018 20:19:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Dec 2018 20:19:29 GMT
EXPOSE 6379/tcp
# Wed, 12 Dec 2018 20:19:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b277a6a176ed426bc99e9d1490d67d9a67bf55b7d7d575a12ab013e66d5daf`  
		Last Modified: Wed, 12 Dec 2018 20:23:01 GMT  
		Size: 8.7 MB (8696247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18816bfc8c42f450ff65197bc4acf746e012199b5bd20c46ec8fab27b3269cd7`  
		Last Modified: Wed, 12 Dec 2018 20:22:59 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8353860f55df845ba04ecef31075569274ac3525eacaba877d63e127cf3aa6`  
		Last Modified: Wed, 12 Dec 2018 20:22:59 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:a601a05c4dfffca154582178761ed63ee6eaedc4a30d0e982dfa7cb6a9a7d612
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30518771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2081181bce6d4ce06d344a47aaa0f21421b93fa08960619136e1bde779124033`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:22:27 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 16:22:28 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 16:22:54 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 10:26:58 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 10:26:59 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 10:26:59 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 10:27:41 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 10:27:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 10:27:42 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 10:27:43 GMT
WORKDIR /data
# Thu, 13 Dec 2018 10:27:44 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 10:27:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 10:27:44 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 10:27:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdf922272e491614fbf43a202c8e5874d54801ca5d750d160381aeeac02e9bc`  
		Last Modified: Fri, 16 Nov 2018 16:25:29 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465a419c6c3730862c73a0d4d6a342aada4ca5166e563783aca7d1634ff7da4c`  
		Last Modified: Fri, 16 Nov 2018 16:25:29 GMT  
		Size: 931.1 KB (931113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc718362f8d45d088dff700295c03588c85904a770a55f288193c12ec4e4b3a`  
		Last Modified: Thu, 13 Dec 2018 10:28:08 GMT  
		Size: 8.4 MB (8422365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520abafd57dfdf49873fc45c8e70c5f0289f85281d080abeb5a2b124c00d8cd6`  
		Last Modified: Thu, 13 Dec 2018 10:28:05 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39f424b693ddee5f946124c9dda7517e2d4dba69e5fe67317e952959d2dd0a1`  
		Last Modified: Thu, 13 Dec 2018 10:28:06 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:cb7976f9194609ed196b9cc57b2ae1900094b72053e760bb66802d6647749038
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28383373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5673b0f4252bcbd0d2cd1472742d73d318f03e5b4ab0ecc028a7c71785fb7034`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 17:06:35 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 17:06:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 17:07:09 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 12:59:35 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 12:59:36 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 12:59:36 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 13:00:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 13:00:20 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 13:00:21 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 13:00:21 GMT
WORKDIR /data
# Thu, 13 Dec 2018 13:00:22 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 13:00:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 13:00:23 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 13:00:23 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2d80930f583a9833248b9df64411ea5dcf76871a290dff6b5b8e6c9c7e3e4f`  
		Last Modified: Fri, 16 Nov 2018 17:09:36 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e9757baaea6fea7641dff63b08ee174d270a36123beb43c8bcc1eb14f030dd`  
		Last Modified: Fri, 16 Nov 2018 17:09:37 GMT  
		Size: 915.8 KB (915788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54091744f943723de81246759f8274c5da77cc1f86aa00180eea1bb485031053`  
		Last Modified: Thu, 13 Dec 2018 13:00:44 GMT  
		Size: 8.2 MB (8195239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1809313645cb682b6da77ef8ab4ce7239518569be5358db862ee2d85ee7fe0`  
		Last Modified: Thu, 13 Dec 2018 13:00:41 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7213247129d187fd271dc22a0f94be70d8681f04bed6142ad35107dad8cd4972`  
		Last Modified: Thu, 13 Dec 2018 13:00:41 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:388c08acc014c4010b6b168cbf54d8ce40a5c97da6d7566479cf43057ec906a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29738131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4405f4c0b58672a375ab0b6463c812f6f518b3f979b24d3611399739dcc4ea5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 23:18:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 23:18:33 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 23:19:30 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 13:51:50 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 13:51:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 13:51:51 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 13:53:19 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 13:53:20 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 13:53:21 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 13:53:22 GMT
WORKDIR /data
# Thu, 13 Dec 2018 13:53:22 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 13:53:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 13:53:24 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 13:53:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30486ebbbf15de4bae2ee331725f016847747a4b99f2a35d7e5499d3e6fa9ea`  
		Last Modified: Fri, 16 Nov 2018 23:27:15 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c396b63e865772d0a63c58fea87fe76a8daba403801b6b65a6bd1a3504e19f3`  
		Last Modified: Fri, 16 Nov 2018 23:27:15 GMT  
		Size: 908.0 KB (907972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c00f704c53543e09de1c8e2224901450af33e4cacb32e1f067caf64d4152728`  
		Last Modified: Thu, 13 Dec 2018 13:55:09 GMT  
		Size: 8.5 MB (8496585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13466d1789fd48cf30fc75863df4d3a5375d43fde4e08e74517cbb6743c61f66`  
		Last Modified: Thu, 13 Dec 2018 13:55:06 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10fcf8b7b74ad1ff43ff71e6e5352ee84d9dd4085bcf4b8f7f54898eb37f8594`  
		Last Modified: Thu, 13 Dec 2018 13:55:06 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; 386

```console
$ docker pull redis@sha256:52c5b99e36cd9668177c08c775272a4af8ecf9f4967281332d6dae0476a1b5d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32306858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed62571ef5305703aa7e25487859d4e919f373f914e4b51141d952e863d86a56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:09:40 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 17 Nov 2018 06:09:40 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 06:10:01 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 14:21:40 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:21:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:21:40 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:22:27 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 14:22:28 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:22:28 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:22:28 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:22:28 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:22:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:22:29 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:22:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f12aaafb04623ca047b7fd06a3ee6c44815b18f2fd10d1c508e1416e5b4210`  
		Last Modified: Sat, 17 Nov 2018 06:14:19 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7798210102e9030bcff25d93adeb1c361988cacaff78a553c4e566544739d114`  
		Last Modified: Sat, 17 Nov 2018 06:14:20 GMT  
		Size: 920.1 KB (920077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619f28b95ae93df968ca3519467a7640e42e6e36e81d7ea7b318599488df9a50`  
		Last Modified: Thu, 13 Dec 2018 14:23:58 GMT  
		Size: 8.3 MB (8257754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e85081db86f4b118c218cdb2c7e4676aabd698cbea1834337c1c7f191c7e05`  
		Last Modified: Thu, 13 Dec 2018 14:23:56 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acaca037d26eb61add1674150301733ef67d300f583ac83462a960364ce14bde`  
		Last Modified: Thu, 13 Dec 2018 14:23:56 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:62917c64f62fcb10b3481658f138c2eff9940c2c8c17fc6a84c7876f0796cdc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32525088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bd76297861161061b1517fb5beac66afa2cc620baef776ee17d86a9f0aa63b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:52:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 16:52:19 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 16:53:54 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 11:31:54 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 11:31:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 11:32:01 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 11:33:38 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 11:33:56 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 11:33:57 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 11:33:58 GMT
WORKDIR /data
# Thu, 13 Dec 2018 11:33:59 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 11:34:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 11:34:02 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 11:34:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0c5eb162bdb0306fe8f40fca03869ae40b121ab0599a7a5f26b2a47c064a16`  
		Last Modified: Fri, 16 Nov 2018 17:00:08 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf93e18136797b688758dafe1a4525b9d82cbf85c31cd036ddb244da71950c2`  
		Last Modified: Fri, 16 Nov 2018 17:00:08 GMT  
		Size: 909.7 KB (909734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76083525e5f290afab1340c5ec55c9c6557d0f62e30776c21d4ff245020dc8ae`  
		Last Modified: Thu, 13 Dec 2018 11:37:01 GMT  
		Size: 8.9 MB (8872347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd4897f0a6573220437d0714b115c165049eb5f0dd1e21cef8faf0c9aed0757`  
		Last Modified: Thu, 13 Dec 2018 11:36:57 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d238762945e665052a154a54b9f3e37de2ad651ad72d782b5b002bfdd3851560`  
		Last Modified: Thu, 13 Dec 2018 11:36:57 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; s390x

```console
$ docker pull redis@sha256:852b74255763264f365a57337bb4a57d2abab6ae02a1ec88753e507b76490fc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32354070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f18e8dfaed7cf492d4e09d094a81b1465b495c20029e04a8e6d4efde5cfb02e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:03:01 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 19:03:01 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 19:03:25 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 14:06:03 GMT
ENV REDIS_VERSION=4.0.12
# Thu, 13 Dec 2018 14:06:03 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.12.tar.gz
# Thu, 13 Dec 2018 14:06:04 GMT
ENV REDIS_DOWNLOAD_SHA=6447259d2eed426a949c9c13f8fdb2d91fb66d9dc915dd50db13b87f46d93162
# Thu, 13 Dec 2018 14:06:35 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 14:06:36 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 14:06:36 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 14:06:36 GMT
WORKDIR /data
# Thu, 13 Dec 2018 14:06:36 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 14:06:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 14:06:37 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 14:06:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1df1ec8504f31b83153c15e397b2b1bd84be3411dc4c29a44c46fb33346c47`  
		Last Modified: Fri, 16 Nov 2018 19:06:06 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff16e78a01a74d4790f4731e304c3db33582d2979c3ada740370ce986ef9bb4e`  
		Last Modified: Fri, 16 Nov 2018 19:06:09 GMT  
		Size: 926.8 KB (926750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77ab61a8d40a23d5561aaabe7403341bcf8e2f61000fecd17e33bf090155b4f`  
		Last Modified: Thu, 13 Dec 2018 14:07:37 GMT  
		Size: 9.1 MB (9090344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f81c44678a3ee81683b7000e6113f99c9b2eda73aef3843090ed849f155c84`  
		Last Modified: Thu, 13 Dec 2018 14:07:35 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0cc74259a1b9fdf6c4cb997d42b610a0de189cda2c48df5dfd902c42bb0584`  
		Last Modified: Thu, 13 Dec 2018 14:07:35 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5`

```console
$ docker pull redis@sha256:08404624cf1445fd3b701bb2394bc37a7578587d6f354919125c0fa0672a5b29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5` - linux; amd64

```console
$ docker pull redis@sha256:315bb485f56a486b6fa22b246e3a47eeb112b056175740df6be8259ddc6ba009
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35198647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce25c7293564bac1a996496c75f49c58b840075ac6e8cb08d347fce5be90e212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:22:04 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 17:22:05 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:22:05 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:22:06 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:22:06 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:22:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:22:06 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:22:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b0cc4e76a5c42c5f208f7cc45aa74221ce85cbc6a2bb28e112dcf89301c64`  
		Last Modified: Thu, 13 Dec 2018 17:25:45 GMT  
		Size: 11.8 MB (11768822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e841feee049e36c5cc444ef21e5c96e32a94b7faa6365491b68c610045cc8061`  
		Last Modified: Thu, 13 Dec 2018 17:25:44 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf45e5191d0aa52429676a4c09b75a932be0289cbd140dc4ba3a569a015178f`  
		Last Modified: Thu, 13 Dec 2018 17:25:43 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0`

```console
$ docker pull redis@sha256:08404624cf1445fd3b701bb2394bc37a7578587d6f354919125c0fa0672a5b29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0` - linux; amd64

```console
$ docker pull redis@sha256:315bb485f56a486b6fa22b246e3a47eeb112b056175740df6be8259ddc6ba009
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35198647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce25c7293564bac1a996496c75f49c58b840075ac6e8cb08d347fce5be90e212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:22:04 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 17:22:05 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:22:05 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:22:06 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:22:06 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:22:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:22:06 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:22:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b0cc4e76a5c42c5f208f7cc45aa74221ce85cbc6a2bb28e112dcf89301c64`  
		Last Modified: Thu, 13 Dec 2018 17:25:45 GMT  
		Size: 11.8 MB (11768822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e841feee049e36c5cc444ef21e5c96e32a94b7faa6365491b68c610045cc8061`  
		Last Modified: Thu, 13 Dec 2018 17:25:44 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf45e5191d0aa52429676a4c09b75a932be0289cbd140dc4ba3a569a015178f`  
		Last Modified: Thu, 13 Dec 2018 17:25:43 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.3`

```console
$ docker pull redis@sha256:08404624cf1445fd3b701bb2394bc37a7578587d6f354919125c0fa0672a5b29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.3` - linux; amd64

```console
$ docker pull redis@sha256:315bb485f56a486b6fa22b246e3a47eeb112b056175740df6be8259ddc6ba009
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35198647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce25c7293564bac1a996496c75f49c58b840075ac6e8cb08d347fce5be90e212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:22:04 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 17:22:05 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:22:05 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:22:06 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:22:06 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:22:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:22:06 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:22:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b0cc4e76a5c42c5f208f7cc45aa74221ce85cbc6a2bb28e112dcf89301c64`  
		Last Modified: Thu, 13 Dec 2018 17:25:45 GMT  
		Size: 11.8 MB (11768822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e841feee049e36c5cc444ef21e5c96e32a94b7faa6365491b68c610045cc8061`  
		Last Modified: Thu, 13 Dec 2018 17:25:44 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf45e5191d0aa52429676a4c09b75a932be0289cbd140dc4ba3a569a015178f`  
		Last Modified: Thu, 13 Dec 2018 17:25:43 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-32bit`

```console
$ docker pull redis@sha256:2f397e9a1bc494daa72f3d7a1d91ec5e6067cd5fc32b0f29208b506efef100d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:b058b6f24f63c720106b11282c23bee1a3516418a02e68cedb903f83e6274085
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39461689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b68c07c3f128bddaac51b97d61fced2c9abb6dcc44eebe0112011a2db9e809d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:22:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 17:23:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 17:23:47 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:23:48 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:23:48 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:23:48 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:23:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:23:49 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:23:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befe9c4f3126d0cb29d7dcb1f92198ba55bc60d64797af189c601bc853ae63b8`  
		Last Modified: Thu, 13 Dec 2018 17:28:07 GMT  
		Size: 4.8 MB (4848359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b340992a79bab441a7894bb36e41366913fd355b73357426f8c360c63e9d866d`  
		Last Modified: Thu, 13 Dec 2018 17:28:07 GMT  
		Size: 11.2 MB (11183501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37cc50d5dbdab46376a268bc7108fe053038c51751e17df437cdb15c6dbb4011`  
		Last Modified: Thu, 13 Dec 2018 17:28:05 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce827d034e5d4059c0658d4f6249419cbbf5112a06b126c57bff7eea74f1db80`  
		Last Modified: Thu, 13 Dec 2018 17:28:05 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-32bit-stretch`

```console
$ docker pull redis@sha256:2f397e9a1bc494daa72f3d7a1d91ec5e6067cd5fc32b0f29208b506efef100d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:b058b6f24f63c720106b11282c23bee1a3516418a02e68cedb903f83e6274085
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39461689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b68c07c3f128bddaac51b97d61fced2c9abb6dcc44eebe0112011a2db9e809d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:22:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 17:23:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 17:23:47 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:23:48 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:23:48 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:23:48 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:23:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:23:49 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:23:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befe9c4f3126d0cb29d7dcb1f92198ba55bc60d64797af189c601bc853ae63b8`  
		Last Modified: Thu, 13 Dec 2018 17:28:07 GMT  
		Size: 4.8 MB (4848359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b340992a79bab441a7894bb36e41366913fd355b73357426f8c360c63e9d866d`  
		Last Modified: Thu, 13 Dec 2018 17:28:07 GMT  
		Size: 11.2 MB (11183501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37cc50d5dbdab46376a268bc7108fe053038c51751e17df437cdb15c6dbb4011`  
		Last Modified: Thu, 13 Dec 2018 17:28:05 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce827d034e5d4059c0658d4f6249419cbbf5112a06b126c57bff7eea74f1db80`  
		Last Modified: Thu, 13 Dec 2018 17:28:05 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.3-32bit`

```console
$ docker pull redis@sha256:2f397e9a1bc494daa72f3d7a1d91ec5e6067cd5fc32b0f29208b506efef100d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.3-32bit` - linux; amd64

```console
$ docker pull redis@sha256:b058b6f24f63c720106b11282c23bee1a3516418a02e68cedb903f83e6274085
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39461689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b68c07c3f128bddaac51b97d61fced2c9abb6dcc44eebe0112011a2db9e809d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:22:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 17:23:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 17:23:47 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:23:48 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:23:48 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:23:48 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:23:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:23:49 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:23:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befe9c4f3126d0cb29d7dcb1f92198ba55bc60d64797af189c601bc853ae63b8`  
		Last Modified: Thu, 13 Dec 2018 17:28:07 GMT  
		Size: 4.8 MB (4848359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b340992a79bab441a7894bb36e41366913fd355b73357426f8c360c63e9d866d`  
		Last Modified: Thu, 13 Dec 2018 17:28:07 GMT  
		Size: 11.2 MB (11183501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37cc50d5dbdab46376a268bc7108fe053038c51751e17df437cdb15c6dbb4011`  
		Last Modified: Thu, 13 Dec 2018 17:28:05 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce827d034e5d4059c0658d4f6249419cbbf5112a06b126c57bff7eea74f1db80`  
		Last Modified: Thu, 13 Dec 2018 17:28:05 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.3-32bit-stretch`

```console
$ docker pull redis@sha256:2f397e9a1bc494daa72f3d7a1d91ec5e6067cd5fc32b0f29208b506efef100d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.3-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:b058b6f24f63c720106b11282c23bee1a3516418a02e68cedb903f83e6274085
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39461689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b68c07c3f128bddaac51b97d61fced2c9abb6dcc44eebe0112011a2db9e809d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:22:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 17:23:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 17:23:47 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:23:48 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:23:48 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:23:48 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:23:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:23:49 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:23:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befe9c4f3126d0cb29d7dcb1f92198ba55bc60d64797af189c601bc853ae63b8`  
		Last Modified: Thu, 13 Dec 2018 17:28:07 GMT  
		Size: 4.8 MB (4848359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b340992a79bab441a7894bb36e41366913fd355b73357426f8c360c63e9d866d`  
		Last Modified: Thu, 13 Dec 2018 17:28:07 GMT  
		Size: 11.2 MB (11183501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37cc50d5dbdab46376a268bc7108fe053038c51751e17df437cdb15c6dbb4011`  
		Last Modified: Thu, 13 Dec 2018 17:28:05 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce827d034e5d4059c0658d4f6249419cbbf5112a06b126c57bff7eea74f1db80`  
		Last Modified: Thu, 13 Dec 2018 17:28:05 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.3-alpine`

```console
$ docker pull redis@sha256:8fd83c5986f444f1a5521e3eda7395f0f21ff16d33cc3b89d19ca7c58293c5dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.3-alpine` - linux; amd64

```console
$ docker pull redis@sha256:18922401ac594c680366e4d25f9c9c0dc2bb2ad04be184b70ff554abd4082181
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14945773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85cb68adadacf2c6fc732c8466b200d802e324f5ef617083b14c3d0aebcf6fd3`
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
# Thu, 13 Dec 2018 17:24:15 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:24:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:24:16 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:25:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 17:25:03 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:25:03 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:25:03 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:25:03 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:25:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:25:04 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:25:04 GMT
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
	-	`sha256:8dd99d530347c52e17339ae6e77f9bf8c33998167e309737279e65adc75b9511`  
		Last Modified: Thu, 13 Dec 2018 17:30:31 GMT  
		Size: 12.3 MB (12334951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7137334fa8f033af889f00642719074bb51935cf1b87858ba15664df5b820218`  
		Last Modified: Thu, 13 Dec 2018 17:30:29 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30610ca6448732cd757d7aecd79bcdc085f04645b0489560bc2d84ce8c9dc4e5`  
		Last Modified: Thu, 13 Dec 2018 17:30:29 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.3-alpine3.8`

```console
$ docker pull redis@sha256:8fd83c5986f444f1a5521e3eda7395f0f21ff16d33cc3b89d19ca7c58293c5dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.3-alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:18922401ac594c680366e4d25f9c9c0dc2bb2ad04be184b70ff554abd4082181
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14945773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85cb68adadacf2c6fc732c8466b200d802e324f5ef617083b14c3d0aebcf6fd3`
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
# Thu, 13 Dec 2018 17:24:15 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:24:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:24:16 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:25:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 17:25:03 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:25:03 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:25:03 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:25:03 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:25:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:25:04 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:25:04 GMT
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
	-	`sha256:8dd99d530347c52e17339ae6e77f9bf8c33998167e309737279e65adc75b9511`  
		Last Modified: Thu, 13 Dec 2018 17:30:31 GMT  
		Size: 12.3 MB (12334951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7137334fa8f033af889f00642719074bb51935cf1b87858ba15664df5b820218`  
		Last Modified: Thu, 13 Dec 2018 17:30:29 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30610ca6448732cd757d7aecd79bcdc085f04645b0489560bc2d84ce8c9dc4e5`  
		Last Modified: Thu, 13 Dec 2018 17:30:29 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.3-stretch`

```console
$ docker pull redis@sha256:08404624cf1445fd3b701bb2394bc37a7578587d6f354919125c0fa0672a5b29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.3-stretch` - linux; amd64

```console
$ docker pull redis@sha256:315bb485f56a486b6fa22b246e3a47eeb112b056175740df6be8259ddc6ba009
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35198647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce25c7293564bac1a996496c75f49c58b840075ac6e8cb08d347fce5be90e212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:22:04 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 17:22:05 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:22:05 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:22:06 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:22:06 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:22:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:22:06 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:22:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b0cc4e76a5c42c5f208f7cc45aa74221ce85cbc6a2bb28e112dcf89301c64`  
		Last Modified: Thu, 13 Dec 2018 17:25:45 GMT  
		Size: 11.8 MB (11768822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e841feee049e36c5cc444ef21e5c96e32a94b7faa6365491b68c610045cc8061`  
		Last Modified: Thu, 13 Dec 2018 17:25:44 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf45e5191d0aa52429676a4c09b75a932be0289cbd140dc4ba3a569a015178f`  
		Last Modified: Thu, 13 Dec 2018 17:25:43 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-alpine`

```console
$ docker pull redis@sha256:8fd83c5986f444f1a5521e3eda7395f0f21ff16d33cc3b89d19ca7c58293c5dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-alpine` - linux; amd64

```console
$ docker pull redis@sha256:18922401ac594c680366e4d25f9c9c0dc2bb2ad04be184b70ff554abd4082181
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14945773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85cb68adadacf2c6fc732c8466b200d802e324f5ef617083b14c3d0aebcf6fd3`
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
# Thu, 13 Dec 2018 17:24:15 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:24:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:24:16 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:25:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 17:25:03 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:25:03 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:25:03 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:25:03 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:25:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:25:04 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:25:04 GMT
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
	-	`sha256:8dd99d530347c52e17339ae6e77f9bf8c33998167e309737279e65adc75b9511`  
		Last Modified: Thu, 13 Dec 2018 17:30:31 GMT  
		Size: 12.3 MB (12334951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7137334fa8f033af889f00642719074bb51935cf1b87858ba15664df5b820218`  
		Last Modified: Thu, 13 Dec 2018 17:30:29 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30610ca6448732cd757d7aecd79bcdc085f04645b0489560bc2d84ce8c9dc4e5`  
		Last Modified: Thu, 13 Dec 2018 17:30:29 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-alpine3.8`

```console
$ docker pull redis@sha256:8fd83c5986f444f1a5521e3eda7395f0f21ff16d33cc3b89d19ca7c58293c5dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:18922401ac594c680366e4d25f9c9c0dc2bb2ad04be184b70ff554abd4082181
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14945773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85cb68adadacf2c6fc732c8466b200d802e324f5ef617083b14c3d0aebcf6fd3`
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
# Thu, 13 Dec 2018 17:24:15 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:24:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:24:16 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:25:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 17:25:03 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:25:03 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:25:03 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:25:03 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:25:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:25:04 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:25:04 GMT
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
	-	`sha256:8dd99d530347c52e17339ae6e77f9bf8c33998167e309737279e65adc75b9511`  
		Last Modified: Thu, 13 Dec 2018 17:30:31 GMT  
		Size: 12.3 MB (12334951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7137334fa8f033af889f00642719074bb51935cf1b87858ba15664df5b820218`  
		Last Modified: Thu, 13 Dec 2018 17:30:29 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30610ca6448732cd757d7aecd79bcdc085f04645b0489560bc2d84ce8c9dc4e5`  
		Last Modified: Thu, 13 Dec 2018 17:30:29 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-stretch`

```console
$ docker pull redis@sha256:08404624cf1445fd3b701bb2394bc37a7578587d6f354919125c0fa0672a5b29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-stretch` - linux; amd64

```console
$ docker pull redis@sha256:315bb485f56a486b6fa22b246e3a47eeb112b056175740df6be8259ddc6ba009
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35198647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce25c7293564bac1a996496c75f49c58b840075ac6e8cb08d347fce5be90e212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:22:04 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 17:22:05 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:22:05 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:22:06 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:22:06 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:22:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:22:06 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:22:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b0cc4e76a5c42c5f208f7cc45aa74221ce85cbc6a2bb28e112dcf89301c64`  
		Last Modified: Thu, 13 Dec 2018 17:25:45 GMT  
		Size: 11.8 MB (11768822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e841feee049e36c5cc444ef21e5c96e32a94b7faa6365491b68c610045cc8061`  
		Last Modified: Thu, 13 Dec 2018 17:25:44 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf45e5191d0aa52429676a4c09b75a932be0289cbd140dc4ba3a569a015178f`  
		Last Modified: Thu, 13 Dec 2018 17:25:43 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-32bit`

```console
$ docker pull redis@sha256:2f397e9a1bc494daa72f3d7a1d91ec5e6067cd5fc32b0f29208b506efef100d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-32bit` - linux; amd64

```console
$ docker pull redis@sha256:b058b6f24f63c720106b11282c23bee1a3516418a02e68cedb903f83e6274085
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39461689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b68c07c3f128bddaac51b97d61fced2c9abb6dcc44eebe0112011a2db9e809d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:22:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 17:23:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 17:23:47 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:23:48 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:23:48 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:23:48 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:23:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:23:49 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:23:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befe9c4f3126d0cb29d7dcb1f92198ba55bc60d64797af189c601bc853ae63b8`  
		Last Modified: Thu, 13 Dec 2018 17:28:07 GMT  
		Size: 4.8 MB (4848359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b340992a79bab441a7894bb36e41366913fd355b73357426f8c360c63e9d866d`  
		Last Modified: Thu, 13 Dec 2018 17:28:07 GMT  
		Size: 11.2 MB (11183501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37cc50d5dbdab46376a268bc7108fe053038c51751e17df437cdb15c6dbb4011`  
		Last Modified: Thu, 13 Dec 2018 17:28:05 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce827d034e5d4059c0658d4f6249419cbbf5112a06b126c57bff7eea74f1db80`  
		Last Modified: Thu, 13 Dec 2018 17:28:05 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-32bit-stretch`

```console
$ docker pull redis@sha256:2f397e9a1bc494daa72f3d7a1d91ec5e6067cd5fc32b0f29208b506efef100d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:b058b6f24f63c720106b11282c23bee1a3516418a02e68cedb903f83e6274085
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39461689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b68c07c3f128bddaac51b97d61fced2c9abb6dcc44eebe0112011a2db9e809d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:22:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 17:23:47 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 17:23:47 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:23:48 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:23:48 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:23:48 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:23:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:23:49 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:23:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befe9c4f3126d0cb29d7dcb1f92198ba55bc60d64797af189c601bc853ae63b8`  
		Last Modified: Thu, 13 Dec 2018 17:28:07 GMT  
		Size: 4.8 MB (4848359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b340992a79bab441a7894bb36e41366913fd355b73357426f8c360c63e9d866d`  
		Last Modified: Thu, 13 Dec 2018 17:28:07 GMT  
		Size: 11.2 MB (11183501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37cc50d5dbdab46376a268bc7108fe053038c51751e17df437cdb15c6dbb4011`  
		Last Modified: Thu, 13 Dec 2018 17:28:05 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce827d034e5d4059c0658d4f6249419cbbf5112a06b126c57bff7eea74f1db80`  
		Last Modified: Thu, 13 Dec 2018 17:28:05 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-alpine`

```console
$ docker pull redis@sha256:8fd83c5986f444f1a5521e3eda7395f0f21ff16d33cc3b89d19ca7c58293c5dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-alpine` - linux; amd64

```console
$ docker pull redis@sha256:18922401ac594c680366e4d25f9c9c0dc2bb2ad04be184b70ff554abd4082181
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14945773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85cb68adadacf2c6fc732c8466b200d802e324f5ef617083b14c3d0aebcf6fd3`
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
# Thu, 13 Dec 2018 17:24:15 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:24:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:24:16 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:25:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 17:25:03 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:25:03 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:25:03 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:25:03 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:25:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:25:04 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:25:04 GMT
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
	-	`sha256:8dd99d530347c52e17339ae6e77f9bf8c33998167e309737279e65adc75b9511`  
		Last Modified: Thu, 13 Dec 2018 17:30:31 GMT  
		Size: 12.3 MB (12334951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7137334fa8f033af889f00642719074bb51935cf1b87858ba15664df5b820218`  
		Last Modified: Thu, 13 Dec 2018 17:30:29 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30610ca6448732cd757d7aecd79bcdc085f04645b0489560bc2d84ce8c9dc4e5`  
		Last Modified: Thu, 13 Dec 2018 17:30:29 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-alpine3.8`

```console
$ docker pull redis@sha256:8fd83c5986f444f1a5521e3eda7395f0f21ff16d33cc3b89d19ca7c58293c5dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:18922401ac594c680366e4d25f9c9c0dc2bb2ad04be184b70ff554abd4082181
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14945773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85cb68adadacf2c6fc732c8466b200d802e324f5ef617083b14c3d0aebcf6fd3`
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
# Thu, 13 Dec 2018 17:24:15 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:24:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:24:16 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:25:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 17:25:03 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:25:03 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:25:03 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:25:03 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:25:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:25:04 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:25:04 GMT
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
	-	`sha256:8dd99d530347c52e17339ae6e77f9bf8c33998167e309737279e65adc75b9511`  
		Last Modified: Thu, 13 Dec 2018 17:30:31 GMT  
		Size: 12.3 MB (12334951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7137334fa8f033af889f00642719074bb51935cf1b87858ba15664df5b820218`  
		Last Modified: Thu, 13 Dec 2018 17:30:29 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30610ca6448732cd757d7aecd79bcdc085f04645b0489560bc2d84ce8c9dc4e5`  
		Last Modified: Thu, 13 Dec 2018 17:30:29 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-stretch`

```console
$ docker pull redis@sha256:08404624cf1445fd3b701bb2394bc37a7578587d6f354919125c0fa0672a5b29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-stretch` - linux; amd64

```console
$ docker pull redis@sha256:315bb485f56a486b6fa22b246e3a47eeb112b056175740df6be8259ddc6ba009
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35198647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce25c7293564bac1a996496c75f49c58b840075ac6e8cb08d347fce5be90e212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:22:04 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 17:22:05 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:22:05 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:22:06 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:22:06 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:22:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:22:06 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:22:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b0cc4e76a5c42c5f208f7cc45aa74221ce85cbc6a2bb28e112dcf89301c64`  
		Last Modified: Thu, 13 Dec 2018 17:25:45 GMT  
		Size: 11.8 MB (11768822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e841feee049e36c5cc444ef21e5c96e32a94b7faa6365491b68c610045cc8061`  
		Last Modified: Thu, 13 Dec 2018 17:25:44 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf45e5191d0aa52429676a4c09b75a932be0289cbd140dc4ba3a569a015178f`  
		Last Modified: Thu, 13 Dec 2018 17:25:43 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:8fd83c5986f444f1a5521e3eda7395f0f21ff16d33cc3b89d19ca7c58293c5dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

```console
$ docker pull redis@sha256:18922401ac594c680366e4d25f9c9c0dc2bb2ad04be184b70ff554abd4082181
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14945773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85cb68adadacf2c6fc732c8466b200d802e324f5ef617083b14c3d0aebcf6fd3`
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
# Thu, 13 Dec 2018 17:24:15 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:24:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:24:16 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:25:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 17:25:03 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:25:03 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:25:03 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:25:03 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:25:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:25:04 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:25:04 GMT
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
	-	`sha256:8dd99d530347c52e17339ae6e77f9bf8c33998167e309737279e65adc75b9511`  
		Last Modified: Thu, 13 Dec 2018 17:30:31 GMT  
		Size: 12.3 MB (12334951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7137334fa8f033af889f00642719074bb51935cf1b87858ba15664df5b820218`  
		Last Modified: Thu, 13 Dec 2018 17:30:29 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30610ca6448732cd757d7aecd79bcdc085f04645b0489560bc2d84ce8c9dc4e5`  
		Last Modified: Thu, 13 Dec 2018 17:30:29 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine3.8`

```console
$ docker pull redis@sha256:8fd83c5986f444f1a5521e3eda7395f0f21ff16d33cc3b89d19ca7c58293c5dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:18922401ac594c680366e4d25f9c9c0dc2bb2ad04be184b70ff554abd4082181
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14945773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85cb68adadacf2c6fc732c8466b200d802e324f5ef617083b14c3d0aebcf6fd3`
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
# Thu, 13 Dec 2018 17:24:15 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:24:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:24:16 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:25:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 13 Dec 2018 17:25:03 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:25:03 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:25:03 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:25:03 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:25:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:25:04 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:25:04 GMT
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
	-	`sha256:8dd99d530347c52e17339ae6e77f9bf8c33998167e309737279e65adc75b9511`  
		Last Modified: Thu, 13 Dec 2018 17:30:31 GMT  
		Size: 12.3 MB (12334951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7137334fa8f033af889f00642719074bb51935cf1b87858ba15664df5b820218`  
		Last Modified: Thu, 13 Dec 2018 17:30:29 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30610ca6448732cd757d7aecd79bcdc085f04645b0489560bc2d84ce8c9dc4e5`  
		Last Modified: Thu, 13 Dec 2018 17:30:29 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:08404624cf1445fd3b701bb2394bc37a7578587d6f354919125c0fa0672a5b29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:latest` - linux; amd64

```console
$ docker pull redis@sha256:315bb485f56a486b6fa22b246e3a47eeb112b056175740df6be8259ddc6ba009
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35198647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce25c7293564bac1a996496c75f49c58b840075ac6e8cb08d347fce5be90e212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:22:04 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 17:22:05 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:22:05 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:22:06 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:22:06 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:22:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:22:06 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:22:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b0cc4e76a5c42c5f208f7cc45aa74221ce85cbc6a2bb28e112dcf89301c64`  
		Last Modified: Thu, 13 Dec 2018 17:25:45 GMT  
		Size: 11.8 MB (11768822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e841feee049e36c5cc444ef21e5c96e32a94b7faa6365491b68c610045cc8061`  
		Last Modified: Thu, 13 Dec 2018 17:25:44 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf45e5191d0aa52429676a4c09b75a932be0289cbd140dc4ba3a569a015178f`  
		Last Modified: Thu, 13 Dec 2018 17:25:43 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:stretch`

```console
$ docker pull redis@sha256:08404624cf1445fd3b701bb2394bc37a7578587d6f354919125c0fa0672a5b29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:stretch` - linux; amd64

```console
$ docker pull redis@sha256:315bb485f56a486b6fa22b246e3a47eeb112b056175740df6be8259ddc6ba009
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35198647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce25c7293564bac1a996496c75f49c58b840075ac6e8cb08d347fce5be90e212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:02:21 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 16 Nov 2018 09:02:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 09:02:51 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 13 Dec 2018 17:20:51 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 13 Dec 2018 17:22:04 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 17:22:05 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 13 Dec 2018 17:22:05 GMT
VOLUME [/data]
# Thu, 13 Dec 2018 17:22:06 GMT
WORKDIR /data
# Thu, 13 Dec 2018 17:22:06 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Thu, 13 Dec 2018 17:22:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Dec 2018 17:22:06 GMT
EXPOSE 6379/tcp
# Thu, 13 Dec 2018 17:22:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0f7688756ea23ac9146ec3d78976f479aab9c724a659c3b63cff619e65a95`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e16f6135a590ee3e34841fbde3c4dbe5b7c29907b3d0e070b6496d05308429`  
		Last Modified: Fri, 16 Nov 2018 09:12:11 GMT  
		Size: 941.3 KB (941290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b0cc4e76a5c42c5f208f7cc45aa74221ce85cbc6a2bb28e112dcf89301c64`  
		Last Modified: Thu, 13 Dec 2018 17:25:45 GMT  
		Size: 11.8 MB (11768822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e841feee049e36c5cc444ef21e5c96e32a94b7faa6365491b68c610045cc8061`  
		Last Modified: Thu, 13 Dec 2018 17:25:44 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf45e5191d0aa52429676a4c09b75a932be0289cbd140dc4ba3a569a015178f`  
		Last Modified: Thu, 13 Dec 2018 17:25:43 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
