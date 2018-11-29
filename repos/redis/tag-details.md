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
-	[`redis:5.0.2`](#redis502)
-	[`redis:5.0.2-32bit`](#redis502-32bit)
-	[`redis:5.0.2-32bit-stretch`](#redis502-32bit-stretch)
-	[`redis:5.0.2-alpine`](#redis502-alpine)
-	[`redis:5.0.2-alpine3.8`](#redis502-alpine38)
-	[`redis:5.0.2-stretch`](#redis502-stretch)
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
$ docker pull redis@sha256:8787566f2b5f5368b30655b7f04126f97f4519fdeecd6590224e26956568dd93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:8f916bfdd5a9108e45ae4aba310fe4d539b5d793f7fa64d2419f644b051b4cfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39449300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:775b482a0f96d5f134709b331e1607524524d8d7df3c8a39f846f6306d30632a`
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
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:30:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Nov 2018 23:31:59 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Nov 2018 23:32:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:32:00 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:32:01 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:32:01 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:32:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:32:02 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:32:02 GMT
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
	-	`sha256:580df67e47b4e6d80bb7ad72393b1310f194f558fcaa50ef1e9eaa6010717dfa`  
		Last Modified: Wed, 28 Nov 2018 23:38:00 GMT  
		Size: 4.8 MB (4848330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17cdafd3c3d5ce2f9ac67d1f88ecc6674e726008e26f6c801732acbf9af2363`  
		Last Modified: Wed, 28 Nov 2018 23:38:01 GMT  
		Size: 11.2 MB (11171141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff43813cb670131e7e4b068904f997ad7759e0c95c1545375f5bf9f048fab03e`  
		Last Modified: Wed, 28 Nov 2018 23:37:59 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9adeda5f446da8e5a580fbdda8db48b379588d1bebbd3b43140e1326fc033b`  
		Last Modified: Wed, 28 Nov 2018 23:37:58 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit-stretch`

```console
$ docker pull redis@sha256:8787566f2b5f5368b30655b7f04126f97f4519fdeecd6590224e26956568dd93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:8f916bfdd5a9108e45ae4aba310fe4d539b5d793f7fa64d2419f644b051b4cfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39449300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:775b482a0f96d5f134709b331e1607524524d8d7df3c8a39f846f6306d30632a`
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
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:30:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Nov 2018 23:31:59 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Nov 2018 23:32:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:32:00 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:32:01 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:32:01 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:32:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:32:02 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:32:02 GMT
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
	-	`sha256:580df67e47b4e6d80bb7ad72393b1310f194f558fcaa50ef1e9eaa6010717dfa`  
		Last Modified: Wed, 28 Nov 2018 23:38:00 GMT  
		Size: 4.8 MB (4848330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17cdafd3c3d5ce2f9ac67d1f88ecc6674e726008e26f6c801732acbf9af2363`  
		Last Modified: Wed, 28 Nov 2018 23:38:01 GMT  
		Size: 11.2 MB (11171141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff43813cb670131e7e4b068904f997ad7759e0c95c1545375f5bf9f048fab03e`  
		Last Modified: Wed, 28 Nov 2018 23:37:59 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9adeda5f446da8e5a580fbdda8db48b379588d1bebbd3b43140e1326fc033b`  
		Last Modified: Wed, 28 Nov 2018 23:37:58 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4`

```console
$ docker pull redis@sha256:ee891094f0bb1a76d11cdca6e33c4fdce5cba1f13234c5896d341f6d741034b1
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
$ docker pull redis@sha256:a7538337bbd00fe39d103c041147fff37a0442db8fee9c1a15af579e7d77cb34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32123846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38ee13679d8001a276ef90fb70ec01c23cfd57e0dbca0aa7e92c8e7f22d4445`
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
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 09:08:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 09:09:03 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 09:09:04 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 09:09:04 GMT
WORKDIR /data
# Fri, 16 Nov 2018 09:09:04 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 09:09:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 09:09:05 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 09:09:05 GMT
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
	-	`sha256:106da5e40edcf54afa22fb3b1bc152179c0ebef84bad47ca6671349558378f48`  
		Last Modified: Fri, 16 Nov 2018 09:18:48 GMT  
		Size: 8.7 MB (8694024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7cb8ce75c46998e948731a5729d607cf55d819edc8205fbb62edac819773a69`  
		Last Modified: Fri, 16 Nov 2018 09:18:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059508063f4f1e21e32b1209a028ae3226fff55c8df44c41a9a169933e760cc6`  
		Last Modified: Fri, 16 Nov 2018 09:18:46 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v5

```console
$ docker pull redis@sha256:466405f41c9dedcbb119fcbb38a20d494a0229b2f0393c62e0431340081090ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30514933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f71d2d70dc49ac1e4e21a111e81e191eb29518a3d8b95ba2b56489afe411e136`
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
# Fri, 16 Nov 2018 16:24:20 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 16:24:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 16:24:21 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 16:25:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 16:25:06 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 16:25:06 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 16:25:07 GMT
WORKDIR /data
# Fri, 16 Nov 2018 16:25:08 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:25:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 16:25:09 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 16:25:09 GMT
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
	-	`sha256:05e9b63af15b98b7a7b2d4d68d4c825b421a77ec8a88d2064d472a1cb9c85be4`  
		Last Modified: Fri, 16 Nov 2018 16:27:00 GMT  
		Size: 8.4 MB (8418528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2af7cdd1d24317c357d7d9f857b4fd6a2e6ad4b678e66f0df7893b8f7102b15`  
		Last Modified: Fri, 16 Nov 2018 16:26:58 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2b7c0676160bf4919ea725966175255d596d3803d4416ccd3da47824ba6b09`  
		Last Modified: Fri, 16 Nov 2018 16:26:58 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v7

```console
$ docker pull redis@sha256:706d4c84602877a6bec931d3ce9db1c9a9ded3370ad74993a4777fff8eb340e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28376526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b7358b11d53a98a40572ec92fd4be4c72d5c9093bdde07677ae62280f7abfd8`
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
# Fri, 16 Nov 2018 17:08:28 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 17:08:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 17:08:29 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 17:09:07 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 17:09:08 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 17:09:09 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 17:09:09 GMT
WORKDIR /data
# Fri, 16 Nov 2018 17:09:10 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 17:09:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 17:09:11 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 17:09:12 GMT
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
	-	`sha256:b8ab6575a1b43251479a3cd0f69eb656bb93d084a3803828453a148233f85b40`  
		Last Modified: Fri, 16 Nov 2018 17:11:23 GMT  
		Size: 8.2 MB (8188393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e779fb6554755ea5fa2748aad4d733ad10eebed32b7adc8d4e71eeb9c5c1feeb`  
		Last Modified: Fri, 16 Nov 2018 17:11:21 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f739de09ffc9b7b34dbe993c1fcee978ea2435813a34a0a2da5fdf2b2711239c`  
		Last Modified: Fri, 16 Nov 2018 17:11:21 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:58a53cd97bfc177f43cdebad7c3a28bf3f222d571b7de48b3828592971204fa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29733742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c9fe7182e2feff7ae14bfd778af0117c91b279f379927ae8d6a8ffe394f84c`
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
# Fri, 16 Nov 2018 23:22:55 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 23:22:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 23:22:57 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 23:26:06 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 23:26:13 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 23:26:17 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 23:26:20 GMT
WORKDIR /data
# Fri, 16 Nov 2018 23:26:24 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 23:26:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 23:26:31 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 23:26:35 GMT
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
	-	`sha256:3fca089f8d0471cfe6db1ea3ce865f466045cdf3b8af90a9a480d18e3090afbc`  
		Last Modified: Fri, 16 Nov 2018 23:29:41 GMT  
		Size: 8.5 MB (8492197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd10eb25d491abdda3d028ce0e74b05e1a126dab86567d1cefd87bde28c328db`  
		Last Modified: Fri, 16 Nov 2018 23:29:38 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce4e6cd49dfd5d0684cbb0b3db5f38537c349a98d4585f5062e16ae53598d49`  
		Last Modified: Fri, 16 Nov 2018 23:29:38 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; 386

```console
$ docker pull redis@sha256:a5cb6dc437f5de7bb08b1d41d20fe8e5a5e6b46ad6cae826346cd9535d96291c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32299787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc4de1242a45499c1a4c8ad200c79bcc24907f7d3b68d20fd663a1a89984b6f`
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
# Sat, 17 Nov 2018 06:12:19 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 17 Nov 2018 06:12:19 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 17 Nov 2018 06:12:20 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 17 Nov 2018 06:13:38 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 17 Nov 2018 06:13:39 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 17 Nov 2018 06:13:39 GMT
VOLUME [/data]
# Sat, 17 Nov 2018 06:13:40 GMT
WORKDIR /data
# Sat, 17 Nov 2018 06:13:40 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Sat, 17 Nov 2018 06:13:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 06:13:41 GMT
EXPOSE 6379/tcp
# Sat, 17 Nov 2018 06:13:41 GMT
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
	-	`sha256:082853b55d589e8e72d8e03c60969ea360c19852fcd0a5c844d1b27f70f4af63`  
		Last Modified: Sat, 17 Nov 2018 06:17:08 GMT  
		Size: 8.3 MB (8250686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ff3fce1ec5bfbec7eddc4976f6b3c9f8496e7dc681b000a40baae80a0929f1`  
		Last Modified: Sat, 17 Nov 2018 06:17:05 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c969568aab9511278de03795ccb0ea8720d3b4245c7429f96fefb4bb4276483`  
		Last Modified: Sat, 17 Nov 2018 06:17:05 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; ppc64le

```console
$ docker pull redis@sha256:a287fd795b44cf018938f7186d339cbae17bcc0ef1cedbd9e6e933cb742205e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32520993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b718198d044eeb3d917c50cfed6bc304fb748f5b9d373d51d5541fee3c9d5fe`
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
# Fri, 16 Nov 2018 16:57:25 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 16:57:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 16:57:27 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 16:58:50 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 16:59:00 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 16:59:10 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 16:59:15 GMT
WORKDIR /data
# Fri, 16 Nov 2018 16:59:18 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:59:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 16:59:21 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 16:59:22 GMT
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
	-	`sha256:e3f2a358486a6920ccf5a36cbd52258e4ae004518d40b59a81d183dbee80ee2a`  
		Last Modified: Fri, 16 Nov 2018 17:02:41 GMT  
		Size: 8.9 MB (8868254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e15308f765c4a455342946598df932d5a96943707d325e6a6626c8b4fc1711f`  
		Last Modified: Fri, 16 Nov 2018 17:02:39 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce164b2d38204c35f699cfe802387682b4dfef59406ee0c95e11af82502de9b6`  
		Last Modified: Fri, 16 Nov 2018 17:02:38 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; s390x

```console
$ docker pull redis@sha256:b4830761de2d36ab8536960f9541b1648c4e869118929e2471b41dc6dd32244d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32347690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23b2a774daeedc1441030a0ea875976e52275ee5d20fba5edf967afea1d9200`
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
# Fri, 16 Nov 2018 19:04:54 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 19:04:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 19:04:54 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 19:05:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 19:05:41 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 19:05:41 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 19:05:41 GMT
WORKDIR /data
# Fri, 16 Nov 2018 19:05:42 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 19:05:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 19:05:42 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 19:05:43 GMT
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
	-	`sha256:9d304ea0991fb2e52367252c60fef05af814369c6926eda051c398491a9c01ee`  
		Last Modified: Fri, 16 Nov 2018 19:06:56 GMT  
		Size: 9.1 MB (9083964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812db15d9894a9a102b2ec3d84ee1bf6fc052e1dcf7ae84e56e6b0379d0dc757`  
		Last Modified: Fri, 16 Nov 2018 19:06:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a840d8372bfc9bc7fbbb857445204fe0f8f49955238e3f3c529ccb39d8aa57c`  
		Last Modified: Fri, 16 Nov 2018 19:06:53 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0`

```console
$ docker pull redis@sha256:ee891094f0bb1a76d11cdca6e33c4fdce5cba1f13234c5896d341f6d741034b1
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
$ docker pull redis@sha256:a7538337bbd00fe39d103c041147fff37a0442db8fee9c1a15af579e7d77cb34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32123846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38ee13679d8001a276ef90fb70ec01c23cfd57e0dbca0aa7e92c8e7f22d4445`
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
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 09:08:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 09:09:03 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 09:09:04 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 09:09:04 GMT
WORKDIR /data
# Fri, 16 Nov 2018 09:09:04 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 09:09:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 09:09:05 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 09:09:05 GMT
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
	-	`sha256:106da5e40edcf54afa22fb3b1bc152179c0ebef84bad47ca6671349558378f48`  
		Last Modified: Fri, 16 Nov 2018 09:18:48 GMT  
		Size: 8.7 MB (8694024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7cb8ce75c46998e948731a5729d607cf55d819edc8205fbb62edac819773a69`  
		Last Modified: Fri, 16 Nov 2018 09:18:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059508063f4f1e21e32b1209a028ae3226fff55c8df44c41a9a169933e760cc6`  
		Last Modified: Fri, 16 Nov 2018 09:18:46 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v5

```console
$ docker pull redis@sha256:466405f41c9dedcbb119fcbb38a20d494a0229b2f0393c62e0431340081090ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30514933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f71d2d70dc49ac1e4e21a111e81e191eb29518a3d8b95ba2b56489afe411e136`
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
# Fri, 16 Nov 2018 16:24:20 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 16:24:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 16:24:21 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 16:25:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 16:25:06 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 16:25:06 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 16:25:07 GMT
WORKDIR /data
# Fri, 16 Nov 2018 16:25:08 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:25:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 16:25:09 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 16:25:09 GMT
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
	-	`sha256:05e9b63af15b98b7a7b2d4d68d4c825b421a77ec8a88d2064d472a1cb9c85be4`  
		Last Modified: Fri, 16 Nov 2018 16:27:00 GMT  
		Size: 8.4 MB (8418528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2af7cdd1d24317c357d7d9f857b4fd6a2e6ad4b678e66f0df7893b8f7102b15`  
		Last Modified: Fri, 16 Nov 2018 16:26:58 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2b7c0676160bf4919ea725966175255d596d3803d4416ccd3da47824ba6b09`  
		Last Modified: Fri, 16 Nov 2018 16:26:58 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v7

```console
$ docker pull redis@sha256:706d4c84602877a6bec931d3ce9db1c9a9ded3370ad74993a4777fff8eb340e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28376526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b7358b11d53a98a40572ec92fd4be4c72d5c9093bdde07677ae62280f7abfd8`
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
# Fri, 16 Nov 2018 17:08:28 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 17:08:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 17:08:29 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 17:09:07 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 17:09:08 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 17:09:09 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 17:09:09 GMT
WORKDIR /data
# Fri, 16 Nov 2018 17:09:10 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 17:09:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 17:09:11 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 17:09:12 GMT
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
	-	`sha256:b8ab6575a1b43251479a3cd0f69eb656bb93d084a3803828453a148233f85b40`  
		Last Modified: Fri, 16 Nov 2018 17:11:23 GMT  
		Size: 8.2 MB (8188393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e779fb6554755ea5fa2748aad4d733ad10eebed32b7adc8d4e71eeb9c5c1feeb`  
		Last Modified: Fri, 16 Nov 2018 17:11:21 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f739de09ffc9b7b34dbe993c1fcee978ea2435813a34a0a2da5fdf2b2711239c`  
		Last Modified: Fri, 16 Nov 2018 17:11:21 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:58a53cd97bfc177f43cdebad7c3a28bf3f222d571b7de48b3828592971204fa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29733742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c9fe7182e2feff7ae14bfd778af0117c91b279f379927ae8d6a8ffe394f84c`
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
# Fri, 16 Nov 2018 23:22:55 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 23:22:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 23:22:57 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 23:26:06 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 23:26:13 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 23:26:17 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 23:26:20 GMT
WORKDIR /data
# Fri, 16 Nov 2018 23:26:24 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 23:26:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 23:26:31 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 23:26:35 GMT
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
	-	`sha256:3fca089f8d0471cfe6db1ea3ce865f466045cdf3b8af90a9a480d18e3090afbc`  
		Last Modified: Fri, 16 Nov 2018 23:29:41 GMT  
		Size: 8.5 MB (8492197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd10eb25d491abdda3d028ce0e74b05e1a126dab86567d1cefd87bde28c328db`  
		Last Modified: Fri, 16 Nov 2018 23:29:38 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce4e6cd49dfd5d0684cbb0b3db5f38537c349a98d4585f5062e16ae53598d49`  
		Last Modified: Fri, 16 Nov 2018 23:29:38 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; 386

```console
$ docker pull redis@sha256:a5cb6dc437f5de7bb08b1d41d20fe8e5a5e6b46ad6cae826346cd9535d96291c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32299787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc4de1242a45499c1a4c8ad200c79bcc24907f7d3b68d20fd663a1a89984b6f`
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
# Sat, 17 Nov 2018 06:12:19 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 17 Nov 2018 06:12:19 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 17 Nov 2018 06:12:20 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 17 Nov 2018 06:13:38 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 17 Nov 2018 06:13:39 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 17 Nov 2018 06:13:39 GMT
VOLUME [/data]
# Sat, 17 Nov 2018 06:13:40 GMT
WORKDIR /data
# Sat, 17 Nov 2018 06:13:40 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Sat, 17 Nov 2018 06:13:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 06:13:41 GMT
EXPOSE 6379/tcp
# Sat, 17 Nov 2018 06:13:41 GMT
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
	-	`sha256:082853b55d589e8e72d8e03c60969ea360c19852fcd0a5c844d1b27f70f4af63`  
		Last Modified: Sat, 17 Nov 2018 06:17:08 GMT  
		Size: 8.3 MB (8250686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ff3fce1ec5bfbec7eddc4976f6b3c9f8496e7dc681b000a40baae80a0929f1`  
		Last Modified: Sat, 17 Nov 2018 06:17:05 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c969568aab9511278de03795ccb0ea8720d3b4245c7429f96fefb4bb4276483`  
		Last Modified: Sat, 17 Nov 2018 06:17:05 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; ppc64le

```console
$ docker pull redis@sha256:a287fd795b44cf018938f7186d339cbae17bcc0ef1cedbd9e6e933cb742205e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32520993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b718198d044eeb3d917c50cfed6bc304fb748f5b9d373d51d5541fee3c9d5fe`
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
# Fri, 16 Nov 2018 16:57:25 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 16:57:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 16:57:27 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 16:58:50 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 16:59:00 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 16:59:10 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 16:59:15 GMT
WORKDIR /data
# Fri, 16 Nov 2018 16:59:18 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:59:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 16:59:21 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 16:59:22 GMT
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
	-	`sha256:e3f2a358486a6920ccf5a36cbd52258e4ae004518d40b59a81d183dbee80ee2a`  
		Last Modified: Fri, 16 Nov 2018 17:02:41 GMT  
		Size: 8.9 MB (8868254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e15308f765c4a455342946598df932d5a96943707d325e6a6626c8b4fc1711f`  
		Last Modified: Fri, 16 Nov 2018 17:02:39 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce164b2d38204c35f699cfe802387682b4dfef59406ee0c95e11af82502de9b6`  
		Last Modified: Fri, 16 Nov 2018 17:02:38 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; s390x

```console
$ docker pull redis@sha256:b4830761de2d36ab8536960f9541b1648c4e869118929e2471b41dc6dd32244d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32347690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23b2a774daeedc1441030a0ea875976e52275ee5d20fba5edf967afea1d9200`
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
# Fri, 16 Nov 2018 19:04:54 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 19:04:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 19:04:54 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 19:05:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 19:05:41 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 19:05:41 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 19:05:41 GMT
WORKDIR /data
# Fri, 16 Nov 2018 19:05:42 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 19:05:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 19:05:42 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 19:05:43 GMT
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
	-	`sha256:9d304ea0991fb2e52367252c60fef05af814369c6926eda051c398491a9c01ee`  
		Last Modified: Fri, 16 Nov 2018 19:06:56 GMT  
		Size: 9.1 MB (9083964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812db15d9894a9a102b2ec3d84ee1bf6fc052e1dcf7ae84e56e6b0379d0dc757`  
		Last Modified: Fri, 16 Nov 2018 19:06:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a840d8372bfc9bc7fbbb857445204fe0f8f49955238e3f3c529ccb39d8aa57c`  
		Last Modified: Fri, 16 Nov 2018 19:06:53 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.11`

```console
$ docker pull redis@sha256:ee891094f0bb1a76d11cdca6e33c4fdce5cba1f13234c5896d341f6d741034b1
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
$ docker pull redis@sha256:a7538337bbd00fe39d103c041147fff37a0442db8fee9c1a15af579e7d77cb34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32123846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38ee13679d8001a276ef90fb70ec01c23cfd57e0dbca0aa7e92c8e7f22d4445`
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
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 09:08:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 09:09:03 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 09:09:04 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 09:09:04 GMT
WORKDIR /data
# Fri, 16 Nov 2018 09:09:04 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 09:09:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 09:09:05 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 09:09:05 GMT
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
	-	`sha256:106da5e40edcf54afa22fb3b1bc152179c0ebef84bad47ca6671349558378f48`  
		Last Modified: Fri, 16 Nov 2018 09:18:48 GMT  
		Size: 8.7 MB (8694024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7cb8ce75c46998e948731a5729d607cf55d819edc8205fbb62edac819773a69`  
		Last Modified: Fri, 16 Nov 2018 09:18:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059508063f4f1e21e32b1209a028ae3226fff55c8df44c41a9a169933e760cc6`  
		Last Modified: Fri, 16 Nov 2018 09:18:46 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11` - linux; arm variant v5

```console
$ docker pull redis@sha256:466405f41c9dedcbb119fcbb38a20d494a0229b2f0393c62e0431340081090ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30514933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f71d2d70dc49ac1e4e21a111e81e191eb29518a3d8b95ba2b56489afe411e136`
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
# Fri, 16 Nov 2018 16:24:20 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 16:24:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 16:24:21 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 16:25:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 16:25:06 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 16:25:06 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 16:25:07 GMT
WORKDIR /data
# Fri, 16 Nov 2018 16:25:08 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:25:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 16:25:09 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 16:25:09 GMT
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
	-	`sha256:05e9b63af15b98b7a7b2d4d68d4c825b421a77ec8a88d2064d472a1cb9c85be4`  
		Last Modified: Fri, 16 Nov 2018 16:27:00 GMT  
		Size: 8.4 MB (8418528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2af7cdd1d24317c357d7d9f857b4fd6a2e6ad4b678e66f0df7893b8f7102b15`  
		Last Modified: Fri, 16 Nov 2018 16:26:58 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2b7c0676160bf4919ea725966175255d596d3803d4416ccd3da47824ba6b09`  
		Last Modified: Fri, 16 Nov 2018 16:26:58 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11` - linux; arm variant v7

```console
$ docker pull redis@sha256:706d4c84602877a6bec931d3ce9db1c9a9ded3370ad74993a4777fff8eb340e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28376526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b7358b11d53a98a40572ec92fd4be4c72d5c9093bdde07677ae62280f7abfd8`
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
# Fri, 16 Nov 2018 17:08:28 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 17:08:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 17:08:29 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 17:09:07 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 17:09:08 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 17:09:09 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 17:09:09 GMT
WORKDIR /data
# Fri, 16 Nov 2018 17:09:10 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 17:09:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 17:09:11 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 17:09:12 GMT
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
	-	`sha256:b8ab6575a1b43251479a3cd0f69eb656bb93d084a3803828453a148233f85b40`  
		Last Modified: Fri, 16 Nov 2018 17:11:23 GMT  
		Size: 8.2 MB (8188393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e779fb6554755ea5fa2748aad4d733ad10eebed32b7adc8d4e71eeb9c5c1feeb`  
		Last Modified: Fri, 16 Nov 2018 17:11:21 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f739de09ffc9b7b34dbe993c1fcee978ea2435813a34a0a2da5fdf2b2711239c`  
		Last Modified: Fri, 16 Nov 2018 17:11:21 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:58a53cd97bfc177f43cdebad7c3a28bf3f222d571b7de48b3828592971204fa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29733742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c9fe7182e2feff7ae14bfd778af0117c91b279f379927ae8d6a8ffe394f84c`
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
# Fri, 16 Nov 2018 23:22:55 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 23:22:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 23:22:57 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 23:26:06 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 23:26:13 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 23:26:17 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 23:26:20 GMT
WORKDIR /data
# Fri, 16 Nov 2018 23:26:24 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 23:26:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 23:26:31 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 23:26:35 GMT
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
	-	`sha256:3fca089f8d0471cfe6db1ea3ce865f466045cdf3b8af90a9a480d18e3090afbc`  
		Last Modified: Fri, 16 Nov 2018 23:29:41 GMT  
		Size: 8.5 MB (8492197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd10eb25d491abdda3d028ce0e74b05e1a126dab86567d1cefd87bde28c328db`  
		Last Modified: Fri, 16 Nov 2018 23:29:38 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce4e6cd49dfd5d0684cbb0b3db5f38537c349a98d4585f5062e16ae53598d49`  
		Last Modified: Fri, 16 Nov 2018 23:29:38 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11` - linux; 386

```console
$ docker pull redis@sha256:a5cb6dc437f5de7bb08b1d41d20fe8e5a5e6b46ad6cae826346cd9535d96291c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32299787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc4de1242a45499c1a4c8ad200c79bcc24907f7d3b68d20fd663a1a89984b6f`
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
# Sat, 17 Nov 2018 06:12:19 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 17 Nov 2018 06:12:19 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 17 Nov 2018 06:12:20 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 17 Nov 2018 06:13:38 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 17 Nov 2018 06:13:39 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 17 Nov 2018 06:13:39 GMT
VOLUME [/data]
# Sat, 17 Nov 2018 06:13:40 GMT
WORKDIR /data
# Sat, 17 Nov 2018 06:13:40 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Sat, 17 Nov 2018 06:13:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 06:13:41 GMT
EXPOSE 6379/tcp
# Sat, 17 Nov 2018 06:13:41 GMT
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
	-	`sha256:082853b55d589e8e72d8e03c60969ea360c19852fcd0a5c844d1b27f70f4af63`  
		Last Modified: Sat, 17 Nov 2018 06:17:08 GMT  
		Size: 8.3 MB (8250686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ff3fce1ec5bfbec7eddc4976f6b3c9f8496e7dc681b000a40baae80a0929f1`  
		Last Modified: Sat, 17 Nov 2018 06:17:05 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c969568aab9511278de03795ccb0ea8720d3b4245c7429f96fefb4bb4276483`  
		Last Modified: Sat, 17 Nov 2018 06:17:05 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11` - linux; ppc64le

```console
$ docker pull redis@sha256:a287fd795b44cf018938f7186d339cbae17bcc0ef1cedbd9e6e933cb742205e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32520993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b718198d044eeb3d917c50cfed6bc304fb748f5b9d373d51d5541fee3c9d5fe`
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
# Fri, 16 Nov 2018 16:57:25 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 16:57:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 16:57:27 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 16:58:50 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 16:59:00 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 16:59:10 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 16:59:15 GMT
WORKDIR /data
# Fri, 16 Nov 2018 16:59:18 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:59:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 16:59:21 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 16:59:22 GMT
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
	-	`sha256:e3f2a358486a6920ccf5a36cbd52258e4ae004518d40b59a81d183dbee80ee2a`  
		Last Modified: Fri, 16 Nov 2018 17:02:41 GMT  
		Size: 8.9 MB (8868254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e15308f765c4a455342946598df932d5a96943707d325e6a6626c8b4fc1711f`  
		Last Modified: Fri, 16 Nov 2018 17:02:39 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce164b2d38204c35f699cfe802387682b4dfef59406ee0c95e11af82502de9b6`  
		Last Modified: Fri, 16 Nov 2018 17:02:38 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11` - linux; s390x

```console
$ docker pull redis@sha256:b4830761de2d36ab8536960f9541b1648c4e869118929e2471b41dc6dd32244d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32347690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23b2a774daeedc1441030a0ea875976e52275ee5d20fba5edf967afea1d9200`
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
# Fri, 16 Nov 2018 19:04:54 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 19:04:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 19:04:54 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 19:05:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 19:05:41 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 19:05:41 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 19:05:41 GMT
WORKDIR /data
# Fri, 16 Nov 2018 19:05:42 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 19:05:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 19:05:42 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 19:05:43 GMT
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
	-	`sha256:9d304ea0991fb2e52367252c60fef05af814369c6926eda051c398491a9c01ee`  
		Last Modified: Fri, 16 Nov 2018 19:06:56 GMT  
		Size: 9.1 MB (9083964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812db15d9894a9a102b2ec3d84ee1bf6fc052e1dcf7ae84e56e6b0379d0dc757`  
		Last Modified: Fri, 16 Nov 2018 19:06:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a840d8372bfc9bc7fbbb857445204fe0f8f49955238e3f3c529ccb39d8aa57c`  
		Last Modified: Fri, 16 Nov 2018 19:06:53 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.11-32bit`

```console
$ docker pull redis@sha256:8d3b560ca732d2677b08e7669bcd3aff714ad5e90e2af7b48960fc2f928fe95b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.11-32bit` - linux; amd64

```console
$ docker pull redis@sha256:d7f89878d8fe15162a62206af14c1623418c2952c4b788c432e3be4e4b5ba5da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36533099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a43e1d3fb2a7c9b0e3c462b704c51de59b96ef409ffb2bef3623f1b44bfce1`
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
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 09:09:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 09:10:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 09:11:01 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 09:11:01 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 09:11:13 GMT
WORKDIR /data
# Fri, 16 Nov 2018 09:11:14 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 09:11:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 09:11:26 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 09:11:26 GMT
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
	-	`sha256:4993e4cbbeced58ca7c78bc9ff310215f93cdc21ccd6c178ca5d4ff6341861a3`  
		Last Modified: Fri, 16 Nov 2018 09:21:15 GMT  
		Size: 4.8 MB (4848322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ac039ebb83dbf8934adedbc707ae83d830141a24cfbf815eb7066ab83e9cda`  
		Last Modified: Fri, 16 Nov 2018 09:21:16 GMT  
		Size: 8.3 MB (8254949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a147b32d5b267ffd191ba7caddeeb5954eadf775f49d684179539e9f2f4dc43`  
		Last Modified: Fri, 16 Nov 2018 09:21:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1791a0d4516140db0907d79bed2c5ac8a46bb9915e06ae3f36582f475313d44`  
		Last Modified: Fri, 16 Nov 2018 09:21:15 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.11-32bit-stretch`

```console
$ docker pull redis@sha256:8d3b560ca732d2677b08e7669bcd3aff714ad5e90e2af7b48960fc2f928fe95b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.11-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:d7f89878d8fe15162a62206af14c1623418c2952c4b788c432e3be4e4b5ba5da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36533099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a43e1d3fb2a7c9b0e3c462b704c51de59b96ef409ffb2bef3623f1b44bfce1`
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
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 09:09:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 09:10:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 09:11:01 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 09:11:01 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 09:11:13 GMT
WORKDIR /data
# Fri, 16 Nov 2018 09:11:14 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 09:11:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 09:11:26 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 09:11:26 GMT
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
	-	`sha256:4993e4cbbeced58ca7c78bc9ff310215f93cdc21ccd6c178ca5d4ff6341861a3`  
		Last Modified: Fri, 16 Nov 2018 09:21:15 GMT  
		Size: 4.8 MB (4848322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ac039ebb83dbf8934adedbc707ae83d830141a24cfbf815eb7066ab83e9cda`  
		Last Modified: Fri, 16 Nov 2018 09:21:16 GMT  
		Size: 8.3 MB (8254949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a147b32d5b267ffd191ba7caddeeb5954eadf775f49d684179539e9f2f4dc43`  
		Last Modified: Fri, 16 Nov 2018 09:21:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1791a0d4516140db0907d79bed2c5ac8a46bb9915e06ae3f36582f475313d44`  
		Last Modified: Fri, 16 Nov 2018 09:21:15 GMT  
		Size: 423.0 B  
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
$ docker pull redis@sha256:ee891094f0bb1a76d11cdca6e33c4fdce5cba1f13234c5896d341f6d741034b1
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
$ docker pull redis@sha256:a7538337bbd00fe39d103c041147fff37a0442db8fee9c1a15af579e7d77cb34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32123846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38ee13679d8001a276ef90fb70ec01c23cfd57e0dbca0aa7e92c8e7f22d4445`
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
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 09:08:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 09:09:03 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 09:09:04 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 09:09:04 GMT
WORKDIR /data
# Fri, 16 Nov 2018 09:09:04 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 09:09:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 09:09:05 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 09:09:05 GMT
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
	-	`sha256:106da5e40edcf54afa22fb3b1bc152179c0ebef84bad47ca6671349558378f48`  
		Last Modified: Fri, 16 Nov 2018 09:18:48 GMT  
		Size: 8.7 MB (8694024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7cb8ce75c46998e948731a5729d607cf55d819edc8205fbb62edac819773a69`  
		Last Modified: Fri, 16 Nov 2018 09:18:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059508063f4f1e21e32b1209a028ae3226fff55c8df44c41a9a169933e760cc6`  
		Last Modified: Fri, 16 Nov 2018 09:18:46 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:466405f41c9dedcbb119fcbb38a20d494a0229b2f0393c62e0431340081090ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30514933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f71d2d70dc49ac1e4e21a111e81e191eb29518a3d8b95ba2b56489afe411e136`
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
# Fri, 16 Nov 2018 16:24:20 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 16:24:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 16:24:21 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 16:25:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 16:25:06 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 16:25:06 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 16:25:07 GMT
WORKDIR /data
# Fri, 16 Nov 2018 16:25:08 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:25:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 16:25:09 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 16:25:09 GMT
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
	-	`sha256:05e9b63af15b98b7a7b2d4d68d4c825b421a77ec8a88d2064d472a1cb9c85be4`  
		Last Modified: Fri, 16 Nov 2018 16:27:00 GMT  
		Size: 8.4 MB (8418528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2af7cdd1d24317c357d7d9f857b4fd6a2e6ad4b678e66f0df7893b8f7102b15`  
		Last Modified: Fri, 16 Nov 2018 16:26:58 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2b7c0676160bf4919ea725966175255d596d3803d4416ccd3da47824ba6b09`  
		Last Modified: Fri, 16 Nov 2018 16:26:58 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:706d4c84602877a6bec931d3ce9db1c9a9ded3370ad74993a4777fff8eb340e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28376526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b7358b11d53a98a40572ec92fd4be4c72d5c9093bdde07677ae62280f7abfd8`
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
# Fri, 16 Nov 2018 17:08:28 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 17:08:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 17:08:29 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 17:09:07 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 17:09:08 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 17:09:09 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 17:09:09 GMT
WORKDIR /data
# Fri, 16 Nov 2018 17:09:10 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 17:09:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 17:09:11 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 17:09:12 GMT
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
	-	`sha256:b8ab6575a1b43251479a3cd0f69eb656bb93d084a3803828453a148233f85b40`  
		Last Modified: Fri, 16 Nov 2018 17:11:23 GMT  
		Size: 8.2 MB (8188393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e779fb6554755ea5fa2748aad4d733ad10eebed32b7adc8d4e71eeb9c5c1feeb`  
		Last Modified: Fri, 16 Nov 2018 17:11:21 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f739de09ffc9b7b34dbe993c1fcee978ea2435813a34a0a2da5fdf2b2711239c`  
		Last Modified: Fri, 16 Nov 2018 17:11:21 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:58a53cd97bfc177f43cdebad7c3a28bf3f222d571b7de48b3828592971204fa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29733742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c9fe7182e2feff7ae14bfd778af0117c91b279f379927ae8d6a8ffe394f84c`
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
# Fri, 16 Nov 2018 23:22:55 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 23:22:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 23:22:57 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 23:26:06 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 23:26:13 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 23:26:17 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 23:26:20 GMT
WORKDIR /data
# Fri, 16 Nov 2018 23:26:24 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 23:26:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 23:26:31 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 23:26:35 GMT
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
	-	`sha256:3fca089f8d0471cfe6db1ea3ce865f466045cdf3b8af90a9a480d18e3090afbc`  
		Last Modified: Fri, 16 Nov 2018 23:29:41 GMT  
		Size: 8.5 MB (8492197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd10eb25d491abdda3d028ce0e74b05e1a126dab86567d1cefd87bde28c328db`  
		Last Modified: Fri, 16 Nov 2018 23:29:38 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce4e6cd49dfd5d0684cbb0b3db5f38537c349a98d4585f5062e16ae53598d49`  
		Last Modified: Fri, 16 Nov 2018 23:29:38 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-stretch` - linux; 386

```console
$ docker pull redis@sha256:a5cb6dc437f5de7bb08b1d41d20fe8e5a5e6b46ad6cae826346cd9535d96291c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32299787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc4de1242a45499c1a4c8ad200c79bcc24907f7d3b68d20fd663a1a89984b6f`
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
# Sat, 17 Nov 2018 06:12:19 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 17 Nov 2018 06:12:19 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 17 Nov 2018 06:12:20 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 17 Nov 2018 06:13:38 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 17 Nov 2018 06:13:39 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 17 Nov 2018 06:13:39 GMT
VOLUME [/data]
# Sat, 17 Nov 2018 06:13:40 GMT
WORKDIR /data
# Sat, 17 Nov 2018 06:13:40 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Sat, 17 Nov 2018 06:13:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 06:13:41 GMT
EXPOSE 6379/tcp
# Sat, 17 Nov 2018 06:13:41 GMT
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
	-	`sha256:082853b55d589e8e72d8e03c60969ea360c19852fcd0a5c844d1b27f70f4af63`  
		Last Modified: Sat, 17 Nov 2018 06:17:08 GMT  
		Size: 8.3 MB (8250686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ff3fce1ec5bfbec7eddc4976f6b3c9f8496e7dc681b000a40baae80a0929f1`  
		Last Modified: Sat, 17 Nov 2018 06:17:05 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c969568aab9511278de03795ccb0ea8720d3b4245c7429f96fefb4bb4276483`  
		Last Modified: Sat, 17 Nov 2018 06:17:05 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:a287fd795b44cf018938f7186d339cbae17bcc0ef1cedbd9e6e933cb742205e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32520993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b718198d044eeb3d917c50cfed6bc304fb748f5b9d373d51d5541fee3c9d5fe`
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
# Fri, 16 Nov 2018 16:57:25 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 16:57:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 16:57:27 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 16:58:50 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 16:59:00 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 16:59:10 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 16:59:15 GMT
WORKDIR /data
# Fri, 16 Nov 2018 16:59:18 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:59:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 16:59:21 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 16:59:22 GMT
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
	-	`sha256:e3f2a358486a6920ccf5a36cbd52258e4ae004518d40b59a81d183dbee80ee2a`  
		Last Modified: Fri, 16 Nov 2018 17:02:41 GMT  
		Size: 8.9 MB (8868254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e15308f765c4a455342946598df932d5a96943707d325e6a6626c8b4fc1711f`  
		Last Modified: Fri, 16 Nov 2018 17:02:39 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce164b2d38204c35f699cfe802387682b4dfef59406ee0c95e11af82502de9b6`  
		Last Modified: Fri, 16 Nov 2018 17:02:38 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.11-stretch` - linux; s390x

```console
$ docker pull redis@sha256:b4830761de2d36ab8536960f9541b1648c4e869118929e2471b41dc6dd32244d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32347690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23b2a774daeedc1441030a0ea875976e52275ee5d20fba5edf967afea1d9200`
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
# Fri, 16 Nov 2018 19:04:54 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 19:04:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 19:04:54 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 19:05:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 19:05:41 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 19:05:41 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 19:05:41 GMT
WORKDIR /data
# Fri, 16 Nov 2018 19:05:42 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 19:05:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 19:05:42 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 19:05:43 GMT
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
	-	`sha256:9d304ea0991fb2e52367252c60fef05af814369c6926eda051c398491a9c01ee`  
		Last Modified: Fri, 16 Nov 2018 19:06:56 GMT  
		Size: 9.1 MB (9083964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812db15d9894a9a102b2ec3d84ee1bf6fc052e1dcf7ae84e56e6b0379d0dc757`  
		Last Modified: Fri, 16 Nov 2018 19:06:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a840d8372bfc9bc7fbbb857445204fe0f8f49955238e3f3c529ccb39d8aa57c`  
		Last Modified: Fri, 16 Nov 2018 19:06:53 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit`

```console
$ docker pull redis@sha256:8d3b560ca732d2677b08e7669bcd3aff714ad5e90e2af7b48960fc2f928fe95b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:d7f89878d8fe15162a62206af14c1623418c2952c4b788c432e3be4e4b5ba5da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36533099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a43e1d3fb2a7c9b0e3c462b704c51de59b96ef409ffb2bef3623f1b44bfce1`
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
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 09:09:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 09:10:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 09:11:01 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 09:11:01 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 09:11:13 GMT
WORKDIR /data
# Fri, 16 Nov 2018 09:11:14 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 09:11:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 09:11:26 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 09:11:26 GMT
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
	-	`sha256:4993e4cbbeced58ca7c78bc9ff310215f93cdc21ccd6c178ca5d4ff6341861a3`  
		Last Modified: Fri, 16 Nov 2018 09:21:15 GMT  
		Size: 4.8 MB (4848322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ac039ebb83dbf8934adedbc707ae83d830141a24cfbf815eb7066ab83e9cda`  
		Last Modified: Fri, 16 Nov 2018 09:21:16 GMT  
		Size: 8.3 MB (8254949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a147b32d5b267ffd191ba7caddeeb5954eadf775f49d684179539e9f2f4dc43`  
		Last Modified: Fri, 16 Nov 2018 09:21:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1791a0d4516140db0907d79bed2c5ac8a46bb9915e06ae3f36582f475313d44`  
		Last Modified: Fri, 16 Nov 2018 09:21:15 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit-stretch`

```console
$ docker pull redis@sha256:8d3b560ca732d2677b08e7669bcd3aff714ad5e90e2af7b48960fc2f928fe95b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:d7f89878d8fe15162a62206af14c1623418c2952c4b788c432e3be4e4b5ba5da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36533099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a43e1d3fb2a7c9b0e3c462b704c51de59b96ef409ffb2bef3623f1b44bfce1`
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
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 09:09:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 09:10:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 09:11:01 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 09:11:01 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 09:11:13 GMT
WORKDIR /data
# Fri, 16 Nov 2018 09:11:14 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 09:11:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 09:11:26 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 09:11:26 GMT
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
	-	`sha256:4993e4cbbeced58ca7c78bc9ff310215f93cdc21ccd6c178ca5d4ff6341861a3`  
		Last Modified: Fri, 16 Nov 2018 09:21:15 GMT  
		Size: 4.8 MB (4848322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ac039ebb83dbf8934adedbc707ae83d830141a24cfbf815eb7066ab83e9cda`  
		Last Modified: Fri, 16 Nov 2018 09:21:16 GMT  
		Size: 8.3 MB (8254949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a147b32d5b267ffd191ba7caddeeb5954eadf775f49d684179539e9f2f4dc43`  
		Last Modified: Fri, 16 Nov 2018 09:21:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1791a0d4516140db0907d79bed2c5ac8a46bb9915e06ae3f36582f475313d44`  
		Last Modified: Fri, 16 Nov 2018 09:21:15 GMT  
		Size: 423.0 B  
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
$ docker pull redis@sha256:ee891094f0bb1a76d11cdca6e33c4fdce5cba1f13234c5896d341f6d741034b1
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
$ docker pull redis@sha256:a7538337bbd00fe39d103c041147fff37a0442db8fee9c1a15af579e7d77cb34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32123846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38ee13679d8001a276ef90fb70ec01c23cfd57e0dbca0aa7e92c8e7f22d4445`
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
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 09:08:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 09:09:03 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 09:09:04 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 09:09:04 GMT
WORKDIR /data
# Fri, 16 Nov 2018 09:09:04 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 09:09:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 09:09:05 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 09:09:05 GMT
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
	-	`sha256:106da5e40edcf54afa22fb3b1bc152179c0ebef84bad47ca6671349558378f48`  
		Last Modified: Fri, 16 Nov 2018 09:18:48 GMT  
		Size: 8.7 MB (8694024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7cb8ce75c46998e948731a5729d607cf55d819edc8205fbb62edac819773a69`  
		Last Modified: Fri, 16 Nov 2018 09:18:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059508063f4f1e21e32b1209a028ae3226fff55c8df44c41a9a169933e760cc6`  
		Last Modified: Fri, 16 Nov 2018 09:18:46 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:466405f41c9dedcbb119fcbb38a20d494a0229b2f0393c62e0431340081090ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30514933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f71d2d70dc49ac1e4e21a111e81e191eb29518a3d8b95ba2b56489afe411e136`
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
# Fri, 16 Nov 2018 16:24:20 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 16:24:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 16:24:21 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 16:25:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 16:25:06 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 16:25:06 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 16:25:07 GMT
WORKDIR /data
# Fri, 16 Nov 2018 16:25:08 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:25:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 16:25:09 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 16:25:09 GMT
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
	-	`sha256:05e9b63af15b98b7a7b2d4d68d4c825b421a77ec8a88d2064d472a1cb9c85be4`  
		Last Modified: Fri, 16 Nov 2018 16:27:00 GMT  
		Size: 8.4 MB (8418528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2af7cdd1d24317c357d7d9f857b4fd6a2e6ad4b678e66f0df7893b8f7102b15`  
		Last Modified: Fri, 16 Nov 2018 16:26:58 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2b7c0676160bf4919ea725966175255d596d3803d4416ccd3da47824ba6b09`  
		Last Modified: Fri, 16 Nov 2018 16:26:58 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:706d4c84602877a6bec931d3ce9db1c9a9ded3370ad74993a4777fff8eb340e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28376526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b7358b11d53a98a40572ec92fd4be4c72d5c9093bdde07677ae62280f7abfd8`
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
# Fri, 16 Nov 2018 17:08:28 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 17:08:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 17:08:29 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 17:09:07 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 17:09:08 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 17:09:09 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 17:09:09 GMT
WORKDIR /data
# Fri, 16 Nov 2018 17:09:10 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 17:09:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 17:09:11 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 17:09:12 GMT
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
	-	`sha256:b8ab6575a1b43251479a3cd0f69eb656bb93d084a3803828453a148233f85b40`  
		Last Modified: Fri, 16 Nov 2018 17:11:23 GMT  
		Size: 8.2 MB (8188393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e779fb6554755ea5fa2748aad4d733ad10eebed32b7adc8d4e71eeb9c5c1feeb`  
		Last Modified: Fri, 16 Nov 2018 17:11:21 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f739de09ffc9b7b34dbe993c1fcee978ea2435813a34a0a2da5fdf2b2711239c`  
		Last Modified: Fri, 16 Nov 2018 17:11:21 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:58a53cd97bfc177f43cdebad7c3a28bf3f222d571b7de48b3828592971204fa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29733742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c9fe7182e2feff7ae14bfd778af0117c91b279f379927ae8d6a8ffe394f84c`
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
# Fri, 16 Nov 2018 23:22:55 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 23:22:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 23:22:57 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 23:26:06 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 23:26:13 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 23:26:17 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 23:26:20 GMT
WORKDIR /data
# Fri, 16 Nov 2018 23:26:24 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 23:26:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 23:26:31 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 23:26:35 GMT
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
	-	`sha256:3fca089f8d0471cfe6db1ea3ce865f466045cdf3b8af90a9a480d18e3090afbc`  
		Last Modified: Fri, 16 Nov 2018 23:29:41 GMT  
		Size: 8.5 MB (8492197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd10eb25d491abdda3d028ce0e74b05e1a126dab86567d1cefd87bde28c328db`  
		Last Modified: Fri, 16 Nov 2018 23:29:38 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce4e6cd49dfd5d0684cbb0b3db5f38537c349a98d4585f5062e16ae53598d49`  
		Last Modified: Fri, 16 Nov 2018 23:29:38 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; 386

```console
$ docker pull redis@sha256:a5cb6dc437f5de7bb08b1d41d20fe8e5a5e6b46ad6cae826346cd9535d96291c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32299787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc4de1242a45499c1a4c8ad200c79bcc24907f7d3b68d20fd663a1a89984b6f`
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
# Sat, 17 Nov 2018 06:12:19 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 17 Nov 2018 06:12:19 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 17 Nov 2018 06:12:20 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 17 Nov 2018 06:13:38 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 17 Nov 2018 06:13:39 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 17 Nov 2018 06:13:39 GMT
VOLUME [/data]
# Sat, 17 Nov 2018 06:13:40 GMT
WORKDIR /data
# Sat, 17 Nov 2018 06:13:40 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Sat, 17 Nov 2018 06:13:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 06:13:41 GMT
EXPOSE 6379/tcp
# Sat, 17 Nov 2018 06:13:41 GMT
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
	-	`sha256:082853b55d589e8e72d8e03c60969ea360c19852fcd0a5c844d1b27f70f4af63`  
		Last Modified: Sat, 17 Nov 2018 06:17:08 GMT  
		Size: 8.3 MB (8250686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ff3fce1ec5bfbec7eddc4976f6b3c9f8496e7dc681b000a40baae80a0929f1`  
		Last Modified: Sat, 17 Nov 2018 06:17:05 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c969568aab9511278de03795ccb0ea8720d3b4245c7429f96fefb4bb4276483`  
		Last Modified: Sat, 17 Nov 2018 06:17:05 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:a287fd795b44cf018938f7186d339cbae17bcc0ef1cedbd9e6e933cb742205e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32520993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b718198d044eeb3d917c50cfed6bc304fb748f5b9d373d51d5541fee3c9d5fe`
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
# Fri, 16 Nov 2018 16:57:25 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 16:57:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 16:57:27 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 16:58:50 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 16:59:00 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 16:59:10 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 16:59:15 GMT
WORKDIR /data
# Fri, 16 Nov 2018 16:59:18 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:59:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 16:59:21 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 16:59:22 GMT
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
	-	`sha256:e3f2a358486a6920ccf5a36cbd52258e4ae004518d40b59a81d183dbee80ee2a`  
		Last Modified: Fri, 16 Nov 2018 17:02:41 GMT  
		Size: 8.9 MB (8868254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e15308f765c4a455342946598df932d5a96943707d325e6a6626c8b4fc1711f`  
		Last Modified: Fri, 16 Nov 2018 17:02:39 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce164b2d38204c35f699cfe802387682b4dfef59406ee0c95e11af82502de9b6`  
		Last Modified: Fri, 16 Nov 2018 17:02:38 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; s390x

```console
$ docker pull redis@sha256:b4830761de2d36ab8536960f9541b1648c4e869118929e2471b41dc6dd32244d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32347690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23b2a774daeedc1441030a0ea875976e52275ee5d20fba5edf967afea1d9200`
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
# Fri, 16 Nov 2018 19:04:54 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 19:04:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 19:04:54 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 19:05:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 19:05:41 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 19:05:41 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 19:05:41 GMT
WORKDIR /data
# Fri, 16 Nov 2018 19:05:42 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 19:05:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 19:05:42 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 19:05:43 GMT
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
	-	`sha256:9d304ea0991fb2e52367252c60fef05af814369c6926eda051c398491a9c01ee`  
		Last Modified: Fri, 16 Nov 2018 19:06:56 GMT  
		Size: 9.1 MB (9083964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812db15d9894a9a102b2ec3d84ee1bf6fc052e1dcf7ae84e56e6b0379d0dc757`  
		Last Modified: Fri, 16 Nov 2018 19:06:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a840d8372bfc9bc7fbbb857445204fe0f8f49955238e3f3c529ccb39d8aa57c`  
		Last Modified: Fri, 16 Nov 2018 19:06:53 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit`

```console
$ docker pull redis@sha256:8d3b560ca732d2677b08e7669bcd3aff714ad5e90e2af7b48960fc2f928fe95b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:d7f89878d8fe15162a62206af14c1623418c2952c4b788c432e3be4e4b5ba5da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36533099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a43e1d3fb2a7c9b0e3c462b704c51de59b96ef409ffb2bef3623f1b44bfce1`
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
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 09:09:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 09:10:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 09:11:01 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 09:11:01 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 09:11:13 GMT
WORKDIR /data
# Fri, 16 Nov 2018 09:11:14 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 09:11:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 09:11:26 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 09:11:26 GMT
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
	-	`sha256:4993e4cbbeced58ca7c78bc9ff310215f93cdc21ccd6c178ca5d4ff6341861a3`  
		Last Modified: Fri, 16 Nov 2018 09:21:15 GMT  
		Size: 4.8 MB (4848322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ac039ebb83dbf8934adedbc707ae83d830141a24cfbf815eb7066ab83e9cda`  
		Last Modified: Fri, 16 Nov 2018 09:21:16 GMT  
		Size: 8.3 MB (8254949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a147b32d5b267ffd191ba7caddeeb5954eadf775f49d684179539e9f2f4dc43`  
		Last Modified: Fri, 16 Nov 2018 09:21:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1791a0d4516140db0907d79bed2c5ac8a46bb9915e06ae3f36582f475313d44`  
		Last Modified: Fri, 16 Nov 2018 09:21:15 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit-stretch`

```console
$ docker pull redis@sha256:8d3b560ca732d2677b08e7669bcd3aff714ad5e90e2af7b48960fc2f928fe95b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:d7f89878d8fe15162a62206af14c1623418c2952c4b788c432e3be4e4b5ba5da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36533099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a43e1d3fb2a7c9b0e3c462b704c51de59b96ef409ffb2bef3623f1b44bfce1`
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
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 09:09:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 09:10:48 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 09:11:01 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 09:11:01 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 09:11:13 GMT
WORKDIR /data
# Fri, 16 Nov 2018 09:11:14 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 09:11:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 09:11:26 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 09:11:26 GMT
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
	-	`sha256:4993e4cbbeced58ca7c78bc9ff310215f93cdc21ccd6c178ca5d4ff6341861a3`  
		Last Modified: Fri, 16 Nov 2018 09:21:15 GMT  
		Size: 4.8 MB (4848322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ac039ebb83dbf8934adedbc707ae83d830141a24cfbf815eb7066ab83e9cda`  
		Last Modified: Fri, 16 Nov 2018 09:21:16 GMT  
		Size: 8.3 MB (8254949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a147b32d5b267ffd191ba7caddeeb5954eadf775f49d684179539e9f2f4dc43`  
		Last Modified: Fri, 16 Nov 2018 09:21:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1791a0d4516140db0907d79bed2c5ac8a46bb9915e06ae3f36582f475313d44`  
		Last Modified: Fri, 16 Nov 2018 09:21:15 GMT  
		Size: 423.0 B  
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
$ docker pull redis@sha256:ee891094f0bb1a76d11cdca6e33c4fdce5cba1f13234c5896d341f6d741034b1
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
$ docker pull redis@sha256:a7538337bbd00fe39d103c041147fff37a0442db8fee9c1a15af579e7d77cb34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32123846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38ee13679d8001a276ef90fb70ec01c23cfd57e0dbca0aa7e92c8e7f22d4445`
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
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 09:08:12 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 09:08:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 09:09:03 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 09:09:04 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 09:09:04 GMT
WORKDIR /data
# Fri, 16 Nov 2018 09:09:04 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 09:09:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 09:09:05 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 09:09:05 GMT
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
	-	`sha256:106da5e40edcf54afa22fb3b1bc152179c0ebef84bad47ca6671349558378f48`  
		Last Modified: Fri, 16 Nov 2018 09:18:48 GMT  
		Size: 8.7 MB (8694024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7cb8ce75c46998e948731a5729d607cf55d819edc8205fbb62edac819773a69`  
		Last Modified: Fri, 16 Nov 2018 09:18:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059508063f4f1e21e32b1209a028ae3226fff55c8df44c41a9a169933e760cc6`  
		Last Modified: Fri, 16 Nov 2018 09:18:46 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:466405f41c9dedcbb119fcbb38a20d494a0229b2f0393c62e0431340081090ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30514933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f71d2d70dc49ac1e4e21a111e81e191eb29518a3d8b95ba2b56489afe411e136`
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
# Fri, 16 Nov 2018 16:24:20 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 16:24:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 16:24:21 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 16:25:04 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 16:25:06 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 16:25:06 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 16:25:07 GMT
WORKDIR /data
# Fri, 16 Nov 2018 16:25:08 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:25:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 16:25:09 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 16:25:09 GMT
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
	-	`sha256:05e9b63af15b98b7a7b2d4d68d4c825b421a77ec8a88d2064d472a1cb9c85be4`  
		Last Modified: Fri, 16 Nov 2018 16:27:00 GMT  
		Size: 8.4 MB (8418528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2af7cdd1d24317c357d7d9f857b4fd6a2e6ad4b678e66f0df7893b8f7102b15`  
		Last Modified: Fri, 16 Nov 2018 16:26:58 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2b7c0676160bf4919ea725966175255d596d3803d4416ccd3da47824ba6b09`  
		Last Modified: Fri, 16 Nov 2018 16:26:58 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:706d4c84602877a6bec931d3ce9db1c9a9ded3370ad74993a4777fff8eb340e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28376526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b7358b11d53a98a40572ec92fd4be4c72d5c9093bdde07677ae62280f7abfd8`
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
# Fri, 16 Nov 2018 17:08:28 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 17:08:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 17:08:29 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 17:09:07 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 17:09:08 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 17:09:09 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 17:09:09 GMT
WORKDIR /data
# Fri, 16 Nov 2018 17:09:10 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 17:09:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 17:09:11 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 17:09:12 GMT
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
	-	`sha256:b8ab6575a1b43251479a3cd0f69eb656bb93d084a3803828453a148233f85b40`  
		Last Modified: Fri, 16 Nov 2018 17:11:23 GMT  
		Size: 8.2 MB (8188393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e779fb6554755ea5fa2748aad4d733ad10eebed32b7adc8d4e71eeb9c5c1feeb`  
		Last Modified: Fri, 16 Nov 2018 17:11:21 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f739de09ffc9b7b34dbe993c1fcee978ea2435813a34a0a2da5fdf2b2711239c`  
		Last Modified: Fri, 16 Nov 2018 17:11:21 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:58a53cd97bfc177f43cdebad7c3a28bf3f222d571b7de48b3828592971204fa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29733742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c9fe7182e2feff7ae14bfd778af0117c91b279f379927ae8d6a8ffe394f84c`
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
# Fri, 16 Nov 2018 23:22:55 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 23:22:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 23:22:57 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 23:26:06 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 23:26:13 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 23:26:17 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 23:26:20 GMT
WORKDIR /data
# Fri, 16 Nov 2018 23:26:24 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 23:26:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 23:26:31 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 23:26:35 GMT
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
	-	`sha256:3fca089f8d0471cfe6db1ea3ce865f466045cdf3b8af90a9a480d18e3090afbc`  
		Last Modified: Fri, 16 Nov 2018 23:29:41 GMT  
		Size: 8.5 MB (8492197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd10eb25d491abdda3d028ce0e74b05e1a126dab86567d1cefd87bde28c328db`  
		Last Modified: Fri, 16 Nov 2018 23:29:38 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce4e6cd49dfd5d0684cbb0b3db5f38537c349a98d4585f5062e16ae53598d49`  
		Last Modified: Fri, 16 Nov 2018 23:29:38 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; 386

```console
$ docker pull redis@sha256:a5cb6dc437f5de7bb08b1d41d20fe8e5a5e6b46ad6cae826346cd9535d96291c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32299787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc4de1242a45499c1a4c8ad200c79bcc24907f7d3b68d20fd663a1a89984b6f`
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
# Sat, 17 Nov 2018 06:12:19 GMT
ENV REDIS_VERSION=4.0.11
# Sat, 17 Nov 2018 06:12:19 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Sat, 17 Nov 2018 06:12:20 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Sat, 17 Nov 2018 06:13:38 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 17 Nov 2018 06:13:39 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 17 Nov 2018 06:13:39 GMT
VOLUME [/data]
# Sat, 17 Nov 2018 06:13:40 GMT
WORKDIR /data
# Sat, 17 Nov 2018 06:13:40 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Sat, 17 Nov 2018 06:13:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 06:13:41 GMT
EXPOSE 6379/tcp
# Sat, 17 Nov 2018 06:13:41 GMT
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
	-	`sha256:082853b55d589e8e72d8e03c60969ea360c19852fcd0a5c844d1b27f70f4af63`  
		Last Modified: Sat, 17 Nov 2018 06:17:08 GMT  
		Size: 8.3 MB (8250686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ff3fce1ec5bfbec7eddc4976f6b3c9f8496e7dc681b000a40baae80a0929f1`  
		Last Modified: Sat, 17 Nov 2018 06:17:05 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c969568aab9511278de03795ccb0ea8720d3b4245c7429f96fefb4bb4276483`  
		Last Modified: Sat, 17 Nov 2018 06:17:05 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:a287fd795b44cf018938f7186d339cbae17bcc0ef1cedbd9e6e933cb742205e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32520993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b718198d044eeb3d917c50cfed6bc304fb748f5b9d373d51d5541fee3c9d5fe`
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
# Fri, 16 Nov 2018 16:57:25 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 16:57:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 16:57:27 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 16:58:50 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 16:59:00 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 16:59:10 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 16:59:15 GMT
WORKDIR /data
# Fri, 16 Nov 2018 16:59:18 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:59:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 16:59:21 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 16:59:22 GMT
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
	-	`sha256:e3f2a358486a6920ccf5a36cbd52258e4ae004518d40b59a81d183dbee80ee2a`  
		Last Modified: Fri, 16 Nov 2018 17:02:41 GMT  
		Size: 8.9 MB (8868254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e15308f765c4a455342946598df932d5a96943707d325e6a6626c8b4fc1711f`  
		Last Modified: Fri, 16 Nov 2018 17:02:39 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce164b2d38204c35f699cfe802387682b4dfef59406ee0c95e11af82502de9b6`  
		Last Modified: Fri, 16 Nov 2018 17:02:38 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; s390x

```console
$ docker pull redis@sha256:b4830761de2d36ab8536960f9541b1648c4e869118929e2471b41dc6dd32244d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32347690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23b2a774daeedc1441030a0ea875976e52275ee5d20fba5edf967afea1d9200`
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
# Fri, 16 Nov 2018 19:04:54 GMT
ENV REDIS_VERSION=4.0.11
# Fri, 16 Nov 2018 19:04:54 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.11.tar.gz
# Fri, 16 Nov 2018 19:04:54 GMT
ENV REDIS_DOWNLOAD_SHA=fc53e73ae7586bcdacb4b63875d1ff04f68c5474c1ddeda78f00e5ae2eed1bbb
# Fri, 16 Nov 2018 19:05:40 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 19:05:41 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 16 Nov 2018 19:05:41 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 19:05:41 GMT
WORKDIR /data
# Fri, 16 Nov 2018 19:05:42 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Fri, 16 Nov 2018 19:05:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 19:05:42 GMT
EXPOSE 6379/tcp
# Fri, 16 Nov 2018 19:05:43 GMT
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
	-	`sha256:9d304ea0991fb2e52367252c60fef05af814369c6926eda051c398491a9c01ee`  
		Last Modified: Fri, 16 Nov 2018 19:06:56 GMT  
		Size: 9.1 MB (9083964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812db15d9894a9a102b2ec3d84ee1bf6fc052e1dcf7ae84e56e6b0379d0dc757`  
		Last Modified: Fri, 16 Nov 2018 19:06:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a840d8372bfc9bc7fbbb857445204fe0f8f49955238e3f3c529ccb39d8aa57c`  
		Last Modified: Fri, 16 Nov 2018 19:06:53 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5`

```console
$ docker pull redis@sha256:476ef1951594f96eb103121ddde2c08ff14bb377a331a08a9f88fbff4f44b323
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5` - linux; amd64

```console
$ docker pull redis@sha256:71ccc69750a33614be276c832a1d6ed0b2e21bd97df64a80032dd24de1ef8b8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35184280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5958914cc55880091b005658a79645a90fd44ac6a33abef25d6be87658eb9599`
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
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:29:58 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Nov 2018 23:29:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:29:59 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:29:59 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:30:00 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:30:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:30:00 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:30:01 GMT
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
	-	`sha256:b761e99e9c9c3b95247ccff39a76b35acb16d6bab634b7ba70a2113e7fbd5d2f`  
		Last Modified: Wed, 28 Nov 2018 23:34:12 GMT  
		Size: 11.8 MB (11754455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13686b3f2e29a4fcae8eaee0735353d7700929cf3df770c02c7a804bb8770746`  
		Last Modified: Wed, 28 Nov 2018 23:34:09 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667e8fd02be2b37f8f7268dfc95a1b6567086eadad1e4d7a6c174396d098843b`  
		Last Modified: Wed, 28 Nov 2018 23:34:09 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0`

```console
$ docker pull redis@sha256:476ef1951594f96eb103121ddde2c08ff14bb377a331a08a9f88fbff4f44b323
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0` - linux; amd64

```console
$ docker pull redis@sha256:71ccc69750a33614be276c832a1d6ed0b2e21bd97df64a80032dd24de1ef8b8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35184280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5958914cc55880091b005658a79645a90fd44ac6a33abef25d6be87658eb9599`
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
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:29:58 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Nov 2018 23:29:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:29:59 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:29:59 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:30:00 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:30:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:30:00 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:30:01 GMT
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
	-	`sha256:b761e99e9c9c3b95247ccff39a76b35acb16d6bab634b7ba70a2113e7fbd5d2f`  
		Last Modified: Wed, 28 Nov 2018 23:34:12 GMT  
		Size: 11.8 MB (11754455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13686b3f2e29a4fcae8eaee0735353d7700929cf3df770c02c7a804bb8770746`  
		Last Modified: Wed, 28 Nov 2018 23:34:09 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667e8fd02be2b37f8f7268dfc95a1b6567086eadad1e4d7a6c174396d098843b`  
		Last Modified: Wed, 28 Nov 2018 23:34:09 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.2`

```console
$ docker pull redis@sha256:476ef1951594f96eb103121ddde2c08ff14bb377a331a08a9f88fbff4f44b323
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.2` - linux; amd64

```console
$ docker pull redis@sha256:71ccc69750a33614be276c832a1d6ed0b2e21bd97df64a80032dd24de1ef8b8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35184280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5958914cc55880091b005658a79645a90fd44ac6a33abef25d6be87658eb9599`
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
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:29:58 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Nov 2018 23:29:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:29:59 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:29:59 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:30:00 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:30:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:30:00 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:30:01 GMT
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
	-	`sha256:b761e99e9c9c3b95247ccff39a76b35acb16d6bab634b7ba70a2113e7fbd5d2f`  
		Last Modified: Wed, 28 Nov 2018 23:34:12 GMT  
		Size: 11.8 MB (11754455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13686b3f2e29a4fcae8eaee0735353d7700929cf3df770c02c7a804bb8770746`  
		Last Modified: Wed, 28 Nov 2018 23:34:09 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667e8fd02be2b37f8f7268dfc95a1b6567086eadad1e4d7a6c174396d098843b`  
		Last Modified: Wed, 28 Nov 2018 23:34:09 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.2-32bit`

```console
$ docker pull redis@sha256:8787566f2b5f5368b30655b7f04126f97f4519fdeecd6590224e26956568dd93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.2-32bit` - linux; amd64

```console
$ docker pull redis@sha256:8f916bfdd5a9108e45ae4aba310fe4d539b5d793f7fa64d2419f644b051b4cfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39449300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:775b482a0f96d5f134709b331e1607524524d8d7df3c8a39f846f6306d30632a`
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
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:30:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Nov 2018 23:31:59 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Nov 2018 23:32:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:32:00 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:32:01 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:32:01 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:32:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:32:02 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:32:02 GMT
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
	-	`sha256:580df67e47b4e6d80bb7ad72393b1310f194f558fcaa50ef1e9eaa6010717dfa`  
		Last Modified: Wed, 28 Nov 2018 23:38:00 GMT  
		Size: 4.8 MB (4848330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17cdafd3c3d5ce2f9ac67d1f88ecc6674e726008e26f6c801732acbf9af2363`  
		Last Modified: Wed, 28 Nov 2018 23:38:01 GMT  
		Size: 11.2 MB (11171141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff43813cb670131e7e4b068904f997ad7759e0c95c1545375f5bf9f048fab03e`  
		Last Modified: Wed, 28 Nov 2018 23:37:59 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9adeda5f446da8e5a580fbdda8db48b379588d1bebbd3b43140e1326fc033b`  
		Last Modified: Wed, 28 Nov 2018 23:37:58 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.2-32bit-stretch`

```console
$ docker pull redis@sha256:8787566f2b5f5368b30655b7f04126f97f4519fdeecd6590224e26956568dd93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.2-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:8f916bfdd5a9108e45ae4aba310fe4d539b5d793f7fa64d2419f644b051b4cfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39449300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:775b482a0f96d5f134709b331e1607524524d8d7df3c8a39f846f6306d30632a`
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
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:30:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Nov 2018 23:31:59 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Nov 2018 23:32:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:32:00 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:32:01 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:32:01 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:32:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:32:02 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:32:02 GMT
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
	-	`sha256:580df67e47b4e6d80bb7ad72393b1310f194f558fcaa50ef1e9eaa6010717dfa`  
		Last Modified: Wed, 28 Nov 2018 23:38:00 GMT  
		Size: 4.8 MB (4848330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17cdafd3c3d5ce2f9ac67d1f88ecc6674e726008e26f6c801732acbf9af2363`  
		Last Modified: Wed, 28 Nov 2018 23:38:01 GMT  
		Size: 11.2 MB (11171141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff43813cb670131e7e4b068904f997ad7759e0c95c1545375f5bf9f048fab03e`  
		Last Modified: Wed, 28 Nov 2018 23:37:59 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9adeda5f446da8e5a580fbdda8db48b379588d1bebbd3b43140e1326fc033b`  
		Last Modified: Wed, 28 Nov 2018 23:37:58 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.2-alpine`

```console
$ docker pull redis@sha256:cdf446d55ac16fd51124c078b7d783b1fee9c8325c824662cbca9e93679af126
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.2-alpine` - linux; amd64

```console
$ docker pull redis@sha256:9717f635f005ee3300c24c2218b48462821a9c87ba480a617acfb480d311235f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14931928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84aab155ab74d47fb282bb2cb47d397977b6cc407d04b64204b44ba41472ee71`
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
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:33:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 28 Nov 2018 23:33:28 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:33:29 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:33:29 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:33:29 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:33:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:33:30 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:33:30 GMT
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
	-	`sha256:c5bb833489b0e7743a72767900ac79b233b7fc17f87b630331e2220fcb0f6e83`  
		Last Modified: Wed, 28 Nov 2018 23:42:07 GMT  
		Size: 12.3 MB (12321103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d61c5f31c80f7e2a090755abcc98d83559151b622265bd29cbd79295ab3948e`  
		Last Modified: Wed, 28 Nov 2018 23:42:04 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f79e14b07465bdda5a9e511b38e22f235f3fd667d7da10635580628a8a9f1b`  
		Last Modified: Wed, 28 Nov 2018 23:42:04 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.2-alpine3.8`

```console
$ docker pull redis@sha256:cdf446d55ac16fd51124c078b7d783b1fee9c8325c824662cbca9e93679af126
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.2-alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:9717f635f005ee3300c24c2218b48462821a9c87ba480a617acfb480d311235f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14931928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84aab155ab74d47fb282bb2cb47d397977b6cc407d04b64204b44ba41472ee71`
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
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:33:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 28 Nov 2018 23:33:28 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:33:29 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:33:29 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:33:29 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:33:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:33:30 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:33:30 GMT
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
	-	`sha256:c5bb833489b0e7743a72767900ac79b233b7fc17f87b630331e2220fcb0f6e83`  
		Last Modified: Wed, 28 Nov 2018 23:42:07 GMT  
		Size: 12.3 MB (12321103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d61c5f31c80f7e2a090755abcc98d83559151b622265bd29cbd79295ab3948e`  
		Last Modified: Wed, 28 Nov 2018 23:42:04 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f79e14b07465bdda5a9e511b38e22f235f3fd667d7da10635580628a8a9f1b`  
		Last Modified: Wed, 28 Nov 2018 23:42:04 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.2-stretch`

```console
$ docker pull redis@sha256:476ef1951594f96eb103121ddde2c08ff14bb377a331a08a9f88fbff4f44b323
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.2-stretch` - linux; amd64

```console
$ docker pull redis@sha256:71ccc69750a33614be276c832a1d6ed0b2e21bd97df64a80032dd24de1ef8b8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35184280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5958914cc55880091b005658a79645a90fd44ac6a33abef25d6be87658eb9599`
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
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:29:58 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Nov 2018 23:29:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:29:59 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:29:59 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:30:00 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:30:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:30:00 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:30:01 GMT
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
	-	`sha256:b761e99e9c9c3b95247ccff39a76b35acb16d6bab634b7ba70a2113e7fbd5d2f`  
		Last Modified: Wed, 28 Nov 2018 23:34:12 GMT  
		Size: 11.8 MB (11754455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13686b3f2e29a4fcae8eaee0735353d7700929cf3df770c02c7a804bb8770746`  
		Last Modified: Wed, 28 Nov 2018 23:34:09 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667e8fd02be2b37f8f7268dfc95a1b6567086eadad1e4d7a6c174396d098843b`  
		Last Modified: Wed, 28 Nov 2018 23:34:09 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-32bit`

```console
$ docker pull redis@sha256:8787566f2b5f5368b30655b7f04126f97f4519fdeecd6590224e26956568dd93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:8f916bfdd5a9108e45ae4aba310fe4d539b5d793f7fa64d2419f644b051b4cfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39449300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:775b482a0f96d5f134709b331e1607524524d8d7df3c8a39f846f6306d30632a`
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
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:30:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Nov 2018 23:31:59 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Nov 2018 23:32:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:32:00 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:32:01 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:32:01 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:32:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:32:02 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:32:02 GMT
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
	-	`sha256:580df67e47b4e6d80bb7ad72393b1310f194f558fcaa50ef1e9eaa6010717dfa`  
		Last Modified: Wed, 28 Nov 2018 23:38:00 GMT  
		Size: 4.8 MB (4848330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17cdafd3c3d5ce2f9ac67d1f88ecc6674e726008e26f6c801732acbf9af2363`  
		Last Modified: Wed, 28 Nov 2018 23:38:01 GMT  
		Size: 11.2 MB (11171141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff43813cb670131e7e4b068904f997ad7759e0c95c1545375f5bf9f048fab03e`  
		Last Modified: Wed, 28 Nov 2018 23:37:59 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9adeda5f446da8e5a580fbdda8db48b379588d1bebbd3b43140e1326fc033b`  
		Last Modified: Wed, 28 Nov 2018 23:37:58 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-32bit-stretch`

```console
$ docker pull redis@sha256:8787566f2b5f5368b30655b7f04126f97f4519fdeecd6590224e26956568dd93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:8f916bfdd5a9108e45ae4aba310fe4d539b5d793f7fa64d2419f644b051b4cfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39449300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:775b482a0f96d5f134709b331e1607524524d8d7df3c8a39f846f6306d30632a`
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
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:30:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Nov 2018 23:31:59 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Nov 2018 23:32:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:32:00 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:32:01 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:32:01 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:32:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:32:02 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:32:02 GMT
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
	-	`sha256:580df67e47b4e6d80bb7ad72393b1310f194f558fcaa50ef1e9eaa6010717dfa`  
		Last Modified: Wed, 28 Nov 2018 23:38:00 GMT  
		Size: 4.8 MB (4848330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17cdafd3c3d5ce2f9ac67d1f88ecc6674e726008e26f6c801732acbf9af2363`  
		Last Modified: Wed, 28 Nov 2018 23:38:01 GMT  
		Size: 11.2 MB (11171141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff43813cb670131e7e4b068904f997ad7759e0c95c1545375f5bf9f048fab03e`  
		Last Modified: Wed, 28 Nov 2018 23:37:59 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9adeda5f446da8e5a580fbdda8db48b379588d1bebbd3b43140e1326fc033b`  
		Last Modified: Wed, 28 Nov 2018 23:37:58 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-alpine`

```console
$ docker pull redis@sha256:cdf446d55ac16fd51124c078b7d783b1fee9c8325c824662cbca9e93679af126
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-alpine` - linux; amd64

```console
$ docker pull redis@sha256:9717f635f005ee3300c24c2218b48462821a9c87ba480a617acfb480d311235f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14931928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84aab155ab74d47fb282bb2cb47d397977b6cc407d04b64204b44ba41472ee71`
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
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:33:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 28 Nov 2018 23:33:28 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:33:29 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:33:29 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:33:29 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:33:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:33:30 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:33:30 GMT
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
	-	`sha256:c5bb833489b0e7743a72767900ac79b233b7fc17f87b630331e2220fcb0f6e83`  
		Last Modified: Wed, 28 Nov 2018 23:42:07 GMT  
		Size: 12.3 MB (12321103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d61c5f31c80f7e2a090755abcc98d83559151b622265bd29cbd79295ab3948e`  
		Last Modified: Wed, 28 Nov 2018 23:42:04 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f79e14b07465bdda5a9e511b38e22f235f3fd667d7da10635580628a8a9f1b`  
		Last Modified: Wed, 28 Nov 2018 23:42:04 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-alpine3.8`

```console
$ docker pull redis@sha256:cdf446d55ac16fd51124c078b7d783b1fee9c8325c824662cbca9e93679af126
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:9717f635f005ee3300c24c2218b48462821a9c87ba480a617acfb480d311235f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14931928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84aab155ab74d47fb282bb2cb47d397977b6cc407d04b64204b44ba41472ee71`
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
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:33:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 28 Nov 2018 23:33:28 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:33:29 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:33:29 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:33:29 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:33:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:33:30 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:33:30 GMT
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
	-	`sha256:c5bb833489b0e7743a72767900ac79b233b7fc17f87b630331e2220fcb0f6e83`  
		Last Modified: Wed, 28 Nov 2018 23:42:07 GMT  
		Size: 12.3 MB (12321103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d61c5f31c80f7e2a090755abcc98d83559151b622265bd29cbd79295ab3948e`  
		Last Modified: Wed, 28 Nov 2018 23:42:04 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f79e14b07465bdda5a9e511b38e22f235f3fd667d7da10635580628a8a9f1b`  
		Last Modified: Wed, 28 Nov 2018 23:42:04 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-stretch`

```console
$ docker pull redis@sha256:476ef1951594f96eb103121ddde2c08ff14bb377a331a08a9f88fbff4f44b323
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-stretch` - linux; amd64

```console
$ docker pull redis@sha256:71ccc69750a33614be276c832a1d6ed0b2e21bd97df64a80032dd24de1ef8b8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35184280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5958914cc55880091b005658a79645a90fd44ac6a33abef25d6be87658eb9599`
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
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:29:58 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Nov 2018 23:29:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:29:59 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:29:59 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:30:00 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:30:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:30:00 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:30:01 GMT
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
	-	`sha256:b761e99e9c9c3b95247ccff39a76b35acb16d6bab634b7ba70a2113e7fbd5d2f`  
		Last Modified: Wed, 28 Nov 2018 23:34:12 GMT  
		Size: 11.8 MB (11754455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13686b3f2e29a4fcae8eaee0735353d7700929cf3df770c02c7a804bb8770746`  
		Last Modified: Wed, 28 Nov 2018 23:34:09 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667e8fd02be2b37f8f7268dfc95a1b6567086eadad1e4d7a6c174396d098843b`  
		Last Modified: Wed, 28 Nov 2018 23:34:09 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-32bit`

```console
$ docker pull redis@sha256:8787566f2b5f5368b30655b7f04126f97f4519fdeecd6590224e26956568dd93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-32bit` - linux; amd64

```console
$ docker pull redis@sha256:8f916bfdd5a9108e45ae4aba310fe4d539b5d793f7fa64d2419f644b051b4cfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39449300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:775b482a0f96d5f134709b331e1607524524d8d7df3c8a39f846f6306d30632a`
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
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:30:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Nov 2018 23:31:59 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Nov 2018 23:32:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:32:00 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:32:01 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:32:01 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:32:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:32:02 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:32:02 GMT
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
	-	`sha256:580df67e47b4e6d80bb7ad72393b1310f194f558fcaa50ef1e9eaa6010717dfa`  
		Last Modified: Wed, 28 Nov 2018 23:38:00 GMT  
		Size: 4.8 MB (4848330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17cdafd3c3d5ce2f9ac67d1f88ecc6674e726008e26f6c801732acbf9af2363`  
		Last Modified: Wed, 28 Nov 2018 23:38:01 GMT  
		Size: 11.2 MB (11171141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff43813cb670131e7e4b068904f997ad7759e0c95c1545375f5bf9f048fab03e`  
		Last Modified: Wed, 28 Nov 2018 23:37:59 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9adeda5f446da8e5a580fbdda8db48b379588d1bebbd3b43140e1326fc033b`  
		Last Modified: Wed, 28 Nov 2018 23:37:58 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-32bit-stretch`

```console
$ docker pull redis@sha256:8787566f2b5f5368b30655b7f04126f97f4519fdeecd6590224e26956568dd93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:8f916bfdd5a9108e45ae4aba310fe4d539b5d793f7fa64d2419f644b051b4cfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39449300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:775b482a0f96d5f134709b331e1607524524d8d7df3c8a39f846f6306d30632a`
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
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:30:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Nov 2018 23:31:59 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Nov 2018 23:32:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:32:00 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:32:01 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:32:01 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:32:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:32:02 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:32:02 GMT
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
	-	`sha256:580df67e47b4e6d80bb7ad72393b1310f194f558fcaa50ef1e9eaa6010717dfa`  
		Last Modified: Wed, 28 Nov 2018 23:38:00 GMT  
		Size: 4.8 MB (4848330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17cdafd3c3d5ce2f9ac67d1f88ecc6674e726008e26f6c801732acbf9af2363`  
		Last Modified: Wed, 28 Nov 2018 23:38:01 GMT  
		Size: 11.2 MB (11171141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff43813cb670131e7e4b068904f997ad7759e0c95c1545375f5bf9f048fab03e`  
		Last Modified: Wed, 28 Nov 2018 23:37:59 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9adeda5f446da8e5a580fbdda8db48b379588d1bebbd3b43140e1326fc033b`  
		Last Modified: Wed, 28 Nov 2018 23:37:58 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-alpine`

```console
$ docker pull redis@sha256:cdf446d55ac16fd51124c078b7d783b1fee9c8325c824662cbca9e93679af126
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-alpine` - linux; amd64

```console
$ docker pull redis@sha256:9717f635f005ee3300c24c2218b48462821a9c87ba480a617acfb480d311235f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14931928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84aab155ab74d47fb282bb2cb47d397977b6cc407d04b64204b44ba41472ee71`
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
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:33:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 28 Nov 2018 23:33:28 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:33:29 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:33:29 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:33:29 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:33:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:33:30 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:33:30 GMT
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
	-	`sha256:c5bb833489b0e7743a72767900ac79b233b7fc17f87b630331e2220fcb0f6e83`  
		Last Modified: Wed, 28 Nov 2018 23:42:07 GMT  
		Size: 12.3 MB (12321103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d61c5f31c80f7e2a090755abcc98d83559151b622265bd29cbd79295ab3948e`  
		Last Modified: Wed, 28 Nov 2018 23:42:04 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f79e14b07465bdda5a9e511b38e22f235f3fd667d7da10635580628a8a9f1b`  
		Last Modified: Wed, 28 Nov 2018 23:42:04 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-alpine3.8`

```console
$ docker pull redis@sha256:cdf446d55ac16fd51124c078b7d783b1fee9c8325c824662cbca9e93679af126
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:9717f635f005ee3300c24c2218b48462821a9c87ba480a617acfb480d311235f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14931928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84aab155ab74d47fb282bb2cb47d397977b6cc407d04b64204b44ba41472ee71`
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
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:33:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 28 Nov 2018 23:33:28 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:33:29 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:33:29 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:33:29 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:33:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:33:30 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:33:30 GMT
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
	-	`sha256:c5bb833489b0e7743a72767900ac79b233b7fc17f87b630331e2220fcb0f6e83`  
		Last Modified: Wed, 28 Nov 2018 23:42:07 GMT  
		Size: 12.3 MB (12321103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d61c5f31c80f7e2a090755abcc98d83559151b622265bd29cbd79295ab3948e`  
		Last Modified: Wed, 28 Nov 2018 23:42:04 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f79e14b07465bdda5a9e511b38e22f235f3fd667d7da10635580628a8a9f1b`  
		Last Modified: Wed, 28 Nov 2018 23:42:04 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-stretch`

```console
$ docker pull redis@sha256:476ef1951594f96eb103121ddde2c08ff14bb377a331a08a9f88fbff4f44b323
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-stretch` - linux; amd64

```console
$ docker pull redis@sha256:71ccc69750a33614be276c832a1d6ed0b2e21bd97df64a80032dd24de1ef8b8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35184280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5958914cc55880091b005658a79645a90fd44ac6a33abef25d6be87658eb9599`
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
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:29:58 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Nov 2018 23:29:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:29:59 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:29:59 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:30:00 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:30:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:30:00 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:30:01 GMT
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
	-	`sha256:b761e99e9c9c3b95247ccff39a76b35acb16d6bab634b7ba70a2113e7fbd5d2f`  
		Last Modified: Wed, 28 Nov 2018 23:34:12 GMT  
		Size: 11.8 MB (11754455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13686b3f2e29a4fcae8eaee0735353d7700929cf3df770c02c7a804bb8770746`  
		Last Modified: Wed, 28 Nov 2018 23:34:09 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667e8fd02be2b37f8f7268dfc95a1b6567086eadad1e4d7a6c174396d098843b`  
		Last Modified: Wed, 28 Nov 2018 23:34:09 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:cdf446d55ac16fd51124c078b7d783b1fee9c8325c824662cbca9e93679af126
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

```console
$ docker pull redis@sha256:9717f635f005ee3300c24c2218b48462821a9c87ba480a617acfb480d311235f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14931928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84aab155ab74d47fb282bb2cb47d397977b6cc407d04b64204b44ba41472ee71`
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
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:33:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 28 Nov 2018 23:33:28 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:33:29 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:33:29 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:33:29 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:33:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:33:30 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:33:30 GMT
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
	-	`sha256:c5bb833489b0e7743a72767900ac79b233b7fc17f87b630331e2220fcb0f6e83`  
		Last Modified: Wed, 28 Nov 2018 23:42:07 GMT  
		Size: 12.3 MB (12321103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d61c5f31c80f7e2a090755abcc98d83559151b622265bd29cbd79295ab3948e`  
		Last Modified: Wed, 28 Nov 2018 23:42:04 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f79e14b07465bdda5a9e511b38e22f235f3fd667d7da10635580628a8a9f1b`  
		Last Modified: Wed, 28 Nov 2018 23:42:04 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine3.8`

```console
$ docker pull redis@sha256:cdf446d55ac16fd51124c078b7d783b1fee9c8325c824662cbca9e93679af126
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:alpine3.8` - linux; amd64

```console
$ docker pull redis@sha256:9717f635f005ee3300c24c2218b48462821a9c87ba480a617acfb480d311235f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14931928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84aab155ab74d47fb282bb2cb47d397977b6cc407d04b64204b44ba41472ee71`
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
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:32:23 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:33:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 28 Nov 2018 23:33:28 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:33:29 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:33:29 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:33:29 GMT
COPY file:592b00f2927fa2144858cc8c78ef610815375a7ed6046b2460776997a98d663a in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:33:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:33:30 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:33:30 GMT
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
	-	`sha256:c5bb833489b0e7743a72767900ac79b233b7fc17f87b630331e2220fcb0f6e83`  
		Last Modified: Wed, 28 Nov 2018 23:42:07 GMT  
		Size: 12.3 MB (12321103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d61c5f31c80f7e2a090755abcc98d83559151b622265bd29cbd79295ab3948e`  
		Last Modified: Wed, 28 Nov 2018 23:42:04 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f79e14b07465bdda5a9e511b38e22f235f3fd667d7da10635580628a8a9f1b`  
		Last Modified: Wed, 28 Nov 2018 23:42:04 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:476ef1951594f96eb103121ddde2c08ff14bb377a331a08a9f88fbff4f44b323
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:latest` - linux; amd64

```console
$ docker pull redis@sha256:71ccc69750a33614be276c832a1d6ed0b2e21bd97df64a80032dd24de1ef8b8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35184280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5958914cc55880091b005658a79645a90fd44ac6a33abef25d6be87658eb9599`
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
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:29:58 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Nov 2018 23:29:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:29:59 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:29:59 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:30:00 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:30:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:30:00 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:30:01 GMT
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
	-	`sha256:b761e99e9c9c3b95247ccff39a76b35acb16d6bab634b7ba70a2113e7fbd5d2f`  
		Last Modified: Wed, 28 Nov 2018 23:34:12 GMT  
		Size: 11.8 MB (11754455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13686b3f2e29a4fcae8eaee0735353d7700929cf3df770c02c7a804bb8770746`  
		Last Modified: Wed, 28 Nov 2018 23:34:09 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667e8fd02be2b37f8f7268dfc95a1b6567086eadad1e4d7a6c174396d098843b`  
		Last Modified: Wed, 28 Nov 2018 23:34:09 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:stretch`

```console
$ docker pull redis@sha256:476ef1951594f96eb103121ddde2c08ff14bb377a331a08a9f88fbff4f44b323
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:stretch` - linux; amd64

```console
$ docker pull redis@sha256:71ccc69750a33614be276c832a1d6ed0b2e21bd97df64a80032dd24de1ef8b8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35184280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5958914cc55880091b005658a79645a90fd44ac6a33abef25d6be87658eb9599`
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
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_VERSION=5.0.2
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.2.tar.gz
# Wed, 28 Nov 2018 23:28:26 GMT
ENV REDIS_DOWNLOAD_SHA=937dde6164001c083e87316aa20dad2f8542af089dfcb1cbb64f9c8300cd00ed
# Wed, 28 Nov 2018 23:29:58 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Nov 2018 23:29:58 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Nov 2018 23:29:59 GMT
VOLUME [/data]
# Wed, 28 Nov 2018 23:29:59 GMT
WORKDIR /data
# Wed, 28 Nov 2018 23:30:00 GMT
COPY file:b63bb2d2b8d095988c9ca3d261a6153681a0107ca332050c5df612429b4703dc in /usr/local/bin/ 
# Wed, 28 Nov 2018 23:30:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Nov 2018 23:30:00 GMT
EXPOSE 6379/tcp
# Wed, 28 Nov 2018 23:30:01 GMT
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
	-	`sha256:b761e99e9c9c3b95247ccff39a76b35acb16d6bab634b7ba70a2113e7fbd5d2f`  
		Last Modified: Wed, 28 Nov 2018 23:34:12 GMT  
		Size: 11.8 MB (11754455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13686b3f2e29a4fcae8eaee0735353d7700929cf3df770c02c7a804bb8770746`  
		Last Modified: Wed, 28 Nov 2018 23:34:09 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667e8fd02be2b37f8f7268dfc95a1b6567086eadad1e4d7a6c174396d098843b`  
		Last Modified: Wed, 28 Nov 2018 23:34:09 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
