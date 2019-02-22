<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redis`

-	[`redis:32bit`](#redis32bit)
-	[`redis:32bit-stretch`](#redis32bit-stretch)
-	[`redis:4`](#redis4)
-	[`redis:4.0`](#redis40)
-	[`redis:4.0.13`](#redis4013)
-	[`redis:4.0.13-32bit`](#redis4013-32bit)
-	[`redis:4.0.13-32bit-stretch`](#redis4013-32bit-stretch)
-	[`redis:4.0.13-alpine`](#redis4013-alpine)
-	[`redis:4.0.13-alpine3.9`](#redis4013-alpine39)
-	[`redis:4.0.13-stretch`](#redis4013-stretch)
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
$ docker pull redis@sha256:de368601eb1b51cd305105b22bae4a6f78ee39ad91de228b8ea026e61d257ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

### `redis:4` - linux; amd64

```console
$ docker pull redis@sha256:ad2bf4b3729ea6a17c30028b56855abc0de0b0ee98f8c6f9cee019ed1387fa25
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (37032563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdb139a437be09b4ec94dd4057f7d3798c37e3eaeab381085e4e7f081a697f75`
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
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_VERSION=4.0.13
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Thu, 21 Feb 2019 22:57:36 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Feb 2019 22:57:37 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Feb 2019 22:57:37 GMT
VOLUME [/data]
# Thu, 21 Feb 2019 22:57:38 GMT
WORKDIR /data
# Thu, 21 Feb 2019 22:57:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 21 Feb 2019 22:57:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Feb 2019 22:57:39 GMT
EXPOSE 6379
# Thu, 21 Feb 2019 22:57:39 GMT
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
	-	`sha256:a347c9184db3c21cda925b83e39c9b803348b6abefd1f1b9f5f6511739304180`  
		Last Modified: Thu, 21 Feb 2019 23:01:11 GMT  
		Size: 13.6 MB (13588648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fbf1282ebe4cffab4b7aba96682d663361af34cfbc72924d8a044e8d0a9d143`  
		Last Modified: Thu, 21 Feb 2019 23:01:03 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d60d78c575065aaa642fbbef2ef40367f3059dba3ed6961ff2f850ca5d4b63e1`  
		Last Modified: Thu, 21 Feb 2019 23:01:03 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; arm variant v5

```console
$ docker pull redis@sha256:c02c7bbf592985b44417c3ffa3dfece2a622912069a53ab98a17c0d918baa578
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 MB (34827756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebee7f08c93900992d65126794137bf4c5bdbb2e4011b568805df48a000b858d`
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
# Fri, 22 Feb 2019 10:05:50 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 10:05:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 10:05:51 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 10:06:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Feb 2019 10:06:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 10:06:46 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 10:06:47 GMT
WORKDIR /data
# Fri, 22 Feb 2019 10:06:47 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 22 Feb 2019 10:06:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 10:06:48 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 10:06:49 GMT
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
	-	`sha256:445e4dafeb96a87fdc0202187ce5adfa3203ec6defe0cb5c72d67490046f3364`  
		Last Modified: Fri, 22 Feb 2019 10:07:12 GMT  
		Size: 12.7 MB (12712976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9819a35854c27154c447c324f12140af15ce51ea573dcf8058a490e93ada2b85`  
		Last Modified: Fri, 22 Feb 2019 10:07:07 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e4e420fa93be1f8e33698b21c15374116a862a8b0a788dc49c97615a3ae619`  
		Last Modified: Fri, 22 Feb 2019 10:07:07 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4` - linux; ppc64le

```console
$ docker pull redis@sha256:4836fb46e4929ff010931f6fe8cc088365e9767fdfecd940c431ef587180bc76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.9 MB (37854686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53f17feeffc55a06af5af7915ded6a8a7245b142cc4a0a133811428f34282cf4`
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
# Fri, 22 Feb 2019 10:57:04 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 10:57:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 10:57:09 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 10:59:15 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Feb 2019 10:59:19 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 10:59:21 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 10:59:23 GMT
WORKDIR /data
# Fri, 22 Feb 2019 10:59:24 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 22 Feb 2019 10:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 10:59:29 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 10:59:31 GMT
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
	-	`sha256:75d528a90dd5f9e0e1b8498ca671c905875e1f683a5e4e3a7898356dc06f85b3`  
		Last Modified: Fri, 22 Feb 2019 11:01:28 GMT  
		Size: 14.2 MB (14187287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2879f32d584bbd4fab9725a6e070c90f8169efa7439f763f60e3d8560a14180`  
		Last Modified: Fri, 22 Feb 2019 11:01:25 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60372839aec1d298051c5a8febfe4195b3f96c34e30495e6c6a0aef43b7e70b`  
		Last Modified: Fri, 22 Feb 2019 11:01:25 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0`

```console
$ docker pull redis@sha256:de368601eb1b51cd305105b22bae4a6f78ee39ad91de228b8ea026e61d257ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

### `redis:4.0` - linux; amd64

```console
$ docker pull redis@sha256:ad2bf4b3729ea6a17c30028b56855abc0de0b0ee98f8c6f9cee019ed1387fa25
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (37032563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdb139a437be09b4ec94dd4057f7d3798c37e3eaeab381085e4e7f081a697f75`
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
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_VERSION=4.0.13
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Thu, 21 Feb 2019 22:57:36 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Feb 2019 22:57:37 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Feb 2019 22:57:37 GMT
VOLUME [/data]
# Thu, 21 Feb 2019 22:57:38 GMT
WORKDIR /data
# Thu, 21 Feb 2019 22:57:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 21 Feb 2019 22:57:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Feb 2019 22:57:39 GMT
EXPOSE 6379
# Thu, 21 Feb 2019 22:57:39 GMT
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
	-	`sha256:a347c9184db3c21cda925b83e39c9b803348b6abefd1f1b9f5f6511739304180`  
		Last Modified: Thu, 21 Feb 2019 23:01:11 GMT  
		Size: 13.6 MB (13588648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fbf1282ebe4cffab4b7aba96682d663361af34cfbc72924d8a044e8d0a9d143`  
		Last Modified: Thu, 21 Feb 2019 23:01:03 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d60d78c575065aaa642fbbef2ef40367f3059dba3ed6961ff2f850ca5d4b63e1`  
		Last Modified: Thu, 21 Feb 2019 23:01:03 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; arm variant v5

```console
$ docker pull redis@sha256:c02c7bbf592985b44417c3ffa3dfece2a622912069a53ab98a17c0d918baa578
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 MB (34827756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebee7f08c93900992d65126794137bf4c5bdbb2e4011b568805df48a000b858d`
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
# Fri, 22 Feb 2019 10:05:50 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 10:05:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 10:05:51 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 10:06:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Feb 2019 10:06:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 10:06:46 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 10:06:47 GMT
WORKDIR /data
# Fri, 22 Feb 2019 10:06:47 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 22 Feb 2019 10:06:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 10:06:48 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 10:06:49 GMT
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
	-	`sha256:445e4dafeb96a87fdc0202187ce5adfa3203ec6defe0cb5c72d67490046f3364`  
		Last Modified: Fri, 22 Feb 2019 10:07:12 GMT  
		Size: 12.7 MB (12712976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9819a35854c27154c447c324f12140af15ce51ea573dcf8058a490e93ada2b85`  
		Last Modified: Fri, 22 Feb 2019 10:07:07 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e4e420fa93be1f8e33698b21c15374116a862a8b0a788dc49c97615a3ae619`  
		Last Modified: Fri, 22 Feb 2019 10:07:07 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0` - linux; ppc64le

```console
$ docker pull redis@sha256:4836fb46e4929ff010931f6fe8cc088365e9767fdfecd940c431ef587180bc76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.9 MB (37854686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53f17feeffc55a06af5af7915ded6a8a7245b142cc4a0a133811428f34282cf4`
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
# Fri, 22 Feb 2019 10:57:04 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 10:57:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 10:57:09 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 10:59:15 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Feb 2019 10:59:19 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 10:59:21 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 10:59:23 GMT
WORKDIR /data
# Fri, 22 Feb 2019 10:59:24 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 22 Feb 2019 10:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 10:59:29 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 10:59:31 GMT
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
	-	`sha256:75d528a90dd5f9e0e1b8498ca671c905875e1f683a5e4e3a7898356dc06f85b3`  
		Last Modified: Fri, 22 Feb 2019 11:01:28 GMT  
		Size: 14.2 MB (14187287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2879f32d584bbd4fab9725a6e070c90f8169efa7439f763f60e3d8560a14180`  
		Last Modified: Fri, 22 Feb 2019 11:01:25 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60372839aec1d298051c5a8febfe4195b3f96c34e30495e6c6a0aef43b7e70b`  
		Last Modified: Fri, 22 Feb 2019 11:01:25 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.13`

```console
$ docker pull redis@sha256:de368601eb1b51cd305105b22bae4a6f78ee39ad91de228b8ea026e61d257ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

### `redis:4.0.13` - linux; amd64

```console
$ docker pull redis@sha256:ad2bf4b3729ea6a17c30028b56855abc0de0b0ee98f8c6f9cee019ed1387fa25
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (37032563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdb139a437be09b4ec94dd4057f7d3798c37e3eaeab381085e4e7f081a697f75`
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
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_VERSION=4.0.13
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Thu, 21 Feb 2019 22:57:36 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Feb 2019 22:57:37 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Feb 2019 22:57:37 GMT
VOLUME [/data]
# Thu, 21 Feb 2019 22:57:38 GMT
WORKDIR /data
# Thu, 21 Feb 2019 22:57:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 21 Feb 2019 22:57:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Feb 2019 22:57:39 GMT
EXPOSE 6379
# Thu, 21 Feb 2019 22:57:39 GMT
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
	-	`sha256:a347c9184db3c21cda925b83e39c9b803348b6abefd1f1b9f5f6511739304180`  
		Last Modified: Thu, 21 Feb 2019 23:01:11 GMT  
		Size: 13.6 MB (13588648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fbf1282ebe4cffab4b7aba96682d663361af34cfbc72924d8a044e8d0a9d143`  
		Last Modified: Thu, 21 Feb 2019 23:01:03 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d60d78c575065aaa642fbbef2ef40367f3059dba3ed6961ff2f850ca5d4b63e1`  
		Last Modified: Thu, 21 Feb 2019 23:01:03 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.13` - linux; arm variant v5

```console
$ docker pull redis@sha256:c02c7bbf592985b44417c3ffa3dfece2a622912069a53ab98a17c0d918baa578
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 MB (34827756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebee7f08c93900992d65126794137bf4c5bdbb2e4011b568805df48a000b858d`
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
# Fri, 22 Feb 2019 10:05:50 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 10:05:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 10:05:51 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 10:06:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Feb 2019 10:06:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 10:06:46 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 10:06:47 GMT
WORKDIR /data
# Fri, 22 Feb 2019 10:06:47 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 22 Feb 2019 10:06:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 10:06:48 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 10:06:49 GMT
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
	-	`sha256:445e4dafeb96a87fdc0202187ce5adfa3203ec6defe0cb5c72d67490046f3364`  
		Last Modified: Fri, 22 Feb 2019 10:07:12 GMT  
		Size: 12.7 MB (12712976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9819a35854c27154c447c324f12140af15ce51ea573dcf8058a490e93ada2b85`  
		Last Modified: Fri, 22 Feb 2019 10:07:07 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e4e420fa93be1f8e33698b21c15374116a862a8b0a788dc49c97615a3ae619`  
		Last Modified: Fri, 22 Feb 2019 10:07:07 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.13` - linux; ppc64le

```console
$ docker pull redis@sha256:4836fb46e4929ff010931f6fe8cc088365e9767fdfecd940c431ef587180bc76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.9 MB (37854686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53f17feeffc55a06af5af7915ded6a8a7245b142cc4a0a133811428f34282cf4`
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
# Fri, 22 Feb 2019 10:57:04 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 10:57:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 10:57:09 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 10:59:15 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Feb 2019 10:59:19 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 10:59:21 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 10:59:23 GMT
WORKDIR /data
# Fri, 22 Feb 2019 10:59:24 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 22 Feb 2019 10:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 10:59:29 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 10:59:31 GMT
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
	-	`sha256:75d528a90dd5f9e0e1b8498ca671c905875e1f683a5e4e3a7898356dc06f85b3`  
		Last Modified: Fri, 22 Feb 2019 11:01:28 GMT  
		Size: 14.2 MB (14187287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2879f32d584bbd4fab9725a6e070c90f8169efa7439f763f60e3d8560a14180`  
		Last Modified: Fri, 22 Feb 2019 11:01:25 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60372839aec1d298051c5a8febfe4195b3f96c34e30495e6c6a0aef43b7e70b`  
		Last Modified: Fri, 22 Feb 2019 11:01:25 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.13-32bit`

```console
$ docker pull redis@sha256:3af5d3f9f702a694115564e52cee3b986bdc425bfc1509487d4ce4e7e4686cd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.13-32bit` - linux; amd64

```console
$ docker pull redis@sha256:c2f1708b2da46d9c517cebb90de6a14c28a0f5c204699a77e68a031cab567da0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41440987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c9c9c4013162aa2f30f44d5e1b95d1e782c7a536a0f30572602d8af71555ec`
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
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_VERSION=4.0.13
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Thu, 21 Feb 2019 22:58:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Feb 2019 22:59:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Feb 2019 22:59:18 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Feb 2019 22:59:19 GMT
VOLUME [/data]
# Thu, 21 Feb 2019 22:59:19 GMT
WORKDIR /data
# Thu, 21 Feb 2019 22:59:19 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 21 Feb 2019 22:59:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Feb 2019 22:59:20 GMT
EXPOSE 6379
# Thu, 21 Feb 2019 22:59:20 GMT
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
	-	`sha256:7e267580546f060f51a2fe225b8a0b963e4d91561fdf3dcfa88e3ecb352b69a4`  
		Last Modified: Thu, 21 Feb 2019 23:01:22 GMT  
		Size: 9.7 MB (9733734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e85a1ff907f6d04a1157dd7b92d4d7944b0f810d2dca9c059b89e0e6cc82b7c6`  
		Last Modified: Thu, 21 Feb 2019 23:01:22 GMT  
		Size: 8.3 MB (8263335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8130fe5c5f794945402aac278637ed853959ddb2bdb904aba11e56a7155cc7`  
		Last Modified: Thu, 21 Feb 2019 23:01:20 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f452cd908457f4b3f27a57f0201fd27e14deb21af84c63356cae3279b8fb1b`  
		Last Modified: Thu, 21 Feb 2019 23:01:20 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.13-32bit-stretch`

```console
$ docker pull redis@sha256:3af5d3f9f702a694115564e52cee3b986bdc425bfc1509487d4ce4e7e4686cd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.13-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:c2f1708b2da46d9c517cebb90de6a14c28a0f5c204699a77e68a031cab567da0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41440987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c9c9c4013162aa2f30f44d5e1b95d1e782c7a536a0f30572602d8af71555ec`
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
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_VERSION=4.0.13
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Thu, 21 Feb 2019 22:58:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Feb 2019 22:59:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Feb 2019 22:59:18 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Feb 2019 22:59:19 GMT
VOLUME [/data]
# Thu, 21 Feb 2019 22:59:19 GMT
WORKDIR /data
# Thu, 21 Feb 2019 22:59:19 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 21 Feb 2019 22:59:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Feb 2019 22:59:20 GMT
EXPOSE 6379
# Thu, 21 Feb 2019 22:59:20 GMT
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
	-	`sha256:7e267580546f060f51a2fe225b8a0b963e4d91561fdf3dcfa88e3ecb352b69a4`  
		Last Modified: Thu, 21 Feb 2019 23:01:22 GMT  
		Size: 9.7 MB (9733734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e85a1ff907f6d04a1157dd7b92d4d7944b0f810d2dca9c059b89e0e6cc82b7c6`  
		Last Modified: Thu, 21 Feb 2019 23:01:22 GMT  
		Size: 8.3 MB (8263335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8130fe5c5f794945402aac278637ed853959ddb2bdb904aba11e56a7155cc7`  
		Last Modified: Thu, 21 Feb 2019 23:01:20 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f452cd908457f4b3f27a57f0201fd27e14deb21af84c63356cae3279b8fb1b`  
		Last Modified: Thu, 21 Feb 2019 23:01:20 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.13-alpine`

```console
$ docker pull redis@sha256:11e096487ddd0fcfe980d7e453d62abd89d0b1b17e4064ce4be285ea15b6ccc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `redis:4.0.13-alpine` - linux; amd64

```console
$ docker pull redis@sha256:e95a614f40488fc506abb175909011279b0e2d257425e66a0cb0889ee8b8c372
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13919557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83944736833a71a490d842a93ec192d78fbe61063ca8b38d5a2b786f477f20ca`
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
# Thu, 21 Feb 2019 22:59:24 GMT
ENV REDIS_VERSION=4.0.13
# Thu, 21 Feb 2019 22:59:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Thu, 21 Feb 2019 22:59:24 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Thu, 21 Feb 2019 23:00:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 21 Feb 2019 23:00:22 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Feb 2019 23:00:22 GMT
VOLUME [/data]
# Thu, 21 Feb 2019 23:00:22 GMT
WORKDIR /data
# Thu, 21 Feb 2019 23:00:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:00:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Feb 2019 23:00:23 GMT
EXPOSE 6379
# Thu, 21 Feb 2019 23:00:23 GMT
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
	-	`sha256:3fab80706043510c13f0b14d34ae52bc7fa2b44062917934e67b22559e7f4050`  
		Last Modified: Thu, 21 Feb 2019 23:01:35 GMT  
		Size: 10.8 MB (10760072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c1c14f16453102e797d191e9b269d6b16d7343f540535cb21b70848a05539d`  
		Last Modified: Thu, 21 Feb 2019 23:01:30 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4885dfd7be438d83bd2684f36993c44d8d52289217d7838f9d93b6215fdfa7`  
		Last Modified: Thu, 21 Feb 2019 23:01:30 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.13-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:8f8a2f47aa95b2ecfa604721c5537d7818058701a0124dfc26bd6d3f79d640f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13297445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b200550ba45a28375b3774c8271f4a88574657e811173e572fd61975eb7ad708`
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
# Fri, 22 Feb 2019 09:09:27 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 09:09:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 09:09:28 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 09:09:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 22 Feb 2019 09:09:54 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 09:09:54 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 09:09:55 GMT
WORKDIR /data
# Fri, 22 Feb 2019 09:09:55 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:09:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:09:56 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 09:09:56 GMT
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
	-	`sha256:126b4ee93bdede7b3cbbf020d7ec6db20b4f66cfa5d97d568b88ed4a14eaac6e`  
		Last Modified: Fri, 22 Feb 2019 09:10:50 GMT  
		Size: 10.3 MB (10349455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedb4389c18a4347704a2593ebe47b59298216588ab1a529dcd9ffaaf937106d`  
		Last Modified: Fri, 22 Feb 2019 09:10:49 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2997d8dee7f3fb5859c4070df516d47193f6329b0f96195e69280cc5442a086`  
		Last Modified: Fri, 22 Feb 2019 09:10:46 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.13-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:1e2295f5f4c2affd74cd34adcedb676a30599397f983439071c2d9fa7503964b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14381437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75096c86c1e10057c621b838a67cf3148a26e5fdca916a3ce29c3776a9af767`
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
# Fri, 22 Feb 2019 10:59:41 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 10:59:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 10:59:46 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 11:00:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 22 Feb 2019 11:00:25 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 11:00:28 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 11:00:33 GMT
WORKDIR /data
# Fri, 22 Feb 2019 11:00:35 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 22 Feb 2019 11:00:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 11:00:42 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 11:00:45 GMT
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
	-	`sha256:41aa232037dfaedc13870209b31fe4ad2b9ffb6707a92c76ea36a4782ca1615a`  
		Last Modified: Fri, 22 Feb 2019 11:01:56 GMT  
		Size: 11.2 MB (11190447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f949c9439f18f3196024b91c4e6f228106caf4738122c2271329eb991c8e270`  
		Last Modified: Fri, 22 Feb 2019 11:01:51 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50929fa3aac8edd3571150ce09913a161b5bd5f2940590ffbae9e965f55de79c`  
		Last Modified: Fri, 22 Feb 2019 11:01:51 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.13-alpine3.9`

```console
$ docker pull redis@sha256:11e096487ddd0fcfe980d7e453d62abd89d0b1b17e4064ce4be285ea15b6ccc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `redis:4.0.13-alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:e95a614f40488fc506abb175909011279b0e2d257425e66a0cb0889ee8b8c372
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13919557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83944736833a71a490d842a93ec192d78fbe61063ca8b38d5a2b786f477f20ca`
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
# Thu, 21 Feb 2019 22:59:24 GMT
ENV REDIS_VERSION=4.0.13
# Thu, 21 Feb 2019 22:59:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Thu, 21 Feb 2019 22:59:24 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Thu, 21 Feb 2019 23:00:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 21 Feb 2019 23:00:22 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Feb 2019 23:00:22 GMT
VOLUME [/data]
# Thu, 21 Feb 2019 23:00:22 GMT
WORKDIR /data
# Thu, 21 Feb 2019 23:00:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:00:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Feb 2019 23:00:23 GMT
EXPOSE 6379
# Thu, 21 Feb 2019 23:00:23 GMT
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
	-	`sha256:3fab80706043510c13f0b14d34ae52bc7fa2b44062917934e67b22559e7f4050`  
		Last Modified: Thu, 21 Feb 2019 23:01:35 GMT  
		Size: 10.8 MB (10760072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c1c14f16453102e797d191e9b269d6b16d7343f540535cb21b70848a05539d`  
		Last Modified: Thu, 21 Feb 2019 23:01:30 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4885dfd7be438d83bd2684f36993c44d8d52289217d7838f9d93b6215fdfa7`  
		Last Modified: Thu, 21 Feb 2019 23:01:30 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.13-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:8f8a2f47aa95b2ecfa604721c5537d7818058701a0124dfc26bd6d3f79d640f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13297445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b200550ba45a28375b3774c8271f4a88574657e811173e572fd61975eb7ad708`
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
# Fri, 22 Feb 2019 09:09:27 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 09:09:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 09:09:28 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 09:09:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 22 Feb 2019 09:09:54 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 09:09:54 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 09:09:55 GMT
WORKDIR /data
# Fri, 22 Feb 2019 09:09:55 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:09:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:09:56 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 09:09:56 GMT
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
	-	`sha256:126b4ee93bdede7b3cbbf020d7ec6db20b4f66cfa5d97d568b88ed4a14eaac6e`  
		Last Modified: Fri, 22 Feb 2019 09:10:50 GMT  
		Size: 10.3 MB (10349455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedb4389c18a4347704a2593ebe47b59298216588ab1a529dcd9ffaaf937106d`  
		Last Modified: Fri, 22 Feb 2019 09:10:49 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2997d8dee7f3fb5859c4070df516d47193f6329b0f96195e69280cc5442a086`  
		Last Modified: Fri, 22 Feb 2019 09:10:46 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.13-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:1e2295f5f4c2affd74cd34adcedb676a30599397f983439071c2d9fa7503964b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14381437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75096c86c1e10057c621b838a67cf3148a26e5fdca916a3ce29c3776a9af767`
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
# Fri, 22 Feb 2019 10:59:41 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 10:59:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 10:59:46 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 11:00:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 22 Feb 2019 11:00:25 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 11:00:28 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 11:00:33 GMT
WORKDIR /data
# Fri, 22 Feb 2019 11:00:35 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 22 Feb 2019 11:00:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 11:00:42 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 11:00:45 GMT
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
	-	`sha256:41aa232037dfaedc13870209b31fe4ad2b9ffb6707a92c76ea36a4782ca1615a`  
		Last Modified: Fri, 22 Feb 2019 11:01:56 GMT  
		Size: 11.2 MB (11190447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f949c9439f18f3196024b91c4e6f228106caf4738122c2271329eb991c8e270`  
		Last Modified: Fri, 22 Feb 2019 11:01:51 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50929fa3aac8edd3571150ce09913a161b5bd5f2940590ffbae9e965f55de79c`  
		Last Modified: Fri, 22 Feb 2019 11:01:51 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.13-stretch`

```console
$ docker pull redis@sha256:de368601eb1b51cd305105b22bae4a6f78ee39ad91de228b8ea026e61d257ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

### `redis:4.0.13-stretch` - linux; amd64

```console
$ docker pull redis@sha256:ad2bf4b3729ea6a17c30028b56855abc0de0b0ee98f8c6f9cee019ed1387fa25
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (37032563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdb139a437be09b4ec94dd4057f7d3798c37e3eaeab381085e4e7f081a697f75`
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
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_VERSION=4.0.13
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Thu, 21 Feb 2019 22:57:36 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Feb 2019 22:57:37 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Feb 2019 22:57:37 GMT
VOLUME [/data]
# Thu, 21 Feb 2019 22:57:38 GMT
WORKDIR /data
# Thu, 21 Feb 2019 22:57:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 21 Feb 2019 22:57:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Feb 2019 22:57:39 GMT
EXPOSE 6379
# Thu, 21 Feb 2019 22:57:39 GMT
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
	-	`sha256:a347c9184db3c21cda925b83e39c9b803348b6abefd1f1b9f5f6511739304180`  
		Last Modified: Thu, 21 Feb 2019 23:01:11 GMT  
		Size: 13.6 MB (13588648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fbf1282ebe4cffab4b7aba96682d663361af34cfbc72924d8a044e8d0a9d143`  
		Last Modified: Thu, 21 Feb 2019 23:01:03 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d60d78c575065aaa642fbbef2ef40367f3059dba3ed6961ff2f850ca5d4b63e1`  
		Last Modified: Thu, 21 Feb 2019 23:01:03 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.13-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:c02c7bbf592985b44417c3ffa3dfece2a622912069a53ab98a17c0d918baa578
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 MB (34827756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebee7f08c93900992d65126794137bf4c5bdbb2e4011b568805df48a000b858d`
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
# Fri, 22 Feb 2019 10:05:50 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 10:05:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 10:05:51 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 10:06:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Feb 2019 10:06:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 10:06:46 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 10:06:47 GMT
WORKDIR /data
# Fri, 22 Feb 2019 10:06:47 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 22 Feb 2019 10:06:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 10:06:48 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 10:06:49 GMT
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
	-	`sha256:445e4dafeb96a87fdc0202187ce5adfa3203ec6defe0cb5c72d67490046f3364`  
		Last Modified: Fri, 22 Feb 2019 10:07:12 GMT  
		Size: 12.7 MB (12712976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9819a35854c27154c447c324f12140af15ce51ea573dcf8058a490e93ada2b85`  
		Last Modified: Fri, 22 Feb 2019 10:07:07 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e4e420fa93be1f8e33698b21c15374116a862a8b0a788dc49c97615a3ae619`  
		Last Modified: Fri, 22 Feb 2019 10:07:07 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0.13-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:4836fb46e4929ff010931f6fe8cc088365e9767fdfecd940c431ef587180bc76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.9 MB (37854686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53f17feeffc55a06af5af7915ded6a8a7245b142cc4a0a133811428f34282cf4`
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
# Fri, 22 Feb 2019 10:57:04 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 10:57:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 10:57:09 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 10:59:15 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Feb 2019 10:59:19 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 10:59:21 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 10:59:23 GMT
WORKDIR /data
# Fri, 22 Feb 2019 10:59:24 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 22 Feb 2019 10:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 10:59:29 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 10:59:31 GMT
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
	-	`sha256:75d528a90dd5f9e0e1b8498ca671c905875e1f683a5e4e3a7898356dc06f85b3`  
		Last Modified: Fri, 22 Feb 2019 11:01:28 GMT  
		Size: 14.2 MB (14187287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2879f32d584bbd4fab9725a6e070c90f8169efa7439f763f60e3d8560a14180`  
		Last Modified: Fri, 22 Feb 2019 11:01:25 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60372839aec1d298051c5a8febfe4195b3f96c34e30495e6c6a0aef43b7e70b`  
		Last Modified: Fri, 22 Feb 2019 11:01:25 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit`

```console
$ docker pull redis@sha256:3af5d3f9f702a694115564e52cee3b986bdc425bfc1509487d4ce4e7e4686cd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:c2f1708b2da46d9c517cebb90de6a14c28a0f5c204699a77e68a031cab567da0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41440987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c9c9c4013162aa2f30f44d5e1b95d1e782c7a536a0f30572602d8af71555ec`
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
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_VERSION=4.0.13
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Thu, 21 Feb 2019 22:58:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Feb 2019 22:59:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Feb 2019 22:59:18 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Feb 2019 22:59:19 GMT
VOLUME [/data]
# Thu, 21 Feb 2019 22:59:19 GMT
WORKDIR /data
# Thu, 21 Feb 2019 22:59:19 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 21 Feb 2019 22:59:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Feb 2019 22:59:20 GMT
EXPOSE 6379
# Thu, 21 Feb 2019 22:59:20 GMT
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
	-	`sha256:7e267580546f060f51a2fe225b8a0b963e4d91561fdf3dcfa88e3ecb352b69a4`  
		Last Modified: Thu, 21 Feb 2019 23:01:22 GMT  
		Size: 9.7 MB (9733734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e85a1ff907f6d04a1157dd7b92d4d7944b0f810d2dca9c059b89e0e6cc82b7c6`  
		Last Modified: Thu, 21 Feb 2019 23:01:22 GMT  
		Size: 8.3 MB (8263335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8130fe5c5f794945402aac278637ed853959ddb2bdb904aba11e56a7155cc7`  
		Last Modified: Thu, 21 Feb 2019 23:01:20 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f452cd908457f4b3f27a57f0201fd27e14deb21af84c63356cae3279b8fb1b`  
		Last Modified: Thu, 21 Feb 2019 23:01:20 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit-stretch`

```console
$ docker pull redis@sha256:3af5d3f9f702a694115564e52cee3b986bdc425bfc1509487d4ce4e7e4686cd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:c2f1708b2da46d9c517cebb90de6a14c28a0f5c204699a77e68a031cab567da0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41440987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c9c9c4013162aa2f30f44d5e1b95d1e782c7a536a0f30572602d8af71555ec`
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
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_VERSION=4.0.13
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Thu, 21 Feb 2019 22:58:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Feb 2019 22:59:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Feb 2019 22:59:18 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Feb 2019 22:59:19 GMT
VOLUME [/data]
# Thu, 21 Feb 2019 22:59:19 GMT
WORKDIR /data
# Thu, 21 Feb 2019 22:59:19 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 21 Feb 2019 22:59:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Feb 2019 22:59:20 GMT
EXPOSE 6379
# Thu, 21 Feb 2019 22:59:20 GMT
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
	-	`sha256:7e267580546f060f51a2fe225b8a0b963e4d91561fdf3dcfa88e3ecb352b69a4`  
		Last Modified: Thu, 21 Feb 2019 23:01:22 GMT  
		Size: 9.7 MB (9733734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e85a1ff907f6d04a1157dd7b92d4d7944b0f810d2dca9c059b89e0e6cc82b7c6`  
		Last Modified: Thu, 21 Feb 2019 23:01:22 GMT  
		Size: 8.3 MB (8263335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8130fe5c5f794945402aac278637ed853959ddb2bdb904aba11e56a7155cc7`  
		Last Modified: Thu, 21 Feb 2019 23:01:20 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f452cd908457f4b3f27a57f0201fd27e14deb21af84c63356cae3279b8fb1b`  
		Last Modified: Thu, 21 Feb 2019 23:01:20 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine`

```console
$ docker pull redis@sha256:11e096487ddd0fcfe980d7e453d62abd89d0b1b17e4064ce4be285ea15b6ccc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `redis:4.0-alpine` - linux; amd64

```console
$ docker pull redis@sha256:e95a614f40488fc506abb175909011279b0e2d257425e66a0cb0889ee8b8c372
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13919557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83944736833a71a490d842a93ec192d78fbe61063ca8b38d5a2b786f477f20ca`
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
# Thu, 21 Feb 2019 22:59:24 GMT
ENV REDIS_VERSION=4.0.13
# Thu, 21 Feb 2019 22:59:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Thu, 21 Feb 2019 22:59:24 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Thu, 21 Feb 2019 23:00:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 21 Feb 2019 23:00:22 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Feb 2019 23:00:22 GMT
VOLUME [/data]
# Thu, 21 Feb 2019 23:00:22 GMT
WORKDIR /data
# Thu, 21 Feb 2019 23:00:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:00:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Feb 2019 23:00:23 GMT
EXPOSE 6379
# Thu, 21 Feb 2019 23:00:23 GMT
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
	-	`sha256:3fab80706043510c13f0b14d34ae52bc7fa2b44062917934e67b22559e7f4050`  
		Last Modified: Thu, 21 Feb 2019 23:01:35 GMT  
		Size: 10.8 MB (10760072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c1c14f16453102e797d191e9b269d6b16d7343f540535cb21b70848a05539d`  
		Last Modified: Thu, 21 Feb 2019 23:01:30 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4885dfd7be438d83bd2684f36993c44d8d52289217d7838f9d93b6215fdfa7`  
		Last Modified: Thu, 21 Feb 2019 23:01:30 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:8f8a2f47aa95b2ecfa604721c5537d7818058701a0124dfc26bd6d3f79d640f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13297445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b200550ba45a28375b3774c8271f4a88574657e811173e572fd61975eb7ad708`
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
# Fri, 22 Feb 2019 09:09:27 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 09:09:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 09:09:28 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 09:09:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 22 Feb 2019 09:09:54 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 09:09:54 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 09:09:55 GMT
WORKDIR /data
# Fri, 22 Feb 2019 09:09:55 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:09:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:09:56 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 09:09:56 GMT
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
	-	`sha256:126b4ee93bdede7b3cbbf020d7ec6db20b4f66cfa5d97d568b88ed4a14eaac6e`  
		Last Modified: Fri, 22 Feb 2019 09:10:50 GMT  
		Size: 10.3 MB (10349455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedb4389c18a4347704a2593ebe47b59298216588ab1a529dcd9ffaaf937106d`  
		Last Modified: Fri, 22 Feb 2019 09:10:49 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2997d8dee7f3fb5859c4070df516d47193f6329b0f96195e69280cc5442a086`  
		Last Modified: Fri, 22 Feb 2019 09:10:46 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:1e2295f5f4c2affd74cd34adcedb676a30599397f983439071c2d9fa7503964b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14381437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75096c86c1e10057c621b838a67cf3148a26e5fdca916a3ce29c3776a9af767`
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
# Fri, 22 Feb 2019 10:59:41 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 10:59:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 10:59:46 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 11:00:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 22 Feb 2019 11:00:25 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 11:00:28 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 11:00:33 GMT
WORKDIR /data
# Fri, 22 Feb 2019 11:00:35 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 22 Feb 2019 11:00:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 11:00:42 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 11:00:45 GMT
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
	-	`sha256:41aa232037dfaedc13870209b31fe4ad2b9ffb6707a92c76ea36a4782ca1615a`  
		Last Modified: Fri, 22 Feb 2019 11:01:56 GMT  
		Size: 11.2 MB (11190447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f949c9439f18f3196024b91c4e6f228106caf4738122c2271329eb991c8e270`  
		Last Modified: Fri, 22 Feb 2019 11:01:51 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50929fa3aac8edd3571150ce09913a161b5bd5f2940590ffbae9e965f55de79c`  
		Last Modified: Fri, 22 Feb 2019 11:01:51 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine3.9`

```console
$ docker pull redis@sha256:11e096487ddd0fcfe980d7e453d62abd89d0b1b17e4064ce4be285ea15b6ccc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `redis:4.0-alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:e95a614f40488fc506abb175909011279b0e2d257425e66a0cb0889ee8b8c372
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13919557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83944736833a71a490d842a93ec192d78fbe61063ca8b38d5a2b786f477f20ca`
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
# Thu, 21 Feb 2019 22:59:24 GMT
ENV REDIS_VERSION=4.0.13
# Thu, 21 Feb 2019 22:59:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Thu, 21 Feb 2019 22:59:24 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Thu, 21 Feb 2019 23:00:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 21 Feb 2019 23:00:22 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Feb 2019 23:00:22 GMT
VOLUME [/data]
# Thu, 21 Feb 2019 23:00:22 GMT
WORKDIR /data
# Thu, 21 Feb 2019 23:00:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:00:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Feb 2019 23:00:23 GMT
EXPOSE 6379
# Thu, 21 Feb 2019 23:00:23 GMT
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
	-	`sha256:3fab80706043510c13f0b14d34ae52bc7fa2b44062917934e67b22559e7f4050`  
		Last Modified: Thu, 21 Feb 2019 23:01:35 GMT  
		Size: 10.8 MB (10760072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c1c14f16453102e797d191e9b269d6b16d7343f540535cb21b70848a05539d`  
		Last Modified: Thu, 21 Feb 2019 23:01:30 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4885dfd7be438d83bd2684f36993c44d8d52289217d7838f9d93b6215fdfa7`  
		Last Modified: Thu, 21 Feb 2019 23:01:30 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:8f8a2f47aa95b2ecfa604721c5537d7818058701a0124dfc26bd6d3f79d640f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13297445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b200550ba45a28375b3774c8271f4a88574657e811173e572fd61975eb7ad708`
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
# Fri, 22 Feb 2019 09:09:27 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 09:09:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 09:09:28 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 09:09:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 22 Feb 2019 09:09:54 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 09:09:54 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 09:09:55 GMT
WORKDIR /data
# Fri, 22 Feb 2019 09:09:55 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:09:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:09:56 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 09:09:56 GMT
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
	-	`sha256:126b4ee93bdede7b3cbbf020d7ec6db20b4f66cfa5d97d568b88ed4a14eaac6e`  
		Last Modified: Fri, 22 Feb 2019 09:10:50 GMT  
		Size: 10.3 MB (10349455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedb4389c18a4347704a2593ebe47b59298216588ab1a529dcd9ffaaf937106d`  
		Last Modified: Fri, 22 Feb 2019 09:10:49 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2997d8dee7f3fb5859c4070df516d47193f6329b0f96195e69280cc5442a086`  
		Last Modified: Fri, 22 Feb 2019 09:10:46 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:1e2295f5f4c2affd74cd34adcedb676a30599397f983439071c2d9fa7503964b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14381437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75096c86c1e10057c621b838a67cf3148a26e5fdca916a3ce29c3776a9af767`
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
# Fri, 22 Feb 2019 10:59:41 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 10:59:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 10:59:46 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 11:00:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 22 Feb 2019 11:00:25 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 11:00:28 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 11:00:33 GMT
WORKDIR /data
# Fri, 22 Feb 2019 11:00:35 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 22 Feb 2019 11:00:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 11:00:42 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 11:00:45 GMT
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
	-	`sha256:41aa232037dfaedc13870209b31fe4ad2b9ffb6707a92c76ea36a4782ca1615a`  
		Last Modified: Fri, 22 Feb 2019 11:01:56 GMT  
		Size: 11.2 MB (11190447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f949c9439f18f3196024b91c4e6f228106caf4738122c2271329eb991c8e270`  
		Last Modified: Fri, 22 Feb 2019 11:01:51 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50929fa3aac8edd3571150ce09913a161b5bd5f2940590ffbae9e965f55de79c`  
		Last Modified: Fri, 22 Feb 2019 11:01:51 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-stretch`

```console
$ docker pull redis@sha256:de368601eb1b51cd305105b22bae4a6f78ee39ad91de228b8ea026e61d257ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

### `redis:4.0-stretch` - linux; amd64

```console
$ docker pull redis@sha256:ad2bf4b3729ea6a17c30028b56855abc0de0b0ee98f8c6f9cee019ed1387fa25
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (37032563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdb139a437be09b4ec94dd4057f7d3798c37e3eaeab381085e4e7f081a697f75`
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
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_VERSION=4.0.13
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Thu, 21 Feb 2019 22:57:36 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Feb 2019 22:57:37 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Feb 2019 22:57:37 GMT
VOLUME [/data]
# Thu, 21 Feb 2019 22:57:38 GMT
WORKDIR /data
# Thu, 21 Feb 2019 22:57:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 21 Feb 2019 22:57:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Feb 2019 22:57:39 GMT
EXPOSE 6379
# Thu, 21 Feb 2019 22:57:39 GMT
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
	-	`sha256:a347c9184db3c21cda925b83e39c9b803348b6abefd1f1b9f5f6511739304180`  
		Last Modified: Thu, 21 Feb 2019 23:01:11 GMT  
		Size: 13.6 MB (13588648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fbf1282ebe4cffab4b7aba96682d663361af34cfbc72924d8a044e8d0a9d143`  
		Last Modified: Thu, 21 Feb 2019 23:01:03 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d60d78c575065aaa642fbbef2ef40367f3059dba3ed6961ff2f850ca5d4b63e1`  
		Last Modified: Thu, 21 Feb 2019 23:01:03 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:c02c7bbf592985b44417c3ffa3dfece2a622912069a53ab98a17c0d918baa578
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 MB (34827756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebee7f08c93900992d65126794137bf4c5bdbb2e4011b568805df48a000b858d`
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
# Fri, 22 Feb 2019 10:05:50 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 10:05:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 10:05:51 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 10:06:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Feb 2019 10:06:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 10:06:46 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 10:06:47 GMT
WORKDIR /data
# Fri, 22 Feb 2019 10:06:47 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 22 Feb 2019 10:06:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 10:06:48 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 10:06:49 GMT
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
	-	`sha256:445e4dafeb96a87fdc0202187ce5adfa3203ec6defe0cb5c72d67490046f3364`  
		Last Modified: Fri, 22 Feb 2019 10:07:12 GMT  
		Size: 12.7 MB (12712976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9819a35854c27154c447c324f12140af15ce51ea573dcf8058a490e93ada2b85`  
		Last Modified: Fri, 22 Feb 2019 10:07:07 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e4e420fa93be1f8e33698b21c15374116a862a8b0a788dc49c97615a3ae619`  
		Last Modified: Fri, 22 Feb 2019 10:07:07 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4.0-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:4836fb46e4929ff010931f6fe8cc088365e9767fdfecd940c431ef587180bc76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.9 MB (37854686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53f17feeffc55a06af5af7915ded6a8a7245b142cc4a0a133811428f34282cf4`
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
# Fri, 22 Feb 2019 10:57:04 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 10:57:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 10:57:09 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 10:59:15 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Feb 2019 10:59:19 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 10:59:21 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 10:59:23 GMT
WORKDIR /data
# Fri, 22 Feb 2019 10:59:24 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 22 Feb 2019 10:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 10:59:29 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 10:59:31 GMT
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
	-	`sha256:75d528a90dd5f9e0e1b8498ca671c905875e1f683a5e4e3a7898356dc06f85b3`  
		Last Modified: Fri, 22 Feb 2019 11:01:28 GMT  
		Size: 14.2 MB (14187287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2879f32d584bbd4fab9725a6e070c90f8169efa7439f763f60e3d8560a14180`  
		Last Modified: Fri, 22 Feb 2019 11:01:25 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60372839aec1d298051c5a8febfe4195b3f96c34e30495e6c6a0aef43b7e70b`  
		Last Modified: Fri, 22 Feb 2019 11:01:25 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit`

```console
$ docker pull redis@sha256:3af5d3f9f702a694115564e52cee3b986bdc425bfc1509487d4ce4e7e4686cd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:c2f1708b2da46d9c517cebb90de6a14c28a0f5c204699a77e68a031cab567da0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41440987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c9c9c4013162aa2f30f44d5e1b95d1e782c7a536a0f30572602d8af71555ec`
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
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_VERSION=4.0.13
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Thu, 21 Feb 2019 22:58:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Feb 2019 22:59:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Feb 2019 22:59:18 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Feb 2019 22:59:19 GMT
VOLUME [/data]
# Thu, 21 Feb 2019 22:59:19 GMT
WORKDIR /data
# Thu, 21 Feb 2019 22:59:19 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 21 Feb 2019 22:59:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Feb 2019 22:59:20 GMT
EXPOSE 6379
# Thu, 21 Feb 2019 22:59:20 GMT
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
	-	`sha256:7e267580546f060f51a2fe225b8a0b963e4d91561fdf3dcfa88e3ecb352b69a4`  
		Last Modified: Thu, 21 Feb 2019 23:01:22 GMT  
		Size: 9.7 MB (9733734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e85a1ff907f6d04a1157dd7b92d4d7944b0f810d2dca9c059b89e0e6cc82b7c6`  
		Last Modified: Thu, 21 Feb 2019 23:01:22 GMT  
		Size: 8.3 MB (8263335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8130fe5c5f794945402aac278637ed853959ddb2bdb904aba11e56a7155cc7`  
		Last Modified: Thu, 21 Feb 2019 23:01:20 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f452cd908457f4b3f27a57f0201fd27e14deb21af84c63356cae3279b8fb1b`  
		Last Modified: Thu, 21 Feb 2019 23:01:20 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit-stretch`

```console
$ docker pull redis@sha256:3af5d3f9f702a694115564e52cee3b986bdc425bfc1509487d4ce4e7e4686cd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:c2f1708b2da46d9c517cebb90de6a14c28a0f5c204699a77e68a031cab567da0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41440987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c9c9c4013162aa2f30f44d5e1b95d1e782c7a536a0f30572602d8af71555ec`
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
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_VERSION=4.0.13
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Thu, 21 Feb 2019 22:58:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Feb 2019 22:59:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Feb 2019 22:59:18 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Feb 2019 22:59:19 GMT
VOLUME [/data]
# Thu, 21 Feb 2019 22:59:19 GMT
WORKDIR /data
# Thu, 21 Feb 2019 22:59:19 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 21 Feb 2019 22:59:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Feb 2019 22:59:20 GMT
EXPOSE 6379
# Thu, 21 Feb 2019 22:59:20 GMT
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
	-	`sha256:7e267580546f060f51a2fe225b8a0b963e4d91561fdf3dcfa88e3ecb352b69a4`  
		Last Modified: Thu, 21 Feb 2019 23:01:22 GMT  
		Size: 9.7 MB (9733734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e85a1ff907f6d04a1157dd7b92d4d7944b0f810d2dca9c059b89e0e6cc82b7c6`  
		Last Modified: Thu, 21 Feb 2019 23:01:22 GMT  
		Size: 8.3 MB (8263335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8130fe5c5f794945402aac278637ed853959ddb2bdb904aba11e56a7155cc7`  
		Last Modified: Thu, 21 Feb 2019 23:01:20 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f452cd908457f4b3f27a57f0201fd27e14deb21af84c63356cae3279b8fb1b`  
		Last Modified: Thu, 21 Feb 2019 23:01:20 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine`

```console
$ docker pull redis@sha256:11e096487ddd0fcfe980d7e453d62abd89d0b1b17e4064ce4be285ea15b6ccc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `redis:4-alpine` - linux; amd64

```console
$ docker pull redis@sha256:e95a614f40488fc506abb175909011279b0e2d257425e66a0cb0889ee8b8c372
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13919557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83944736833a71a490d842a93ec192d78fbe61063ca8b38d5a2b786f477f20ca`
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
# Thu, 21 Feb 2019 22:59:24 GMT
ENV REDIS_VERSION=4.0.13
# Thu, 21 Feb 2019 22:59:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Thu, 21 Feb 2019 22:59:24 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Thu, 21 Feb 2019 23:00:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 21 Feb 2019 23:00:22 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Feb 2019 23:00:22 GMT
VOLUME [/data]
# Thu, 21 Feb 2019 23:00:22 GMT
WORKDIR /data
# Thu, 21 Feb 2019 23:00:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:00:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Feb 2019 23:00:23 GMT
EXPOSE 6379
# Thu, 21 Feb 2019 23:00:23 GMT
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
	-	`sha256:3fab80706043510c13f0b14d34ae52bc7fa2b44062917934e67b22559e7f4050`  
		Last Modified: Thu, 21 Feb 2019 23:01:35 GMT  
		Size: 10.8 MB (10760072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c1c14f16453102e797d191e9b269d6b16d7343f540535cb21b70848a05539d`  
		Last Modified: Thu, 21 Feb 2019 23:01:30 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4885dfd7be438d83bd2684f36993c44d8d52289217d7838f9d93b6215fdfa7`  
		Last Modified: Thu, 21 Feb 2019 23:01:30 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:8f8a2f47aa95b2ecfa604721c5537d7818058701a0124dfc26bd6d3f79d640f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13297445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b200550ba45a28375b3774c8271f4a88574657e811173e572fd61975eb7ad708`
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
# Fri, 22 Feb 2019 09:09:27 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 09:09:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 09:09:28 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 09:09:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 22 Feb 2019 09:09:54 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 09:09:54 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 09:09:55 GMT
WORKDIR /data
# Fri, 22 Feb 2019 09:09:55 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:09:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:09:56 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 09:09:56 GMT
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
	-	`sha256:126b4ee93bdede7b3cbbf020d7ec6db20b4f66cfa5d97d568b88ed4a14eaac6e`  
		Last Modified: Fri, 22 Feb 2019 09:10:50 GMT  
		Size: 10.3 MB (10349455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedb4389c18a4347704a2593ebe47b59298216588ab1a529dcd9ffaaf937106d`  
		Last Modified: Fri, 22 Feb 2019 09:10:49 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2997d8dee7f3fb5859c4070df516d47193f6329b0f96195e69280cc5442a086`  
		Last Modified: Fri, 22 Feb 2019 09:10:46 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:1e2295f5f4c2affd74cd34adcedb676a30599397f983439071c2d9fa7503964b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14381437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75096c86c1e10057c621b838a67cf3148a26e5fdca916a3ce29c3776a9af767`
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
# Fri, 22 Feb 2019 10:59:41 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 10:59:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 10:59:46 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 11:00:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 22 Feb 2019 11:00:25 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 11:00:28 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 11:00:33 GMT
WORKDIR /data
# Fri, 22 Feb 2019 11:00:35 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 22 Feb 2019 11:00:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 11:00:42 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 11:00:45 GMT
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
	-	`sha256:41aa232037dfaedc13870209b31fe4ad2b9ffb6707a92c76ea36a4782ca1615a`  
		Last Modified: Fri, 22 Feb 2019 11:01:56 GMT  
		Size: 11.2 MB (11190447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f949c9439f18f3196024b91c4e6f228106caf4738122c2271329eb991c8e270`  
		Last Modified: Fri, 22 Feb 2019 11:01:51 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50929fa3aac8edd3571150ce09913a161b5bd5f2940590ffbae9e965f55de79c`  
		Last Modified: Fri, 22 Feb 2019 11:01:51 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine3.9`

```console
$ docker pull redis@sha256:11e096487ddd0fcfe980d7e453d62abd89d0b1b17e4064ce4be285ea15b6ccc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `redis:4-alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:e95a614f40488fc506abb175909011279b0e2d257425e66a0cb0889ee8b8c372
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13919557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83944736833a71a490d842a93ec192d78fbe61063ca8b38d5a2b786f477f20ca`
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
# Thu, 21 Feb 2019 22:59:24 GMT
ENV REDIS_VERSION=4.0.13
# Thu, 21 Feb 2019 22:59:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Thu, 21 Feb 2019 22:59:24 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Thu, 21 Feb 2019 23:00:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Thu, 21 Feb 2019 23:00:22 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Feb 2019 23:00:22 GMT
VOLUME [/data]
# Thu, 21 Feb 2019 23:00:22 GMT
WORKDIR /data
# Thu, 21 Feb 2019 23:00:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Thu, 21 Feb 2019 23:00:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Feb 2019 23:00:23 GMT
EXPOSE 6379
# Thu, 21 Feb 2019 23:00:23 GMT
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
	-	`sha256:3fab80706043510c13f0b14d34ae52bc7fa2b44062917934e67b22559e7f4050`  
		Last Modified: Thu, 21 Feb 2019 23:01:35 GMT  
		Size: 10.8 MB (10760072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c1c14f16453102e797d191e9b269d6b16d7343f540535cb21b70848a05539d`  
		Last Modified: Thu, 21 Feb 2019 23:01:30 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4885dfd7be438d83bd2684f36993c44d8d52289217d7838f9d93b6215fdfa7`  
		Last Modified: Thu, 21 Feb 2019 23:01:30 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:8f8a2f47aa95b2ecfa604721c5537d7818058701a0124dfc26bd6d3f79d640f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13297445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b200550ba45a28375b3774c8271f4a88574657e811173e572fd61975eb7ad708`
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
# Fri, 22 Feb 2019 09:09:27 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 09:09:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 09:09:28 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 09:09:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 22 Feb 2019 09:09:54 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 09:09:54 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 09:09:55 GMT
WORKDIR /data
# Fri, 22 Feb 2019 09:09:55 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:09:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:09:56 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 09:09:56 GMT
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
	-	`sha256:126b4ee93bdede7b3cbbf020d7ec6db20b4f66cfa5d97d568b88ed4a14eaac6e`  
		Last Modified: Fri, 22 Feb 2019 09:10:50 GMT  
		Size: 10.3 MB (10349455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedb4389c18a4347704a2593ebe47b59298216588ab1a529dcd9ffaaf937106d`  
		Last Modified: Fri, 22 Feb 2019 09:10:49 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2997d8dee7f3fb5859c4070df516d47193f6329b0f96195e69280cc5442a086`  
		Last Modified: Fri, 22 Feb 2019 09:10:46 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:1e2295f5f4c2affd74cd34adcedb676a30599397f983439071c2d9fa7503964b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14381437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75096c86c1e10057c621b838a67cf3148a26e5fdca916a3ce29c3776a9af767`
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
# Fri, 22 Feb 2019 10:59:41 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 10:59:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 10:59:46 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 11:00:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Fri, 22 Feb 2019 11:00:25 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 11:00:28 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 11:00:33 GMT
WORKDIR /data
# Fri, 22 Feb 2019 11:00:35 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Fri, 22 Feb 2019 11:00:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 11:00:42 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 11:00:45 GMT
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
	-	`sha256:41aa232037dfaedc13870209b31fe4ad2b9ffb6707a92c76ea36a4782ca1615a`  
		Last Modified: Fri, 22 Feb 2019 11:01:56 GMT  
		Size: 11.2 MB (11190447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f949c9439f18f3196024b91c4e6f228106caf4738122c2271329eb991c8e270`  
		Last Modified: Fri, 22 Feb 2019 11:01:51 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50929fa3aac8edd3571150ce09913a161b5bd5f2940590ffbae9e965f55de79c`  
		Last Modified: Fri, 22 Feb 2019 11:01:51 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-stretch`

```console
$ docker pull redis@sha256:de368601eb1b51cd305105b22bae4a6f78ee39ad91de228b8ea026e61d257ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

### `redis:4-stretch` - linux; amd64

```console
$ docker pull redis@sha256:ad2bf4b3729ea6a17c30028b56855abc0de0b0ee98f8c6f9cee019ed1387fa25
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (37032563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdb139a437be09b4ec94dd4057f7d3798c37e3eaeab381085e4e7f081a697f75`
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
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_VERSION=4.0.13
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Thu, 21 Feb 2019 22:56:27 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Thu, 21 Feb 2019 22:57:36 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Feb 2019 22:57:37 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Feb 2019 22:57:37 GMT
VOLUME [/data]
# Thu, 21 Feb 2019 22:57:38 GMT
WORKDIR /data
# Thu, 21 Feb 2019 22:57:38 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 21 Feb 2019 22:57:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Feb 2019 22:57:39 GMT
EXPOSE 6379
# Thu, 21 Feb 2019 22:57:39 GMT
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
	-	`sha256:a347c9184db3c21cda925b83e39c9b803348b6abefd1f1b9f5f6511739304180`  
		Last Modified: Thu, 21 Feb 2019 23:01:11 GMT  
		Size: 13.6 MB (13588648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fbf1282ebe4cffab4b7aba96682d663361af34cfbc72924d8a044e8d0a9d143`  
		Last Modified: Thu, 21 Feb 2019 23:01:03 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d60d78c575065aaa642fbbef2ef40367f3059dba3ed6961ff2f850ca5d4b63e1`  
		Last Modified: Thu, 21 Feb 2019 23:01:03 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:c02c7bbf592985b44417c3ffa3dfece2a622912069a53ab98a17c0d918baa578
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 MB (34827756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebee7f08c93900992d65126794137bf4c5bdbb2e4011b568805df48a000b858d`
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
# Fri, 22 Feb 2019 10:05:50 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 10:05:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 10:05:51 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 10:06:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Feb 2019 10:06:45 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 10:06:46 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 10:06:47 GMT
WORKDIR /data
# Fri, 22 Feb 2019 10:06:47 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 22 Feb 2019 10:06:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 10:06:48 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 10:06:49 GMT
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
	-	`sha256:445e4dafeb96a87fdc0202187ce5adfa3203ec6defe0cb5c72d67490046f3364`  
		Last Modified: Fri, 22 Feb 2019 10:07:12 GMT  
		Size: 12.7 MB (12712976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9819a35854c27154c447c324f12140af15ce51ea573dcf8058a490e93ada2b85`  
		Last Modified: Fri, 22 Feb 2019 10:07:07 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e4e420fa93be1f8e33698b21c15374116a862a8b0a788dc49c97615a3ae619`  
		Last Modified: Fri, 22 Feb 2019 10:07:07 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:4836fb46e4929ff010931f6fe8cc088365e9767fdfecd940c431ef587180bc76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.9 MB (37854686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53f17feeffc55a06af5af7915ded6a8a7245b142cc4a0a133811428f34282cf4`
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
# Fri, 22 Feb 2019 10:57:04 GMT
ENV REDIS_VERSION=4.0.13
# Fri, 22 Feb 2019 10:57:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.13.tar.gz
# Fri, 22 Feb 2019 10:57:09 GMT
ENV REDIS_DOWNLOAD_SHA=17d955227966dcd68590be6139e5fe7f2d19fc4fb7334248a904ea9cdd30c1d4
# Fri, 22 Feb 2019 10:59:15 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Feb 2019 10:59:19 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Feb 2019 10:59:21 GMT
VOLUME [/data]
# Fri, 22 Feb 2019 10:59:23 GMT
WORKDIR /data
# Fri, 22 Feb 2019 10:59:24 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Fri, 22 Feb 2019 10:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 10:59:29 GMT
EXPOSE 6379
# Fri, 22 Feb 2019 10:59:31 GMT
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
	-	`sha256:75d528a90dd5f9e0e1b8498ca671c905875e1f683a5e4e3a7898356dc06f85b3`  
		Last Modified: Fri, 22 Feb 2019 11:01:28 GMT  
		Size: 14.2 MB (14187287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2879f32d584bbd4fab9725a6e070c90f8169efa7439f763f60e3d8560a14180`  
		Last Modified: Fri, 22 Feb 2019 11:01:25 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60372839aec1d298051c5a8febfe4195b3f96c34e30495e6c6a0aef43b7e70b`  
		Last Modified: Fri, 22 Feb 2019 11:01:25 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5`

```console
$ docker pull redis@sha256:dd5b84ce536dffdcab79024f4df5485d010affa09e6c399b215e199a0dca38c4
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
$ docker pull redis@sha256:b086e2459e0c9c67107cb6296547e6e2cad481916b0a52d4e13ed93b523acadd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31335527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98d4242479a9bcce3deb06f8ace075c58c3df81b442f40e4f06fc5a8b8776b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 14:36:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 07 Feb 2019 14:36:19 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 14:36:43 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 14:36:43 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 07 Feb 2019 14:36:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 07 Feb 2019 14:36:44 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 07 Feb 2019 14:37:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 14:37:46 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 07 Feb 2019 14:37:46 GMT
VOLUME [/data]
# Thu, 07 Feb 2019 14:37:47 GMT
WORKDIR /data
# Thu, 07 Feb 2019 14:37:47 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 07 Feb 2019 14:37:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 14:37:48 GMT
EXPOSE 6379
# Thu, 07 Feb 2019 14:37:48 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a33dcb74f6890695a8e8b4caa3e95a23bdf182d1a158bf849b1e173deb2555a`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81fa8463b46e79417fb5aa6628379abc1dc55e0900e204a535e42146a6f82a6`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 915.8 KB (915826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a0365cd5e0ffc33dc30a6193cefa3aef2d9721e788f550af095e10b6ec737e`  
		Last Modified: Thu, 07 Feb 2019 14:39:08 GMT  
		Size: 11.1 MB (11127216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8116674edf643753f62b837c73f380a0bbef9c0d23df3455b250f6e36950934f`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b08116b1f5b1de0360d06301d2f032ba87c5279d7fe78e75a818a197147a0ff`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
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
$ docker pull redis@sha256:7ddb90178f8786f65929ce92ea2d9bb874249c2f1ee969e07dce518542842403
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35247513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d187b4857312ec98f0bbcdf025999bd29cae775d89f05957503e2d2b0e8a02c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:39:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 23:39:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 23:39:53 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 23:40:57 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 23:40:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 23:40:57 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 23:40:58 GMT
WORKDIR /data
# Wed, 06 Feb 2019 23:40:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 23:40:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 23:40:58 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 23:40:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadb597627df80e3b1f1d8989193983c5058843d888a019450e089483fdf8dc9`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7422d28b300ac21d0431364be43da17fc3c25ac1a076b3d5cc162e74108dd3db`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 920.1 KB (920132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9ee4997e7100b76de34e6e7a8e9528d89641cc618c2b51e117546e031aad61`  
		Last Modified: Wed, 06 Feb 2019 23:44:00 GMT  
		Size: 11.2 MB (11178155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2817d82fa95724c21749a2d7c567ff1382e056f52c8e59a75a1778599ce96e`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42899877c5fd7999ce70acabd2790f7bea9e93034888b30ae7c2c07527a572dc`  
		Last Modified: Wed, 06 Feb 2019 23:43:58 GMT  
		Size: 420.0 B  
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
$ docker pull redis@sha256:dd5b84ce536dffdcab79024f4df5485d010affa09e6c399b215e199a0dca38c4
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
$ docker pull redis@sha256:b086e2459e0c9c67107cb6296547e6e2cad481916b0a52d4e13ed93b523acadd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31335527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98d4242479a9bcce3deb06f8ace075c58c3df81b442f40e4f06fc5a8b8776b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 14:36:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 07 Feb 2019 14:36:19 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 14:36:43 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 14:36:43 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 07 Feb 2019 14:36:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 07 Feb 2019 14:36:44 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 07 Feb 2019 14:37:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 14:37:46 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 07 Feb 2019 14:37:46 GMT
VOLUME [/data]
# Thu, 07 Feb 2019 14:37:47 GMT
WORKDIR /data
# Thu, 07 Feb 2019 14:37:47 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 07 Feb 2019 14:37:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 14:37:48 GMT
EXPOSE 6379
# Thu, 07 Feb 2019 14:37:48 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a33dcb74f6890695a8e8b4caa3e95a23bdf182d1a158bf849b1e173deb2555a`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81fa8463b46e79417fb5aa6628379abc1dc55e0900e204a535e42146a6f82a6`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 915.8 KB (915826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a0365cd5e0ffc33dc30a6193cefa3aef2d9721e788f550af095e10b6ec737e`  
		Last Modified: Thu, 07 Feb 2019 14:39:08 GMT  
		Size: 11.1 MB (11127216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8116674edf643753f62b837c73f380a0bbef9c0d23df3455b250f6e36950934f`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b08116b1f5b1de0360d06301d2f032ba87c5279d7fe78e75a818a197147a0ff`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
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
$ docker pull redis@sha256:7ddb90178f8786f65929ce92ea2d9bb874249c2f1ee969e07dce518542842403
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35247513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d187b4857312ec98f0bbcdf025999bd29cae775d89f05957503e2d2b0e8a02c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:39:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 23:39:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 23:39:53 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 23:40:57 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 23:40:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 23:40:57 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 23:40:58 GMT
WORKDIR /data
# Wed, 06 Feb 2019 23:40:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 23:40:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 23:40:58 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 23:40:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadb597627df80e3b1f1d8989193983c5058843d888a019450e089483fdf8dc9`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7422d28b300ac21d0431364be43da17fc3c25ac1a076b3d5cc162e74108dd3db`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 920.1 KB (920132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9ee4997e7100b76de34e6e7a8e9528d89641cc618c2b51e117546e031aad61`  
		Last Modified: Wed, 06 Feb 2019 23:44:00 GMT  
		Size: 11.2 MB (11178155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2817d82fa95724c21749a2d7c567ff1382e056f52c8e59a75a1778599ce96e`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42899877c5fd7999ce70acabd2790f7bea9e93034888b30ae7c2c07527a572dc`  
		Last Modified: Wed, 06 Feb 2019 23:43:58 GMT  
		Size: 420.0 B  
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
$ docker pull redis@sha256:dd5b84ce536dffdcab79024f4df5485d010affa09e6c399b215e199a0dca38c4
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
$ docker pull redis@sha256:b086e2459e0c9c67107cb6296547e6e2cad481916b0a52d4e13ed93b523acadd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31335527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98d4242479a9bcce3deb06f8ace075c58c3df81b442f40e4f06fc5a8b8776b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 14:36:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 07 Feb 2019 14:36:19 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 14:36:43 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 14:36:43 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 07 Feb 2019 14:36:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 07 Feb 2019 14:36:44 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 07 Feb 2019 14:37:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 14:37:46 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 07 Feb 2019 14:37:46 GMT
VOLUME [/data]
# Thu, 07 Feb 2019 14:37:47 GMT
WORKDIR /data
# Thu, 07 Feb 2019 14:37:47 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 07 Feb 2019 14:37:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 14:37:48 GMT
EXPOSE 6379
# Thu, 07 Feb 2019 14:37:48 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a33dcb74f6890695a8e8b4caa3e95a23bdf182d1a158bf849b1e173deb2555a`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81fa8463b46e79417fb5aa6628379abc1dc55e0900e204a535e42146a6f82a6`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 915.8 KB (915826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a0365cd5e0ffc33dc30a6193cefa3aef2d9721e788f550af095e10b6ec737e`  
		Last Modified: Thu, 07 Feb 2019 14:39:08 GMT  
		Size: 11.1 MB (11127216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8116674edf643753f62b837c73f380a0bbef9c0d23df3455b250f6e36950934f`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b08116b1f5b1de0360d06301d2f032ba87c5279d7fe78e75a818a197147a0ff`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
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
$ docker pull redis@sha256:7ddb90178f8786f65929ce92ea2d9bb874249c2f1ee969e07dce518542842403
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35247513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d187b4857312ec98f0bbcdf025999bd29cae775d89f05957503e2d2b0e8a02c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:39:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 23:39:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 23:39:53 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 23:40:57 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 23:40:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 23:40:57 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 23:40:58 GMT
WORKDIR /data
# Wed, 06 Feb 2019 23:40:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 23:40:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 23:40:58 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 23:40:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadb597627df80e3b1f1d8989193983c5058843d888a019450e089483fdf8dc9`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7422d28b300ac21d0431364be43da17fc3c25ac1a076b3d5cc162e74108dd3db`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 920.1 KB (920132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9ee4997e7100b76de34e6e7a8e9528d89641cc618c2b51e117546e031aad61`  
		Last Modified: Wed, 06 Feb 2019 23:44:00 GMT  
		Size: 11.2 MB (11178155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2817d82fa95724c21749a2d7c567ff1382e056f52c8e59a75a1778599ce96e`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42899877c5fd7999ce70acabd2790f7bea9e93034888b30ae7c2c07527a572dc`  
		Last Modified: Wed, 06 Feb 2019 23:43:58 GMT  
		Size: 420.0 B  
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
$ docker pull redis@sha256:3fa51e0b90b42ed2dd9bd87620fe7c45c43eb4e1f81c83813a78474cbe2f7457
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
$ docker pull redis@sha256:5b0c6375c8e6c38e8b3e2510e6ff361dc8f11b055dabeb6098c0f0b0aeed6c69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17108024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cea50258c554a108102e543fed13bc3fb41cff5717f032c84ea197a2129b7af`
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
# Wed, 06 Feb 2019 10:16:52 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 10:16:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 10:16:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 10:17:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 10:17:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 10:17:42 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 10:17:42 GMT
WORKDIR /data
# Wed, 06 Feb 2019 10:17:43 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 10:17:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:17:43 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 10:17:44 GMT
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
	-	`sha256:8ab6465effc6007b20a9268979ece7d062602df28080f2648bd4b31416c63f2b`  
		Last Modified: Fri, 22 Feb 2019 09:10:16 GMT  
		Size: 14.2 MB (14160034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913b59d71534ebd571204bdd0b6be7ae57d7009842974920afb1666b0d26d6bd`  
		Last Modified: Fri, 22 Feb 2019 09:10:11 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7eba4e206440b54c4c7863065753cdc2d4e6e8034806c0b7e3fd4c20aaf9a0`  
		Last Modified: Fri, 22 Feb 2019 09:10:11 GMT  
		Size: 411.0 B  
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
$ docker pull redis@sha256:3fa51e0b90b42ed2dd9bd87620fe7c45c43eb4e1f81c83813a78474cbe2f7457
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
$ docker pull redis@sha256:5b0c6375c8e6c38e8b3e2510e6ff361dc8f11b055dabeb6098c0f0b0aeed6c69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17108024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cea50258c554a108102e543fed13bc3fb41cff5717f032c84ea197a2129b7af`
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
# Wed, 06 Feb 2019 10:16:52 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 10:16:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 10:16:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 10:17:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 10:17:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 10:17:42 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 10:17:42 GMT
WORKDIR /data
# Wed, 06 Feb 2019 10:17:43 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 10:17:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:17:43 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 10:17:44 GMT
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
	-	`sha256:8ab6465effc6007b20a9268979ece7d062602df28080f2648bd4b31416c63f2b`  
		Last Modified: Fri, 22 Feb 2019 09:10:16 GMT  
		Size: 14.2 MB (14160034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913b59d71534ebd571204bdd0b6be7ae57d7009842974920afb1666b0d26d6bd`  
		Last Modified: Fri, 22 Feb 2019 09:10:11 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7eba4e206440b54c4c7863065753cdc2d4e6e8034806c0b7e3fd4c20aaf9a0`  
		Last Modified: Fri, 22 Feb 2019 09:10:11 GMT  
		Size: 411.0 B  
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
$ docker pull redis@sha256:dd5b84ce536dffdcab79024f4df5485d010affa09e6c399b215e199a0dca38c4
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
$ docker pull redis@sha256:b086e2459e0c9c67107cb6296547e6e2cad481916b0a52d4e13ed93b523acadd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31335527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98d4242479a9bcce3deb06f8ace075c58c3df81b442f40e4f06fc5a8b8776b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 14:36:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 07 Feb 2019 14:36:19 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 14:36:43 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 14:36:43 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 07 Feb 2019 14:36:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 07 Feb 2019 14:36:44 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 07 Feb 2019 14:37:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 14:37:46 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 07 Feb 2019 14:37:46 GMT
VOLUME [/data]
# Thu, 07 Feb 2019 14:37:47 GMT
WORKDIR /data
# Thu, 07 Feb 2019 14:37:47 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 07 Feb 2019 14:37:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 14:37:48 GMT
EXPOSE 6379
# Thu, 07 Feb 2019 14:37:48 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a33dcb74f6890695a8e8b4caa3e95a23bdf182d1a158bf849b1e173deb2555a`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81fa8463b46e79417fb5aa6628379abc1dc55e0900e204a535e42146a6f82a6`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 915.8 KB (915826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a0365cd5e0ffc33dc30a6193cefa3aef2d9721e788f550af095e10b6ec737e`  
		Last Modified: Thu, 07 Feb 2019 14:39:08 GMT  
		Size: 11.1 MB (11127216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8116674edf643753f62b837c73f380a0bbef9c0d23df3455b250f6e36950934f`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b08116b1f5b1de0360d06301d2f032ba87c5279d7fe78e75a818a197147a0ff`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
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
$ docker pull redis@sha256:7ddb90178f8786f65929ce92ea2d9bb874249c2f1ee969e07dce518542842403
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35247513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d187b4857312ec98f0bbcdf025999bd29cae775d89f05957503e2d2b0e8a02c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:39:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 23:39:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 23:39:53 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 23:40:57 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 23:40:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 23:40:57 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 23:40:58 GMT
WORKDIR /data
# Wed, 06 Feb 2019 23:40:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 23:40:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 23:40:58 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 23:40:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadb597627df80e3b1f1d8989193983c5058843d888a019450e089483fdf8dc9`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7422d28b300ac21d0431364be43da17fc3c25ac1a076b3d5cc162e74108dd3db`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 920.1 KB (920132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9ee4997e7100b76de34e6e7a8e9528d89641cc618c2b51e117546e031aad61`  
		Last Modified: Wed, 06 Feb 2019 23:44:00 GMT  
		Size: 11.2 MB (11178155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2817d82fa95724c21749a2d7c567ff1382e056f52c8e59a75a1778599ce96e`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42899877c5fd7999ce70acabd2790f7bea9e93034888b30ae7c2c07527a572dc`  
		Last Modified: Wed, 06 Feb 2019 23:43:58 GMT  
		Size: 420.0 B  
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
$ docker pull redis@sha256:3fa51e0b90b42ed2dd9bd87620fe7c45c43eb4e1f81c83813a78474cbe2f7457
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
$ docker pull redis@sha256:5b0c6375c8e6c38e8b3e2510e6ff361dc8f11b055dabeb6098c0f0b0aeed6c69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17108024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cea50258c554a108102e543fed13bc3fb41cff5717f032c84ea197a2129b7af`
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
# Wed, 06 Feb 2019 10:16:52 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 10:16:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 10:16:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 10:17:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 10:17:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 10:17:42 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 10:17:42 GMT
WORKDIR /data
# Wed, 06 Feb 2019 10:17:43 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 10:17:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:17:43 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 10:17:44 GMT
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
	-	`sha256:8ab6465effc6007b20a9268979ece7d062602df28080f2648bd4b31416c63f2b`  
		Last Modified: Fri, 22 Feb 2019 09:10:16 GMT  
		Size: 14.2 MB (14160034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913b59d71534ebd571204bdd0b6be7ae57d7009842974920afb1666b0d26d6bd`  
		Last Modified: Fri, 22 Feb 2019 09:10:11 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7eba4e206440b54c4c7863065753cdc2d4e6e8034806c0b7e3fd4c20aaf9a0`  
		Last Modified: Fri, 22 Feb 2019 09:10:11 GMT  
		Size: 411.0 B  
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
$ docker pull redis@sha256:3fa51e0b90b42ed2dd9bd87620fe7c45c43eb4e1f81c83813a78474cbe2f7457
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
$ docker pull redis@sha256:5b0c6375c8e6c38e8b3e2510e6ff361dc8f11b055dabeb6098c0f0b0aeed6c69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17108024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cea50258c554a108102e543fed13bc3fb41cff5717f032c84ea197a2129b7af`
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
# Wed, 06 Feb 2019 10:16:52 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 10:16:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 10:16:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 10:17:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 10:17:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 10:17:42 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 10:17:42 GMT
WORKDIR /data
# Wed, 06 Feb 2019 10:17:43 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 10:17:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:17:43 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 10:17:44 GMT
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
	-	`sha256:8ab6465effc6007b20a9268979ece7d062602df28080f2648bd4b31416c63f2b`  
		Last Modified: Fri, 22 Feb 2019 09:10:16 GMT  
		Size: 14.2 MB (14160034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913b59d71534ebd571204bdd0b6be7ae57d7009842974920afb1666b0d26d6bd`  
		Last Modified: Fri, 22 Feb 2019 09:10:11 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7eba4e206440b54c4c7863065753cdc2d4e6e8034806c0b7e3fd4c20aaf9a0`  
		Last Modified: Fri, 22 Feb 2019 09:10:11 GMT  
		Size: 411.0 B  
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
$ docker pull redis@sha256:dd5b84ce536dffdcab79024f4df5485d010affa09e6c399b215e199a0dca38c4
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
$ docker pull redis@sha256:b086e2459e0c9c67107cb6296547e6e2cad481916b0a52d4e13ed93b523acadd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31335527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98d4242479a9bcce3deb06f8ace075c58c3df81b442f40e4f06fc5a8b8776b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 14:36:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 07 Feb 2019 14:36:19 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 14:36:43 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 14:36:43 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 07 Feb 2019 14:36:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 07 Feb 2019 14:36:44 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 07 Feb 2019 14:37:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 14:37:46 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 07 Feb 2019 14:37:46 GMT
VOLUME [/data]
# Thu, 07 Feb 2019 14:37:47 GMT
WORKDIR /data
# Thu, 07 Feb 2019 14:37:47 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 07 Feb 2019 14:37:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 14:37:48 GMT
EXPOSE 6379
# Thu, 07 Feb 2019 14:37:48 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a33dcb74f6890695a8e8b4caa3e95a23bdf182d1a158bf849b1e173deb2555a`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81fa8463b46e79417fb5aa6628379abc1dc55e0900e204a535e42146a6f82a6`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 915.8 KB (915826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a0365cd5e0ffc33dc30a6193cefa3aef2d9721e788f550af095e10b6ec737e`  
		Last Modified: Thu, 07 Feb 2019 14:39:08 GMT  
		Size: 11.1 MB (11127216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8116674edf643753f62b837c73f380a0bbef9c0d23df3455b250f6e36950934f`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b08116b1f5b1de0360d06301d2f032ba87c5279d7fe78e75a818a197147a0ff`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
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
$ docker pull redis@sha256:7ddb90178f8786f65929ce92ea2d9bb874249c2f1ee969e07dce518542842403
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35247513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d187b4857312ec98f0bbcdf025999bd29cae775d89f05957503e2d2b0e8a02c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:39:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 23:39:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 23:39:53 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 23:40:57 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 23:40:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 23:40:57 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 23:40:58 GMT
WORKDIR /data
# Wed, 06 Feb 2019 23:40:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 23:40:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 23:40:58 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 23:40:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadb597627df80e3b1f1d8989193983c5058843d888a019450e089483fdf8dc9`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7422d28b300ac21d0431364be43da17fc3c25ac1a076b3d5cc162e74108dd3db`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 920.1 KB (920132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9ee4997e7100b76de34e6e7a8e9528d89641cc618c2b51e117546e031aad61`  
		Last Modified: Wed, 06 Feb 2019 23:44:00 GMT  
		Size: 11.2 MB (11178155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2817d82fa95724c21749a2d7c567ff1382e056f52c8e59a75a1778599ce96e`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42899877c5fd7999ce70acabd2790f7bea9e93034888b30ae7c2c07527a572dc`  
		Last Modified: Wed, 06 Feb 2019 23:43:58 GMT  
		Size: 420.0 B  
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
$ docker pull redis@sha256:3fa51e0b90b42ed2dd9bd87620fe7c45c43eb4e1f81c83813a78474cbe2f7457
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
$ docker pull redis@sha256:5b0c6375c8e6c38e8b3e2510e6ff361dc8f11b055dabeb6098c0f0b0aeed6c69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17108024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cea50258c554a108102e543fed13bc3fb41cff5717f032c84ea197a2129b7af`
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
# Wed, 06 Feb 2019 10:16:52 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 10:16:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 10:16:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 10:17:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 10:17:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 10:17:42 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 10:17:42 GMT
WORKDIR /data
# Wed, 06 Feb 2019 10:17:43 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 10:17:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:17:43 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 10:17:44 GMT
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
	-	`sha256:8ab6465effc6007b20a9268979ece7d062602df28080f2648bd4b31416c63f2b`  
		Last Modified: Fri, 22 Feb 2019 09:10:16 GMT  
		Size: 14.2 MB (14160034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913b59d71534ebd571204bdd0b6be7ae57d7009842974920afb1666b0d26d6bd`  
		Last Modified: Fri, 22 Feb 2019 09:10:11 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7eba4e206440b54c4c7863065753cdc2d4e6e8034806c0b7e3fd4c20aaf9a0`  
		Last Modified: Fri, 22 Feb 2019 09:10:11 GMT  
		Size: 411.0 B  
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
$ docker pull redis@sha256:3fa51e0b90b42ed2dd9bd87620fe7c45c43eb4e1f81c83813a78474cbe2f7457
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
$ docker pull redis@sha256:5b0c6375c8e6c38e8b3e2510e6ff361dc8f11b055dabeb6098c0f0b0aeed6c69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17108024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cea50258c554a108102e543fed13bc3fb41cff5717f032c84ea197a2129b7af`
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
# Wed, 06 Feb 2019 10:16:52 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 10:16:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 10:16:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 10:17:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 10:17:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 10:17:42 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 10:17:42 GMT
WORKDIR /data
# Wed, 06 Feb 2019 10:17:43 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 10:17:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:17:43 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 10:17:44 GMT
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
	-	`sha256:8ab6465effc6007b20a9268979ece7d062602df28080f2648bd4b31416c63f2b`  
		Last Modified: Fri, 22 Feb 2019 09:10:16 GMT  
		Size: 14.2 MB (14160034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913b59d71534ebd571204bdd0b6be7ae57d7009842974920afb1666b0d26d6bd`  
		Last Modified: Fri, 22 Feb 2019 09:10:11 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7eba4e206440b54c4c7863065753cdc2d4e6e8034806c0b7e3fd4c20aaf9a0`  
		Last Modified: Fri, 22 Feb 2019 09:10:11 GMT  
		Size: 411.0 B  
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
$ docker pull redis@sha256:dd5b84ce536dffdcab79024f4df5485d010affa09e6c399b215e199a0dca38c4
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
$ docker pull redis@sha256:b086e2459e0c9c67107cb6296547e6e2cad481916b0a52d4e13ed93b523acadd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31335527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98d4242479a9bcce3deb06f8ace075c58c3df81b442f40e4f06fc5a8b8776b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 14:36:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 07 Feb 2019 14:36:19 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 14:36:43 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 14:36:43 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 07 Feb 2019 14:36:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 07 Feb 2019 14:36:44 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 07 Feb 2019 14:37:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 14:37:46 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 07 Feb 2019 14:37:46 GMT
VOLUME [/data]
# Thu, 07 Feb 2019 14:37:47 GMT
WORKDIR /data
# Thu, 07 Feb 2019 14:37:47 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 07 Feb 2019 14:37:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 14:37:48 GMT
EXPOSE 6379
# Thu, 07 Feb 2019 14:37:48 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a33dcb74f6890695a8e8b4caa3e95a23bdf182d1a158bf849b1e173deb2555a`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81fa8463b46e79417fb5aa6628379abc1dc55e0900e204a535e42146a6f82a6`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 915.8 KB (915826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a0365cd5e0ffc33dc30a6193cefa3aef2d9721e788f550af095e10b6ec737e`  
		Last Modified: Thu, 07 Feb 2019 14:39:08 GMT  
		Size: 11.1 MB (11127216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8116674edf643753f62b837c73f380a0bbef9c0d23df3455b250f6e36950934f`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b08116b1f5b1de0360d06301d2f032ba87c5279d7fe78e75a818a197147a0ff`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
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
$ docker pull redis@sha256:7ddb90178f8786f65929ce92ea2d9bb874249c2f1ee969e07dce518542842403
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35247513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d187b4857312ec98f0bbcdf025999bd29cae775d89f05957503e2d2b0e8a02c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:39:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 23:39:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 23:39:53 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 23:40:57 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 23:40:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 23:40:57 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 23:40:58 GMT
WORKDIR /data
# Wed, 06 Feb 2019 23:40:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 23:40:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 23:40:58 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 23:40:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadb597627df80e3b1f1d8989193983c5058843d888a019450e089483fdf8dc9`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7422d28b300ac21d0431364be43da17fc3c25ac1a076b3d5cc162e74108dd3db`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 920.1 KB (920132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9ee4997e7100b76de34e6e7a8e9528d89641cc618c2b51e117546e031aad61`  
		Last Modified: Wed, 06 Feb 2019 23:44:00 GMT  
		Size: 11.2 MB (11178155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2817d82fa95724c21749a2d7c567ff1382e056f52c8e59a75a1778599ce96e`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42899877c5fd7999ce70acabd2790f7bea9e93034888b30ae7c2c07527a572dc`  
		Last Modified: Wed, 06 Feb 2019 23:43:58 GMT  
		Size: 420.0 B  
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
$ docker pull redis@sha256:3fa51e0b90b42ed2dd9bd87620fe7c45c43eb4e1f81c83813a78474cbe2f7457
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
$ docker pull redis@sha256:5b0c6375c8e6c38e8b3e2510e6ff361dc8f11b055dabeb6098c0f0b0aeed6c69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17108024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cea50258c554a108102e543fed13bc3fb41cff5717f032c84ea197a2129b7af`
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
# Wed, 06 Feb 2019 10:16:52 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 10:16:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 10:16:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 10:17:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 10:17:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 10:17:42 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 10:17:42 GMT
WORKDIR /data
# Wed, 06 Feb 2019 10:17:43 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 10:17:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:17:43 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 10:17:44 GMT
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
	-	`sha256:8ab6465effc6007b20a9268979ece7d062602df28080f2648bd4b31416c63f2b`  
		Last Modified: Fri, 22 Feb 2019 09:10:16 GMT  
		Size: 14.2 MB (14160034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913b59d71534ebd571204bdd0b6be7ae57d7009842974920afb1666b0d26d6bd`  
		Last Modified: Fri, 22 Feb 2019 09:10:11 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7eba4e206440b54c4c7863065753cdc2d4e6e8034806c0b7e3fd4c20aaf9a0`  
		Last Modified: Fri, 22 Feb 2019 09:10:11 GMT  
		Size: 411.0 B  
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
$ docker pull redis@sha256:3fa51e0b90b42ed2dd9bd87620fe7c45c43eb4e1f81c83813a78474cbe2f7457
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
$ docker pull redis@sha256:5b0c6375c8e6c38e8b3e2510e6ff361dc8f11b055dabeb6098c0f0b0aeed6c69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17108024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cea50258c554a108102e543fed13bc3fb41cff5717f032c84ea197a2129b7af`
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
# Wed, 06 Feb 2019 10:16:52 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 10:16:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 10:16:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 10:17:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Wed, 06 Feb 2019 10:17:41 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 10:17:42 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 10:17:42 GMT
WORKDIR /data
# Wed, 06 Feb 2019 10:17:43 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Wed, 06 Feb 2019 10:17:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:17:43 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 10:17:44 GMT
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
	-	`sha256:8ab6465effc6007b20a9268979ece7d062602df28080f2648bd4b31416c63f2b`  
		Last Modified: Fri, 22 Feb 2019 09:10:16 GMT  
		Size: 14.2 MB (14160034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913b59d71534ebd571204bdd0b6be7ae57d7009842974920afb1666b0d26d6bd`  
		Last Modified: Fri, 22 Feb 2019 09:10:11 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7eba4e206440b54c4c7863065753cdc2d4e6e8034806c0b7e3fd4c20aaf9a0`  
		Last Modified: Fri, 22 Feb 2019 09:10:11 GMT  
		Size: 411.0 B  
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
$ docker pull redis@sha256:dd5b84ce536dffdcab79024f4df5485d010affa09e6c399b215e199a0dca38c4
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
$ docker pull redis@sha256:b086e2459e0c9c67107cb6296547e6e2cad481916b0a52d4e13ed93b523acadd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31335527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98d4242479a9bcce3deb06f8ace075c58c3df81b442f40e4f06fc5a8b8776b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 14:36:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 07 Feb 2019 14:36:19 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 14:36:43 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 14:36:43 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 07 Feb 2019 14:36:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 07 Feb 2019 14:36:44 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 07 Feb 2019 14:37:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 14:37:46 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 07 Feb 2019 14:37:46 GMT
VOLUME [/data]
# Thu, 07 Feb 2019 14:37:47 GMT
WORKDIR /data
# Thu, 07 Feb 2019 14:37:47 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 07 Feb 2019 14:37:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 14:37:48 GMT
EXPOSE 6379
# Thu, 07 Feb 2019 14:37:48 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a33dcb74f6890695a8e8b4caa3e95a23bdf182d1a158bf849b1e173deb2555a`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81fa8463b46e79417fb5aa6628379abc1dc55e0900e204a535e42146a6f82a6`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 915.8 KB (915826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a0365cd5e0ffc33dc30a6193cefa3aef2d9721e788f550af095e10b6ec737e`  
		Last Modified: Thu, 07 Feb 2019 14:39:08 GMT  
		Size: 11.1 MB (11127216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8116674edf643753f62b837c73f380a0bbef9c0d23df3455b250f6e36950934f`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b08116b1f5b1de0360d06301d2f032ba87c5279d7fe78e75a818a197147a0ff`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
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
$ docker pull redis@sha256:7ddb90178f8786f65929ce92ea2d9bb874249c2f1ee969e07dce518542842403
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35247513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d187b4857312ec98f0bbcdf025999bd29cae775d89f05957503e2d2b0e8a02c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:39:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 23:39:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 23:39:53 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 23:40:57 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 23:40:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 23:40:57 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 23:40:58 GMT
WORKDIR /data
# Wed, 06 Feb 2019 23:40:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 23:40:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 23:40:58 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 23:40:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadb597627df80e3b1f1d8989193983c5058843d888a019450e089483fdf8dc9`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7422d28b300ac21d0431364be43da17fc3c25ac1a076b3d5cc162e74108dd3db`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 920.1 KB (920132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9ee4997e7100b76de34e6e7a8e9528d89641cc618c2b51e117546e031aad61`  
		Last Modified: Wed, 06 Feb 2019 23:44:00 GMT  
		Size: 11.2 MB (11178155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2817d82fa95724c21749a2d7c567ff1382e056f52c8e59a75a1778599ce96e`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42899877c5fd7999ce70acabd2790f7bea9e93034888b30ae7c2c07527a572dc`  
		Last Modified: Wed, 06 Feb 2019 23:43:58 GMT  
		Size: 420.0 B  
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
$ docker pull redis@sha256:dd5b84ce536dffdcab79024f4df5485d010affa09e6c399b215e199a0dca38c4
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
$ docker pull redis@sha256:b086e2459e0c9c67107cb6296547e6e2cad481916b0a52d4e13ed93b523acadd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31335527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98d4242479a9bcce3deb06f8ace075c58c3df81b442f40e4f06fc5a8b8776b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 14:36:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Thu, 07 Feb 2019 14:36:19 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 14:36:43 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 14:36:43 GMT
ENV REDIS_VERSION=5.0.3
# Thu, 07 Feb 2019 14:36:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Thu, 07 Feb 2019 14:36:44 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Thu, 07 Feb 2019 14:37:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 14:37:46 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 07 Feb 2019 14:37:46 GMT
VOLUME [/data]
# Thu, 07 Feb 2019 14:37:47 GMT
WORKDIR /data
# Thu, 07 Feb 2019 14:37:47 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Thu, 07 Feb 2019 14:37:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 14:37:48 GMT
EXPOSE 6379
# Thu, 07 Feb 2019 14:37:48 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a33dcb74f6890695a8e8b4caa3e95a23bdf182d1a158bf849b1e173deb2555a`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81fa8463b46e79417fb5aa6628379abc1dc55e0900e204a535e42146a6f82a6`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 915.8 KB (915826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a0365cd5e0ffc33dc30a6193cefa3aef2d9721e788f550af095e10b6ec737e`  
		Last Modified: Thu, 07 Feb 2019 14:39:08 GMT  
		Size: 11.1 MB (11127216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8116674edf643753f62b837c73f380a0bbef9c0d23df3455b250f6e36950934f`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b08116b1f5b1de0360d06301d2f032ba87c5279d7fe78e75a818a197147a0ff`  
		Last Modified: Thu, 07 Feb 2019 14:39:04 GMT  
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
$ docker pull redis@sha256:7ddb90178f8786f65929ce92ea2d9bb874249c2f1ee969e07dce518542842403
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35247513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d187b4857312ec98f0bbcdf025999bd29cae775d89f05957503e2d2b0e8a02c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:39:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 06 Feb 2019 23:39:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 23:39:53 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 06 Feb 2019 23:39:53 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 06 Feb 2019 23:40:57 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 23:40:57 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 06 Feb 2019 23:40:57 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 23:40:58 GMT
WORKDIR /data
# Wed, 06 Feb 2019 23:40:58 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 06 Feb 2019 23:40:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 23:40:58 GMT
EXPOSE 6379
# Wed, 06 Feb 2019 23:40:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadb597627df80e3b1f1d8989193983c5058843d888a019450e089483fdf8dc9`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7422d28b300ac21d0431364be43da17fc3c25ac1a076b3d5cc162e74108dd3db`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 920.1 KB (920132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9ee4997e7100b76de34e6e7a8e9528d89641cc618c2b51e117546e031aad61`  
		Last Modified: Wed, 06 Feb 2019 23:44:00 GMT  
		Size: 11.2 MB (11178155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2817d82fa95724c21749a2d7c567ff1382e056f52c8e59a75a1778599ce96e`  
		Last Modified: Wed, 06 Feb 2019 23:43:57 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42899877c5fd7999ce70acabd2790f7bea9e93034888b30ae7c2c07527a572dc`  
		Last Modified: Wed, 06 Feb 2019 23:43:58 GMT  
		Size: 420.0 B  
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
