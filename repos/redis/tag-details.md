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
$ docker pull redis@sha256:f816ed1923bb69a0402ba106b75d00cb2abd334268e02ee17f9e16e7e3b3ec1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:f34836d843b43e69063b52281c9e7e0413593aa2058ea7f291aa012efb0376f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39483463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea51a7bfff08e24f837c75b6eb8a4570e3216370fdbbdb761e7826951f625c7f`
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
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:32:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Mar 2019 21:35:13 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:35:14 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:35:14 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:35:14 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:35:15 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:35:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:35:15 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:35:15 GMT
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
	-	`sha256:73d6ea902e5cf8ba923fb1f0a5f96769ad2873c2a700fb1bdf84f21fe19a7547`  
		Last Modified: Tue, 19 Mar 2019 21:38:57 GMT  
		Size: 4.8 MB (4849447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545afe505ad2927a053a315d948d421afe2eedb5c979d5534e60a60a39e1c256`  
		Last Modified: Tue, 19 Mar 2019 21:38:58 GMT  
		Size: 11.2 MB (11194344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569f10bf9dff907bc811e05fc936281dfd0ebd7d9aa928f8e46c5b579413e764`  
		Last Modified: Tue, 19 Mar 2019 21:38:56 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bcae6a024ef07eb78197a06cff9443e0be534fdae6676aef94aaaf7173629b3`  
		Last Modified: Tue, 19 Mar 2019 21:38:56 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit-stretch`

```console
$ docker pull redis@sha256:f816ed1923bb69a0402ba106b75d00cb2abd334268e02ee17f9e16e7e3b3ec1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:f34836d843b43e69063b52281c9e7e0413593aa2058ea7f291aa012efb0376f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39483463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea51a7bfff08e24f837c75b6eb8a4570e3216370fdbbdb761e7826951f625c7f`
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
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:32:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Mar 2019 21:35:13 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:35:14 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:35:14 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:35:14 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:35:15 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:35:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:35:15 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:35:15 GMT
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
	-	`sha256:73d6ea902e5cf8ba923fb1f0a5f96769ad2873c2a700fb1bdf84f21fe19a7547`  
		Last Modified: Tue, 19 Mar 2019 21:38:57 GMT  
		Size: 4.8 MB (4849447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545afe505ad2927a053a315d948d421afe2eedb5c979d5534e60a60a39e1c256`  
		Last Modified: Tue, 19 Mar 2019 21:38:58 GMT  
		Size: 11.2 MB (11194344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569f10bf9dff907bc811e05fc936281dfd0ebd7d9aa928f8e46c5b579413e764`  
		Last Modified: Tue, 19 Mar 2019 21:38:56 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bcae6a024ef07eb78197a06cff9443e0be534fdae6676aef94aaaf7173629b3`  
		Last Modified: Tue, 19 Mar 2019 21:38:56 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4`

```console
$ docker pull redis@sha256:ea0d6760b5f7dbaef8bbba1b3117ee1bf9910efd319723d4395a02f07ab42d7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4` - linux; amd64

```console
$ docker pull redis@sha256:786b6adb7c152b53afc9aefae5f12d42f5cff431bedadf80f9abd3ce6652ac49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32138223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540d4f8603f62514d8a065c22acf9590c7114c882ab1aa4a2b5cd7c4afff00e5`
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
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 19 Mar 2019 21:36:25 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 19 Mar 2019 21:36:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:36:58 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:36:58 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:36:59 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:36:59 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:36:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:36:59 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:36:59 GMT
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
	-	`sha256:21469e740a01f5cbd5d4894f6202f5d94e3933c48daf81841080fd461e14e8f9`  
		Last Modified: Tue, 19 Mar 2019 21:39:17 GMT  
		Size: 8.7 MB (8698556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53888772433ea931359d0d18cee5bf0a569e23e83f756ed5d1dfea9dce9b4c21`  
		Last Modified: Tue, 19 Mar 2019 21:39:16 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c259709b7e7776e60416110a59a7a3cb82f1e80f71b6ab9e96d16f38c1308131`  
		Last Modified: Tue, 19 Mar 2019 21:39:16 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0`

```console
$ docker pull redis@sha256:ea0d6760b5f7dbaef8bbba1b3117ee1bf9910efd319723d4395a02f07ab42d7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0` - linux; amd64

```console
$ docker pull redis@sha256:786b6adb7c152b53afc9aefae5f12d42f5cff431bedadf80f9abd3ce6652ac49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32138223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540d4f8603f62514d8a065c22acf9590c7114c882ab1aa4a2b5cd7c4afff00e5`
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
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 19 Mar 2019 21:36:25 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 19 Mar 2019 21:36:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:36:58 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:36:58 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:36:59 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:36:59 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:36:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:36:59 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:36:59 GMT
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
	-	`sha256:21469e740a01f5cbd5d4894f6202f5d94e3933c48daf81841080fd461e14e8f9`  
		Last Modified: Tue, 19 Mar 2019 21:39:17 GMT  
		Size: 8.7 MB (8698556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53888772433ea931359d0d18cee5bf0a569e23e83f756ed5d1dfea9dce9b4c21`  
		Last Modified: Tue, 19 Mar 2019 21:39:16 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c259709b7e7776e60416110a59a7a3cb82f1e80f71b6ab9e96d16f38c1308131`  
		Last Modified: Tue, 19 Mar 2019 21:39:16 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.14`

```console
$ docker pull redis@sha256:ea0d6760b5f7dbaef8bbba1b3117ee1bf9910efd319723d4395a02f07ab42d7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.14` - linux; amd64

```console
$ docker pull redis@sha256:786b6adb7c152b53afc9aefae5f12d42f5cff431bedadf80f9abd3ce6652ac49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32138223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540d4f8603f62514d8a065c22acf9590c7114c882ab1aa4a2b5cd7c4afff00e5`
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
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 19 Mar 2019 21:36:25 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 19 Mar 2019 21:36:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:36:58 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:36:58 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:36:59 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:36:59 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:36:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:36:59 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:36:59 GMT
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
	-	`sha256:21469e740a01f5cbd5d4894f6202f5d94e3933c48daf81841080fd461e14e8f9`  
		Last Modified: Tue, 19 Mar 2019 21:39:17 GMT  
		Size: 8.7 MB (8698556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53888772433ea931359d0d18cee5bf0a569e23e83f756ed5d1dfea9dce9b4c21`  
		Last Modified: Tue, 19 Mar 2019 21:39:16 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c259709b7e7776e60416110a59a7a3cb82f1e80f71b6ab9e96d16f38c1308131`  
		Last Modified: Tue, 19 Mar 2019 21:39:16 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.14-32bit`

```console
$ docker pull redis@sha256:bd19f7bea81c9a78b48cd2c6526c946201b5d54170152b704070abe85d2bfe4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.14-32bit` - linux; amd64

```console
$ docker pull redis@sha256:bf741aa63efbb6b48319c8db55ac103a32404c82a41f87785f1e90b00ac8f60b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36551676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d99bc8c2becbaecae17695b9c21759baf67664ca9576cdabff0eaec0afb518`
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
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 19 Mar 2019 21:36:25 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 19 Mar 2019 21:37:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Mar 2019 21:37:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:37:45 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:37:45 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:37:46 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:37:46 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:37:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:37:46 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:37:46 GMT
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
	-	`sha256:ccb5fbef6a3a29d902c56f30ad680efdded04d968c982816ea393378da0df168`  
		Last Modified: Tue, 19 Mar 2019 21:39:24 GMT  
		Size: 4.8 MB (4849434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e870d9c129ca64e2f1f9d5a2975060d26508d4bc8a356c6be9d8f8b60f22916b`  
		Last Modified: Tue, 19 Mar 2019 21:39:24 GMT  
		Size: 8.3 MB (8262571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1c45463d3126b016ab110f70fac9d5ea62f9282430fdfc62385b1d2dca0ef6`  
		Last Modified: Tue, 19 Mar 2019 21:39:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be47ef2493ed6bfc7c795074b071ea6f65105fc2f83ce4d43b3a05a7f113a4b2`  
		Last Modified: Tue, 19 Mar 2019 21:39:23 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.14-32bit-stretch`

```console
$ docker pull redis@sha256:bd19f7bea81c9a78b48cd2c6526c946201b5d54170152b704070abe85d2bfe4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.14-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:bf741aa63efbb6b48319c8db55ac103a32404c82a41f87785f1e90b00ac8f60b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36551676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d99bc8c2becbaecae17695b9c21759baf67664ca9576cdabff0eaec0afb518`
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
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 19 Mar 2019 21:36:25 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 19 Mar 2019 21:37:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Mar 2019 21:37:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:37:45 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:37:45 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:37:46 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:37:46 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:37:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:37:46 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:37:46 GMT
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
	-	`sha256:ccb5fbef6a3a29d902c56f30ad680efdded04d968c982816ea393378da0df168`  
		Last Modified: Tue, 19 Mar 2019 21:39:24 GMT  
		Size: 4.8 MB (4849434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e870d9c129ca64e2f1f9d5a2975060d26508d4bc8a356c6be9d8f8b60f22916b`  
		Last Modified: Tue, 19 Mar 2019 21:39:24 GMT  
		Size: 8.3 MB (8262571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1c45463d3126b016ab110f70fac9d5ea62f9282430fdfc62385b1d2dca0ef6`  
		Last Modified: Tue, 19 Mar 2019 21:39:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be47ef2493ed6bfc7c795074b071ea6f65105fc2f83ce4d43b3a05a7f113a4b2`  
		Last Modified: Tue, 19 Mar 2019 21:39:23 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.14-alpine`

```console
$ docker pull redis@sha256:f6e4e3a429a899cc21f257d41464a0fce626955832860ddf0845577bb2b3f836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.14-alpine` - linux; amd64

```console
$ docker pull redis@sha256:cb2a7c7e479377822d55c14a906042dd155be49882ca14b99103a36a84ca2973
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14331012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adbfeec2927ea132da957bac11f683ae695bbcbf65afc9d60020f9d1ad95668a`
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
# Tue, 19 Mar 2019 21:37:55 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 19 Mar 2019 21:37:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 19 Mar 2019 21:37:55 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 19 Mar 2019 21:38:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 19 Mar 2019 21:38:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:38:24 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:38:25 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:38:25 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:38:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:38:25 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:38:25 GMT
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
	-	`sha256:41457a7cc0c57af7e3d302556b15d9aea6caf9429653573df11511eac7a93592`  
		Last Modified: Tue, 19 Mar 2019 21:39:32 GMT  
		Size: 11.2 MB (11171527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f987c6e1a2b3d270867629460e9b894635ca5b2aacb6309455d98c26576826a0`  
		Last Modified: Tue, 19 Mar 2019 21:39:30 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3ef38f1fd49d0a57d89c28ad70a2fbcc69d72489e27a73bf6e6ecd9e6e8d2a`  
		Last Modified: Tue, 19 Mar 2019 21:39:30 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.14-alpine3.9`

```console
$ docker pull redis@sha256:f6e4e3a429a899cc21f257d41464a0fce626955832860ddf0845577bb2b3f836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.14-alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:cb2a7c7e479377822d55c14a906042dd155be49882ca14b99103a36a84ca2973
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14331012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adbfeec2927ea132da957bac11f683ae695bbcbf65afc9d60020f9d1ad95668a`
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
# Tue, 19 Mar 2019 21:37:55 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 19 Mar 2019 21:37:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 19 Mar 2019 21:37:55 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 19 Mar 2019 21:38:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 19 Mar 2019 21:38:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:38:24 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:38:25 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:38:25 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:38:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:38:25 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:38:25 GMT
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
	-	`sha256:41457a7cc0c57af7e3d302556b15d9aea6caf9429653573df11511eac7a93592`  
		Last Modified: Tue, 19 Mar 2019 21:39:32 GMT  
		Size: 11.2 MB (11171527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f987c6e1a2b3d270867629460e9b894635ca5b2aacb6309455d98c26576826a0`  
		Last Modified: Tue, 19 Mar 2019 21:39:30 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3ef38f1fd49d0a57d89c28ad70a2fbcc69d72489e27a73bf6e6ecd9e6e8d2a`  
		Last Modified: Tue, 19 Mar 2019 21:39:30 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0.14-stretch`

```console
$ docker pull redis@sha256:ea0d6760b5f7dbaef8bbba1b3117ee1bf9910efd319723d4395a02f07ab42d7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0.14-stretch` - linux; amd64

```console
$ docker pull redis@sha256:786b6adb7c152b53afc9aefae5f12d42f5cff431bedadf80f9abd3ce6652ac49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32138223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540d4f8603f62514d8a065c22acf9590c7114c882ab1aa4a2b5cd7c4afff00e5`
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
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 19 Mar 2019 21:36:25 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 19 Mar 2019 21:36:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:36:58 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:36:58 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:36:59 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:36:59 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:36:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:36:59 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:36:59 GMT
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
	-	`sha256:21469e740a01f5cbd5d4894f6202f5d94e3933c48daf81841080fd461e14e8f9`  
		Last Modified: Tue, 19 Mar 2019 21:39:17 GMT  
		Size: 8.7 MB (8698556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53888772433ea931359d0d18cee5bf0a569e23e83f756ed5d1dfea9dce9b4c21`  
		Last Modified: Tue, 19 Mar 2019 21:39:16 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c259709b7e7776e60416110a59a7a3cb82f1e80f71b6ab9e96d16f38c1308131`  
		Last Modified: Tue, 19 Mar 2019 21:39:16 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit`

```console
$ docker pull redis@sha256:bd19f7bea81c9a78b48cd2c6526c946201b5d54170152b704070abe85d2bfe4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:bf741aa63efbb6b48319c8db55ac103a32404c82a41f87785f1e90b00ac8f60b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36551676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d99bc8c2becbaecae17695b9c21759baf67664ca9576cdabff0eaec0afb518`
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
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 19 Mar 2019 21:36:25 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 19 Mar 2019 21:37:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Mar 2019 21:37:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:37:45 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:37:45 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:37:46 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:37:46 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:37:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:37:46 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:37:46 GMT
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
	-	`sha256:ccb5fbef6a3a29d902c56f30ad680efdded04d968c982816ea393378da0df168`  
		Last Modified: Tue, 19 Mar 2019 21:39:24 GMT  
		Size: 4.8 MB (4849434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e870d9c129ca64e2f1f9d5a2975060d26508d4bc8a356c6be9d8f8b60f22916b`  
		Last Modified: Tue, 19 Mar 2019 21:39:24 GMT  
		Size: 8.3 MB (8262571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1c45463d3126b016ab110f70fac9d5ea62f9282430fdfc62385b1d2dca0ef6`  
		Last Modified: Tue, 19 Mar 2019 21:39:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be47ef2493ed6bfc7c795074b071ea6f65105fc2f83ce4d43b3a05a7f113a4b2`  
		Last Modified: Tue, 19 Mar 2019 21:39:23 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-32bit-stretch`

```console
$ docker pull redis@sha256:bd19f7bea81c9a78b48cd2c6526c946201b5d54170152b704070abe85d2bfe4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:bf741aa63efbb6b48319c8db55ac103a32404c82a41f87785f1e90b00ac8f60b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36551676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d99bc8c2becbaecae17695b9c21759baf67664ca9576cdabff0eaec0afb518`
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
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 19 Mar 2019 21:36:25 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 19 Mar 2019 21:37:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Mar 2019 21:37:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:37:45 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:37:45 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:37:46 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:37:46 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:37:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:37:46 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:37:46 GMT
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
	-	`sha256:ccb5fbef6a3a29d902c56f30ad680efdded04d968c982816ea393378da0df168`  
		Last Modified: Tue, 19 Mar 2019 21:39:24 GMT  
		Size: 4.8 MB (4849434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e870d9c129ca64e2f1f9d5a2975060d26508d4bc8a356c6be9d8f8b60f22916b`  
		Last Modified: Tue, 19 Mar 2019 21:39:24 GMT  
		Size: 8.3 MB (8262571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1c45463d3126b016ab110f70fac9d5ea62f9282430fdfc62385b1d2dca0ef6`  
		Last Modified: Tue, 19 Mar 2019 21:39:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be47ef2493ed6bfc7c795074b071ea6f65105fc2f83ce4d43b3a05a7f113a4b2`  
		Last Modified: Tue, 19 Mar 2019 21:39:23 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine`

```console
$ docker pull redis@sha256:f6e4e3a429a899cc21f257d41464a0fce626955832860ddf0845577bb2b3f836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-alpine` - linux; amd64

```console
$ docker pull redis@sha256:cb2a7c7e479377822d55c14a906042dd155be49882ca14b99103a36a84ca2973
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14331012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adbfeec2927ea132da957bac11f683ae695bbcbf65afc9d60020f9d1ad95668a`
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
# Tue, 19 Mar 2019 21:37:55 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 19 Mar 2019 21:37:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 19 Mar 2019 21:37:55 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 19 Mar 2019 21:38:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 19 Mar 2019 21:38:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:38:24 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:38:25 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:38:25 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:38:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:38:25 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:38:25 GMT
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
	-	`sha256:41457a7cc0c57af7e3d302556b15d9aea6caf9429653573df11511eac7a93592`  
		Last Modified: Tue, 19 Mar 2019 21:39:32 GMT  
		Size: 11.2 MB (11171527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f987c6e1a2b3d270867629460e9b894635ca5b2aacb6309455d98c26576826a0`  
		Last Modified: Tue, 19 Mar 2019 21:39:30 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3ef38f1fd49d0a57d89c28ad70a2fbcc69d72489e27a73bf6e6ecd9e6e8d2a`  
		Last Modified: Tue, 19 Mar 2019 21:39:30 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-alpine3.9`

```console
$ docker pull redis@sha256:f6e4e3a429a899cc21f257d41464a0fce626955832860ddf0845577bb2b3f836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:cb2a7c7e479377822d55c14a906042dd155be49882ca14b99103a36a84ca2973
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14331012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adbfeec2927ea132da957bac11f683ae695bbcbf65afc9d60020f9d1ad95668a`
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
# Tue, 19 Mar 2019 21:37:55 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 19 Mar 2019 21:37:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 19 Mar 2019 21:37:55 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 19 Mar 2019 21:38:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 19 Mar 2019 21:38:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:38:24 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:38:25 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:38:25 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:38:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:38:25 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:38:25 GMT
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
	-	`sha256:41457a7cc0c57af7e3d302556b15d9aea6caf9429653573df11511eac7a93592`  
		Last Modified: Tue, 19 Mar 2019 21:39:32 GMT  
		Size: 11.2 MB (11171527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f987c6e1a2b3d270867629460e9b894635ca5b2aacb6309455d98c26576826a0`  
		Last Modified: Tue, 19 Mar 2019 21:39:30 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3ef38f1fd49d0a57d89c28ad70a2fbcc69d72489e27a73bf6e6ecd9e6e8d2a`  
		Last Modified: Tue, 19 Mar 2019 21:39:30 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4.0-stretch`

```console
$ docker pull redis@sha256:ea0d6760b5f7dbaef8bbba1b3117ee1bf9910efd319723d4395a02f07ab42d7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4.0-stretch` - linux; amd64

```console
$ docker pull redis@sha256:786b6adb7c152b53afc9aefae5f12d42f5cff431bedadf80f9abd3ce6652ac49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32138223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540d4f8603f62514d8a065c22acf9590c7114c882ab1aa4a2b5cd7c4afff00e5`
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
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 19 Mar 2019 21:36:25 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 19 Mar 2019 21:36:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:36:58 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:36:58 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:36:59 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:36:59 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:36:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:36:59 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:36:59 GMT
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
	-	`sha256:21469e740a01f5cbd5d4894f6202f5d94e3933c48daf81841080fd461e14e8f9`  
		Last Modified: Tue, 19 Mar 2019 21:39:17 GMT  
		Size: 8.7 MB (8698556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53888772433ea931359d0d18cee5bf0a569e23e83f756ed5d1dfea9dce9b4c21`  
		Last Modified: Tue, 19 Mar 2019 21:39:16 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c259709b7e7776e60416110a59a7a3cb82f1e80f71b6ab9e96d16f38c1308131`  
		Last Modified: Tue, 19 Mar 2019 21:39:16 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit`

```console
$ docker pull redis@sha256:bd19f7bea81c9a78b48cd2c6526c946201b5d54170152b704070abe85d2bfe4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:bf741aa63efbb6b48319c8db55ac103a32404c82a41f87785f1e90b00ac8f60b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36551676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d99bc8c2becbaecae17695b9c21759baf67664ca9576cdabff0eaec0afb518`
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
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 19 Mar 2019 21:36:25 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 19 Mar 2019 21:37:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Mar 2019 21:37:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:37:45 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:37:45 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:37:46 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:37:46 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:37:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:37:46 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:37:46 GMT
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
	-	`sha256:ccb5fbef6a3a29d902c56f30ad680efdded04d968c982816ea393378da0df168`  
		Last Modified: Tue, 19 Mar 2019 21:39:24 GMT  
		Size: 4.8 MB (4849434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e870d9c129ca64e2f1f9d5a2975060d26508d4bc8a356c6be9d8f8b60f22916b`  
		Last Modified: Tue, 19 Mar 2019 21:39:24 GMT  
		Size: 8.3 MB (8262571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1c45463d3126b016ab110f70fac9d5ea62f9282430fdfc62385b1d2dca0ef6`  
		Last Modified: Tue, 19 Mar 2019 21:39:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be47ef2493ed6bfc7c795074b071ea6f65105fc2f83ce4d43b3a05a7f113a4b2`  
		Last Modified: Tue, 19 Mar 2019 21:39:23 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-32bit-stretch`

```console
$ docker pull redis@sha256:bd19f7bea81c9a78b48cd2c6526c946201b5d54170152b704070abe85d2bfe4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:bf741aa63efbb6b48319c8db55ac103a32404c82a41f87785f1e90b00ac8f60b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36551676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d99bc8c2becbaecae17695b9c21759baf67664ca9576cdabff0eaec0afb518`
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
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 19 Mar 2019 21:36:25 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 19 Mar 2019 21:37:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Mar 2019 21:37:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:37:45 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:37:45 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:37:46 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:37:46 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:37:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:37:46 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:37:46 GMT
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
	-	`sha256:ccb5fbef6a3a29d902c56f30ad680efdded04d968c982816ea393378da0df168`  
		Last Modified: Tue, 19 Mar 2019 21:39:24 GMT  
		Size: 4.8 MB (4849434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e870d9c129ca64e2f1f9d5a2975060d26508d4bc8a356c6be9d8f8b60f22916b`  
		Last Modified: Tue, 19 Mar 2019 21:39:24 GMT  
		Size: 8.3 MB (8262571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1c45463d3126b016ab110f70fac9d5ea62f9282430fdfc62385b1d2dca0ef6`  
		Last Modified: Tue, 19 Mar 2019 21:39:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be47ef2493ed6bfc7c795074b071ea6f65105fc2f83ce4d43b3a05a7f113a4b2`  
		Last Modified: Tue, 19 Mar 2019 21:39:23 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine`

```console
$ docker pull redis@sha256:f6e4e3a429a899cc21f257d41464a0fce626955832860ddf0845577bb2b3f836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-alpine` - linux; amd64

```console
$ docker pull redis@sha256:cb2a7c7e479377822d55c14a906042dd155be49882ca14b99103a36a84ca2973
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14331012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adbfeec2927ea132da957bac11f683ae695bbcbf65afc9d60020f9d1ad95668a`
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
# Tue, 19 Mar 2019 21:37:55 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 19 Mar 2019 21:37:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 19 Mar 2019 21:37:55 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 19 Mar 2019 21:38:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 19 Mar 2019 21:38:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:38:24 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:38:25 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:38:25 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:38:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:38:25 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:38:25 GMT
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
	-	`sha256:41457a7cc0c57af7e3d302556b15d9aea6caf9429653573df11511eac7a93592`  
		Last Modified: Tue, 19 Mar 2019 21:39:32 GMT  
		Size: 11.2 MB (11171527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f987c6e1a2b3d270867629460e9b894635ca5b2aacb6309455d98c26576826a0`  
		Last Modified: Tue, 19 Mar 2019 21:39:30 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3ef38f1fd49d0a57d89c28ad70a2fbcc69d72489e27a73bf6e6ecd9e6e8d2a`  
		Last Modified: Tue, 19 Mar 2019 21:39:30 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-alpine3.9`

```console
$ docker pull redis@sha256:f6e4e3a429a899cc21f257d41464a0fce626955832860ddf0845577bb2b3f836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:cb2a7c7e479377822d55c14a906042dd155be49882ca14b99103a36a84ca2973
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14331012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adbfeec2927ea132da957bac11f683ae695bbcbf65afc9d60020f9d1ad95668a`
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
# Tue, 19 Mar 2019 21:37:55 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 19 Mar 2019 21:37:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 19 Mar 2019 21:37:55 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 19 Mar 2019 21:38:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 19 Mar 2019 21:38:24 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:38:24 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:38:25 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:38:25 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:38:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:38:25 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:38:25 GMT
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
	-	`sha256:41457a7cc0c57af7e3d302556b15d9aea6caf9429653573df11511eac7a93592`  
		Last Modified: Tue, 19 Mar 2019 21:39:32 GMT  
		Size: 11.2 MB (11171527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f987c6e1a2b3d270867629460e9b894635ca5b2aacb6309455d98c26576826a0`  
		Last Modified: Tue, 19 Mar 2019 21:39:30 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3ef38f1fd49d0a57d89c28ad70a2fbcc69d72489e27a73bf6e6ecd9e6e8d2a`  
		Last Modified: Tue, 19 Mar 2019 21:39:30 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4-stretch`

```console
$ docker pull redis@sha256:ea0d6760b5f7dbaef8bbba1b3117ee1bf9910efd319723d4395a02f07ab42d7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-stretch` - linux; amd64

```console
$ docker pull redis@sha256:786b6adb7c152b53afc9aefae5f12d42f5cff431bedadf80f9abd3ce6652ac49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32138223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540d4f8603f62514d8a065c22acf9590c7114c882ab1aa4a2b5cd7c4afff00e5`
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
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_VERSION=4.0.14
# Tue, 19 Mar 2019 21:36:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Tue, 19 Mar 2019 21:36:25 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Tue, 19 Mar 2019 21:36:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:36:58 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:36:58 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:36:59 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:36:59 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:36:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:36:59 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:36:59 GMT
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
	-	`sha256:21469e740a01f5cbd5d4894f6202f5d94e3933c48daf81841080fd461e14e8f9`  
		Last Modified: Tue, 19 Mar 2019 21:39:17 GMT  
		Size: 8.7 MB (8698556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53888772433ea931359d0d18cee5bf0a569e23e83f756ed5d1dfea9dce9b4c21`  
		Last Modified: Tue, 19 Mar 2019 21:39:16 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c259709b7e7776e60416110a59a7a3cb82f1e80f71b6ab9e96d16f38c1308131`  
		Last Modified: Tue, 19 Mar 2019 21:39:16 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5`

```console
$ docker pull redis@sha256:dd04a0f82c6a838fa06b9a3b66827c7ac2ed54b8b2ced0db93df0af9d191d4c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5` - linux; amd64

```console
$ docker pull redis@sha256:9f5d4b58b24fa063e445f33572172950d51b10520322f47b072dced39604b887
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35222053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4161e91dcc290f291aa7ad17d20212e99704db82b24e7ee3acaa09bd739fc8e9`
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
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:32:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:33:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:33:45 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:33:45 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:33:45 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:33:46 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:33:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:33:46 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:33:46 GMT
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
	-	`sha256:f4d05f269476b5ce9a684dbc4b9ff2f5b2ae615ebf08274f11156a8d1a176654`  
		Last Modified: Tue, 19 Mar 2019 21:38:49 GMT  
		Size: 11.8 MB (11782386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e747b51b85f180eec36b3c641574e97cd4035a3d515e32d67edf497d390975d`  
		Last Modified: Tue, 19 Mar 2019 21:38:47 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41406f9197834b5f39263344fcbb039b405eb69010c330f5a208c133315404f`  
		Last Modified: Tue, 19 Mar 2019 21:38:47 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0`

```console
$ docker pull redis@sha256:dd04a0f82c6a838fa06b9a3b66827c7ac2ed54b8b2ced0db93df0af9d191d4c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0` - linux; amd64

```console
$ docker pull redis@sha256:9f5d4b58b24fa063e445f33572172950d51b10520322f47b072dced39604b887
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35222053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4161e91dcc290f291aa7ad17d20212e99704db82b24e7ee3acaa09bd739fc8e9`
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
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:32:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:33:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:33:45 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:33:45 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:33:45 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:33:46 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:33:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:33:46 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:33:46 GMT
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
	-	`sha256:f4d05f269476b5ce9a684dbc4b9ff2f5b2ae615ebf08274f11156a8d1a176654`  
		Last Modified: Tue, 19 Mar 2019 21:38:49 GMT  
		Size: 11.8 MB (11782386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e747b51b85f180eec36b3c641574e97cd4035a3d515e32d67edf497d390975d`  
		Last Modified: Tue, 19 Mar 2019 21:38:47 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41406f9197834b5f39263344fcbb039b405eb69010c330f5a208c133315404f`  
		Last Modified: Tue, 19 Mar 2019 21:38:47 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-32bit`

```console
$ docker pull redis@sha256:f816ed1923bb69a0402ba106b75d00cb2abd334268e02ee17f9e16e7e3b3ec1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:f34836d843b43e69063b52281c9e7e0413593aa2058ea7f291aa012efb0376f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39483463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea51a7bfff08e24f837c75b6eb8a4570e3216370fdbbdb761e7826951f625c7f`
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
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:32:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Mar 2019 21:35:13 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:35:14 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:35:14 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:35:14 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:35:15 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:35:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:35:15 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:35:15 GMT
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
	-	`sha256:73d6ea902e5cf8ba923fb1f0a5f96769ad2873c2a700fb1bdf84f21fe19a7547`  
		Last Modified: Tue, 19 Mar 2019 21:38:57 GMT  
		Size: 4.8 MB (4849447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545afe505ad2927a053a315d948d421afe2eedb5c979d5534e60a60a39e1c256`  
		Last Modified: Tue, 19 Mar 2019 21:38:58 GMT  
		Size: 11.2 MB (11194344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569f10bf9dff907bc811e05fc936281dfd0ebd7d9aa928f8e46c5b579413e764`  
		Last Modified: Tue, 19 Mar 2019 21:38:56 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bcae6a024ef07eb78197a06cff9443e0be534fdae6676aef94aaaf7173629b3`  
		Last Modified: Tue, 19 Mar 2019 21:38:56 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-32bit-stretch`

```console
$ docker pull redis@sha256:f816ed1923bb69a0402ba106b75d00cb2abd334268e02ee17f9e16e7e3b3ec1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:f34836d843b43e69063b52281c9e7e0413593aa2058ea7f291aa012efb0376f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39483463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea51a7bfff08e24f837c75b6eb8a4570e3216370fdbbdb761e7826951f625c7f`
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
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:32:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Mar 2019 21:35:13 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:35:14 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:35:14 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:35:14 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:35:15 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:35:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:35:15 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:35:15 GMT
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
	-	`sha256:73d6ea902e5cf8ba923fb1f0a5f96769ad2873c2a700fb1bdf84f21fe19a7547`  
		Last Modified: Tue, 19 Mar 2019 21:38:57 GMT  
		Size: 4.8 MB (4849447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545afe505ad2927a053a315d948d421afe2eedb5c979d5534e60a60a39e1c256`  
		Last Modified: Tue, 19 Mar 2019 21:38:58 GMT  
		Size: 11.2 MB (11194344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569f10bf9dff907bc811e05fc936281dfd0ebd7d9aa928f8e46c5b579413e764`  
		Last Modified: Tue, 19 Mar 2019 21:38:56 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bcae6a024ef07eb78197a06cff9443e0be534fdae6676aef94aaaf7173629b3`  
		Last Modified: Tue, 19 Mar 2019 21:38:56 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.4`

```console
$ docker pull redis@sha256:dd04a0f82c6a838fa06b9a3b66827c7ac2ed54b8b2ced0db93df0af9d191d4c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.4` - linux; amd64

```console
$ docker pull redis@sha256:9f5d4b58b24fa063e445f33572172950d51b10520322f47b072dced39604b887
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35222053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4161e91dcc290f291aa7ad17d20212e99704db82b24e7ee3acaa09bd739fc8e9`
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
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:32:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:33:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:33:45 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:33:45 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:33:45 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:33:46 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:33:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:33:46 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:33:46 GMT
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
	-	`sha256:f4d05f269476b5ce9a684dbc4b9ff2f5b2ae615ebf08274f11156a8d1a176654`  
		Last Modified: Tue, 19 Mar 2019 21:38:49 GMT  
		Size: 11.8 MB (11782386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e747b51b85f180eec36b3c641574e97cd4035a3d515e32d67edf497d390975d`  
		Last Modified: Tue, 19 Mar 2019 21:38:47 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41406f9197834b5f39263344fcbb039b405eb69010c330f5a208c133315404f`  
		Last Modified: Tue, 19 Mar 2019 21:38:47 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.4-32bit`

```console
$ docker pull redis@sha256:f816ed1923bb69a0402ba106b75d00cb2abd334268e02ee17f9e16e7e3b3ec1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:f34836d843b43e69063b52281c9e7e0413593aa2058ea7f291aa012efb0376f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39483463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea51a7bfff08e24f837c75b6eb8a4570e3216370fdbbdb761e7826951f625c7f`
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
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:32:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Mar 2019 21:35:13 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:35:14 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:35:14 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:35:14 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:35:15 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:35:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:35:15 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:35:15 GMT
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
	-	`sha256:73d6ea902e5cf8ba923fb1f0a5f96769ad2873c2a700fb1bdf84f21fe19a7547`  
		Last Modified: Tue, 19 Mar 2019 21:38:57 GMT  
		Size: 4.8 MB (4849447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545afe505ad2927a053a315d948d421afe2eedb5c979d5534e60a60a39e1c256`  
		Last Modified: Tue, 19 Mar 2019 21:38:58 GMT  
		Size: 11.2 MB (11194344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569f10bf9dff907bc811e05fc936281dfd0ebd7d9aa928f8e46c5b579413e764`  
		Last Modified: Tue, 19 Mar 2019 21:38:56 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bcae6a024ef07eb78197a06cff9443e0be534fdae6676aef94aaaf7173629b3`  
		Last Modified: Tue, 19 Mar 2019 21:38:56 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.4-32bit-stretch`

```console
$ docker pull redis@sha256:f816ed1923bb69a0402ba106b75d00cb2abd334268e02ee17f9e16e7e3b3ec1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.4-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:f34836d843b43e69063b52281c9e7e0413593aa2058ea7f291aa012efb0376f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39483463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea51a7bfff08e24f837c75b6eb8a4570e3216370fdbbdb761e7826951f625c7f`
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
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:32:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Mar 2019 21:35:13 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:35:14 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:35:14 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:35:14 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:35:15 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:35:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:35:15 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:35:15 GMT
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
	-	`sha256:73d6ea902e5cf8ba923fb1f0a5f96769ad2873c2a700fb1bdf84f21fe19a7547`  
		Last Modified: Tue, 19 Mar 2019 21:38:57 GMT  
		Size: 4.8 MB (4849447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545afe505ad2927a053a315d948d421afe2eedb5c979d5534e60a60a39e1c256`  
		Last Modified: Tue, 19 Mar 2019 21:38:58 GMT  
		Size: 11.2 MB (11194344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569f10bf9dff907bc811e05fc936281dfd0ebd7d9aa928f8e46c5b579413e764`  
		Last Modified: Tue, 19 Mar 2019 21:38:56 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bcae6a024ef07eb78197a06cff9443e0be534fdae6676aef94aaaf7173629b3`  
		Last Modified: Tue, 19 Mar 2019 21:38:56 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.4-alpine`

```console
$ docker pull redis@sha256:1650757eb3ad07a0585d7c52909db1f32f2738b9c211a2077a6182fd4ea1527f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.4-alpine` - linux; amd64

```console
$ docker pull redis@sha256:aab00a77717131127e55e906a1355f0f94fd89a2a89fa5045e7b26d8aece268d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18144709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07103bda7d12a62080183ffc5fae0bff11334d52f2d6fee3fe1e07084a092e38`
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
# Tue, 19 Mar 2019 21:35:22 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:35:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:35:23 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:36:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 19 Mar 2019 21:36:17 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:36:17 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:36:18 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:36:18 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:36:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:36:18 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:36:18 GMT
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
	-	`sha256:779a3abe033ae4a49a6581a4e787c849cb74b2d883fa2e9fee49a2f49bb49c5b`  
		Last Modified: Tue, 19 Mar 2019 21:39:09 GMT  
		Size: 15.0 MB (14985222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84714e9d5602c70d198799eea86604c0a2d51ee8772eae2aa6ba7c5b68927830`  
		Last Modified: Tue, 19 Mar 2019 21:39:06 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e66c4c614cb39eaf1babd516f5c0929077b8262962899d60caee00a2da6f970`  
		Last Modified: Tue, 19 Mar 2019 21:39:06 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.4-alpine3.9`

```console
$ docker pull redis@sha256:1650757eb3ad07a0585d7c52909db1f32f2738b9c211a2077a6182fd4ea1527f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.4-alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:aab00a77717131127e55e906a1355f0f94fd89a2a89fa5045e7b26d8aece268d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18144709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07103bda7d12a62080183ffc5fae0bff11334d52f2d6fee3fe1e07084a092e38`
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
# Tue, 19 Mar 2019 21:35:22 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:35:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:35:23 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:36:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 19 Mar 2019 21:36:17 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:36:17 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:36:18 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:36:18 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:36:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:36:18 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:36:18 GMT
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
	-	`sha256:779a3abe033ae4a49a6581a4e787c849cb74b2d883fa2e9fee49a2f49bb49c5b`  
		Last Modified: Tue, 19 Mar 2019 21:39:09 GMT  
		Size: 15.0 MB (14985222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84714e9d5602c70d198799eea86604c0a2d51ee8772eae2aa6ba7c5b68927830`  
		Last Modified: Tue, 19 Mar 2019 21:39:06 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e66c4c614cb39eaf1babd516f5c0929077b8262962899d60caee00a2da6f970`  
		Last Modified: Tue, 19 Mar 2019 21:39:06 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.4-stretch`

```console
$ docker pull redis@sha256:dd04a0f82c6a838fa06b9a3b66827c7ac2ed54b8b2ced0db93df0af9d191d4c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.4-stretch` - linux; amd64

```console
$ docker pull redis@sha256:9f5d4b58b24fa063e445f33572172950d51b10520322f47b072dced39604b887
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35222053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4161e91dcc290f291aa7ad17d20212e99704db82b24e7ee3acaa09bd739fc8e9`
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
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:32:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:33:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:33:45 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:33:45 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:33:45 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:33:46 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:33:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:33:46 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:33:46 GMT
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
	-	`sha256:f4d05f269476b5ce9a684dbc4b9ff2f5b2ae615ebf08274f11156a8d1a176654`  
		Last Modified: Tue, 19 Mar 2019 21:38:49 GMT  
		Size: 11.8 MB (11782386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e747b51b85f180eec36b3c641574e97cd4035a3d515e32d67edf497d390975d`  
		Last Modified: Tue, 19 Mar 2019 21:38:47 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41406f9197834b5f39263344fcbb039b405eb69010c330f5a208c133315404f`  
		Last Modified: Tue, 19 Mar 2019 21:38:47 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-alpine`

```console
$ docker pull redis@sha256:1650757eb3ad07a0585d7c52909db1f32f2738b9c211a2077a6182fd4ea1527f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-alpine` - linux; amd64

```console
$ docker pull redis@sha256:aab00a77717131127e55e906a1355f0f94fd89a2a89fa5045e7b26d8aece268d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18144709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07103bda7d12a62080183ffc5fae0bff11334d52f2d6fee3fe1e07084a092e38`
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
# Tue, 19 Mar 2019 21:35:22 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:35:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:35:23 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:36:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 19 Mar 2019 21:36:17 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:36:17 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:36:18 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:36:18 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:36:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:36:18 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:36:18 GMT
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
	-	`sha256:779a3abe033ae4a49a6581a4e787c849cb74b2d883fa2e9fee49a2f49bb49c5b`  
		Last Modified: Tue, 19 Mar 2019 21:39:09 GMT  
		Size: 15.0 MB (14985222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84714e9d5602c70d198799eea86604c0a2d51ee8772eae2aa6ba7c5b68927830`  
		Last Modified: Tue, 19 Mar 2019 21:39:06 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e66c4c614cb39eaf1babd516f5c0929077b8262962899d60caee00a2da6f970`  
		Last Modified: Tue, 19 Mar 2019 21:39:06 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-alpine3.9`

```console
$ docker pull redis@sha256:1650757eb3ad07a0585d7c52909db1f32f2738b9c211a2077a6182fd4ea1527f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:aab00a77717131127e55e906a1355f0f94fd89a2a89fa5045e7b26d8aece268d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18144709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07103bda7d12a62080183ffc5fae0bff11334d52f2d6fee3fe1e07084a092e38`
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
# Tue, 19 Mar 2019 21:35:22 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:35:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:35:23 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:36:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 19 Mar 2019 21:36:17 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:36:17 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:36:18 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:36:18 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:36:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:36:18 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:36:18 GMT
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
	-	`sha256:779a3abe033ae4a49a6581a4e787c849cb74b2d883fa2e9fee49a2f49bb49c5b`  
		Last Modified: Tue, 19 Mar 2019 21:39:09 GMT  
		Size: 15.0 MB (14985222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84714e9d5602c70d198799eea86604c0a2d51ee8772eae2aa6ba7c5b68927830`  
		Last Modified: Tue, 19 Mar 2019 21:39:06 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e66c4c614cb39eaf1babd516f5c0929077b8262962899d60caee00a2da6f970`  
		Last Modified: Tue, 19 Mar 2019 21:39:06 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-stretch`

```console
$ docker pull redis@sha256:dd04a0f82c6a838fa06b9a3b66827c7ac2ed54b8b2ced0db93df0af9d191d4c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-stretch` - linux; amd64

```console
$ docker pull redis@sha256:9f5d4b58b24fa063e445f33572172950d51b10520322f47b072dced39604b887
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35222053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4161e91dcc290f291aa7ad17d20212e99704db82b24e7ee3acaa09bd739fc8e9`
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
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:32:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:33:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:33:45 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:33:45 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:33:45 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:33:46 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:33:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:33:46 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:33:46 GMT
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
	-	`sha256:f4d05f269476b5ce9a684dbc4b9ff2f5b2ae615ebf08274f11156a8d1a176654`  
		Last Modified: Tue, 19 Mar 2019 21:38:49 GMT  
		Size: 11.8 MB (11782386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e747b51b85f180eec36b3c641574e97cd4035a3d515e32d67edf497d390975d`  
		Last Modified: Tue, 19 Mar 2019 21:38:47 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41406f9197834b5f39263344fcbb039b405eb69010c330f5a208c133315404f`  
		Last Modified: Tue, 19 Mar 2019 21:38:47 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-32bit`

```console
$ docker pull redis@sha256:f816ed1923bb69a0402ba106b75d00cb2abd334268e02ee17f9e16e7e3b3ec1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-32bit` - linux; amd64

```console
$ docker pull redis@sha256:f34836d843b43e69063b52281c9e7e0413593aa2058ea7f291aa012efb0376f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39483463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea51a7bfff08e24f837c75b6eb8a4570e3216370fdbbdb761e7826951f625c7f`
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
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:32:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Mar 2019 21:35:13 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:35:14 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:35:14 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:35:14 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:35:15 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:35:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:35:15 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:35:15 GMT
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
	-	`sha256:73d6ea902e5cf8ba923fb1f0a5f96769ad2873c2a700fb1bdf84f21fe19a7547`  
		Last Modified: Tue, 19 Mar 2019 21:38:57 GMT  
		Size: 4.8 MB (4849447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545afe505ad2927a053a315d948d421afe2eedb5c979d5534e60a60a39e1c256`  
		Last Modified: Tue, 19 Mar 2019 21:38:58 GMT  
		Size: 11.2 MB (11194344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569f10bf9dff907bc811e05fc936281dfd0ebd7d9aa928f8e46c5b579413e764`  
		Last Modified: Tue, 19 Mar 2019 21:38:56 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bcae6a024ef07eb78197a06cff9443e0be534fdae6676aef94aaaf7173629b3`  
		Last Modified: Tue, 19 Mar 2019 21:38:56 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-32bit-stretch`

```console
$ docker pull redis@sha256:f816ed1923bb69a0402ba106b75d00cb2abd334268e02ee17f9e16e7e3b3ec1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:f34836d843b43e69063b52281c9e7e0413593aa2058ea7f291aa012efb0376f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39483463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea51a7bfff08e24f837c75b6eb8a4570e3216370fdbbdb761e7826951f625c7f`
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
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:32:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Mar 2019 21:35:13 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:35:14 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:35:14 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:35:14 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:35:15 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:35:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:35:15 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:35:15 GMT
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
	-	`sha256:73d6ea902e5cf8ba923fb1f0a5f96769ad2873c2a700fb1bdf84f21fe19a7547`  
		Last Modified: Tue, 19 Mar 2019 21:38:57 GMT  
		Size: 4.8 MB (4849447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545afe505ad2927a053a315d948d421afe2eedb5c979d5534e60a60a39e1c256`  
		Last Modified: Tue, 19 Mar 2019 21:38:58 GMT  
		Size: 11.2 MB (11194344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569f10bf9dff907bc811e05fc936281dfd0ebd7d9aa928f8e46c5b579413e764`  
		Last Modified: Tue, 19 Mar 2019 21:38:56 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bcae6a024ef07eb78197a06cff9443e0be534fdae6676aef94aaaf7173629b3`  
		Last Modified: Tue, 19 Mar 2019 21:38:56 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-alpine`

```console
$ docker pull redis@sha256:1650757eb3ad07a0585d7c52909db1f32f2738b9c211a2077a6182fd4ea1527f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-alpine` - linux; amd64

```console
$ docker pull redis@sha256:aab00a77717131127e55e906a1355f0f94fd89a2a89fa5045e7b26d8aece268d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18144709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07103bda7d12a62080183ffc5fae0bff11334d52f2d6fee3fe1e07084a092e38`
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
# Tue, 19 Mar 2019 21:35:22 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:35:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:35:23 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:36:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 19 Mar 2019 21:36:17 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:36:17 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:36:18 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:36:18 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:36:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:36:18 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:36:18 GMT
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
	-	`sha256:779a3abe033ae4a49a6581a4e787c849cb74b2d883fa2e9fee49a2f49bb49c5b`  
		Last Modified: Tue, 19 Mar 2019 21:39:09 GMT  
		Size: 15.0 MB (14985222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84714e9d5602c70d198799eea86604c0a2d51ee8772eae2aa6ba7c5b68927830`  
		Last Modified: Tue, 19 Mar 2019 21:39:06 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e66c4c614cb39eaf1babd516f5c0929077b8262962899d60caee00a2da6f970`  
		Last Modified: Tue, 19 Mar 2019 21:39:06 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-alpine3.9`

```console
$ docker pull redis@sha256:1650757eb3ad07a0585d7c52909db1f32f2738b9c211a2077a6182fd4ea1527f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:aab00a77717131127e55e906a1355f0f94fd89a2a89fa5045e7b26d8aece268d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18144709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07103bda7d12a62080183ffc5fae0bff11334d52f2d6fee3fe1e07084a092e38`
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
# Tue, 19 Mar 2019 21:35:22 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:35:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:35:23 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:36:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 19 Mar 2019 21:36:17 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:36:17 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:36:18 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:36:18 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:36:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:36:18 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:36:18 GMT
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
	-	`sha256:779a3abe033ae4a49a6581a4e787c849cb74b2d883fa2e9fee49a2f49bb49c5b`  
		Last Modified: Tue, 19 Mar 2019 21:39:09 GMT  
		Size: 15.0 MB (14985222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84714e9d5602c70d198799eea86604c0a2d51ee8772eae2aa6ba7c5b68927830`  
		Last Modified: Tue, 19 Mar 2019 21:39:06 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e66c4c614cb39eaf1babd516f5c0929077b8262962899d60caee00a2da6f970`  
		Last Modified: Tue, 19 Mar 2019 21:39:06 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-stretch`

```console
$ docker pull redis@sha256:dd04a0f82c6a838fa06b9a3b66827c7ac2ed54b8b2ced0db93df0af9d191d4c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-stretch` - linux; amd64

```console
$ docker pull redis@sha256:9f5d4b58b24fa063e445f33572172950d51b10520322f47b072dced39604b887
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35222053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4161e91dcc290f291aa7ad17d20212e99704db82b24e7ee3acaa09bd739fc8e9`
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
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:32:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:33:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:33:45 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:33:45 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:33:45 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:33:46 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:33:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:33:46 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:33:46 GMT
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
	-	`sha256:f4d05f269476b5ce9a684dbc4b9ff2f5b2ae615ebf08274f11156a8d1a176654`  
		Last Modified: Tue, 19 Mar 2019 21:38:49 GMT  
		Size: 11.8 MB (11782386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e747b51b85f180eec36b3c641574e97cd4035a3d515e32d67edf497d390975d`  
		Last Modified: Tue, 19 Mar 2019 21:38:47 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41406f9197834b5f39263344fcbb039b405eb69010c330f5a208c133315404f`  
		Last Modified: Tue, 19 Mar 2019 21:38:47 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:1650757eb3ad07a0585d7c52909db1f32f2738b9c211a2077a6182fd4ea1527f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

```console
$ docker pull redis@sha256:aab00a77717131127e55e906a1355f0f94fd89a2a89fa5045e7b26d8aece268d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18144709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07103bda7d12a62080183ffc5fae0bff11334d52f2d6fee3fe1e07084a092e38`
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
# Tue, 19 Mar 2019 21:35:22 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:35:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:35:23 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:36:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 19 Mar 2019 21:36:17 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:36:17 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:36:18 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:36:18 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:36:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:36:18 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:36:18 GMT
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
	-	`sha256:779a3abe033ae4a49a6581a4e787c849cb74b2d883fa2e9fee49a2f49bb49c5b`  
		Last Modified: Tue, 19 Mar 2019 21:39:09 GMT  
		Size: 15.0 MB (14985222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84714e9d5602c70d198799eea86604c0a2d51ee8772eae2aa6ba7c5b68927830`  
		Last Modified: Tue, 19 Mar 2019 21:39:06 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e66c4c614cb39eaf1babd516f5c0929077b8262962899d60caee00a2da6f970`  
		Last Modified: Tue, 19 Mar 2019 21:39:06 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine3.9`

```console
$ docker pull redis@sha256:1650757eb3ad07a0585d7c52909db1f32f2738b9c211a2077a6182fd4ea1527f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:aab00a77717131127e55e906a1355f0f94fd89a2a89fa5045e7b26d8aece268d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18144709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07103bda7d12a62080183ffc5fae0bff11334d52f2d6fee3fe1e07084a092e38`
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
# Tue, 19 Mar 2019 21:35:22 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:35:22 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:35:23 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:36:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Tue, 19 Mar 2019 21:36:17 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:36:17 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:36:18 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:36:18 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:36:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:36:18 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:36:18 GMT
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
	-	`sha256:779a3abe033ae4a49a6581a4e787c849cb74b2d883fa2e9fee49a2f49bb49c5b`  
		Last Modified: Tue, 19 Mar 2019 21:39:09 GMT  
		Size: 15.0 MB (14985222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84714e9d5602c70d198799eea86604c0a2d51ee8772eae2aa6ba7c5b68927830`  
		Last Modified: Tue, 19 Mar 2019 21:39:06 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e66c4c614cb39eaf1babd516f5c0929077b8262962899d60caee00a2da6f970`  
		Last Modified: Tue, 19 Mar 2019 21:39:06 GMT  
		Size: 415.0 B  
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
$ docker pull redis@sha256:dd04a0f82c6a838fa06b9a3b66827c7ac2ed54b8b2ced0db93df0af9d191d4c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:stretch` - linux; amd64

```console
$ docker pull redis@sha256:9f5d4b58b24fa063e445f33572172950d51b10520322f47b072dced39604b887
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35222053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4161e91dcc290f291aa7ad17d20212e99704db82b24e7ee3acaa09bd739fc8e9`
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
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_VERSION=5.0.4
# Tue, 19 Mar 2019 21:32:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Tue, 19 Mar 2019 21:32:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Tue, 19 Mar 2019 21:33:44 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 19 Mar 2019 21:33:45 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 19 Mar 2019 21:33:45 GMT
VOLUME [/data]
# Tue, 19 Mar 2019 21:33:45 GMT
WORKDIR /data
# Tue, 19 Mar 2019 21:33:46 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Tue, 19 Mar 2019 21:33:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Mar 2019 21:33:46 GMT
EXPOSE 6379
# Tue, 19 Mar 2019 21:33:46 GMT
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
	-	`sha256:f4d05f269476b5ce9a684dbc4b9ff2f5b2ae615ebf08274f11156a8d1a176654`  
		Last Modified: Tue, 19 Mar 2019 21:38:49 GMT  
		Size: 11.8 MB (11782386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e747b51b85f180eec36b3c641574e97cd4035a3d515e32d67edf497d390975d`  
		Last Modified: Tue, 19 Mar 2019 21:38:47 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41406f9197834b5f39263344fcbb039b405eb69010c330f5a208c133315404f`  
		Last Modified: Tue, 19 Mar 2019 21:38:47 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
