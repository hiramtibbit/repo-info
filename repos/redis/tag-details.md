<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redis`

-	[`redis:3`](#redis3)
-	[`redis:3.2`](#redis32)
-	[`redis:3.2.12`](#redis3212)
-	[`redis:3.2.12-32bit`](#redis3212-32bit)
-	[`redis:3.2.12-alpine`](#redis3212-alpine)
-	[`redis:3.2-32bit`](#redis32-32bit)
-	[`redis:3.2-alpine`](#redis32-alpine)
-	[`redis:32bit`](#redis32bit)
-	[`redis:3-32bit`](#redis3-32bit)
-	[`redis:3-alpine`](#redis3-alpine)
-	[`redis:4`](#redis4)
-	[`redis:4.0`](#redis40)
-	[`redis:4.0.10`](#redis4010)
-	[`redis:4.0.10-32bit`](#redis4010-32bit)
-	[`redis:4.0.10-alpine`](#redis4010-alpine)
-	[`redis:4.0-32bit`](#redis40-32bit)
-	[`redis:4.0-alpine`](#redis40-alpine)
-	[`redis:4-32bit`](#redis4-32bit)
-	[`redis:4-alpine`](#redis4-alpine)
-	[`redis:alpine`](#redisalpine)
-	[`redis:latest`](#redislatest)

## `redis:3`

```console
$ docker pull redis@sha256:95282853109eeda84466ffe3d7edaca218ebe9e6869a4f49eaaa617ce7346bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3` - linux; amd64

```console
$ docker pull redis@sha256:52e46afaca4742cb3edb0829da6b0c599e7c9a575c17757db198c768694d39a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36859780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df5dba00782d31bab518b1eb18426d3c20c21b9b888412c52a3373c1ab4b8cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Sat, 16 Jun 2018 07:19:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 16 Jun 2018 07:19:53 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Jun 2018 07:20:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 16 Jun 2018 07:20:57 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 07:20:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 07:20:58 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 07:22:11 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Jun 2018 07:22:13 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:22:13 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:22:13 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:22:13 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:22:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:22:19 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:22:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa39ed64d5b27b56729ea29293b12d88f0ee5d694f4ec58f2228d18c5879c40a`  
		Last Modified: Sat, 16 Jun 2018 07:30:28 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1593212ab2f20f183765c741ba83b4bec916916511f308865c770c2d0804481e`  
		Last Modified: Sat, 16 Jun 2018 07:30:26 GMT  
		Size: 981.8 KB (981800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c40eafc076db7b3e1987a915d5e692cfe971e1fc4b502e98697d3068765b87`  
		Last Modified: Sat, 16 Jun 2018 07:30:28 GMT  
		Size: 5.7 MB (5748087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d372aabffb2dcd51df840bed1c16b903d0e2668a0f48f379a483802cf21ed11`  
		Last Modified: Sat, 16 Jun 2018 07:30:26 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea1b1943ccb0cccaddce07f965872a3543ac8eb8c600388db7e36648073663e`  
		Last Modified: Sat, 16 Jun 2018 07:30:26 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2`

```console
$ docker pull redis@sha256:95282853109eeda84466ffe3d7edaca218ebe9e6869a4f49eaaa617ce7346bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2` - linux; amd64

```console
$ docker pull redis@sha256:52e46afaca4742cb3edb0829da6b0c599e7c9a575c17757db198c768694d39a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36859780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df5dba00782d31bab518b1eb18426d3c20c21b9b888412c52a3373c1ab4b8cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Sat, 16 Jun 2018 07:19:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 16 Jun 2018 07:19:53 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Jun 2018 07:20:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 16 Jun 2018 07:20:57 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 07:20:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 07:20:58 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 07:22:11 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Jun 2018 07:22:13 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:22:13 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:22:13 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:22:13 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:22:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:22:19 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:22:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa39ed64d5b27b56729ea29293b12d88f0ee5d694f4ec58f2228d18c5879c40a`  
		Last Modified: Sat, 16 Jun 2018 07:30:28 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1593212ab2f20f183765c741ba83b4bec916916511f308865c770c2d0804481e`  
		Last Modified: Sat, 16 Jun 2018 07:30:26 GMT  
		Size: 981.8 KB (981800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c40eafc076db7b3e1987a915d5e692cfe971e1fc4b502e98697d3068765b87`  
		Last Modified: Sat, 16 Jun 2018 07:30:28 GMT  
		Size: 5.7 MB (5748087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d372aabffb2dcd51df840bed1c16b903d0e2668a0f48f379a483802cf21ed11`  
		Last Modified: Sat, 16 Jun 2018 07:30:26 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea1b1943ccb0cccaddce07f965872a3543ac8eb8c600388db7e36648073663e`  
		Last Modified: Sat, 16 Jun 2018 07:30:26 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.12`

```console
$ docker pull redis@sha256:95282853109eeda84466ffe3d7edaca218ebe9e6869a4f49eaaa617ce7346bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2.12` - linux; amd64

```console
$ docker pull redis@sha256:52e46afaca4742cb3edb0829da6b0c599e7c9a575c17757db198c768694d39a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36859780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df5dba00782d31bab518b1eb18426d3c20c21b9b888412c52a3373c1ab4b8cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Sat, 16 Jun 2018 07:19:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 16 Jun 2018 07:19:53 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Jun 2018 07:20:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 16 Jun 2018 07:20:57 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 07:20:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 07:20:58 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 07:22:11 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Jun 2018 07:22:13 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:22:13 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:22:13 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:22:13 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:22:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:22:19 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:22:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa39ed64d5b27b56729ea29293b12d88f0ee5d694f4ec58f2228d18c5879c40a`  
		Last Modified: Sat, 16 Jun 2018 07:30:28 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1593212ab2f20f183765c741ba83b4bec916916511f308865c770c2d0804481e`  
		Last Modified: Sat, 16 Jun 2018 07:30:26 GMT  
		Size: 981.8 KB (981800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c40eafc076db7b3e1987a915d5e692cfe971e1fc4b502e98697d3068765b87`  
		Last Modified: Sat, 16 Jun 2018 07:30:28 GMT  
		Size: 5.7 MB (5748087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d372aabffb2dcd51df840bed1c16b903d0e2668a0f48f379a483802cf21ed11`  
		Last Modified: Sat, 16 Jun 2018 07:30:26 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea1b1943ccb0cccaddce07f965872a3543ac8eb8c600388db7e36648073663e`  
		Last Modified: Sat, 16 Jun 2018 07:30:26 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.12-32bit`

```console
$ docker pull redis@sha256:d88ff4776d675e15cde19b8a59b5c86d20da0ce12ec87e876a0f49f857512f08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2.12-32bit` - linux; amd64

```console
$ docker pull redis@sha256:e5c36323effc4751bd79ec409f13c1a6529a6acc0dd6c07032c41c33b69020df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40725731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71c78fde991dbc948e22f74e46e6cb2bffb90e59195d8fbf90d8e6c9919b29b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Sat, 16 Jun 2018 07:19:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 16 Jun 2018 07:19:53 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Jun 2018 07:20:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 16 Jun 2018 07:20:57 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 07:20:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 07:20:58 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 07:23:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Jun 2018 07:24:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Jun 2018 07:24:45 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:24:46 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:24:46 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:24:46 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:24:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:24:46 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:24:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa39ed64d5b27b56729ea29293b12d88f0ee5d694f4ec58f2228d18c5879c40a`  
		Last Modified: Sat, 16 Jun 2018 07:30:28 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1593212ab2f20f183765c741ba83b4bec916916511f308865c770c2d0804481e`  
		Last Modified: Sat, 16 Jun 2018 07:30:26 GMT  
		Size: 981.8 KB (981800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021f4d0c15162c107863578ee61a1d98709f5462c6f2384d385e9cf1fe10c60e`  
		Last Modified: Sat, 16 Jun 2018 07:31:02 GMT  
		Size: 4.4 MB (4378631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60892a3775bd9578d35839e2f534585e5cde887bd941e2394148de859ecbe7eb`  
		Last Modified: Sat, 16 Jun 2018 07:31:03 GMT  
		Size: 5.2 MB (5235401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b21a9bc0ae59c43ad8593bfe8090956788dd201c2c5d22dd1fe9f449a43e17`  
		Last Modified: Sat, 16 Jun 2018 07:31:00 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473660d661123131d32d647725ed2f9a9fc9a6773a16b29f309404529ab4369b`  
		Last Modified: Sat, 16 Jun 2018 07:31:01 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2.12-alpine`

```console
$ docker pull redis@sha256:dbf59020976dd7c9d4a0dc920e4b4e038732a950e941cea96c94ef722ad56fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2.12-alpine` - linux; amd64

```console
$ docker pull redis@sha256:e327daf30048a7b515a6d483948870ef5f627776a30e31b5b7b8f46e9ee8e5ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7971837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a1abd138341d4f1beaf1fd880eb5f7a7f6dc19b78c09ebd5e4266c561fb5552`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Sat, 16 Jun 2018 07:25:04 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 16 Jun 2018 07:25:05 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 07:25:05 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 07:25:06 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 07:25:06 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 07:25:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 07:25:33 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:25:33 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:25:34 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:25:34 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:25:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:25:34 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:25:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbab8756652387a272f5e2e46785253e2afee892c728e273675d424fadf6023`  
		Last Modified: Sat, 16 Jun 2018 07:31:31 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7d4663b06ccada1152f453a2a04004015c4b398e460359966e60c9e6c44559`  
		Last Modified: Sat, 16 Jun 2018 07:31:31 GMT  
		Size: 8.6 KB (8551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13b5444aa8c25b854b5f2e04271e09f2437e8e1bd34a4fe52588aa409566899`  
		Last Modified: Sat, 16 Jun 2018 07:31:34 GMT  
		Size: 5.9 MB (5895998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382b5513036df39d76b953bb3739e8136a5b206086efae6471740b59d2308125`  
		Last Modified: Sat, 16 Jun 2018 07:31:31 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fb239bced97a7eecdf8f12a932aa4c4e27f41b1a1c12437472093b1c0efb38`  
		Last Modified: Sat, 16 Jun 2018 07:31:31 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-32bit`

```console
$ docker pull redis@sha256:d88ff4776d675e15cde19b8a59b5c86d20da0ce12ec87e876a0f49f857512f08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2-32bit` - linux; amd64

```console
$ docker pull redis@sha256:e5c36323effc4751bd79ec409f13c1a6529a6acc0dd6c07032c41c33b69020df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40725731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71c78fde991dbc948e22f74e46e6cb2bffb90e59195d8fbf90d8e6c9919b29b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Sat, 16 Jun 2018 07:19:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 16 Jun 2018 07:19:53 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Jun 2018 07:20:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 16 Jun 2018 07:20:57 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 07:20:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 07:20:58 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 07:23:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Jun 2018 07:24:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Jun 2018 07:24:45 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:24:46 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:24:46 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:24:46 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:24:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:24:46 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:24:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa39ed64d5b27b56729ea29293b12d88f0ee5d694f4ec58f2228d18c5879c40a`  
		Last Modified: Sat, 16 Jun 2018 07:30:28 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1593212ab2f20f183765c741ba83b4bec916916511f308865c770c2d0804481e`  
		Last Modified: Sat, 16 Jun 2018 07:30:26 GMT  
		Size: 981.8 KB (981800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021f4d0c15162c107863578ee61a1d98709f5462c6f2384d385e9cf1fe10c60e`  
		Last Modified: Sat, 16 Jun 2018 07:31:02 GMT  
		Size: 4.4 MB (4378631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60892a3775bd9578d35839e2f534585e5cde887bd941e2394148de859ecbe7eb`  
		Last Modified: Sat, 16 Jun 2018 07:31:03 GMT  
		Size: 5.2 MB (5235401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b21a9bc0ae59c43ad8593bfe8090956788dd201c2c5d22dd1fe9f449a43e17`  
		Last Modified: Sat, 16 Jun 2018 07:31:00 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473660d661123131d32d647725ed2f9a9fc9a6773a16b29f309404529ab4369b`  
		Last Modified: Sat, 16 Jun 2018 07:31:01 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3.2-alpine`

```console
$ docker pull redis@sha256:dbf59020976dd7c9d4a0dc920e4b4e038732a950e941cea96c94ef722ad56fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3.2-alpine` - linux; amd64

```console
$ docker pull redis@sha256:e327daf30048a7b515a6d483948870ef5f627776a30e31b5b7b8f46e9ee8e5ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7971837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a1abd138341d4f1beaf1fd880eb5f7a7f6dc19b78c09ebd5e4266c561fb5552`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Sat, 16 Jun 2018 07:25:04 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 16 Jun 2018 07:25:05 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 07:25:05 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 07:25:06 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 07:25:06 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 07:25:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 07:25:33 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:25:33 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:25:34 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:25:34 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:25:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:25:34 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:25:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbab8756652387a272f5e2e46785253e2afee892c728e273675d424fadf6023`  
		Last Modified: Sat, 16 Jun 2018 07:31:31 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7d4663b06ccada1152f453a2a04004015c4b398e460359966e60c9e6c44559`  
		Last Modified: Sat, 16 Jun 2018 07:31:31 GMT  
		Size: 8.6 KB (8551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13b5444aa8c25b854b5f2e04271e09f2437e8e1bd34a4fe52588aa409566899`  
		Last Modified: Sat, 16 Jun 2018 07:31:34 GMT  
		Size: 5.9 MB (5895998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382b5513036df39d76b953bb3739e8136a5b206086efae6471740b59d2308125`  
		Last Modified: Sat, 16 Jun 2018 07:31:31 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fb239bced97a7eecdf8f12a932aa4c4e27f41b1a1c12437472093b1c0efb38`  
		Last Modified: Sat, 16 Jun 2018 07:31:31 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit`

```console
$ docker pull redis@sha256:a082d35c842eae1dbc7ca8dc3d42ab80af79c174d3990eadce9c5b683a83ff93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:f59ee1d375848ec561089e02ef271eb11ee11fa1e55f5600d64ddcda9bbae084
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43016307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ef1871de57e815c12d524afb9aafd7074116c779b9b28cc16cb5301cc45d97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Sat, 16 Jun 2018 07:19:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 16 Jun 2018 07:19:53 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Jun 2018 07:20:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 16 Jun 2018 07:25:42 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 07:25:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 07:25:42 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 07:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Jun 2018 07:29:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Jun 2018 07:29:28 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:29:28 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:29:29 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:29:29 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:29:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:29:29 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:29:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa39ed64d5b27b56729ea29293b12d88f0ee5d694f4ec58f2228d18c5879c40a`  
		Last Modified: Sat, 16 Jun 2018 07:30:28 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1593212ab2f20f183765c741ba83b4bec916916511f308865c770c2d0804481e`  
		Last Modified: Sat, 16 Jun 2018 07:30:26 GMT  
		Size: 981.8 KB (981800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3c68c37cfd3a1cd68db383d03af6886d65083e4960c517ee2a6f5746ad2522`  
		Last Modified: Sat, 16 Jun 2018 07:32:52 GMT  
		Size: 4.4 MB (4378623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff2a04e9c5913600514ad4a7479fe19444b5c08a792232f1302f377b8df3492`  
		Last Modified: Sat, 16 Jun 2018 07:32:51 GMT  
		Size: 7.5 MB (7525984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5fd33de86e80ccf945261d3a59ab256cd86691bd96ae36838a4a265426d959`  
		Last Modified: Sat, 16 Jun 2018 07:32:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211df8a2be04ca4f9e29c3957fa10b482ab255e02fdc3fb9e6f2ab7ebb84dc67`  
		Last Modified: Sat, 16 Jun 2018 07:32:48 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-32bit`

```console
$ docker pull redis@sha256:d88ff4776d675e15cde19b8a59b5c86d20da0ce12ec87e876a0f49f857512f08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3-32bit` - linux; amd64

```console
$ docker pull redis@sha256:e5c36323effc4751bd79ec409f13c1a6529a6acc0dd6c07032c41c33b69020df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40725731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71c78fde991dbc948e22f74e46e6cb2bffb90e59195d8fbf90d8e6c9919b29b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Sat, 16 Jun 2018 07:19:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 16 Jun 2018 07:19:53 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Jun 2018 07:20:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 16 Jun 2018 07:20:57 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 07:20:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 07:20:58 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 07:23:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Jun 2018 07:24:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Jun 2018 07:24:45 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:24:46 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:24:46 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:24:46 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:24:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:24:46 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:24:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa39ed64d5b27b56729ea29293b12d88f0ee5d694f4ec58f2228d18c5879c40a`  
		Last Modified: Sat, 16 Jun 2018 07:30:28 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1593212ab2f20f183765c741ba83b4bec916916511f308865c770c2d0804481e`  
		Last Modified: Sat, 16 Jun 2018 07:30:26 GMT  
		Size: 981.8 KB (981800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021f4d0c15162c107863578ee61a1d98709f5462c6f2384d385e9cf1fe10c60e`  
		Last Modified: Sat, 16 Jun 2018 07:31:02 GMT  
		Size: 4.4 MB (4378631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60892a3775bd9578d35839e2f534585e5cde887bd941e2394148de859ecbe7eb`  
		Last Modified: Sat, 16 Jun 2018 07:31:03 GMT  
		Size: 5.2 MB (5235401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b21a9bc0ae59c43ad8593bfe8090956788dd201c2c5d22dd1fe9f449a43e17`  
		Last Modified: Sat, 16 Jun 2018 07:31:00 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473660d661123131d32d647725ed2f9a9fc9a6773a16b29f309404529ab4369b`  
		Last Modified: Sat, 16 Jun 2018 07:31:01 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:3-alpine`

```console
$ docker pull redis@sha256:dbf59020976dd7c9d4a0dc920e4b4e038732a950e941cea96c94ef722ad56fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

```console
$ docker pull redis@sha256:e327daf30048a7b515a6d483948870ef5f627776a30e31b5b7b8f46e9ee8e5ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7971837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a1abd138341d4f1beaf1fd880eb5f7a7f6dc19b78c09ebd5e4266c561fb5552`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Sat, 16 Jun 2018 07:25:04 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 16 Jun 2018 07:25:05 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 07:25:05 GMT
ENV REDIS_VERSION=3.2.12
# Sat, 16 Jun 2018 07:25:06 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.12.tar.gz
# Sat, 16 Jun 2018 07:25:06 GMT
ENV REDIS_DOWNLOAD_SHA=98c4254ae1be4e452aa7884245471501c9aa657993e0318d88f048093e7f88fd
# Sat, 16 Jun 2018 07:25:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 07:25:33 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:25:33 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:25:34 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:25:34 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:25:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:25:34 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:25:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbab8756652387a272f5e2e46785253e2afee892c728e273675d424fadf6023`  
		Last Modified: Sat, 16 Jun 2018 07:31:31 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7d4663b06ccada1152f453a2a04004015c4b398e460359966e60c9e6c44559`  
		Last Modified: Sat, 16 Jun 2018 07:31:31 GMT  
		Size: 8.6 KB (8551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13b5444aa8c25b854b5f2e04271e09f2437e8e1bd34a4fe52588aa409566899`  
		Last Modified: Sat, 16 Jun 2018 07:31:34 GMT  
		Size: 5.9 MB (5895998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382b5513036df39d76b953bb3739e8136a5b206086efae6471740b59d2308125`  
		Last Modified: Sat, 16 Jun 2018 07:31:31 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fb239bced97a7eecdf8f12a932aa4c4e27f41b1a1c12437472093b1c0efb38`  
		Last Modified: Sat, 16 Jun 2018 07:31:31 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4`

```console
$ docker pull redis@sha256:653012cf1e851ab83822c69f85260a28278fd82b630762d14cd02ad31838d058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4` - linux; amd64

```console
$ docker pull redis@sha256:e6683aa5b5f626004bde089e30ccefcf357c700a697f97fc85e9c1a241c60600
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39425053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8398957eeef96ce808d4a3e9954ed96f7930edbe35a7a783d22ddf7403aaec8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Sat, 16 Jun 2018 07:19:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 16 Jun 2018 07:19:53 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Jun 2018 07:20:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 16 Jun 2018 07:25:42 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 07:25:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 07:25:42 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 07:27:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Jun 2018 07:27:04 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:27:04 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:27:04 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:27:05 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:27:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:27:05 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:27:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa39ed64d5b27b56729ea29293b12d88f0ee5d694f4ec58f2228d18c5879c40a`  
		Last Modified: Sat, 16 Jun 2018 07:30:28 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1593212ab2f20f183765c741ba83b4bec916916511f308865c770c2d0804481e`  
		Last Modified: Sat, 16 Jun 2018 07:30:26 GMT  
		Size: 981.8 KB (981800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc592fc15dc850f298e85d3ffaffbdace6716d23e45d0ced90b41d93b071950`  
		Last Modified: Sat, 16 Jun 2018 07:32:10 GMT  
		Size: 8.3 MB (8313364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7bb0819354ea22758a247da07e986d63e308372c5239ccc443101f74a6ecaf`  
		Last Modified: Sat, 16 Jun 2018 07:32:07 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6335ae550d25ecc1985e23e653c32542f1cc9715c8e48bf63b348f27afefa6bd`  
		Last Modified: Sat, 16 Jun 2018 07:32:07 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0`

```console
$ docker pull redis@sha256:653012cf1e851ab83822c69f85260a28278fd82b630762d14cd02ad31838d058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0` - linux; amd64

```console
$ docker pull redis@sha256:e6683aa5b5f626004bde089e30ccefcf357c700a697f97fc85e9c1a241c60600
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39425053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8398957eeef96ce808d4a3e9954ed96f7930edbe35a7a783d22ddf7403aaec8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Sat, 16 Jun 2018 07:19:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 16 Jun 2018 07:19:53 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Jun 2018 07:20:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 16 Jun 2018 07:25:42 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 07:25:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 07:25:42 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 07:27:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Jun 2018 07:27:04 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:27:04 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:27:04 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:27:05 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:27:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:27:05 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:27:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa39ed64d5b27b56729ea29293b12d88f0ee5d694f4ec58f2228d18c5879c40a`  
		Last Modified: Sat, 16 Jun 2018 07:30:28 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1593212ab2f20f183765c741ba83b4bec916916511f308865c770c2d0804481e`  
		Last Modified: Sat, 16 Jun 2018 07:30:26 GMT  
		Size: 981.8 KB (981800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc592fc15dc850f298e85d3ffaffbdace6716d23e45d0ced90b41d93b071950`  
		Last Modified: Sat, 16 Jun 2018 07:32:10 GMT  
		Size: 8.3 MB (8313364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7bb0819354ea22758a247da07e986d63e308372c5239ccc443101f74a6ecaf`  
		Last Modified: Sat, 16 Jun 2018 07:32:07 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6335ae550d25ecc1985e23e653c32542f1cc9715c8e48bf63b348f27afefa6bd`  
		Last Modified: Sat, 16 Jun 2018 07:32:07 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.10`

```console
$ docker pull redis@sha256:653012cf1e851ab83822c69f85260a28278fd82b630762d14cd02ad31838d058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.10` - linux; amd64

```console
$ docker pull redis@sha256:e6683aa5b5f626004bde089e30ccefcf357c700a697f97fc85e9c1a241c60600
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39425053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8398957eeef96ce808d4a3e9954ed96f7930edbe35a7a783d22ddf7403aaec8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Sat, 16 Jun 2018 07:19:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 16 Jun 2018 07:19:53 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Jun 2018 07:20:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 16 Jun 2018 07:25:42 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 07:25:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 07:25:42 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 07:27:03 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Jun 2018 07:27:04 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:27:04 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:27:04 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:27:05 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:27:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:27:05 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:27:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa39ed64d5b27b56729ea29293b12d88f0ee5d694f4ec58f2228d18c5879c40a`  
		Last Modified: Sat, 16 Jun 2018 07:30:28 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1593212ab2f20f183765c741ba83b4bec916916511f308865c770c2d0804481e`  
		Last Modified: Sat, 16 Jun 2018 07:30:26 GMT  
		Size: 981.8 KB (981800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc592fc15dc850f298e85d3ffaffbdace6716d23e45d0ced90b41d93b071950`  
		Last Modified: Sat, 16 Jun 2018 07:32:10 GMT  
		Size: 8.3 MB (8313364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7bb0819354ea22758a247da07e986d63e308372c5239ccc443101f74a6ecaf`  
		Last Modified: Sat, 16 Jun 2018 07:32:07 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6335ae550d25ecc1985e23e653c32542f1cc9715c8e48bf63b348f27afefa6bd`  
		Last Modified: Sat, 16 Jun 2018 07:32:07 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.10-32bit`

```console
$ docker pull redis@sha256:a082d35c842eae1dbc7ca8dc3d42ab80af79c174d3990eadce9c5b683a83ff93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.10-32bit` - linux; amd64

```console
$ docker pull redis@sha256:f59ee1d375848ec561089e02ef271eb11ee11fa1e55f5600d64ddcda9bbae084
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43016307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ef1871de57e815c12d524afb9aafd7074116c779b9b28cc16cb5301cc45d97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Sat, 16 Jun 2018 07:19:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 16 Jun 2018 07:19:53 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Jun 2018 07:20:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 16 Jun 2018 07:25:42 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 07:25:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 07:25:42 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 07:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Jun 2018 07:29:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Jun 2018 07:29:28 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:29:28 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:29:29 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:29:29 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:29:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:29:29 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:29:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa39ed64d5b27b56729ea29293b12d88f0ee5d694f4ec58f2228d18c5879c40a`  
		Last Modified: Sat, 16 Jun 2018 07:30:28 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1593212ab2f20f183765c741ba83b4bec916916511f308865c770c2d0804481e`  
		Last Modified: Sat, 16 Jun 2018 07:30:26 GMT  
		Size: 981.8 KB (981800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3c68c37cfd3a1cd68db383d03af6886d65083e4960c517ee2a6f5746ad2522`  
		Last Modified: Sat, 16 Jun 2018 07:32:52 GMT  
		Size: 4.4 MB (4378623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff2a04e9c5913600514ad4a7479fe19444b5c08a792232f1302f377b8df3492`  
		Last Modified: Sat, 16 Jun 2018 07:32:51 GMT  
		Size: 7.5 MB (7525984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5fd33de86e80ccf945261d3a59ab256cd86691bd96ae36838a4a265426d959`  
		Last Modified: Sat, 16 Jun 2018 07:32:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211df8a2be04ca4f9e29c3957fa10b482ab255e02fdc3fb9e6f2ab7ebb84dc67`  
		Last Modified: Sat, 16 Jun 2018 07:32:48 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.10-alpine`

```console
$ docker pull redis@sha256:ab9290ef2fb97e9c0fd5ef440f1658d6e7dc2526485e2d7794f660b1721d8bef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.10-alpine` - linux; amd64

```console
$ docker pull redis@sha256:29c1f0ff8267ad6e9bdf8f1b1228932ce43cae82ac0f8d8d8df2b995f69c9851
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10600720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caaeda72bf8fe795b75382088b6de0db742b512921061e838450127579ce3e1e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Sat, 16 Jun 2018 07:25:04 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 16 Jun 2018 07:25:05 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 07:29:38 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 07:29:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 07:29:38 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 07:30:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 07:30:08 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:30:08 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:30:08 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:30:09 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:30:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:30:09 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:30:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbab8756652387a272f5e2e46785253e2afee892c728e273675d424fadf6023`  
		Last Modified: Sat, 16 Jun 2018 07:31:31 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7d4663b06ccada1152f453a2a04004015c4b398e460359966e60c9e6c44559`  
		Last Modified: Sat, 16 Jun 2018 07:31:31 GMT  
		Size: 8.6 KB (8551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5cf71258c213db177b5b1c6fadf9da9a234e069e35ec10b3ce68608372883e`  
		Last Modified: Sat, 16 Jun 2018 07:33:34 GMT  
		Size: 8.5 MB (8524878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bbb9bad8ba2d0566fa45f93e41dfb796491837865ab8016d03f1d9be36d5b2`  
		Last Modified: Sat, 16 Jun 2018 07:33:29 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe9a341d124e0e35600559e774299f6714aa7df187c332fafd5ccb77cd98fe8`  
		Last Modified: Sat, 16 Jun 2018 07:33:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit`

```console
$ docker pull redis@sha256:a082d35c842eae1dbc7ca8dc3d42ab80af79c174d3990eadce9c5b683a83ff93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:f59ee1d375848ec561089e02ef271eb11ee11fa1e55f5600d64ddcda9bbae084
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43016307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ef1871de57e815c12d524afb9aafd7074116c779b9b28cc16cb5301cc45d97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Sat, 16 Jun 2018 07:19:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 16 Jun 2018 07:19:53 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Jun 2018 07:20:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 16 Jun 2018 07:25:42 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 07:25:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 07:25:42 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 07:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Jun 2018 07:29:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Jun 2018 07:29:28 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:29:28 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:29:29 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:29:29 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:29:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:29:29 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:29:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa39ed64d5b27b56729ea29293b12d88f0ee5d694f4ec58f2228d18c5879c40a`  
		Last Modified: Sat, 16 Jun 2018 07:30:28 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1593212ab2f20f183765c741ba83b4bec916916511f308865c770c2d0804481e`  
		Last Modified: Sat, 16 Jun 2018 07:30:26 GMT  
		Size: 981.8 KB (981800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3c68c37cfd3a1cd68db383d03af6886d65083e4960c517ee2a6f5746ad2522`  
		Last Modified: Sat, 16 Jun 2018 07:32:52 GMT  
		Size: 4.4 MB (4378623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff2a04e9c5913600514ad4a7479fe19444b5c08a792232f1302f377b8df3492`  
		Last Modified: Sat, 16 Jun 2018 07:32:51 GMT  
		Size: 7.5 MB (7525984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5fd33de86e80ccf945261d3a59ab256cd86691bd96ae36838a4a265426d959`  
		Last Modified: Sat, 16 Jun 2018 07:32:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211df8a2be04ca4f9e29c3957fa10b482ab255e02fdc3fb9e6f2ab7ebb84dc67`  
		Last Modified: Sat, 16 Jun 2018 07:32:48 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine`

```console
$ docker pull redis@sha256:ab9290ef2fb97e9c0fd5ef440f1658d6e7dc2526485e2d7794f660b1721d8bef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-alpine` - linux; amd64

```console
$ docker pull redis@sha256:29c1f0ff8267ad6e9bdf8f1b1228932ce43cae82ac0f8d8d8df2b995f69c9851
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10600720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caaeda72bf8fe795b75382088b6de0db742b512921061e838450127579ce3e1e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Sat, 16 Jun 2018 07:25:04 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 16 Jun 2018 07:25:05 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 07:29:38 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 07:29:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 07:29:38 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 07:30:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 07:30:08 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:30:08 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:30:08 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:30:09 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:30:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:30:09 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:30:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbab8756652387a272f5e2e46785253e2afee892c728e273675d424fadf6023`  
		Last Modified: Sat, 16 Jun 2018 07:31:31 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7d4663b06ccada1152f453a2a04004015c4b398e460359966e60c9e6c44559`  
		Last Modified: Sat, 16 Jun 2018 07:31:31 GMT  
		Size: 8.6 KB (8551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5cf71258c213db177b5b1c6fadf9da9a234e069e35ec10b3ce68608372883e`  
		Last Modified: Sat, 16 Jun 2018 07:33:34 GMT  
		Size: 8.5 MB (8524878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bbb9bad8ba2d0566fa45f93e41dfb796491837865ab8016d03f1d9be36d5b2`  
		Last Modified: Sat, 16 Jun 2018 07:33:29 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe9a341d124e0e35600559e774299f6714aa7df187c332fafd5ccb77cd98fe8`  
		Last Modified: Sat, 16 Jun 2018 07:33:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit`

```console
$ docker pull redis@sha256:a082d35c842eae1dbc7ca8dc3d42ab80af79c174d3990eadce9c5b683a83ff93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:f59ee1d375848ec561089e02ef271eb11ee11fa1e55f5600d64ddcda9bbae084
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43016307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ef1871de57e815c12d524afb9aafd7074116c779b9b28cc16cb5301cc45d97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Sat, 16 Jun 2018 07:19:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 16 Jun 2018 07:19:53 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Jun 2018 07:20:52 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 16 Jun 2018 07:25:42 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 07:25:42 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 07:25:42 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 07:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Jun 2018 07:29:24 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 16 Jun 2018 07:29:28 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:29:28 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:29:29 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:29:29 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:29:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:29:29 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:29:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa39ed64d5b27b56729ea29293b12d88f0ee5d694f4ec58f2228d18c5879c40a`  
		Last Modified: Sat, 16 Jun 2018 07:30:28 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1593212ab2f20f183765c741ba83b4bec916916511f308865c770c2d0804481e`  
		Last Modified: Sat, 16 Jun 2018 07:30:26 GMT  
		Size: 981.8 KB (981800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3c68c37cfd3a1cd68db383d03af6886d65083e4960c517ee2a6f5746ad2522`  
		Last Modified: Sat, 16 Jun 2018 07:32:52 GMT  
		Size: 4.4 MB (4378623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff2a04e9c5913600514ad4a7479fe19444b5c08a792232f1302f377b8df3492`  
		Last Modified: Sat, 16 Jun 2018 07:32:51 GMT  
		Size: 7.5 MB (7525984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5fd33de86e80ccf945261d3a59ab256cd86691bd96ae36838a4a265426d959`  
		Last Modified: Sat, 16 Jun 2018 07:32:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211df8a2be04ca4f9e29c3957fa10b482ab255e02fdc3fb9e6f2ab7ebb84dc67`  
		Last Modified: Sat, 16 Jun 2018 07:32:48 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine`

```console
$ docker pull redis@sha256:ab9290ef2fb97e9c0fd5ef440f1658d6e7dc2526485e2d7794f660b1721d8bef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-alpine` - linux; amd64

```console
$ docker pull redis@sha256:29c1f0ff8267ad6e9bdf8f1b1228932ce43cae82ac0f8d8d8df2b995f69c9851
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10600720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caaeda72bf8fe795b75382088b6de0db742b512921061e838450127579ce3e1e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Sat, 16 Jun 2018 07:25:04 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 16 Jun 2018 07:25:05 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 07:29:38 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 07:29:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 07:29:38 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 07:30:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 07:30:08 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:30:08 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:30:08 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:30:09 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:30:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:30:09 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:30:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbab8756652387a272f5e2e46785253e2afee892c728e273675d424fadf6023`  
		Last Modified: Sat, 16 Jun 2018 07:31:31 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7d4663b06ccada1152f453a2a04004015c4b398e460359966e60c9e6c44559`  
		Last Modified: Sat, 16 Jun 2018 07:31:31 GMT  
		Size: 8.6 KB (8551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5cf71258c213db177b5b1c6fadf9da9a234e069e35ec10b3ce68608372883e`  
		Last Modified: Sat, 16 Jun 2018 07:33:34 GMT  
		Size: 8.5 MB (8524878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bbb9bad8ba2d0566fa45f93e41dfb796491837865ab8016d03f1d9be36d5b2`  
		Last Modified: Sat, 16 Jun 2018 07:33:29 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe9a341d124e0e35600559e774299f6714aa7df187c332fafd5ccb77cd98fe8`  
		Last Modified: Sat, 16 Jun 2018 07:33:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:ab9290ef2fb97e9c0fd5ef440f1658d6e7dc2526485e2d7794f660b1721d8bef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

```console
$ docker pull redis@sha256:29c1f0ff8267ad6e9bdf8f1b1228932ce43cae82ac0f8d8d8df2b995f69c9851
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10600720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caaeda72bf8fe795b75382088b6de0db742b512921061e838450127579ce3e1e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Sat, 16 Jun 2018 07:25:04 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 16 Jun 2018 07:25:05 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 16 Jun 2018 07:29:38 GMT
ENV REDIS_VERSION=4.0.10
# Sat, 16 Jun 2018 07:29:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Sat, 16 Jun 2018 07:29:38 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Sat, 16 Jun 2018 07:30:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		jemalloc-dev 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 16 Jun 2018 07:30:08 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 16 Jun 2018 07:30:08 GMT
VOLUME [/data]
# Sat, 16 Jun 2018 07:30:08 GMT
WORKDIR /data
# Sat, 16 Jun 2018 07:30:09 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 16 Jun 2018 07:30:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 07:30:09 GMT
EXPOSE 6379/tcp
# Sat, 16 Jun 2018 07:30:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbab8756652387a272f5e2e46785253e2afee892c728e273675d424fadf6023`  
		Last Modified: Sat, 16 Jun 2018 07:31:31 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7d4663b06ccada1152f453a2a04004015c4b398e460359966e60c9e6c44559`  
		Last Modified: Sat, 16 Jun 2018 07:31:31 GMT  
		Size: 8.6 KB (8551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5cf71258c213db177b5b1c6fadf9da9a234e069e35ec10b3ce68608372883e`  
		Last Modified: Sat, 16 Jun 2018 07:33:34 GMT  
		Size: 8.5 MB (8524878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bbb9bad8ba2d0566fa45f93e41dfb796491837865ab8016d03f1d9be36d5b2`  
		Last Modified: Sat, 16 Jun 2018 07:33:29 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe9a341d124e0e35600559e774299f6714aa7df187c332fafd5ccb77cd98fe8`  
		Last Modified: Sat, 16 Jun 2018 07:33:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:87275ecd3017cdacd3e93eaf07e26f4a91d7f4d7c311b2305fccb50ec3a1a8cd
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
$ docker pull redis@sha256:fc13b47aca9b5b53f625efe91bcd5cc44c637e80a81e5b223d5a98a6eac7ceb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39424183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfcb1f6df2db8a62694aaa732a3133799db59c6fec58bfeda84e34299e7270a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 02 May 2018 04:56:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 02 May 2018 04:56:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 04:57:26 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_VERSION=4.0.9
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Wed, 02 May 2018 05:28:19 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Wed, 02 May 2018 05:29:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 02 May 2018 05:29:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 02 May 2018 05:29:10 GMT
VOLUME [/data]
# Wed, 02 May 2018 05:29:10 GMT
WORKDIR /data
# Wed, 02 May 2018 05:29:11 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 02 May 2018 05:29:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 May 2018 05:29:12 GMT
EXPOSE 6379/tcp
# Wed, 02 May 2018 05:29:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbf30a55ec9b919b906d4b24e5dbdec2f1e6fca20c2ecde3a656b70d733e7ab`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82648e31640df7995132b7ec83b625138b560c783d72bcafadbfa8d8c2b1f6a5`  
		Last Modified: Wed, 02 May 2018 05:58:43 GMT  
		Size: 981.8 KB (981755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7ace35d550c3adf304617db0db076d8a51bf90e78493e95f869155490ab794`  
		Last Modified: Wed, 02 May 2018 06:36:22 GMT  
		Size: 8.3 MB (8312539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497bf119bebf730cc0bda3908ca245fb7ff3a75ff40ac21d3bc2e9dd37a202da`  
		Last Modified: Wed, 02 May 2018 06:36:20 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89340f6074da87a4ffb6343e8232bd9653ddeee242506636868f663f836f571c`  
		Last Modified: Wed, 02 May 2018 06:36:21 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v5

```console
$ docker pull redis@sha256:208668e417860d18f3c84073b763470a16ca2344c01e03b66a7be6258206f15e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37619325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db10f007738ede9a3c9e93fc4e7b4164efc1a0208af0c7316bfb2db919a2ff78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:49 GMT
ADD file:e9274d48b6cf2508214a554b4dbe651b4dfa95bb52dba47a96fe8842bf606a87 in / 
# Sat, 28 Apr 2018 08:49:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:26:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 12:26:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 12:26:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 12:28:10 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 12:28:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 12:28:11 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 12:29:10 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:29:11 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 12:29:16 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 12:29:16 GMT
WORKDIR /data
# Sat, 28 Apr 2018 12:29:16 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:29:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:29:22 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 12:29:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:94b675ca74d2386dbd57e10d92f282f24ca3519fd21339c04af3f8f7e523617c`  
		Last Modified: Sat, 28 Apr 2018 08:57:53 GMT  
		Size: 28.4 MB (28435716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:588361ed476f4576bf29e632cdfe986f25ff90bfdf2fc2325c3325d6c18fc0de`  
		Last Modified: Sat, 28 Apr 2018 12:29:45 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bdf9c4f2fd118accb020c350f2d38df83baf6746eff2096eaf518b65c39a97`  
		Last Modified: Sat, 28 Apr 2018 12:29:45 GMT  
		Size: 971.3 KB (971295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53153798cffce2e36170f0e44431cf632a1cc18a92273c8b285eaa002c68320`  
		Last Modified: Sat, 28 Apr 2018 12:30:16 GMT  
		Size: 8.2 MB (8209699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0265992a6ecba857213ef58c97c2a0fc720040717ac7015d8f52565247a948f`  
		Last Modified: Sat, 28 Apr 2018 12:30:13 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fe63bd0d16d5d3ec35f38905841dea247d9a7562de81f6d80bfbff70c058ed`  
		Last Modified: Sat, 28 Apr 2018 12:30:13 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v7

```console
$ docker pull redis@sha256:e7a8a691a2269625589f31ee386326afbf466c0bb5f77f2f05065192fc360f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35207516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7400f1112cceac5427d5debbc0ee7bcf9ac234a463660f0367ceb3b041d9894`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:33:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 15:33:20 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:34:04 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:35:26 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 15:35:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 15:35:27 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 15:36:37 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:36:38 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:36:38 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:36:39 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:36:45 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:36:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:36:46 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:36:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c869525b4fbabc5be1b242a484ca9e2c6195952ffc5ef2f28fe09440315cd537`  
		Last Modified: Sat, 28 Apr 2018 15:37:08 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6696f4bc012488a7792f48a3a7efaaa67118894bec5b33c58d187e0e264039`  
		Last Modified: Sat, 28 Apr 2018 15:37:09 GMT  
		Size: 956.1 KB (956132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d53b5a51127b523fa60f8da2e923a2531e7ce8cac0fea0ef27c386bc186b52`  
		Last Modified: Sat, 28 Apr 2018 15:37:50 GMT  
		Size: 8.0 MB (7951373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87628d6f8b04957408e44bcfc91c88a1305a2637383f73eb336b99414685eec7`  
		Last Modified: Sat, 28 Apr 2018 15:37:48 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f2204d17d353ae3881880155579013a801bccf76aade5943e01e7b1011a235`  
		Last Modified: Sat, 28 Apr 2018 15:37:47 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:aaec23b0054388186680ec9d02522767cc152fbf4333a98abfbdbd74a94cac6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36899195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f0d7a5aa2a675d00049b60b14661a7d94d0b53a46c2dd4245cabbdd94782177`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Tue, 01 May 2018 12:49:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 01 May 2018 12:49:17 GMT
ENV GOSU_VERSION=1.10
# Tue, 01 May 2018 12:50:14 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 01 May 2018 12:54:17 GMT
ENV REDIS_VERSION=4.0.9
# Tue, 01 May 2018 12:54:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Tue, 01 May 2018 12:54:19 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Tue, 01 May 2018 12:56:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 01 May 2018 12:56:43 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 01 May 2018 12:56:46 GMT
VOLUME [/data]
# Tue, 01 May 2018 12:56:48 GMT
WORKDIR /data
# Tue, 01 May 2018 12:56:50 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 01 May 2018 12:56:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 May 2018 12:56:57 GMT
EXPOSE 6379/tcp
# Tue, 01 May 2018 12:56:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e947973b9135939ae7471d5a2f457581d0c986c642c193dae222b2b1662f568e`  
		Last Modified: Tue, 01 May 2018 12:57:28 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ffa7941a4a8dcb55ce1499ef0c6cb7afc69f15dd3d9cd110f26680e94d8793`  
		Last Modified: Tue, 01 May 2018 12:57:29 GMT  
		Size: 948.7 KB (948652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2802a92d325fe6e37acd423b3ec863226320365adb2265a3cb174de171227e`  
		Last Modified: Tue, 01 May 2018 12:57:57 GMT  
		Size: 8.5 MB (8453356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb56dff0016b78e5307101c0fdfad3c59a09358a601b84835e1da891447776ea`  
		Last Modified: Tue, 01 May 2018 12:57:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f493e433219b5fff07510d749e8fe0002c706fa7be5bb7a7c4f03d149fc06766`  
		Last Modified: Tue, 01 May 2018 12:57:53 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; 386

```console
$ docker pull redis@sha256:198ad4c936331d474d3d5ff146e9acd102edfd3d67152e22d744bdb24c833b21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38761590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ebaced236374db784d3577f59b0d08c6d435e6389800d90911fe4a047e43dc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Fri, 01 Jun 2018 15:54:12 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 01 Jun 2018 15:54:13 GMT
ENV GOSU_VERSION=1.10
# Fri, 01 Jun 2018 15:55:37 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 01 Jun 2018 15:58:21 GMT
ENV REDIS_VERSION=4.0.9
# Fri, 01 Jun 2018 15:58:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Fri, 01 Jun 2018 15:58:21 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Fri, 01 Jun 2018 16:00:07 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Jun 2018 16:00:08 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Jun 2018 16:00:08 GMT
VOLUME [/data]
# Fri, 01 Jun 2018 16:00:08 GMT
WORKDIR /data
# Fri, 01 Jun 2018 16:00:08 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Jun 2018 16:00:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Jun 2018 16:00:09 GMT
EXPOSE 6379/tcp
# Fri, 01 Jun 2018 16:00:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac9b41906ec79ac60da3290d82be39ed5e036fcce52b8274eea692a4e7f3c15`  
		Last Modified: Fri, 01 Jun 2018 16:01:34 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9414e638ef614d2d0b4a7f21ff090526e83375516a21cefce3d9a9279eab5c`  
		Last Modified: Fri, 01 Jun 2018 16:01:37 GMT  
		Size: 960.8 KB (960808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a7f1d6b208910b768dece5334e34120dd2c445296057c098a2e2c4d3e60d02`  
		Last Modified: Fri, 01 Jun 2018 16:03:40 GMT  
		Size: 7.5 MB (7519536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb53e584fe3afea1a9990d15950fdc8413a37d44be5b742af2a95ed7ca34bd94`  
		Last Modified: Fri, 01 Jun 2018 16:03:05 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d64cae7ff49ad9633572e5af7fa0aa019a856514a616bf056fc9ef06a69aa9`  
		Last Modified: Fri, 01 Jun 2018 16:03:05 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; ppc64le

```console
$ docker pull redis@sha256:5b5d3f7fdc651e8d57a1ac7be9ca86ccd3c6bb0f68a71df9d805291dba210dc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38947601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bffdb0ddcb220612ba706f43deac8771c3da87700ff52c61d152a66fd6aeb88`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:00:58 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 13:00:58 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 13:02:44 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 13:05:47 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 13:05:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 13:05:50 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 13:07:57 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 13:08:00 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 13:08:01 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 13:08:02 GMT
WORKDIR /data
# Sat, 28 Apr 2018 13:08:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 13:08:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 13:08:05 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 13:08:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7745ff03a317ccaa10ff03129a2330b1c154aecaf51a892b7d99d5e1dbeb86cc`  
		Last Modified: Sat, 28 Apr 2018 08:25:29 GMT  
		Size: 29.3 MB (29317351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095fbb0f7ef3b4b93e7cc9189e36c52b64f5608e9c028b7c4fa7a1467af366f7`  
		Last Modified: Sat, 28 Apr 2018 13:08:29 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac27b943636e1baf2b28f6b7beff6f100a6372eb61bfb1a3c924eba0553011`  
		Last Modified: Sat, 28 Apr 2018 13:08:30 GMT  
		Size: 950.5 KB (950544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd77ce6be6cd194392d852a06c83af66fa945213697cf29110e79ceb5a7a316`  
		Last Modified: Sat, 28 Apr 2018 13:08:57 GMT  
		Size: 8.7 MB (8677073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b873f5c723d17cbf7f14de9afdc46ffecf7613792db367fb5ce792dfe0d3c1ec`  
		Last Modified: Sat, 28 Apr 2018 13:08:54 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260025116bbe75dd095ab543c60faa01b6eabb41506db76bd87f53e5078bb006`  
		Last Modified: Sat, 28 Apr 2018 13:08:54 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; s390x

```console
$ docker pull redis@sha256:284d3358b9cdc8b89eb632829c2c496116b30165876371c083213a0c19689855
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40224596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06da10e55ecce0ecd9d8692f0f7a66b8a23a4b74e0cca92360830694dc8d326b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:22:08 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 28 Apr 2018 15:22:08 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:22:27 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:23:20 GMT
ENV REDIS_VERSION=4.0.9
# Sat, 28 Apr 2018 15:23:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.9.tar.gz
# Sat, 28 Apr 2018 15:23:21 GMT
ENV REDIS_DOWNLOAD_SHA=df4f73bc318e2f9ffb2d169a922dec57ec7c73dd07bccf875695dbeecd5ec510
# Sat, 28 Apr 2018 15:24:00 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:24:01 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 28 Apr 2018 15:24:01 GMT
VOLUME [/data]
# Sat, 28 Apr 2018 15:24:01 GMT
WORKDIR /data
# Sat, 28 Apr 2018 15:24:01 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:24:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:24:02 GMT
EXPOSE 6379/tcp
# Sat, 28 Apr 2018 15:24:02 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f4d03f2765a5584a0dc02af25ffd7c98d6e129d072a1fc30380b106603442102`  
		Last Modified: Sat, 28 Apr 2018 11:48:28 GMT  
		Size: 30.3 MB (30308304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba1d9acfff4b699dd35d631aa6e773ae2fac66f9c37074283cf88f8a1f59abf`  
		Last Modified: Sat, 28 Apr 2018 15:24:20 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e643404dd509543d9ae2eca1558ce6c975ce0ec2d69cbb500e7e5bb6a87da640`  
		Last Modified: Sat, 28 Apr 2018 15:24:20 GMT  
		Size: 966.9 KB (966949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2085575ab85cc13c565bd7c4b06289a96bec2c423ae8c060359e0b96898614ac`  
		Last Modified: Sat, 28 Apr 2018 15:24:42 GMT  
		Size: 8.9 MB (8946751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b116c392abf58bfef578b26b7ad40e84ae21002899000c9e1257ec44257ab52e`  
		Last Modified: Sat, 28 Apr 2018 15:24:40 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe5603300d3c5938b82cd6c1565a64a756c063baedccd110cfdef058c46b6e1`  
		Last Modified: Sat, 28 Apr 2018 15:24:40 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
