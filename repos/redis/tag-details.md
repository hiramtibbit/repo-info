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
$ docker pull redis@sha256:0b4c4cf843bbb99671e28e114baed80b8f28aaabaadce083947331dac3bc6a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:07ddb34b10ab8ca274f8a47bec5a16a14785d12c351eaabe85da378e505df59f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39476756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e9873b381328b53d72c0e28416fff40b342e8c4c6d406ab1b058d0ef76e573d`
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
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 04:51:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 04:53:07 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:53:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:53:08 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:53:09 GMT
WORKDIR /data
# Wed, 08 May 2019 04:53:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:53:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:53:09 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:53:10 GMT
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
	-	`sha256:960f4c4000f558250fbc53921270ce97486a623f0a57d74513c4e7f55c4bbeed`  
		Last Modified: Wed, 08 May 2019 04:55:57 GMT  
		Size: 4.8 MB (4849444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0590010f184da2191190019ecf252ab92df40af5afe231a049fbbf992f03d155`  
		Last Modified: Wed, 08 May 2019 04:56:00 GMT  
		Size: 11.2 MB (11194338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2177df022a4b1e72275926b95ad6a23b42ffb74fcaf89302f3c0cc6e741f93`  
		Last Modified: Wed, 08 May 2019 04:55:56 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d08c0c8b033c2bad0f0511e4c806c906cea5b1948bd4d74167db1f1ee3fcdcc`  
		Last Modified: Wed, 08 May 2019 04:55:56 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:32bit-stretch`

```console
$ docker pull redis@sha256:0b4c4cf843bbb99671e28e114baed80b8f28aaabaadce083947331dac3bc6a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:07ddb34b10ab8ca274f8a47bec5a16a14785d12c351eaabe85da378e505df59f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39476756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e9873b381328b53d72c0e28416fff40b342e8c4c6d406ab1b058d0ef76e573d`
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
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 04:51:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 04:53:07 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:53:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:53:08 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:53:09 GMT
WORKDIR /data
# Wed, 08 May 2019 04:53:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:53:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:53:09 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:53:10 GMT
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
	-	`sha256:960f4c4000f558250fbc53921270ce97486a623f0a57d74513c4e7f55c4bbeed`  
		Last Modified: Wed, 08 May 2019 04:55:57 GMT  
		Size: 4.8 MB (4849444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0590010f184da2191190019ecf252ab92df40af5afe231a049fbbf992f03d155`  
		Last Modified: Wed, 08 May 2019 04:56:00 GMT  
		Size: 11.2 MB (11194338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2177df022a4b1e72275926b95ad6a23b42ffb74fcaf89302f3c0cc6e741f93`  
		Last Modified: Wed, 08 May 2019 04:55:56 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d08c0c8b033c2bad0f0511e4c806c906cea5b1948bd4d74167db1f1ee3fcdcc`  
		Last Modified: Wed, 08 May 2019 04:55:56 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:4`

```console
$ docker pull redis@sha256:2e82b9fc2c0396f6056b180743f5cf05219908b9e0c9e7046041588ebd1363d1
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
$ docker pull redis@sha256:31d05e0894a964609d42896d5645613642f9189d26c12796ccd08b1214618b7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29743071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e42d6f9b4441351a7c6956359c93d06c51019056e254b31b14286688e00aad9c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:32:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:33:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 19:36:52 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 19:36:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 19:36:58 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 19:41:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:41:49 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:41:50 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:41:53 GMT
WORKDIR /data
# Wed, 08 May 2019 19:41:55 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:41:57 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:41:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c417db3b6fef5fa03d3ab5269f6334eecfaf21aac24e90ccfb27616fdae4b81`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262a0c65662c006f0a35e36f0b9e354abe8843f584d789a8ab7211e4c514f0b3`  
		Last Modified: Wed, 08 May 2019 19:42:40 GMT  
		Size: 908.1 KB (908087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed9b86ffb2c2e6b20fffa6ec9e2c261d868f29ef0f09ec11478c8077bc91dd3`  
		Last Modified: Wed, 08 May 2019 19:43:12 GMT  
		Size: 8.5 MB (8498903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec43106f23ea38b7a17554661b162c57a1994cbf59f5177e6c39f4da24f5453`  
		Last Modified: Wed, 08 May 2019 19:43:08 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861a106a757b41728abd47e7cd2706ef017f8372320c41615f4b7c71c244a9c9`  
		Last Modified: Wed, 08 May 2019 19:43:08 GMT  
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
$ docker pull redis@sha256:2e82b9fc2c0396f6056b180743f5cf05219908b9e0c9e7046041588ebd1363d1
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
$ docker pull redis@sha256:31d05e0894a964609d42896d5645613642f9189d26c12796ccd08b1214618b7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29743071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e42d6f9b4441351a7c6956359c93d06c51019056e254b31b14286688e00aad9c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:32:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:33:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 19:36:52 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 19:36:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 19:36:58 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 19:41:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:41:49 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:41:50 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:41:53 GMT
WORKDIR /data
# Wed, 08 May 2019 19:41:55 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:41:57 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:41:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c417db3b6fef5fa03d3ab5269f6334eecfaf21aac24e90ccfb27616fdae4b81`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262a0c65662c006f0a35e36f0b9e354abe8843f584d789a8ab7211e4c514f0b3`  
		Last Modified: Wed, 08 May 2019 19:42:40 GMT  
		Size: 908.1 KB (908087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed9b86ffb2c2e6b20fffa6ec9e2c261d868f29ef0f09ec11478c8077bc91dd3`  
		Last Modified: Wed, 08 May 2019 19:43:12 GMT  
		Size: 8.5 MB (8498903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec43106f23ea38b7a17554661b162c57a1994cbf59f5177e6c39f4da24f5453`  
		Last Modified: Wed, 08 May 2019 19:43:08 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861a106a757b41728abd47e7cd2706ef017f8372320c41615f4b7c71c244a9c9`  
		Last Modified: Wed, 08 May 2019 19:43:08 GMT  
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
$ docker pull redis@sha256:2e82b9fc2c0396f6056b180743f5cf05219908b9e0c9e7046041588ebd1363d1
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
$ docker pull redis@sha256:31d05e0894a964609d42896d5645613642f9189d26c12796ccd08b1214618b7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29743071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e42d6f9b4441351a7c6956359c93d06c51019056e254b31b14286688e00aad9c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:32:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:33:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 19:36:52 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 19:36:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 19:36:58 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 19:41:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:41:49 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:41:50 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:41:53 GMT
WORKDIR /data
# Wed, 08 May 2019 19:41:55 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:41:57 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:41:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c417db3b6fef5fa03d3ab5269f6334eecfaf21aac24e90ccfb27616fdae4b81`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262a0c65662c006f0a35e36f0b9e354abe8843f584d789a8ab7211e4c514f0b3`  
		Last Modified: Wed, 08 May 2019 19:42:40 GMT  
		Size: 908.1 KB (908087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed9b86ffb2c2e6b20fffa6ec9e2c261d868f29ef0f09ec11478c8077bc91dd3`  
		Last Modified: Wed, 08 May 2019 19:43:12 GMT  
		Size: 8.5 MB (8498903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec43106f23ea38b7a17554661b162c57a1994cbf59f5177e6c39f4da24f5453`  
		Last Modified: Wed, 08 May 2019 19:43:08 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861a106a757b41728abd47e7cd2706ef017f8372320c41615f4b7c71c244a9c9`  
		Last Modified: Wed, 08 May 2019 19:43:08 GMT  
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
$ docker pull redis@sha256:31fbc2fc7174be58a0f27e62fa4ad9ea7471cb9d1d813bf712dddf5ee93587b4
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
$ docker pull redis@sha256:30db5924d0091bbe1988d319b6ef53342a101fc2365a18ccddf6e379938c62ca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13747570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa89c4339b2c2db0e3842d985ccdcfeac3dc988ebdea91ce78355455d53ae59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:20:35 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:20:40 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 12:24:48 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 12:24:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 12:24:51 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 12:26:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:26:21 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:26:22 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:26:23 GMT
WORKDIR /data
# Sat, 11 May 2019 12:26:23 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:26:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:26:25 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:26:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2bbc591442d67f5c6f1b59929eaab9c201bad200fa822ea07b7c9ee545f560`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedf954ee4011d466f4e0013d01503e2b3eb44afa0bf96a32410628ab18ed2e1`  
		Last Modified: Sat, 11 May 2019 12:27:38 GMT  
		Size: 406.0 KB (405994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73efaa40a1449e0669f0dad89dbce431af6732196d3c2f0f038531220e8a8eb5`  
		Last Modified: Sat, 11 May 2019 12:28:34 GMT  
		Size: 10.7 MB (10651034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf855721752de68c61ec65ef8f0df62c33188c1ee1ba9312bdcfd254bab151`  
		Last Modified: Sat, 11 May 2019 12:28:26 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1549d4ba60cfb0baf53fa7200b11a8b85c9a00ef7d95aaa275675ad99e2c735`  
		Last Modified: Sat, 11 May 2019 12:28:26 GMT  
		Size: 411.0 B  
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
$ docker pull redis@sha256:31fbc2fc7174be58a0f27e62fa4ad9ea7471cb9d1d813bf712dddf5ee93587b4
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
$ docker pull redis@sha256:30db5924d0091bbe1988d319b6ef53342a101fc2365a18ccddf6e379938c62ca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13747570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa89c4339b2c2db0e3842d985ccdcfeac3dc988ebdea91ce78355455d53ae59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:20:35 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:20:40 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 12:24:48 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 12:24:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 12:24:51 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 12:26:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:26:21 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:26:22 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:26:23 GMT
WORKDIR /data
# Sat, 11 May 2019 12:26:23 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:26:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:26:25 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:26:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2bbc591442d67f5c6f1b59929eaab9c201bad200fa822ea07b7c9ee545f560`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedf954ee4011d466f4e0013d01503e2b3eb44afa0bf96a32410628ab18ed2e1`  
		Last Modified: Sat, 11 May 2019 12:27:38 GMT  
		Size: 406.0 KB (405994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73efaa40a1449e0669f0dad89dbce431af6732196d3c2f0f038531220e8a8eb5`  
		Last Modified: Sat, 11 May 2019 12:28:34 GMT  
		Size: 10.7 MB (10651034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf855721752de68c61ec65ef8f0df62c33188c1ee1ba9312bdcfd254bab151`  
		Last Modified: Sat, 11 May 2019 12:28:26 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1549d4ba60cfb0baf53fa7200b11a8b85c9a00ef7d95aaa275675ad99e2c735`  
		Last Modified: Sat, 11 May 2019 12:28:26 GMT  
		Size: 411.0 B  
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
$ docker pull redis@sha256:2e82b9fc2c0396f6056b180743f5cf05219908b9e0c9e7046041588ebd1363d1
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
$ docker pull redis@sha256:31d05e0894a964609d42896d5645613642f9189d26c12796ccd08b1214618b7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29743071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e42d6f9b4441351a7c6956359c93d06c51019056e254b31b14286688e00aad9c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:32:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:33:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 19:36:52 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 19:36:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 19:36:58 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 19:41:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:41:49 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:41:50 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:41:53 GMT
WORKDIR /data
# Wed, 08 May 2019 19:41:55 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:41:57 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:41:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c417db3b6fef5fa03d3ab5269f6334eecfaf21aac24e90ccfb27616fdae4b81`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262a0c65662c006f0a35e36f0b9e354abe8843f584d789a8ab7211e4c514f0b3`  
		Last Modified: Wed, 08 May 2019 19:42:40 GMT  
		Size: 908.1 KB (908087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed9b86ffb2c2e6b20fffa6ec9e2c261d868f29ef0f09ec11478c8077bc91dd3`  
		Last Modified: Wed, 08 May 2019 19:43:12 GMT  
		Size: 8.5 MB (8498903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec43106f23ea38b7a17554661b162c57a1994cbf59f5177e6c39f4da24f5453`  
		Last Modified: Wed, 08 May 2019 19:43:08 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861a106a757b41728abd47e7cd2706ef017f8372320c41615f4b7c71c244a9c9`  
		Last Modified: Wed, 08 May 2019 19:43:08 GMT  
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
$ docker pull redis@sha256:31fbc2fc7174be58a0f27e62fa4ad9ea7471cb9d1d813bf712dddf5ee93587b4
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
$ docker pull redis@sha256:30db5924d0091bbe1988d319b6ef53342a101fc2365a18ccddf6e379938c62ca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13747570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa89c4339b2c2db0e3842d985ccdcfeac3dc988ebdea91ce78355455d53ae59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:20:35 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:20:40 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 12:24:48 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 12:24:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 12:24:51 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 12:26:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:26:21 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:26:22 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:26:23 GMT
WORKDIR /data
# Sat, 11 May 2019 12:26:23 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:26:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:26:25 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:26:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2bbc591442d67f5c6f1b59929eaab9c201bad200fa822ea07b7c9ee545f560`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedf954ee4011d466f4e0013d01503e2b3eb44afa0bf96a32410628ab18ed2e1`  
		Last Modified: Sat, 11 May 2019 12:27:38 GMT  
		Size: 406.0 KB (405994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73efaa40a1449e0669f0dad89dbce431af6732196d3c2f0f038531220e8a8eb5`  
		Last Modified: Sat, 11 May 2019 12:28:34 GMT  
		Size: 10.7 MB (10651034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf855721752de68c61ec65ef8f0df62c33188c1ee1ba9312bdcfd254bab151`  
		Last Modified: Sat, 11 May 2019 12:28:26 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1549d4ba60cfb0baf53fa7200b11a8b85c9a00ef7d95aaa275675ad99e2c735`  
		Last Modified: Sat, 11 May 2019 12:28:26 GMT  
		Size: 411.0 B  
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
$ docker pull redis@sha256:31fbc2fc7174be58a0f27e62fa4ad9ea7471cb9d1d813bf712dddf5ee93587b4
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
$ docker pull redis@sha256:30db5924d0091bbe1988d319b6ef53342a101fc2365a18ccddf6e379938c62ca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13747570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa89c4339b2c2db0e3842d985ccdcfeac3dc988ebdea91ce78355455d53ae59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:20:35 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:20:40 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 12:24:48 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 12:24:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 12:24:51 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 12:26:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:26:21 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:26:22 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:26:23 GMT
WORKDIR /data
# Sat, 11 May 2019 12:26:23 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:26:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:26:25 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:26:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2bbc591442d67f5c6f1b59929eaab9c201bad200fa822ea07b7c9ee545f560`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedf954ee4011d466f4e0013d01503e2b3eb44afa0bf96a32410628ab18ed2e1`  
		Last Modified: Sat, 11 May 2019 12:27:38 GMT  
		Size: 406.0 KB (405994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73efaa40a1449e0669f0dad89dbce431af6732196d3c2f0f038531220e8a8eb5`  
		Last Modified: Sat, 11 May 2019 12:28:34 GMT  
		Size: 10.7 MB (10651034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf855721752de68c61ec65ef8f0df62c33188c1ee1ba9312bdcfd254bab151`  
		Last Modified: Sat, 11 May 2019 12:28:26 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1549d4ba60cfb0baf53fa7200b11a8b85c9a00ef7d95aaa275675ad99e2c735`  
		Last Modified: Sat, 11 May 2019 12:28:26 GMT  
		Size: 411.0 B  
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
$ docker pull redis@sha256:2e82b9fc2c0396f6056b180743f5cf05219908b9e0c9e7046041588ebd1363d1
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
$ docker pull redis@sha256:31d05e0894a964609d42896d5645613642f9189d26c12796ccd08b1214618b7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29743071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e42d6f9b4441351a7c6956359c93d06c51019056e254b31b14286688e00aad9c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:32:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:33:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 19:36:52 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 19:36:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 19:36:58 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 19:41:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:41:49 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:41:50 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:41:53 GMT
WORKDIR /data
# Wed, 08 May 2019 19:41:55 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:41:57 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:41:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c417db3b6fef5fa03d3ab5269f6334eecfaf21aac24e90ccfb27616fdae4b81`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262a0c65662c006f0a35e36f0b9e354abe8843f584d789a8ab7211e4c514f0b3`  
		Last Modified: Wed, 08 May 2019 19:42:40 GMT  
		Size: 908.1 KB (908087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed9b86ffb2c2e6b20fffa6ec9e2c261d868f29ef0f09ec11478c8077bc91dd3`  
		Last Modified: Wed, 08 May 2019 19:43:12 GMT  
		Size: 8.5 MB (8498903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec43106f23ea38b7a17554661b162c57a1994cbf59f5177e6c39f4da24f5453`  
		Last Modified: Wed, 08 May 2019 19:43:08 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861a106a757b41728abd47e7cd2706ef017f8372320c41615f4b7c71c244a9c9`  
		Last Modified: Wed, 08 May 2019 19:43:08 GMT  
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
$ docker pull redis@sha256:31fbc2fc7174be58a0f27e62fa4ad9ea7471cb9d1d813bf712dddf5ee93587b4
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
$ docker pull redis@sha256:30db5924d0091bbe1988d319b6ef53342a101fc2365a18ccddf6e379938c62ca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13747570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa89c4339b2c2db0e3842d985ccdcfeac3dc988ebdea91ce78355455d53ae59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:20:35 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:20:40 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 12:24:48 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 12:24:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 12:24:51 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 12:26:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:26:21 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:26:22 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:26:23 GMT
WORKDIR /data
# Sat, 11 May 2019 12:26:23 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:26:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:26:25 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:26:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2bbc591442d67f5c6f1b59929eaab9c201bad200fa822ea07b7c9ee545f560`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedf954ee4011d466f4e0013d01503e2b3eb44afa0bf96a32410628ab18ed2e1`  
		Last Modified: Sat, 11 May 2019 12:27:38 GMT  
		Size: 406.0 KB (405994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73efaa40a1449e0669f0dad89dbce431af6732196d3c2f0f038531220e8a8eb5`  
		Last Modified: Sat, 11 May 2019 12:28:34 GMT  
		Size: 10.7 MB (10651034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf855721752de68c61ec65ef8f0df62c33188c1ee1ba9312bdcfd254bab151`  
		Last Modified: Sat, 11 May 2019 12:28:26 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1549d4ba60cfb0baf53fa7200b11a8b85c9a00ef7d95aaa275675ad99e2c735`  
		Last Modified: Sat, 11 May 2019 12:28:26 GMT  
		Size: 411.0 B  
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
$ docker pull redis@sha256:31fbc2fc7174be58a0f27e62fa4ad9ea7471cb9d1d813bf712dddf5ee93587b4
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
$ docker pull redis@sha256:30db5924d0091bbe1988d319b6ef53342a101fc2365a18ccddf6e379938c62ca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13747570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa89c4339b2c2db0e3842d985ccdcfeac3dc988ebdea91ce78355455d53ae59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:20:35 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:20:40 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 12:24:48 GMT
ENV REDIS_VERSION=4.0.14
# Sat, 11 May 2019 12:24:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Sat, 11 May 2019 12:24:51 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Sat, 11 May 2019 12:26:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:26:21 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:26:22 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:26:23 GMT
WORKDIR /data
# Sat, 11 May 2019 12:26:23 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:26:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:26:25 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:26:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2bbc591442d67f5c6f1b59929eaab9c201bad200fa822ea07b7c9ee545f560`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedf954ee4011d466f4e0013d01503e2b3eb44afa0bf96a32410628ab18ed2e1`  
		Last Modified: Sat, 11 May 2019 12:27:38 GMT  
		Size: 406.0 KB (405994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73efaa40a1449e0669f0dad89dbce431af6732196d3c2f0f038531220e8a8eb5`  
		Last Modified: Sat, 11 May 2019 12:28:34 GMT  
		Size: 10.7 MB (10651034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf855721752de68c61ec65ef8f0df62c33188c1ee1ba9312bdcfd254bab151`  
		Last Modified: Sat, 11 May 2019 12:28:26 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1549d4ba60cfb0baf53fa7200b11a8b85c9a00ef7d95aaa275675ad99e2c735`  
		Last Modified: Sat, 11 May 2019 12:28:26 GMT  
		Size: 411.0 B  
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
$ docker pull redis@sha256:2e82b9fc2c0396f6056b180743f5cf05219908b9e0c9e7046041588ebd1363d1
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
$ docker pull redis@sha256:31d05e0894a964609d42896d5645613642f9189d26c12796ccd08b1214618b7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29743071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e42d6f9b4441351a7c6956359c93d06c51019056e254b31b14286688e00aad9c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:32:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:33:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 19:36:52 GMT
ENV REDIS_VERSION=4.0.14
# Wed, 08 May 2019 19:36:55 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.14.tar.gz
# Wed, 08 May 2019 19:36:58 GMT
ENV REDIS_DOWNLOAD_SHA=1e1e18420a86cfb285933123b04a82e1ebda20bfb0a289472745a087587e93a7
# Wed, 08 May 2019 19:41:44 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:41:49 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:41:50 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:41:53 GMT
WORKDIR /data
# Wed, 08 May 2019 19:41:55 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:41:57 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:41:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c417db3b6fef5fa03d3ab5269f6334eecfaf21aac24e90ccfb27616fdae4b81`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262a0c65662c006f0a35e36f0b9e354abe8843f584d789a8ab7211e4c514f0b3`  
		Last Modified: Wed, 08 May 2019 19:42:40 GMT  
		Size: 908.1 KB (908087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed9b86ffb2c2e6b20fffa6ec9e2c261d868f29ef0f09ec11478c8077bc91dd3`  
		Last Modified: Wed, 08 May 2019 19:43:12 GMT  
		Size: 8.5 MB (8498903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec43106f23ea38b7a17554661b162c57a1994cbf59f5177e6c39f4da24f5453`  
		Last Modified: Wed, 08 May 2019 19:43:08 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861a106a757b41728abd47e7cd2706ef017f8372320c41615f4b7c71c244a9c9`  
		Last Modified: Wed, 08 May 2019 19:43:08 GMT  
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
$ docker pull redis@sha256:2dfa6432744659268d001d16c39f7be52ee73ef7e1001ff80643f0f7bdee117e
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
$ docker pull redis@sha256:82ac0e8f4f2cb5db18714b726febea6de9666ad9d9ad6f62f433f073bc3048f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35215350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fe14ff19812e816e1b21f7daa5fa25ab9bff4365252fe38d8eef4bdf1150ee`
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
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 04:51:03 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:51:04 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:51:04 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:51:04 GMT
WORKDIR /data
# Wed, 08 May 2019 04:51:04 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:51:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:51:05 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:51:05 GMT
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
	-	`sha256:98afd60e45e486761d7af1e91f6ec18833e5f3d1996b89efc7e77d99a2346324`  
		Last Modified: Wed, 08 May 2019 04:55:47 GMT  
		Size: 11.8 MB (11782379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495c87fda8597a435f2f0e2b03678a30834a84b35038e5fa2976268e0408f6df`  
		Last Modified: Wed, 08 May 2019 04:55:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed676785841677297b27a68be0b5358106bcb4136e5d393b1b1655d563d0afca`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; arm variant v5

```console
$ docker pull redis@sha256:84569312082422dc1d8e3de786232d0c02785ee2b2763e4590bfc95474feb8f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33535203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2a0a484cdb7f9445da8ff1f4c81bc29cffd3f27840d1b0fdbb2fb27f1b9c96`
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
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 09:46:33 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 09:46:34 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 09:46:34 GMT
VOLUME [/data]
# Wed, 08 May 2019 09:46:35 GMT
WORKDIR /data
# Wed, 08 May 2019 09:46:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 09:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 09:46:36 GMT
EXPOSE 6379
# Wed, 08 May 2019 09:46:37 GMT
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
	-	`sha256:377b34ce418aa6f727f895c814df11520097257efe400aff206ee25adee76316`  
		Last Modified: Wed, 08 May 2019 09:47:48 GMT  
		Size: 11.4 MB (11445861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3aba87501f3bdfdc69c75d102b55d3ac29b4fd641b0831756b1276467fd1215`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3c93d64dc3ddb49669e7c3f0c13e80e5e297c0823654f0aeca23153f7d6a17`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; arm variant v7

```console
$ docker pull redis@sha256:4574b95d794a232a3b0fd35a7468b0c4793b904e9ba5a754859fa5791d20901c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31333365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eca94f5741f6aa607494482a9416117fef5f86b99c7383fa4ff02ee505c2661`
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
# Wed, 08 May 2019 14:54:32 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 14:54:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 14:54:33 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:55:34 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:55:38 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:55:39 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:55:39 GMT
WORKDIR /data
# Wed, 08 May 2019 14:55:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:55:41 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:55:42 GMT
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
	-	`sha256:5d68aa0d67ad92f6a0ae85ded8d62301312a2ae372ec9ed42e8ae31c48b221d8`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 11.1 MB (11139036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bed5b6abf638a3ae727eea5f93cc44c4112a5911c90f077e08e97c180c38e08`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9591faf9a9a8e580237305eed699371f075e14dd925482e2f041ef9eed4df1`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:fa04d74cc975e9a6e66542ab3f84292075f16f05d239aa67cfb171c4b0c483f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32828249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61ab367aee1be0fd630916c650fc5ea7ea963f77eb815be618ddf7bb906284d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:32:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:33:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 19:33:38 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 19:33:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 19:33:39 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 19:36:12 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:36:15 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:36:16 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:36:18 GMT
WORKDIR /data
# Wed, 08 May 2019 19:36:19 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:36:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:36:21 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:36:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c417db3b6fef5fa03d3ab5269f6334eecfaf21aac24e90ccfb27616fdae4b81`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262a0c65662c006f0a35e36f0b9e354abe8843f584d789a8ab7211e4c514f0b3`  
		Last Modified: Wed, 08 May 2019 19:42:40 GMT  
		Size: 908.1 KB (908087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36db11a6661e8a7174d7bc8fb5952efa16124c8d3b6bae8f169fde5fb2989f22`  
		Last Modified: Wed, 08 May 2019 19:42:45 GMT  
		Size: 11.6 MB (11584081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d8b93264803c65859edcca29f57553c9c68b63103d99fe2dafe3c53c3157f1`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9148e44a67e56fb812bf5278c1fe1623f9d3e5cc0c7c50982bc538133ffbd2`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; 386

```console
$ docker pull redis@sha256:4e7424771cb251675ca03a436ec5341a8adcf1cb625fa44f6e7db1c1799c8b84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35232467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fb641b7565e516df7592c570101d9e05579b498cc4a3921a6069d56ff380bc`
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
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 19:28:33 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:28:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:28:33 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:28:34 GMT
WORKDIR /data
# Wed, 08 May 2019 19:28:34 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:28:34 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:28:34 GMT
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
	-	`sha256:89e4b721bf5244e84393fc827b80f3de96c2c424da7980f73025e767139dd872`  
		Last Modified: Wed, 08 May 2019 19:29:43 GMT  
		Size: 11.2 MB (11189205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ac5302bbee4bf8de96dbc90a4fcf419a600612aa894d938c4e0fcaf4d89c46`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e5333b2af74ba6dfba85bacaacf030d745a49abf8977104f74555b00dcbe95`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; ppc64le

```console
$ docker pull redis@sha256:1a1170b855fa1f04a159d01867480c11a0c2bf36bcf9d5351403d4f65b4e9c6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35632061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cad3e8b56fb997a6de849983526b725d4da2c1ea2282a60857cfb64a3f423e3`
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
# Wed, 08 May 2019 13:57:21 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 13:57:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 13:57:34 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:02:22 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:02:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:02:47 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:02:54 GMT
WORKDIR /data
# Wed, 08 May 2019 14:02:57 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:03:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:03:10 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:03:17 GMT
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
	-	`sha256:46dd66674bf3eda5456e0003072a2604f53ec283b233d1f7b888c16803f37a50`  
		Last Modified: Wed, 08 May 2019 14:09:41 GMT  
		Size: 12.0 MB (11974749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f5b5169ee152e631bdad74726bc86f80a1cc9c4fd319d1730229728c86913c`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88b79c0efed44abcd5d926b91926dcfad216e9c1b20a38387e3d123566410bd`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5` - linux; s390x

```console
$ docker pull redis@sha256:18d0db45b0310f177739b5361daa4ca3f67063ef3cd148527fb654ca8e5dd746
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35506219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:349668c96c4dda3a742fa2b4cbd3d9d94d073cfb93fa9b98daef555a288a4c90`
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
# Wed, 08 May 2019 14:39:39 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 14:39:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 14:39:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:42:34 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:42:37 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:42:39 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:42:40 GMT
WORKDIR /data
# Wed, 08 May 2019 14:42:41 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:42:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:42:45 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:42:46 GMT
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
	-	`sha256:a4450b9037bba96daa422b9b12579ad9786713caf6d7f1d46ffc8d3809aaaa6d`  
		Last Modified: Wed, 08 May 2019 14:46:59 GMT  
		Size: 12.2 MB (12238116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00efd50a9bb811b74d01717cb4ae9f31c8163fe1d10d93cb6023890266defee5`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80df131c81c1a6db961b53da0aeb2ec99a62f6c4e17d79b0611bcb76d531d4fe`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0`

```console
$ docker pull redis@sha256:2dfa6432744659268d001d16c39f7be52ee73ef7e1001ff80643f0f7bdee117e
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
$ docker pull redis@sha256:82ac0e8f4f2cb5db18714b726febea6de9666ad9d9ad6f62f433f073bc3048f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35215350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fe14ff19812e816e1b21f7daa5fa25ab9bff4365252fe38d8eef4bdf1150ee`
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
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 04:51:03 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:51:04 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:51:04 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:51:04 GMT
WORKDIR /data
# Wed, 08 May 2019 04:51:04 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:51:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:51:05 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:51:05 GMT
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
	-	`sha256:98afd60e45e486761d7af1e91f6ec18833e5f3d1996b89efc7e77d99a2346324`  
		Last Modified: Wed, 08 May 2019 04:55:47 GMT  
		Size: 11.8 MB (11782379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495c87fda8597a435f2f0e2b03678a30834a84b35038e5fa2976268e0408f6df`  
		Last Modified: Wed, 08 May 2019 04:55:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed676785841677297b27a68be0b5358106bcb4136e5d393b1b1655d563d0afca`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; arm variant v5

```console
$ docker pull redis@sha256:84569312082422dc1d8e3de786232d0c02785ee2b2763e4590bfc95474feb8f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33535203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2a0a484cdb7f9445da8ff1f4c81bc29cffd3f27840d1b0fdbb2fb27f1b9c96`
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
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 09:46:33 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 09:46:34 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 09:46:34 GMT
VOLUME [/data]
# Wed, 08 May 2019 09:46:35 GMT
WORKDIR /data
# Wed, 08 May 2019 09:46:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 09:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 09:46:36 GMT
EXPOSE 6379
# Wed, 08 May 2019 09:46:37 GMT
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
	-	`sha256:377b34ce418aa6f727f895c814df11520097257efe400aff206ee25adee76316`  
		Last Modified: Wed, 08 May 2019 09:47:48 GMT  
		Size: 11.4 MB (11445861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3aba87501f3bdfdc69c75d102b55d3ac29b4fd641b0831756b1276467fd1215`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3c93d64dc3ddb49669e7c3f0c13e80e5e297c0823654f0aeca23153f7d6a17`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; arm variant v7

```console
$ docker pull redis@sha256:4574b95d794a232a3b0fd35a7468b0c4793b904e9ba5a754859fa5791d20901c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31333365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eca94f5741f6aa607494482a9416117fef5f86b99c7383fa4ff02ee505c2661`
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
# Wed, 08 May 2019 14:54:32 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 14:54:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 14:54:33 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:55:34 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:55:38 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:55:39 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:55:39 GMT
WORKDIR /data
# Wed, 08 May 2019 14:55:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:55:41 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:55:42 GMT
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
	-	`sha256:5d68aa0d67ad92f6a0ae85ded8d62301312a2ae372ec9ed42e8ae31c48b221d8`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 11.1 MB (11139036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bed5b6abf638a3ae727eea5f93cc44c4112a5911c90f077e08e97c180c38e08`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9591faf9a9a8e580237305eed699371f075e14dd925482e2f041ef9eed4df1`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:fa04d74cc975e9a6e66542ab3f84292075f16f05d239aa67cfb171c4b0c483f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32828249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61ab367aee1be0fd630916c650fc5ea7ea963f77eb815be618ddf7bb906284d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:32:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:33:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 19:33:38 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 19:33:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 19:33:39 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 19:36:12 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:36:15 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:36:16 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:36:18 GMT
WORKDIR /data
# Wed, 08 May 2019 19:36:19 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:36:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:36:21 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:36:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c417db3b6fef5fa03d3ab5269f6334eecfaf21aac24e90ccfb27616fdae4b81`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262a0c65662c006f0a35e36f0b9e354abe8843f584d789a8ab7211e4c514f0b3`  
		Last Modified: Wed, 08 May 2019 19:42:40 GMT  
		Size: 908.1 KB (908087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36db11a6661e8a7174d7bc8fb5952efa16124c8d3b6bae8f169fde5fb2989f22`  
		Last Modified: Wed, 08 May 2019 19:42:45 GMT  
		Size: 11.6 MB (11584081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d8b93264803c65859edcca29f57553c9c68b63103d99fe2dafe3c53c3157f1`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9148e44a67e56fb812bf5278c1fe1623f9d3e5cc0c7c50982bc538133ffbd2`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; 386

```console
$ docker pull redis@sha256:4e7424771cb251675ca03a436ec5341a8adcf1cb625fa44f6e7db1c1799c8b84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35232467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fb641b7565e516df7592c570101d9e05579b498cc4a3921a6069d56ff380bc`
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
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 19:28:33 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:28:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:28:33 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:28:34 GMT
WORKDIR /data
# Wed, 08 May 2019 19:28:34 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:28:34 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:28:34 GMT
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
	-	`sha256:89e4b721bf5244e84393fc827b80f3de96c2c424da7980f73025e767139dd872`  
		Last Modified: Wed, 08 May 2019 19:29:43 GMT  
		Size: 11.2 MB (11189205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ac5302bbee4bf8de96dbc90a4fcf419a600612aa894d938c4e0fcaf4d89c46`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e5333b2af74ba6dfba85bacaacf030d745a49abf8977104f74555b00dcbe95`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; ppc64le

```console
$ docker pull redis@sha256:1a1170b855fa1f04a159d01867480c11a0c2bf36bcf9d5351403d4f65b4e9c6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35632061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cad3e8b56fb997a6de849983526b725d4da2c1ea2282a60857cfb64a3f423e3`
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
# Wed, 08 May 2019 13:57:21 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 13:57:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 13:57:34 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:02:22 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:02:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:02:47 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:02:54 GMT
WORKDIR /data
# Wed, 08 May 2019 14:02:57 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:03:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:03:10 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:03:17 GMT
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
	-	`sha256:46dd66674bf3eda5456e0003072a2604f53ec283b233d1f7b888c16803f37a50`  
		Last Modified: Wed, 08 May 2019 14:09:41 GMT  
		Size: 12.0 MB (11974749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f5b5169ee152e631bdad74726bc86f80a1cc9c4fd319d1730229728c86913c`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88b79c0efed44abcd5d926b91926dcfad216e9c1b20a38387e3d123566410bd`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0` - linux; s390x

```console
$ docker pull redis@sha256:18d0db45b0310f177739b5361daa4ca3f67063ef3cd148527fb654ca8e5dd746
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35506219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:349668c96c4dda3a742fa2b4cbd3d9d94d073cfb93fa9b98daef555a288a4c90`
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
# Wed, 08 May 2019 14:39:39 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 14:39:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 14:39:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:42:34 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:42:37 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:42:39 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:42:40 GMT
WORKDIR /data
# Wed, 08 May 2019 14:42:41 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:42:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:42:45 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:42:46 GMT
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
	-	`sha256:a4450b9037bba96daa422b9b12579ad9786713caf6d7f1d46ffc8d3809aaaa6d`  
		Last Modified: Wed, 08 May 2019 14:46:59 GMT  
		Size: 12.2 MB (12238116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00efd50a9bb811b74d01717cb4ae9f31c8163fe1d10d93cb6023890266defee5`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80df131c81c1a6db961b53da0aeb2ec99a62f6c4e17d79b0611bcb76d531d4fe`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-32bit`

```console
$ docker pull redis@sha256:0b4c4cf843bbb99671e28e114baed80b8f28aaabaadce083947331dac3bc6a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-32bit` - linux; amd64

```console
$ docker pull redis@sha256:07ddb34b10ab8ca274f8a47bec5a16a14785d12c351eaabe85da378e505df59f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39476756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e9873b381328b53d72c0e28416fff40b342e8c4c6d406ab1b058d0ef76e573d`
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
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 04:51:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 04:53:07 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:53:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:53:08 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:53:09 GMT
WORKDIR /data
# Wed, 08 May 2019 04:53:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:53:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:53:09 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:53:10 GMT
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
	-	`sha256:960f4c4000f558250fbc53921270ce97486a623f0a57d74513c4e7f55c4bbeed`  
		Last Modified: Wed, 08 May 2019 04:55:57 GMT  
		Size: 4.8 MB (4849444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0590010f184da2191190019ecf252ab92df40af5afe231a049fbbf992f03d155`  
		Last Modified: Wed, 08 May 2019 04:56:00 GMT  
		Size: 11.2 MB (11194338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2177df022a4b1e72275926b95ad6a23b42ffb74fcaf89302f3c0cc6e741f93`  
		Last Modified: Wed, 08 May 2019 04:55:56 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d08c0c8b033c2bad0f0511e4c806c906cea5b1948bd4d74167db1f1ee3fcdcc`  
		Last Modified: Wed, 08 May 2019 04:55:56 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-32bit-stretch`

```console
$ docker pull redis@sha256:0b4c4cf843bbb99671e28e114baed80b8f28aaabaadce083947331dac3bc6a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:07ddb34b10ab8ca274f8a47bec5a16a14785d12c351eaabe85da378e505df59f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39476756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e9873b381328b53d72c0e28416fff40b342e8c4c6d406ab1b058d0ef76e573d`
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
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 04:51:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 04:53:07 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:53:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:53:08 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:53:09 GMT
WORKDIR /data
# Wed, 08 May 2019 04:53:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:53:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:53:09 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:53:10 GMT
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
	-	`sha256:960f4c4000f558250fbc53921270ce97486a623f0a57d74513c4e7f55c4bbeed`  
		Last Modified: Wed, 08 May 2019 04:55:57 GMT  
		Size: 4.8 MB (4849444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0590010f184da2191190019ecf252ab92df40af5afe231a049fbbf992f03d155`  
		Last Modified: Wed, 08 May 2019 04:56:00 GMT  
		Size: 11.2 MB (11194338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2177df022a4b1e72275926b95ad6a23b42ffb74fcaf89302f3c0cc6e741f93`  
		Last Modified: Wed, 08 May 2019 04:55:56 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d08c0c8b033c2bad0f0511e4c806c906cea5b1948bd4d74167db1f1ee3fcdcc`  
		Last Modified: Wed, 08 May 2019 04:55:56 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.4`

```console
$ docker pull redis@sha256:2dfa6432744659268d001d16c39f7be52ee73ef7e1001ff80643f0f7bdee117e
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

### `redis:5.0.4` - linux; amd64

```console
$ docker pull redis@sha256:82ac0e8f4f2cb5db18714b726febea6de9666ad9d9ad6f62f433f073bc3048f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35215350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fe14ff19812e816e1b21f7daa5fa25ab9bff4365252fe38d8eef4bdf1150ee`
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
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 04:51:03 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:51:04 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:51:04 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:51:04 GMT
WORKDIR /data
# Wed, 08 May 2019 04:51:04 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:51:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:51:05 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:51:05 GMT
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
	-	`sha256:98afd60e45e486761d7af1e91f6ec18833e5f3d1996b89efc7e77d99a2346324`  
		Last Modified: Wed, 08 May 2019 04:55:47 GMT  
		Size: 11.8 MB (11782379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495c87fda8597a435f2f0e2b03678a30834a84b35038e5fa2976268e0408f6df`  
		Last Modified: Wed, 08 May 2019 04:55:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed676785841677297b27a68be0b5358106bcb4136e5d393b1b1655d563d0afca`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4` - linux; arm variant v5

```console
$ docker pull redis@sha256:84569312082422dc1d8e3de786232d0c02785ee2b2763e4590bfc95474feb8f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33535203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2a0a484cdb7f9445da8ff1f4c81bc29cffd3f27840d1b0fdbb2fb27f1b9c96`
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
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 09:46:33 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 09:46:34 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 09:46:34 GMT
VOLUME [/data]
# Wed, 08 May 2019 09:46:35 GMT
WORKDIR /data
# Wed, 08 May 2019 09:46:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 09:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 09:46:36 GMT
EXPOSE 6379
# Wed, 08 May 2019 09:46:37 GMT
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
	-	`sha256:377b34ce418aa6f727f895c814df11520097257efe400aff206ee25adee76316`  
		Last Modified: Wed, 08 May 2019 09:47:48 GMT  
		Size: 11.4 MB (11445861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3aba87501f3bdfdc69c75d102b55d3ac29b4fd641b0831756b1276467fd1215`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3c93d64dc3ddb49669e7c3f0c13e80e5e297c0823654f0aeca23153f7d6a17`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4` - linux; arm variant v7

```console
$ docker pull redis@sha256:4574b95d794a232a3b0fd35a7468b0c4793b904e9ba5a754859fa5791d20901c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31333365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eca94f5741f6aa607494482a9416117fef5f86b99c7383fa4ff02ee505c2661`
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
# Wed, 08 May 2019 14:54:32 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 14:54:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 14:54:33 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:55:34 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:55:38 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:55:39 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:55:39 GMT
WORKDIR /data
# Wed, 08 May 2019 14:55:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:55:41 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:55:42 GMT
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
	-	`sha256:5d68aa0d67ad92f6a0ae85ded8d62301312a2ae372ec9ed42e8ae31c48b221d8`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 11.1 MB (11139036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bed5b6abf638a3ae727eea5f93cc44c4112a5911c90f077e08e97c180c38e08`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9591faf9a9a8e580237305eed699371f075e14dd925482e2f041ef9eed4df1`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:fa04d74cc975e9a6e66542ab3f84292075f16f05d239aa67cfb171c4b0c483f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32828249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61ab367aee1be0fd630916c650fc5ea7ea963f77eb815be618ddf7bb906284d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:32:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:33:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 19:33:38 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 19:33:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 19:33:39 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 19:36:12 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:36:15 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:36:16 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:36:18 GMT
WORKDIR /data
# Wed, 08 May 2019 19:36:19 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:36:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:36:21 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:36:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c417db3b6fef5fa03d3ab5269f6334eecfaf21aac24e90ccfb27616fdae4b81`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262a0c65662c006f0a35e36f0b9e354abe8843f584d789a8ab7211e4c514f0b3`  
		Last Modified: Wed, 08 May 2019 19:42:40 GMT  
		Size: 908.1 KB (908087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36db11a6661e8a7174d7bc8fb5952efa16124c8d3b6bae8f169fde5fb2989f22`  
		Last Modified: Wed, 08 May 2019 19:42:45 GMT  
		Size: 11.6 MB (11584081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d8b93264803c65859edcca29f57553c9c68b63103d99fe2dafe3c53c3157f1`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9148e44a67e56fb812bf5278c1fe1623f9d3e5cc0c7c50982bc538133ffbd2`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4` - linux; 386

```console
$ docker pull redis@sha256:4e7424771cb251675ca03a436ec5341a8adcf1cb625fa44f6e7db1c1799c8b84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35232467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fb641b7565e516df7592c570101d9e05579b498cc4a3921a6069d56ff380bc`
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
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 19:28:33 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:28:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:28:33 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:28:34 GMT
WORKDIR /data
# Wed, 08 May 2019 19:28:34 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:28:34 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:28:34 GMT
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
	-	`sha256:89e4b721bf5244e84393fc827b80f3de96c2c424da7980f73025e767139dd872`  
		Last Modified: Wed, 08 May 2019 19:29:43 GMT  
		Size: 11.2 MB (11189205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ac5302bbee4bf8de96dbc90a4fcf419a600612aa894d938c4e0fcaf4d89c46`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e5333b2af74ba6dfba85bacaacf030d745a49abf8977104f74555b00dcbe95`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4` - linux; ppc64le

```console
$ docker pull redis@sha256:1a1170b855fa1f04a159d01867480c11a0c2bf36bcf9d5351403d4f65b4e9c6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35632061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cad3e8b56fb997a6de849983526b725d4da2c1ea2282a60857cfb64a3f423e3`
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
# Wed, 08 May 2019 13:57:21 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 13:57:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 13:57:34 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:02:22 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:02:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:02:47 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:02:54 GMT
WORKDIR /data
# Wed, 08 May 2019 14:02:57 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:03:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:03:10 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:03:17 GMT
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
	-	`sha256:46dd66674bf3eda5456e0003072a2604f53ec283b233d1f7b888c16803f37a50`  
		Last Modified: Wed, 08 May 2019 14:09:41 GMT  
		Size: 12.0 MB (11974749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f5b5169ee152e631bdad74726bc86f80a1cc9c4fd319d1730229728c86913c`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88b79c0efed44abcd5d926b91926dcfad216e9c1b20a38387e3d123566410bd`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4` - linux; s390x

```console
$ docker pull redis@sha256:18d0db45b0310f177739b5361daa4ca3f67063ef3cd148527fb654ca8e5dd746
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35506219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:349668c96c4dda3a742fa2b4cbd3d9d94d073cfb93fa9b98daef555a288a4c90`
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
# Wed, 08 May 2019 14:39:39 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 14:39:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 14:39:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:42:34 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:42:37 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:42:39 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:42:40 GMT
WORKDIR /data
# Wed, 08 May 2019 14:42:41 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:42:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:42:45 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:42:46 GMT
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
	-	`sha256:a4450b9037bba96daa422b9b12579ad9786713caf6d7f1d46ffc8d3809aaaa6d`  
		Last Modified: Wed, 08 May 2019 14:46:59 GMT  
		Size: 12.2 MB (12238116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00efd50a9bb811b74d01717cb4ae9f31c8163fe1d10d93cb6023890266defee5`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80df131c81c1a6db961b53da0aeb2ec99a62f6c4e17d79b0611bcb76d531d4fe`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.4-32bit`

```console
$ docker pull redis@sha256:0b4c4cf843bbb99671e28e114baed80b8f28aaabaadce083947331dac3bc6a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.4-32bit` - linux; amd64

```console
$ docker pull redis@sha256:07ddb34b10ab8ca274f8a47bec5a16a14785d12c351eaabe85da378e505df59f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39476756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e9873b381328b53d72c0e28416fff40b342e8c4c6d406ab1b058d0ef76e573d`
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
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 04:51:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 04:53:07 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:53:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:53:08 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:53:09 GMT
WORKDIR /data
# Wed, 08 May 2019 04:53:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:53:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:53:09 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:53:10 GMT
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
	-	`sha256:960f4c4000f558250fbc53921270ce97486a623f0a57d74513c4e7f55c4bbeed`  
		Last Modified: Wed, 08 May 2019 04:55:57 GMT  
		Size: 4.8 MB (4849444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0590010f184da2191190019ecf252ab92df40af5afe231a049fbbf992f03d155`  
		Last Modified: Wed, 08 May 2019 04:56:00 GMT  
		Size: 11.2 MB (11194338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2177df022a4b1e72275926b95ad6a23b42ffb74fcaf89302f3c0cc6e741f93`  
		Last Modified: Wed, 08 May 2019 04:55:56 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d08c0c8b033c2bad0f0511e4c806c906cea5b1948bd4d74167db1f1ee3fcdcc`  
		Last Modified: Wed, 08 May 2019 04:55:56 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.4-32bit-stretch`

```console
$ docker pull redis@sha256:0b4c4cf843bbb99671e28e114baed80b8f28aaabaadce083947331dac3bc6a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5.0.4-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:07ddb34b10ab8ca274f8a47bec5a16a14785d12c351eaabe85da378e505df59f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39476756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e9873b381328b53d72c0e28416fff40b342e8c4c6d406ab1b058d0ef76e573d`
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
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 04:51:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 04:53:07 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:53:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:53:08 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:53:09 GMT
WORKDIR /data
# Wed, 08 May 2019 04:53:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:53:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:53:09 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:53:10 GMT
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
	-	`sha256:960f4c4000f558250fbc53921270ce97486a623f0a57d74513c4e7f55c4bbeed`  
		Last Modified: Wed, 08 May 2019 04:55:57 GMT  
		Size: 4.8 MB (4849444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0590010f184da2191190019ecf252ab92df40af5afe231a049fbbf992f03d155`  
		Last Modified: Wed, 08 May 2019 04:56:00 GMT  
		Size: 11.2 MB (11194338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2177df022a4b1e72275926b95ad6a23b42ffb74fcaf89302f3c0cc6e741f93`  
		Last Modified: Wed, 08 May 2019 04:55:56 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d08c0c8b033c2bad0f0511e4c806c906cea5b1948bd4d74167db1f1ee3fcdcc`  
		Last Modified: Wed, 08 May 2019 04:55:56 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.4-alpine`

```console
$ docker pull redis@sha256:c8d2a155166857e772e5389a44f2c9cbdabc7e7500123fdb9a04b5181b9756b8
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

### `redis:5.0.4-alpine` - linux; amd64

```console
$ docker pull redis@sha256:8205a681aa6eea2b0c27249894def02a14ff2cbe9fc78e83d62ad04d1180deb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17767533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:631bf69df08e11fff62ae65c901ba312618056a197b8e44a8c8b5a14e19599f2`
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
# Sat, 11 May 2019 01:43:52 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 01:43:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 01:43:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 01:45:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 01:45:44 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 01:45:45 GMT
VOLUME [/data]
# Sat, 11 May 2019 01:45:45 GMT
WORKDIR /data
# Sat, 11 May 2019 01:45:45 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 01:45:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:45:46 GMT
EXPOSE 6379
# Sat, 11 May 2019 01:45:46 GMT
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
	-	`sha256:bd01e7204bc2e6511d76700eae62c49824b429140735ce33c26ec5cf7cd2fd08`  
		Last Modified: Sat, 11 May 2019 01:48:21 GMT  
		Size: 14.6 MB (14604899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3250e649335b95bc1de7ab27c52ca193d65d443aebb81d0b41a93c3cebcd8fe1`  
		Last Modified: Sat, 11 May 2019 01:48:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4e8d78e015de17d85dccd54bb6fcae57e89d1840062fc71b8f6cf97d34be64`  
		Last Modified: Sat, 11 May 2019 01:48:14 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:fa9576eb0d73ee083b7084aa85e4cee76a1c2918c2763d72565e53bb5e83ca76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17145147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e55d12121b6706bac8400b69524c5f7b66151b892fe4357790930b36355d8710`
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
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 08:30:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 08:30:15 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 08:30:15 GMT
VOLUME [/data]
# Sat, 11 May 2019 08:30:16 GMT
WORKDIR /data
# Sat, 11 May 2019 08:30:17 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 08:30:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:30:17 GMT
EXPOSE 6379
# Sat, 11 May 2019 08:30:18 GMT
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
	-	`sha256:faa590537db896f7dbd59eefa136b0b4ec5fde41ed935c55766e4c1fc3dd4bd0`  
		Last Modified: Sat, 11 May 2019 08:31:13 GMT  
		Size: 14.2 MB (14193661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad25456d273d355a363facc212c03553f592d3294d4c668dcb9d760771406786`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fbeb570419e4c2bcd05116800b7e346150a94789b074c6a3bd074e8bdac81b`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:86ead9df3c076636361c768b7867ca8218ee7e33a08a59120079d3717bf517a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16695218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f14051796eac5c87272605b003e27c14d0931343d0e6a19663992e882d3c44`
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
# Sat, 11 May 2019 12:44:06 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 12:44:06 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 12:44:07 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 12:44:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:44:53 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:44:53 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:44:54 GMT
WORKDIR /data
# Sat, 11 May 2019 12:44:54 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:44:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:44:55 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:44:56 GMT
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
	-	`sha256:d4602ba16023ffa9bfcae68c957eabe7e2c2033db311272302ae47e81dc76fba`  
		Last Modified: Sat, 11 May 2019 12:46:11 GMT  
		Size: 13.9 MB (13942626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc179faa7a69c3f71a476937b9317ea0d372a8bb5ea5a152ba3efafff02f21fa`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed8a8a5680ba28b4c0046fe05884d18d251fba7a176c9462d6c7b8cf7a513b2`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:481163e642606e2b797e1fa944d8dd7578562068101e196d3b8130726c2e733d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17606493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120bbe7d80ce44b20582f048319ce9e54337ca73aaecab166a95d8c4f37f7f46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:20:35 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:20:40 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 12:20:42 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 12:20:43 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 12:20:44 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 12:24:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:24:18 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:24:20 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:24:21 GMT
WORKDIR /data
# Sat, 11 May 2019 12:24:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:24:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:24:25 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:24:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2bbc591442d67f5c6f1b59929eaab9c201bad200fa822ea07b7c9ee545f560`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedf954ee4011d466f4e0013d01503e2b3eb44afa0bf96a32410628ab18ed2e1`  
		Last Modified: Sat, 11 May 2019 12:27:38 GMT  
		Size: 406.0 KB (405994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e9d4f1599b3a8f1b1789b8fcb095a2d455fd061f22e22764cd250add1e8403`  
		Last Modified: Sat, 11 May 2019 12:27:50 GMT  
		Size: 14.5 MB (14509954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6a55055b9d3f0d2668fff43134b4c73a25f9c890b29a6d43379fd0bd5ef427`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc47553cb219b9b45a4d61a50c44dcf2951239e0d4c031a8cecd2116741ba568`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine` - linux; 386

```console
$ docker pull redis@sha256:1f2bd78966937642dc4924d64d459048744cf430201b695e5ab8cd5581d89472
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17129598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e9c0979026325c34d28e23565baea3d20d13608f2a54353514be94a6ea9ebdc`
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
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 14:20:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 14:20:57 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 14:20:57 GMT
VOLUME [/data]
# Sat, 11 May 2019 14:20:57 GMT
WORKDIR /data
# Sat, 11 May 2019 14:20:58 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 14:20:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 14:20:58 GMT
EXPOSE 6379
# Sat, 11 May 2019 14:20:58 GMT
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
	-	`sha256:4f657a1131eba36fee35397da770cb8f49c91aa5dcc70b740f87cbbb7c7912af`  
		Last Modified: Sat, 11 May 2019 14:22:07 GMT  
		Size: 14.0 MB (13966770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cccd68cbe338abc68431db2ed284b0c8fe64671fc5f50fcbe67640cd6b1a77f6`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b491d8b3ea12c55389dea6640c0ff738fe6cd04161c50ed81cb45dea07275d`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:d569b4a0bd97bb5b6878cc756732296567b1e990d676c07514d0eb146b59c091
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18618574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f961495ad921998aa1da6838a3b2d8b5192389c80f7a7b861772dc213d6b63f`
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
# Sat, 11 May 2019 08:59:04 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 08:59:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 08:59:38 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 09:00:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 09:00:49 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 09:00:53 GMT
VOLUME [/data]
# Sat, 11 May 2019 09:00:59 GMT
WORKDIR /data
# Sat, 11 May 2019 09:01:03 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 09:01:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:01:10 GMT
EXPOSE 6379
# Sat, 11 May 2019 09:01:15 GMT
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
	-	`sha256:d595595300bc8a81f2a88f3390aa64532f4b2c95048f594e99dcdd4e35d9c5e4`  
		Last Modified: Sat, 11 May 2019 09:03:46 GMT  
		Size: 15.4 MB (15424523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90c80fb62e77b09c70f5b58db276a69ccdacb4dcc2ba7b85eb8f2200d12b7ed`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0276a3e88f4c305e7f413768283776d6e2073ad27f9ed470b7254183415b0d`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine` - linux; s390x

```console
$ docker pull redis@sha256:e02c7407f8e10e8f07a22a978de37b8360444c2c6c38b2d3e05b7b8283c129c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17822678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f46fb474d5c752e52c6aa4feb18d02bdde8504cb1a178269214072173c66087c`
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
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 13:30:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 13:30:43 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 13:30:43 GMT
VOLUME [/data]
# Sat, 11 May 2019 13:30:44 GMT
WORKDIR /data
# Sat, 11 May 2019 13:30:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 13:30:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 13:30:44 GMT
EXPOSE 6379
# Sat, 11 May 2019 13:30:44 GMT
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
	-	`sha256:728b86051c3d69795b194a1223812eb51170a19fec8c73b55b1bf881bcba0394`  
		Last Modified: Sat, 11 May 2019 13:32:12 GMT  
		Size: 14.9 MB (14868831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3189edd34dda98b805f8476c29b5c74e11b38176f066ff5f6b21d79300f5ea5`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de475c47fbb243ce8d63c6a9d5b05d1000b9110cb149a121c01ceba19ebe5b31`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.4-alpine3.9`

```console
$ docker pull redis@sha256:c8d2a155166857e772e5389a44f2c9cbdabc7e7500123fdb9a04b5181b9756b8
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

### `redis:5.0.4-alpine3.9` - linux; amd64

```console
$ docker pull redis@sha256:8205a681aa6eea2b0c27249894def02a14ff2cbe9fc78e83d62ad04d1180deb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17767533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:631bf69df08e11fff62ae65c901ba312618056a197b8e44a8c8b5a14e19599f2`
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
# Sat, 11 May 2019 01:43:52 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 01:43:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 01:43:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 01:45:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 01:45:44 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 01:45:45 GMT
VOLUME [/data]
# Sat, 11 May 2019 01:45:45 GMT
WORKDIR /data
# Sat, 11 May 2019 01:45:45 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 01:45:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:45:46 GMT
EXPOSE 6379
# Sat, 11 May 2019 01:45:46 GMT
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
	-	`sha256:bd01e7204bc2e6511d76700eae62c49824b429140735ce33c26ec5cf7cd2fd08`  
		Last Modified: Sat, 11 May 2019 01:48:21 GMT  
		Size: 14.6 MB (14604899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3250e649335b95bc1de7ab27c52ca193d65d443aebb81d0b41a93c3cebcd8fe1`  
		Last Modified: Sat, 11 May 2019 01:48:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4e8d78e015de17d85dccd54bb6fcae57e89d1840062fc71b8f6cf97d34be64`  
		Last Modified: Sat, 11 May 2019 01:48:14 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:fa9576eb0d73ee083b7084aa85e4cee76a1c2918c2763d72565e53bb5e83ca76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17145147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e55d12121b6706bac8400b69524c5f7b66151b892fe4357790930b36355d8710`
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
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 08:30:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 08:30:15 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 08:30:15 GMT
VOLUME [/data]
# Sat, 11 May 2019 08:30:16 GMT
WORKDIR /data
# Sat, 11 May 2019 08:30:17 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 08:30:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:30:17 GMT
EXPOSE 6379
# Sat, 11 May 2019 08:30:18 GMT
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
	-	`sha256:faa590537db896f7dbd59eefa136b0b4ec5fde41ed935c55766e4c1fc3dd4bd0`  
		Last Modified: Sat, 11 May 2019 08:31:13 GMT  
		Size: 14.2 MB (14193661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad25456d273d355a363facc212c03553f592d3294d4c668dcb9d760771406786`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fbeb570419e4c2bcd05116800b7e346150a94789b074c6a3bd074e8bdac81b`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:86ead9df3c076636361c768b7867ca8218ee7e33a08a59120079d3717bf517a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16695218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f14051796eac5c87272605b003e27c14d0931343d0e6a19663992e882d3c44`
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
# Sat, 11 May 2019 12:44:06 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 12:44:06 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 12:44:07 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 12:44:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:44:53 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:44:53 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:44:54 GMT
WORKDIR /data
# Sat, 11 May 2019 12:44:54 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:44:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:44:55 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:44:56 GMT
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
	-	`sha256:d4602ba16023ffa9bfcae68c957eabe7e2c2033db311272302ae47e81dc76fba`  
		Last Modified: Sat, 11 May 2019 12:46:11 GMT  
		Size: 13.9 MB (13942626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc179faa7a69c3f71a476937b9317ea0d372a8bb5ea5a152ba3efafff02f21fa`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed8a8a5680ba28b4c0046fe05884d18d251fba7a176c9462d6c7b8cf7a513b2`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:481163e642606e2b797e1fa944d8dd7578562068101e196d3b8130726c2e733d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17606493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120bbe7d80ce44b20582f048319ce9e54337ca73aaecab166a95d8c4f37f7f46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:20:35 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:20:40 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 12:20:42 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 12:20:43 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 12:20:44 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 12:24:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:24:18 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:24:20 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:24:21 GMT
WORKDIR /data
# Sat, 11 May 2019 12:24:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:24:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:24:25 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:24:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2bbc591442d67f5c6f1b59929eaab9c201bad200fa822ea07b7c9ee545f560`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedf954ee4011d466f4e0013d01503e2b3eb44afa0bf96a32410628ab18ed2e1`  
		Last Modified: Sat, 11 May 2019 12:27:38 GMT  
		Size: 406.0 KB (405994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e9d4f1599b3a8f1b1789b8fcb095a2d455fd061f22e22764cd250add1e8403`  
		Last Modified: Sat, 11 May 2019 12:27:50 GMT  
		Size: 14.5 MB (14509954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6a55055b9d3f0d2668fff43134b4c73a25f9c890b29a6d43379fd0bd5ef427`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc47553cb219b9b45a4d61a50c44dcf2951239e0d4c031a8cecd2116741ba568`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:1f2bd78966937642dc4924d64d459048744cf430201b695e5ab8cd5581d89472
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17129598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e9c0979026325c34d28e23565baea3d20d13608f2a54353514be94a6ea9ebdc`
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
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 14:20:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 14:20:57 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 14:20:57 GMT
VOLUME [/data]
# Sat, 11 May 2019 14:20:57 GMT
WORKDIR /data
# Sat, 11 May 2019 14:20:58 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 14:20:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 14:20:58 GMT
EXPOSE 6379
# Sat, 11 May 2019 14:20:58 GMT
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
	-	`sha256:4f657a1131eba36fee35397da770cb8f49c91aa5dcc70b740f87cbbb7c7912af`  
		Last Modified: Sat, 11 May 2019 14:22:07 GMT  
		Size: 14.0 MB (13966770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cccd68cbe338abc68431db2ed284b0c8fe64671fc5f50fcbe67640cd6b1a77f6`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b491d8b3ea12c55389dea6640c0ff738fe6cd04161c50ed81cb45dea07275d`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:d569b4a0bd97bb5b6878cc756732296567b1e990d676c07514d0eb146b59c091
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18618574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f961495ad921998aa1da6838a3b2d8b5192389c80f7a7b861772dc213d6b63f`
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
# Sat, 11 May 2019 08:59:04 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 08:59:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 08:59:38 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 09:00:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 09:00:49 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 09:00:53 GMT
VOLUME [/data]
# Sat, 11 May 2019 09:00:59 GMT
WORKDIR /data
# Sat, 11 May 2019 09:01:03 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 09:01:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:01:10 GMT
EXPOSE 6379
# Sat, 11 May 2019 09:01:15 GMT
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
	-	`sha256:d595595300bc8a81f2a88f3390aa64532f4b2c95048f594e99dcdd4e35d9c5e4`  
		Last Modified: Sat, 11 May 2019 09:03:46 GMT  
		Size: 15.4 MB (15424523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90c80fb62e77b09c70f5b58db276a69ccdacb4dcc2ba7b85eb8f2200d12b7ed`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0276a3e88f4c305e7f413768283776d6e2073ad27f9ed470b7254183415b0d`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:e02c7407f8e10e8f07a22a978de37b8360444c2c6c38b2d3e05b7b8283c129c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17822678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f46fb474d5c752e52c6aa4feb18d02bdde8504cb1a178269214072173c66087c`
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
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 13:30:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 13:30:43 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 13:30:43 GMT
VOLUME [/data]
# Sat, 11 May 2019 13:30:44 GMT
WORKDIR /data
# Sat, 11 May 2019 13:30:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 13:30:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 13:30:44 GMT
EXPOSE 6379
# Sat, 11 May 2019 13:30:44 GMT
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
	-	`sha256:728b86051c3d69795b194a1223812eb51170a19fec8c73b55b1bf881bcba0394`  
		Last Modified: Sat, 11 May 2019 13:32:12 GMT  
		Size: 14.9 MB (14868831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3189edd34dda98b805f8476c29b5c74e11b38176f066ff5f6b21d79300f5ea5`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de475c47fbb243ce8d63c6a9d5b05d1000b9110cb149a121c01ceba19ebe5b31`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0.4-stretch`

```console
$ docker pull redis@sha256:2dfa6432744659268d001d16c39f7be52ee73ef7e1001ff80643f0f7bdee117e
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

### `redis:5.0.4-stretch` - linux; amd64

```console
$ docker pull redis@sha256:82ac0e8f4f2cb5db18714b726febea6de9666ad9d9ad6f62f433f073bc3048f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35215350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fe14ff19812e816e1b21f7daa5fa25ab9bff4365252fe38d8eef4bdf1150ee`
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
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 04:51:03 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:51:04 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:51:04 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:51:04 GMT
WORKDIR /data
# Wed, 08 May 2019 04:51:04 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:51:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:51:05 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:51:05 GMT
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
	-	`sha256:98afd60e45e486761d7af1e91f6ec18833e5f3d1996b89efc7e77d99a2346324`  
		Last Modified: Wed, 08 May 2019 04:55:47 GMT  
		Size: 11.8 MB (11782379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495c87fda8597a435f2f0e2b03678a30834a84b35038e5fa2976268e0408f6df`  
		Last Modified: Wed, 08 May 2019 04:55:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed676785841677297b27a68be0b5358106bcb4136e5d393b1b1655d563d0afca`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:84569312082422dc1d8e3de786232d0c02785ee2b2763e4590bfc95474feb8f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33535203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2a0a484cdb7f9445da8ff1f4c81bc29cffd3f27840d1b0fdbb2fb27f1b9c96`
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
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 09:46:33 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 09:46:34 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 09:46:34 GMT
VOLUME [/data]
# Wed, 08 May 2019 09:46:35 GMT
WORKDIR /data
# Wed, 08 May 2019 09:46:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 09:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 09:46:36 GMT
EXPOSE 6379
# Wed, 08 May 2019 09:46:37 GMT
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
	-	`sha256:377b34ce418aa6f727f895c814df11520097257efe400aff206ee25adee76316`  
		Last Modified: Wed, 08 May 2019 09:47:48 GMT  
		Size: 11.4 MB (11445861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3aba87501f3bdfdc69c75d102b55d3ac29b4fd641b0831756b1276467fd1215`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3c93d64dc3ddb49669e7c3f0c13e80e5e297c0823654f0aeca23153f7d6a17`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:4574b95d794a232a3b0fd35a7468b0c4793b904e9ba5a754859fa5791d20901c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31333365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eca94f5741f6aa607494482a9416117fef5f86b99c7383fa4ff02ee505c2661`
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
# Wed, 08 May 2019 14:54:32 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 14:54:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 14:54:33 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:55:34 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:55:38 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:55:39 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:55:39 GMT
WORKDIR /data
# Wed, 08 May 2019 14:55:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:55:41 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:55:42 GMT
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
	-	`sha256:5d68aa0d67ad92f6a0ae85ded8d62301312a2ae372ec9ed42e8ae31c48b221d8`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 11.1 MB (11139036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bed5b6abf638a3ae727eea5f93cc44c4112a5911c90f077e08e97c180c38e08`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9591faf9a9a8e580237305eed699371f075e14dd925482e2f041ef9eed4df1`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:fa04d74cc975e9a6e66542ab3f84292075f16f05d239aa67cfb171c4b0c483f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32828249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61ab367aee1be0fd630916c650fc5ea7ea963f77eb815be618ddf7bb906284d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:32:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:33:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 19:33:38 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 19:33:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 19:33:39 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 19:36:12 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:36:15 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:36:16 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:36:18 GMT
WORKDIR /data
# Wed, 08 May 2019 19:36:19 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:36:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:36:21 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:36:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c417db3b6fef5fa03d3ab5269f6334eecfaf21aac24e90ccfb27616fdae4b81`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262a0c65662c006f0a35e36f0b9e354abe8843f584d789a8ab7211e4c514f0b3`  
		Last Modified: Wed, 08 May 2019 19:42:40 GMT  
		Size: 908.1 KB (908087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36db11a6661e8a7174d7bc8fb5952efa16124c8d3b6bae8f169fde5fb2989f22`  
		Last Modified: Wed, 08 May 2019 19:42:45 GMT  
		Size: 11.6 MB (11584081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d8b93264803c65859edcca29f57553c9c68b63103d99fe2dafe3c53c3157f1`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9148e44a67e56fb812bf5278c1fe1623f9d3e5cc0c7c50982bc538133ffbd2`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-stretch` - linux; 386

```console
$ docker pull redis@sha256:4e7424771cb251675ca03a436ec5341a8adcf1cb625fa44f6e7db1c1799c8b84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35232467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fb641b7565e516df7592c570101d9e05579b498cc4a3921a6069d56ff380bc`
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
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 19:28:33 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:28:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:28:33 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:28:34 GMT
WORKDIR /data
# Wed, 08 May 2019 19:28:34 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:28:34 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:28:34 GMT
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
	-	`sha256:89e4b721bf5244e84393fc827b80f3de96c2c424da7980f73025e767139dd872`  
		Last Modified: Wed, 08 May 2019 19:29:43 GMT  
		Size: 11.2 MB (11189205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ac5302bbee4bf8de96dbc90a4fcf419a600612aa894d938c4e0fcaf4d89c46`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e5333b2af74ba6dfba85bacaacf030d745a49abf8977104f74555b00dcbe95`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:1a1170b855fa1f04a159d01867480c11a0c2bf36bcf9d5351403d4f65b4e9c6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35632061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cad3e8b56fb997a6de849983526b725d4da2c1ea2282a60857cfb64a3f423e3`
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
# Wed, 08 May 2019 13:57:21 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 13:57:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 13:57:34 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:02:22 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:02:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:02:47 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:02:54 GMT
WORKDIR /data
# Wed, 08 May 2019 14:02:57 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:03:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:03:10 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:03:17 GMT
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
	-	`sha256:46dd66674bf3eda5456e0003072a2604f53ec283b233d1f7b888c16803f37a50`  
		Last Modified: Wed, 08 May 2019 14:09:41 GMT  
		Size: 12.0 MB (11974749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f5b5169ee152e631bdad74726bc86f80a1cc9c4fd319d1730229728c86913c`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88b79c0efed44abcd5d926b91926dcfad216e9c1b20a38387e3d123566410bd`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0.4-stretch` - linux; s390x

```console
$ docker pull redis@sha256:18d0db45b0310f177739b5361daa4ca3f67063ef3cd148527fb654ca8e5dd746
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35506219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:349668c96c4dda3a742fa2b4cbd3d9d94d073cfb93fa9b98daef555a288a4c90`
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
# Wed, 08 May 2019 14:39:39 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 14:39:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 14:39:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:42:34 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:42:37 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:42:39 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:42:40 GMT
WORKDIR /data
# Wed, 08 May 2019 14:42:41 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:42:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:42:45 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:42:46 GMT
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
	-	`sha256:a4450b9037bba96daa422b9b12579ad9786713caf6d7f1d46ffc8d3809aaaa6d`  
		Last Modified: Wed, 08 May 2019 14:46:59 GMT  
		Size: 12.2 MB (12238116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00efd50a9bb811b74d01717cb4ae9f31c8163fe1d10d93cb6023890266defee5`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80df131c81c1a6db961b53da0aeb2ec99a62f6c4e17d79b0611bcb76d531d4fe`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-alpine`

```console
$ docker pull redis@sha256:c8d2a155166857e772e5389a44f2c9cbdabc7e7500123fdb9a04b5181b9756b8
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
$ docker pull redis@sha256:8205a681aa6eea2b0c27249894def02a14ff2cbe9fc78e83d62ad04d1180deb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17767533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:631bf69df08e11fff62ae65c901ba312618056a197b8e44a8c8b5a14e19599f2`
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
# Sat, 11 May 2019 01:43:52 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 01:43:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 01:43:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 01:45:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 01:45:44 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 01:45:45 GMT
VOLUME [/data]
# Sat, 11 May 2019 01:45:45 GMT
WORKDIR /data
# Sat, 11 May 2019 01:45:45 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 01:45:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:45:46 GMT
EXPOSE 6379
# Sat, 11 May 2019 01:45:46 GMT
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
	-	`sha256:bd01e7204bc2e6511d76700eae62c49824b429140735ce33c26ec5cf7cd2fd08`  
		Last Modified: Sat, 11 May 2019 01:48:21 GMT  
		Size: 14.6 MB (14604899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3250e649335b95bc1de7ab27c52ca193d65d443aebb81d0b41a93c3cebcd8fe1`  
		Last Modified: Sat, 11 May 2019 01:48:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4e8d78e015de17d85dccd54bb6fcae57e89d1840062fc71b8f6cf97d34be64`  
		Last Modified: Sat, 11 May 2019 01:48:14 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:fa9576eb0d73ee083b7084aa85e4cee76a1c2918c2763d72565e53bb5e83ca76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17145147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e55d12121b6706bac8400b69524c5f7b66151b892fe4357790930b36355d8710`
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
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 08:30:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 08:30:15 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 08:30:15 GMT
VOLUME [/data]
# Sat, 11 May 2019 08:30:16 GMT
WORKDIR /data
# Sat, 11 May 2019 08:30:17 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 08:30:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:30:17 GMT
EXPOSE 6379
# Sat, 11 May 2019 08:30:18 GMT
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
	-	`sha256:faa590537db896f7dbd59eefa136b0b4ec5fde41ed935c55766e4c1fc3dd4bd0`  
		Last Modified: Sat, 11 May 2019 08:31:13 GMT  
		Size: 14.2 MB (14193661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad25456d273d355a363facc212c03553f592d3294d4c668dcb9d760771406786`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fbeb570419e4c2bcd05116800b7e346150a94789b074c6a3bd074e8bdac81b`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:86ead9df3c076636361c768b7867ca8218ee7e33a08a59120079d3717bf517a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16695218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f14051796eac5c87272605b003e27c14d0931343d0e6a19663992e882d3c44`
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
# Sat, 11 May 2019 12:44:06 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 12:44:06 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 12:44:07 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 12:44:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:44:53 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:44:53 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:44:54 GMT
WORKDIR /data
# Sat, 11 May 2019 12:44:54 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:44:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:44:55 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:44:56 GMT
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
	-	`sha256:d4602ba16023ffa9bfcae68c957eabe7e2c2033db311272302ae47e81dc76fba`  
		Last Modified: Sat, 11 May 2019 12:46:11 GMT  
		Size: 13.9 MB (13942626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc179faa7a69c3f71a476937b9317ea0d372a8bb5ea5a152ba3efafff02f21fa`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed8a8a5680ba28b4c0046fe05884d18d251fba7a176c9462d6c7b8cf7a513b2`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:481163e642606e2b797e1fa944d8dd7578562068101e196d3b8130726c2e733d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17606493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120bbe7d80ce44b20582f048319ce9e54337ca73aaecab166a95d8c4f37f7f46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:20:35 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:20:40 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 12:20:42 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 12:20:43 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 12:20:44 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 12:24:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:24:18 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:24:20 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:24:21 GMT
WORKDIR /data
# Sat, 11 May 2019 12:24:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:24:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:24:25 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:24:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2bbc591442d67f5c6f1b59929eaab9c201bad200fa822ea07b7c9ee545f560`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedf954ee4011d466f4e0013d01503e2b3eb44afa0bf96a32410628ab18ed2e1`  
		Last Modified: Sat, 11 May 2019 12:27:38 GMT  
		Size: 406.0 KB (405994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e9d4f1599b3a8f1b1789b8fcb095a2d455fd061f22e22764cd250add1e8403`  
		Last Modified: Sat, 11 May 2019 12:27:50 GMT  
		Size: 14.5 MB (14509954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6a55055b9d3f0d2668fff43134b4c73a25f9c890b29a6d43379fd0bd5ef427`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc47553cb219b9b45a4d61a50c44dcf2951239e0d4c031a8cecd2116741ba568`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; 386

```console
$ docker pull redis@sha256:1f2bd78966937642dc4924d64d459048744cf430201b695e5ab8cd5581d89472
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17129598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e9c0979026325c34d28e23565baea3d20d13608f2a54353514be94a6ea9ebdc`
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
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 14:20:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 14:20:57 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 14:20:57 GMT
VOLUME [/data]
# Sat, 11 May 2019 14:20:57 GMT
WORKDIR /data
# Sat, 11 May 2019 14:20:58 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 14:20:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 14:20:58 GMT
EXPOSE 6379
# Sat, 11 May 2019 14:20:58 GMT
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
	-	`sha256:4f657a1131eba36fee35397da770cb8f49c91aa5dcc70b740f87cbbb7c7912af`  
		Last Modified: Sat, 11 May 2019 14:22:07 GMT  
		Size: 14.0 MB (13966770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cccd68cbe338abc68431db2ed284b0c8fe64671fc5f50fcbe67640cd6b1a77f6`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b491d8b3ea12c55389dea6640c0ff738fe6cd04161c50ed81cb45dea07275d`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:d569b4a0bd97bb5b6878cc756732296567b1e990d676c07514d0eb146b59c091
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18618574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f961495ad921998aa1da6838a3b2d8b5192389c80f7a7b861772dc213d6b63f`
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
# Sat, 11 May 2019 08:59:04 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 08:59:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 08:59:38 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 09:00:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 09:00:49 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 09:00:53 GMT
VOLUME [/data]
# Sat, 11 May 2019 09:00:59 GMT
WORKDIR /data
# Sat, 11 May 2019 09:01:03 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 09:01:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:01:10 GMT
EXPOSE 6379
# Sat, 11 May 2019 09:01:15 GMT
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
	-	`sha256:d595595300bc8a81f2a88f3390aa64532f4b2c95048f594e99dcdd4e35d9c5e4`  
		Last Modified: Sat, 11 May 2019 09:03:46 GMT  
		Size: 15.4 MB (15424523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90c80fb62e77b09c70f5b58db276a69ccdacb4dcc2ba7b85eb8f2200d12b7ed`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0276a3e88f4c305e7f413768283776d6e2073ad27f9ed470b7254183415b0d`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine` - linux; s390x

```console
$ docker pull redis@sha256:e02c7407f8e10e8f07a22a978de37b8360444c2c6c38b2d3e05b7b8283c129c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17822678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f46fb474d5c752e52c6aa4feb18d02bdde8504cb1a178269214072173c66087c`
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
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 13:30:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 13:30:43 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 13:30:43 GMT
VOLUME [/data]
# Sat, 11 May 2019 13:30:44 GMT
WORKDIR /data
# Sat, 11 May 2019 13:30:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 13:30:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 13:30:44 GMT
EXPOSE 6379
# Sat, 11 May 2019 13:30:44 GMT
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
	-	`sha256:728b86051c3d69795b194a1223812eb51170a19fec8c73b55b1bf881bcba0394`  
		Last Modified: Sat, 11 May 2019 13:32:12 GMT  
		Size: 14.9 MB (14868831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3189edd34dda98b805f8476c29b5c74e11b38176f066ff5f6b21d79300f5ea5`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de475c47fbb243ce8d63c6a9d5b05d1000b9110cb149a121c01ceba19ebe5b31`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-alpine3.9`

```console
$ docker pull redis@sha256:c8d2a155166857e772e5389a44f2c9cbdabc7e7500123fdb9a04b5181b9756b8
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
$ docker pull redis@sha256:8205a681aa6eea2b0c27249894def02a14ff2cbe9fc78e83d62ad04d1180deb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17767533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:631bf69df08e11fff62ae65c901ba312618056a197b8e44a8c8b5a14e19599f2`
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
# Sat, 11 May 2019 01:43:52 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 01:43:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 01:43:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 01:45:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 01:45:44 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 01:45:45 GMT
VOLUME [/data]
# Sat, 11 May 2019 01:45:45 GMT
WORKDIR /data
# Sat, 11 May 2019 01:45:45 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 01:45:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:45:46 GMT
EXPOSE 6379
# Sat, 11 May 2019 01:45:46 GMT
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
	-	`sha256:bd01e7204bc2e6511d76700eae62c49824b429140735ce33c26ec5cf7cd2fd08`  
		Last Modified: Sat, 11 May 2019 01:48:21 GMT  
		Size: 14.6 MB (14604899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3250e649335b95bc1de7ab27c52ca193d65d443aebb81d0b41a93c3cebcd8fe1`  
		Last Modified: Sat, 11 May 2019 01:48:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4e8d78e015de17d85dccd54bb6fcae57e89d1840062fc71b8f6cf97d34be64`  
		Last Modified: Sat, 11 May 2019 01:48:14 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:fa9576eb0d73ee083b7084aa85e4cee76a1c2918c2763d72565e53bb5e83ca76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17145147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e55d12121b6706bac8400b69524c5f7b66151b892fe4357790930b36355d8710`
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
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 08:30:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 08:30:15 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 08:30:15 GMT
VOLUME [/data]
# Sat, 11 May 2019 08:30:16 GMT
WORKDIR /data
# Sat, 11 May 2019 08:30:17 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 08:30:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:30:17 GMT
EXPOSE 6379
# Sat, 11 May 2019 08:30:18 GMT
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
	-	`sha256:faa590537db896f7dbd59eefa136b0b4ec5fde41ed935c55766e4c1fc3dd4bd0`  
		Last Modified: Sat, 11 May 2019 08:31:13 GMT  
		Size: 14.2 MB (14193661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad25456d273d355a363facc212c03553f592d3294d4c668dcb9d760771406786`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fbeb570419e4c2bcd05116800b7e346150a94789b074c6a3bd074e8bdac81b`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:86ead9df3c076636361c768b7867ca8218ee7e33a08a59120079d3717bf517a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16695218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f14051796eac5c87272605b003e27c14d0931343d0e6a19663992e882d3c44`
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
# Sat, 11 May 2019 12:44:06 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 12:44:06 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 12:44:07 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 12:44:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:44:53 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:44:53 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:44:54 GMT
WORKDIR /data
# Sat, 11 May 2019 12:44:54 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:44:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:44:55 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:44:56 GMT
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
	-	`sha256:d4602ba16023ffa9bfcae68c957eabe7e2c2033db311272302ae47e81dc76fba`  
		Last Modified: Sat, 11 May 2019 12:46:11 GMT  
		Size: 13.9 MB (13942626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc179faa7a69c3f71a476937b9317ea0d372a8bb5ea5a152ba3efafff02f21fa`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed8a8a5680ba28b4c0046fe05884d18d251fba7a176c9462d6c7b8cf7a513b2`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:481163e642606e2b797e1fa944d8dd7578562068101e196d3b8130726c2e733d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17606493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120bbe7d80ce44b20582f048319ce9e54337ca73aaecab166a95d8c4f37f7f46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:20:35 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:20:40 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 12:20:42 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 12:20:43 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 12:20:44 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 12:24:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:24:18 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:24:20 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:24:21 GMT
WORKDIR /data
# Sat, 11 May 2019 12:24:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:24:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:24:25 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:24:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2bbc591442d67f5c6f1b59929eaab9c201bad200fa822ea07b7c9ee545f560`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedf954ee4011d466f4e0013d01503e2b3eb44afa0bf96a32410628ab18ed2e1`  
		Last Modified: Sat, 11 May 2019 12:27:38 GMT  
		Size: 406.0 KB (405994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e9d4f1599b3a8f1b1789b8fcb095a2d455fd061f22e22764cd250add1e8403`  
		Last Modified: Sat, 11 May 2019 12:27:50 GMT  
		Size: 14.5 MB (14509954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6a55055b9d3f0d2668fff43134b4c73a25f9c890b29a6d43379fd0bd5ef427`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc47553cb219b9b45a4d61a50c44dcf2951239e0d4c031a8cecd2116741ba568`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:1f2bd78966937642dc4924d64d459048744cf430201b695e5ab8cd5581d89472
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17129598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e9c0979026325c34d28e23565baea3d20d13608f2a54353514be94a6ea9ebdc`
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
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 14:20:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 14:20:57 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 14:20:57 GMT
VOLUME [/data]
# Sat, 11 May 2019 14:20:57 GMT
WORKDIR /data
# Sat, 11 May 2019 14:20:58 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 14:20:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 14:20:58 GMT
EXPOSE 6379
# Sat, 11 May 2019 14:20:58 GMT
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
	-	`sha256:4f657a1131eba36fee35397da770cb8f49c91aa5dcc70b740f87cbbb7c7912af`  
		Last Modified: Sat, 11 May 2019 14:22:07 GMT  
		Size: 14.0 MB (13966770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cccd68cbe338abc68431db2ed284b0c8fe64671fc5f50fcbe67640cd6b1a77f6`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b491d8b3ea12c55389dea6640c0ff738fe6cd04161c50ed81cb45dea07275d`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:d569b4a0bd97bb5b6878cc756732296567b1e990d676c07514d0eb146b59c091
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18618574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f961495ad921998aa1da6838a3b2d8b5192389c80f7a7b861772dc213d6b63f`
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
# Sat, 11 May 2019 08:59:04 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 08:59:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 08:59:38 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 09:00:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 09:00:49 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 09:00:53 GMT
VOLUME [/data]
# Sat, 11 May 2019 09:00:59 GMT
WORKDIR /data
# Sat, 11 May 2019 09:01:03 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 09:01:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:01:10 GMT
EXPOSE 6379
# Sat, 11 May 2019 09:01:15 GMT
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
	-	`sha256:d595595300bc8a81f2a88f3390aa64532f4b2c95048f594e99dcdd4e35d9c5e4`  
		Last Modified: Sat, 11 May 2019 09:03:46 GMT  
		Size: 15.4 MB (15424523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90c80fb62e77b09c70f5b58db276a69ccdacb4dcc2ba7b85eb8f2200d12b7ed`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0276a3e88f4c305e7f413768283776d6e2073ad27f9ed470b7254183415b0d`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:e02c7407f8e10e8f07a22a978de37b8360444c2c6c38b2d3e05b7b8283c129c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17822678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f46fb474d5c752e52c6aa4feb18d02bdde8504cb1a178269214072173c66087c`
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
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 13:30:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 13:30:43 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 13:30:43 GMT
VOLUME [/data]
# Sat, 11 May 2019 13:30:44 GMT
WORKDIR /data
# Sat, 11 May 2019 13:30:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 13:30:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 13:30:44 GMT
EXPOSE 6379
# Sat, 11 May 2019 13:30:44 GMT
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
	-	`sha256:728b86051c3d69795b194a1223812eb51170a19fec8c73b55b1bf881bcba0394`  
		Last Modified: Sat, 11 May 2019 13:32:12 GMT  
		Size: 14.9 MB (14868831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3189edd34dda98b805f8476c29b5c74e11b38176f066ff5f6b21d79300f5ea5`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de475c47fbb243ce8d63c6a9d5b05d1000b9110cb149a121c01ceba19ebe5b31`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5.0-stretch`

```console
$ docker pull redis@sha256:2dfa6432744659268d001d16c39f7be52ee73ef7e1001ff80643f0f7bdee117e
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
$ docker pull redis@sha256:82ac0e8f4f2cb5db18714b726febea6de9666ad9d9ad6f62f433f073bc3048f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35215350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fe14ff19812e816e1b21f7daa5fa25ab9bff4365252fe38d8eef4bdf1150ee`
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
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 04:51:03 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:51:04 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:51:04 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:51:04 GMT
WORKDIR /data
# Wed, 08 May 2019 04:51:04 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:51:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:51:05 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:51:05 GMT
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
	-	`sha256:98afd60e45e486761d7af1e91f6ec18833e5f3d1996b89efc7e77d99a2346324`  
		Last Modified: Wed, 08 May 2019 04:55:47 GMT  
		Size: 11.8 MB (11782379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495c87fda8597a435f2f0e2b03678a30834a84b35038e5fa2976268e0408f6df`  
		Last Modified: Wed, 08 May 2019 04:55:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed676785841677297b27a68be0b5358106bcb4136e5d393b1b1655d563d0afca`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:84569312082422dc1d8e3de786232d0c02785ee2b2763e4590bfc95474feb8f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33535203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2a0a484cdb7f9445da8ff1f4c81bc29cffd3f27840d1b0fdbb2fb27f1b9c96`
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
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 09:46:33 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 09:46:34 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 09:46:34 GMT
VOLUME [/data]
# Wed, 08 May 2019 09:46:35 GMT
WORKDIR /data
# Wed, 08 May 2019 09:46:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 09:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 09:46:36 GMT
EXPOSE 6379
# Wed, 08 May 2019 09:46:37 GMT
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
	-	`sha256:377b34ce418aa6f727f895c814df11520097257efe400aff206ee25adee76316`  
		Last Modified: Wed, 08 May 2019 09:47:48 GMT  
		Size: 11.4 MB (11445861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3aba87501f3bdfdc69c75d102b55d3ac29b4fd641b0831756b1276467fd1215`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3c93d64dc3ddb49669e7c3f0c13e80e5e297c0823654f0aeca23153f7d6a17`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:4574b95d794a232a3b0fd35a7468b0c4793b904e9ba5a754859fa5791d20901c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31333365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eca94f5741f6aa607494482a9416117fef5f86b99c7383fa4ff02ee505c2661`
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
# Wed, 08 May 2019 14:54:32 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 14:54:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 14:54:33 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:55:34 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:55:38 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:55:39 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:55:39 GMT
WORKDIR /data
# Wed, 08 May 2019 14:55:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:55:41 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:55:42 GMT
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
	-	`sha256:5d68aa0d67ad92f6a0ae85ded8d62301312a2ae372ec9ed42e8ae31c48b221d8`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 11.1 MB (11139036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bed5b6abf638a3ae727eea5f93cc44c4112a5911c90f077e08e97c180c38e08`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9591faf9a9a8e580237305eed699371f075e14dd925482e2f041ef9eed4df1`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:fa04d74cc975e9a6e66542ab3f84292075f16f05d239aa67cfb171c4b0c483f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32828249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61ab367aee1be0fd630916c650fc5ea7ea963f77eb815be618ddf7bb906284d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:32:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:33:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 19:33:38 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 19:33:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 19:33:39 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 19:36:12 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:36:15 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:36:16 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:36:18 GMT
WORKDIR /data
# Wed, 08 May 2019 19:36:19 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:36:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:36:21 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:36:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c417db3b6fef5fa03d3ab5269f6334eecfaf21aac24e90ccfb27616fdae4b81`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262a0c65662c006f0a35e36f0b9e354abe8843f584d789a8ab7211e4c514f0b3`  
		Last Modified: Wed, 08 May 2019 19:42:40 GMT  
		Size: 908.1 KB (908087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36db11a6661e8a7174d7bc8fb5952efa16124c8d3b6bae8f169fde5fb2989f22`  
		Last Modified: Wed, 08 May 2019 19:42:45 GMT  
		Size: 11.6 MB (11584081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d8b93264803c65859edcca29f57553c9c68b63103d99fe2dafe3c53c3157f1`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9148e44a67e56fb812bf5278c1fe1623f9d3e5cc0c7c50982bc538133ffbd2`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; 386

```console
$ docker pull redis@sha256:4e7424771cb251675ca03a436ec5341a8adcf1cb625fa44f6e7db1c1799c8b84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35232467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fb641b7565e516df7592c570101d9e05579b498cc4a3921a6069d56ff380bc`
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
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 19:28:33 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:28:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:28:33 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:28:34 GMT
WORKDIR /data
# Wed, 08 May 2019 19:28:34 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:28:34 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:28:34 GMT
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
	-	`sha256:89e4b721bf5244e84393fc827b80f3de96c2c424da7980f73025e767139dd872`  
		Last Modified: Wed, 08 May 2019 19:29:43 GMT  
		Size: 11.2 MB (11189205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ac5302bbee4bf8de96dbc90a4fcf419a600612aa894d938c4e0fcaf4d89c46`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e5333b2af74ba6dfba85bacaacf030d745a49abf8977104f74555b00dcbe95`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:1a1170b855fa1f04a159d01867480c11a0c2bf36bcf9d5351403d4f65b4e9c6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35632061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cad3e8b56fb997a6de849983526b725d4da2c1ea2282a60857cfb64a3f423e3`
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
# Wed, 08 May 2019 13:57:21 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 13:57:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 13:57:34 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:02:22 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:02:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:02:47 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:02:54 GMT
WORKDIR /data
# Wed, 08 May 2019 14:02:57 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:03:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:03:10 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:03:17 GMT
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
	-	`sha256:46dd66674bf3eda5456e0003072a2604f53ec283b233d1f7b888c16803f37a50`  
		Last Modified: Wed, 08 May 2019 14:09:41 GMT  
		Size: 12.0 MB (11974749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f5b5169ee152e631bdad74726bc86f80a1cc9c4fd319d1730229728c86913c`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88b79c0efed44abcd5d926b91926dcfad216e9c1b20a38387e3d123566410bd`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5.0-stretch` - linux; s390x

```console
$ docker pull redis@sha256:18d0db45b0310f177739b5361daa4ca3f67063ef3cd148527fb654ca8e5dd746
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35506219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:349668c96c4dda3a742fa2b4cbd3d9d94d073cfb93fa9b98daef555a288a4c90`
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
# Wed, 08 May 2019 14:39:39 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 14:39:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 14:39:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:42:34 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:42:37 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:42:39 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:42:40 GMT
WORKDIR /data
# Wed, 08 May 2019 14:42:41 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:42:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:42:45 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:42:46 GMT
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
	-	`sha256:a4450b9037bba96daa422b9b12579ad9786713caf6d7f1d46ffc8d3809aaaa6d`  
		Last Modified: Wed, 08 May 2019 14:46:59 GMT  
		Size: 12.2 MB (12238116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00efd50a9bb811b74d01717cb4ae9f31c8163fe1d10d93cb6023890266defee5`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80df131c81c1a6db961b53da0aeb2ec99a62f6c4e17d79b0611bcb76d531d4fe`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-32bit`

```console
$ docker pull redis@sha256:0b4c4cf843bbb99671e28e114baed80b8f28aaabaadce083947331dac3bc6a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-32bit` - linux; amd64

```console
$ docker pull redis@sha256:07ddb34b10ab8ca274f8a47bec5a16a14785d12c351eaabe85da378e505df59f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39476756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e9873b381328b53d72c0e28416fff40b342e8c4c6d406ab1b058d0ef76e573d`
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
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 04:51:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 04:53:07 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:53:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:53:08 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:53:09 GMT
WORKDIR /data
# Wed, 08 May 2019 04:53:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:53:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:53:09 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:53:10 GMT
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
	-	`sha256:960f4c4000f558250fbc53921270ce97486a623f0a57d74513c4e7f55c4bbeed`  
		Last Modified: Wed, 08 May 2019 04:55:57 GMT  
		Size: 4.8 MB (4849444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0590010f184da2191190019ecf252ab92df40af5afe231a049fbbf992f03d155`  
		Last Modified: Wed, 08 May 2019 04:56:00 GMT  
		Size: 11.2 MB (11194338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2177df022a4b1e72275926b95ad6a23b42ffb74fcaf89302f3c0cc6e741f93`  
		Last Modified: Wed, 08 May 2019 04:55:56 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d08c0c8b033c2bad0f0511e4c806c906cea5b1948bd4d74167db1f1ee3fcdcc`  
		Last Modified: Wed, 08 May 2019 04:55:56 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-32bit-stretch`

```console
$ docker pull redis@sha256:0b4c4cf843bbb99671e28e114baed80b8f28aaabaadce083947331dac3bc6a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:5-32bit-stretch` - linux; amd64

```console
$ docker pull redis@sha256:07ddb34b10ab8ca274f8a47bec5a16a14785d12c351eaabe85da378e505df59f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39476756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e9873b381328b53d72c0e28416fff40b342e8c4c6d406ab1b058d0ef76e573d`
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
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 04:51:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 04:53:07 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:53:08 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:53:08 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:53:09 GMT
WORKDIR /data
# Wed, 08 May 2019 04:53:09 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:53:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:53:09 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:53:10 GMT
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
	-	`sha256:960f4c4000f558250fbc53921270ce97486a623f0a57d74513c4e7f55c4bbeed`  
		Last Modified: Wed, 08 May 2019 04:55:57 GMT  
		Size: 4.8 MB (4849444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0590010f184da2191190019ecf252ab92df40af5afe231a049fbbf992f03d155`  
		Last Modified: Wed, 08 May 2019 04:56:00 GMT  
		Size: 11.2 MB (11194338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2177df022a4b1e72275926b95ad6a23b42ffb74fcaf89302f3c0cc6e741f93`  
		Last Modified: Wed, 08 May 2019 04:55:56 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d08c0c8b033c2bad0f0511e4c806c906cea5b1948bd4d74167db1f1ee3fcdcc`  
		Last Modified: Wed, 08 May 2019 04:55:56 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-alpine`

```console
$ docker pull redis@sha256:c8d2a155166857e772e5389a44f2c9cbdabc7e7500123fdb9a04b5181b9756b8
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
$ docker pull redis@sha256:8205a681aa6eea2b0c27249894def02a14ff2cbe9fc78e83d62ad04d1180deb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17767533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:631bf69df08e11fff62ae65c901ba312618056a197b8e44a8c8b5a14e19599f2`
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
# Sat, 11 May 2019 01:43:52 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 01:43:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 01:43:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 01:45:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 01:45:44 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 01:45:45 GMT
VOLUME [/data]
# Sat, 11 May 2019 01:45:45 GMT
WORKDIR /data
# Sat, 11 May 2019 01:45:45 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 01:45:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:45:46 GMT
EXPOSE 6379
# Sat, 11 May 2019 01:45:46 GMT
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
	-	`sha256:bd01e7204bc2e6511d76700eae62c49824b429140735ce33c26ec5cf7cd2fd08`  
		Last Modified: Sat, 11 May 2019 01:48:21 GMT  
		Size: 14.6 MB (14604899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3250e649335b95bc1de7ab27c52ca193d65d443aebb81d0b41a93c3cebcd8fe1`  
		Last Modified: Sat, 11 May 2019 01:48:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4e8d78e015de17d85dccd54bb6fcae57e89d1840062fc71b8f6cf97d34be64`  
		Last Modified: Sat, 11 May 2019 01:48:14 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:fa9576eb0d73ee083b7084aa85e4cee76a1c2918c2763d72565e53bb5e83ca76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17145147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e55d12121b6706bac8400b69524c5f7b66151b892fe4357790930b36355d8710`
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
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 08:30:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 08:30:15 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 08:30:15 GMT
VOLUME [/data]
# Sat, 11 May 2019 08:30:16 GMT
WORKDIR /data
# Sat, 11 May 2019 08:30:17 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 08:30:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:30:17 GMT
EXPOSE 6379
# Sat, 11 May 2019 08:30:18 GMT
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
	-	`sha256:faa590537db896f7dbd59eefa136b0b4ec5fde41ed935c55766e4c1fc3dd4bd0`  
		Last Modified: Sat, 11 May 2019 08:31:13 GMT  
		Size: 14.2 MB (14193661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad25456d273d355a363facc212c03553f592d3294d4c668dcb9d760771406786`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fbeb570419e4c2bcd05116800b7e346150a94789b074c6a3bd074e8bdac81b`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:86ead9df3c076636361c768b7867ca8218ee7e33a08a59120079d3717bf517a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16695218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f14051796eac5c87272605b003e27c14d0931343d0e6a19663992e882d3c44`
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
# Sat, 11 May 2019 12:44:06 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 12:44:06 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 12:44:07 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 12:44:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:44:53 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:44:53 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:44:54 GMT
WORKDIR /data
# Sat, 11 May 2019 12:44:54 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:44:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:44:55 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:44:56 GMT
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
	-	`sha256:d4602ba16023ffa9bfcae68c957eabe7e2c2033db311272302ae47e81dc76fba`  
		Last Modified: Sat, 11 May 2019 12:46:11 GMT  
		Size: 13.9 MB (13942626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc179faa7a69c3f71a476937b9317ea0d372a8bb5ea5a152ba3efafff02f21fa`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed8a8a5680ba28b4c0046fe05884d18d251fba7a176c9462d6c7b8cf7a513b2`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:481163e642606e2b797e1fa944d8dd7578562068101e196d3b8130726c2e733d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17606493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120bbe7d80ce44b20582f048319ce9e54337ca73aaecab166a95d8c4f37f7f46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:20:35 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:20:40 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 12:20:42 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 12:20:43 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 12:20:44 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 12:24:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:24:18 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:24:20 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:24:21 GMT
WORKDIR /data
# Sat, 11 May 2019 12:24:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:24:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:24:25 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:24:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2bbc591442d67f5c6f1b59929eaab9c201bad200fa822ea07b7c9ee545f560`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedf954ee4011d466f4e0013d01503e2b3eb44afa0bf96a32410628ab18ed2e1`  
		Last Modified: Sat, 11 May 2019 12:27:38 GMT  
		Size: 406.0 KB (405994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e9d4f1599b3a8f1b1789b8fcb095a2d455fd061f22e22764cd250add1e8403`  
		Last Modified: Sat, 11 May 2019 12:27:50 GMT  
		Size: 14.5 MB (14509954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6a55055b9d3f0d2668fff43134b4c73a25f9c890b29a6d43379fd0bd5ef427`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc47553cb219b9b45a4d61a50c44dcf2951239e0d4c031a8cecd2116741ba568`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; 386

```console
$ docker pull redis@sha256:1f2bd78966937642dc4924d64d459048744cf430201b695e5ab8cd5581d89472
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17129598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e9c0979026325c34d28e23565baea3d20d13608f2a54353514be94a6ea9ebdc`
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
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 14:20:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 14:20:57 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 14:20:57 GMT
VOLUME [/data]
# Sat, 11 May 2019 14:20:57 GMT
WORKDIR /data
# Sat, 11 May 2019 14:20:58 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 14:20:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 14:20:58 GMT
EXPOSE 6379
# Sat, 11 May 2019 14:20:58 GMT
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
	-	`sha256:4f657a1131eba36fee35397da770cb8f49c91aa5dcc70b740f87cbbb7c7912af`  
		Last Modified: Sat, 11 May 2019 14:22:07 GMT  
		Size: 14.0 MB (13966770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cccd68cbe338abc68431db2ed284b0c8fe64671fc5f50fcbe67640cd6b1a77f6`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b491d8b3ea12c55389dea6640c0ff738fe6cd04161c50ed81cb45dea07275d`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:d569b4a0bd97bb5b6878cc756732296567b1e990d676c07514d0eb146b59c091
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18618574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f961495ad921998aa1da6838a3b2d8b5192389c80f7a7b861772dc213d6b63f`
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
# Sat, 11 May 2019 08:59:04 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 08:59:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 08:59:38 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 09:00:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 09:00:49 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 09:00:53 GMT
VOLUME [/data]
# Sat, 11 May 2019 09:00:59 GMT
WORKDIR /data
# Sat, 11 May 2019 09:01:03 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 09:01:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:01:10 GMT
EXPOSE 6379
# Sat, 11 May 2019 09:01:15 GMT
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
	-	`sha256:d595595300bc8a81f2a88f3390aa64532f4b2c95048f594e99dcdd4e35d9c5e4`  
		Last Modified: Sat, 11 May 2019 09:03:46 GMT  
		Size: 15.4 MB (15424523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90c80fb62e77b09c70f5b58db276a69ccdacb4dcc2ba7b85eb8f2200d12b7ed`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0276a3e88f4c305e7f413768283776d6e2073ad27f9ed470b7254183415b0d`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine` - linux; s390x

```console
$ docker pull redis@sha256:e02c7407f8e10e8f07a22a978de37b8360444c2c6c38b2d3e05b7b8283c129c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17822678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f46fb474d5c752e52c6aa4feb18d02bdde8504cb1a178269214072173c66087c`
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
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 13:30:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 13:30:43 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 13:30:43 GMT
VOLUME [/data]
# Sat, 11 May 2019 13:30:44 GMT
WORKDIR /data
# Sat, 11 May 2019 13:30:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 13:30:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 13:30:44 GMT
EXPOSE 6379
# Sat, 11 May 2019 13:30:44 GMT
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
	-	`sha256:728b86051c3d69795b194a1223812eb51170a19fec8c73b55b1bf881bcba0394`  
		Last Modified: Sat, 11 May 2019 13:32:12 GMT  
		Size: 14.9 MB (14868831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3189edd34dda98b805f8476c29b5c74e11b38176f066ff5f6b21d79300f5ea5`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de475c47fbb243ce8d63c6a9d5b05d1000b9110cb149a121c01ceba19ebe5b31`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-alpine3.9`

```console
$ docker pull redis@sha256:c8d2a155166857e772e5389a44f2c9cbdabc7e7500123fdb9a04b5181b9756b8
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
$ docker pull redis@sha256:8205a681aa6eea2b0c27249894def02a14ff2cbe9fc78e83d62ad04d1180deb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17767533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:631bf69df08e11fff62ae65c901ba312618056a197b8e44a8c8b5a14e19599f2`
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
# Sat, 11 May 2019 01:43:52 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 01:43:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 01:43:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 01:45:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 01:45:44 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 01:45:45 GMT
VOLUME [/data]
# Sat, 11 May 2019 01:45:45 GMT
WORKDIR /data
# Sat, 11 May 2019 01:45:45 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 01:45:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:45:46 GMT
EXPOSE 6379
# Sat, 11 May 2019 01:45:46 GMT
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
	-	`sha256:bd01e7204bc2e6511d76700eae62c49824b429140735ce33c26ec5cf7cd2fd08`  
		Last Modified: Sat, 11 May 2019 01:48:21 GMT  
		Size: 14.6 MB (14604899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3250e649335b95bc1de7ab27c52ca193d65d443aebb81d0b41a93c3cebcd8fe1`  
		Last Modified: Sat, 11 May 2019 01:48:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4e8d78e015de17d85dccd54bb6fcae57e89d1840062fc71b8f6cf97d34be64`  
		Last Modified: Sat, 11 May 2019 01:48:14 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:fa9576eb0d73ee083b7084aa85e4cee76a1c2918c2763d72565e53bb5e83ca76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17145147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e55d12121b6706bac8400b69524c5f7b66151b892fe4357790930b36355d8710`
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
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 08:30:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 08:30:15 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 08:30:15 GMT
VOLUME [/data]
# Sat, 11 May 2019 08:30:16 GMT
WORKDIR /data
# Sat, 11 May 2019 08:30:17 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 08:30:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:30:17 GMT
EXPOSE 6379
# Sat, 11 May 2019 08:30:18 GMT
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
	-	`sha256:faa590537db896f7dbd59eefa136b0b4ec5fde41ed935c55766e4c1fc3dd4bd0`  
		Last Modified: Sat, 11 May 2019 08:31:13 GMT  
		Size: 14.2 MB (14193661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad25456d273d355a363facc212c03553f592d3294d4c668dcb9d760771406786`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fbeb570419e4c2bcd05116800b7e346150a94789b074c6a3bd074e8bdac81b`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:86ead9df3c076636361c768b7867ca8218ee7e33a08a59120079d3717bf517a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16695218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f14051796eac5c87272605b003e27c14d0931343d0e6a19663992e882d3c44`
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
# Sat, 11 May 2019 12:44:06 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 12:44:06 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 12:44:07 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 12:44:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:44:53 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:44:53 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:44:54 GMT
WORKDIR /data
# Sat, 11 May 2019 12:44:54 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:44:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:44:55 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:44:56 GMT
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
	-	`sha256:d4602ba16023ffa9bfcae68c957eabe7e2c2033db311272302ae47e81dc76fba`  
		Last Modified: Sat, 11 May 2019 12:46:11 GMT  
		Size: 13.9 MB (13942626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc179faa7a69c3f71a476937b9317ea0d372a8bb5ea5a152ba3efafff02f21fa`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed8a8a5680ba28b4c0046fe05884d18d251fba7a176c9462d6c7b8cf7a513b2`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:481163e642606e2b797e1fa944d8dd7578562068101e196d3b8130726c2e733d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17606493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120bbe7d80ce44b20582f048319ce9e54337ca73aaecab166a95d8c4f37f7f46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:20:35 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:20:40 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 12:20:42 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 12:20:43 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 12:20:44 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 12:24:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:24:18 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:24:20 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:24:21 GMT
WORKDIR /data
# Sat, 11 May 2019 12:24:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:24:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:24:25 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:24:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2bbc591442d67f5c6f1b59929eaab9c201bad200fa822ea07b7c9ee545f560`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedf954ee4011d466f4e0013d01503e2b3eb44afa0bf96a32410628ab18ed2e1`  
		Last Modified: Sat, 11 May 2019 12:27:38 GMT  
		Size: 406.0 KB (405994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e9d4f1599b3a8f1b1789b8fcb095a2d455fd061f22e22764cd250add1e8403`  
		Last Modified: Sat, 11 May 2019 12:27:50 GMT  
		Size: 14.5 MB (14509954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6a55055b9d3f0d2668fff43134b4c73a25f9c890b29a6d43379fd0bd5ef427`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc47553cb219b9b45a4d61a50c44dcf2951239e0d4c031a8cecd2116741ba568`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:1f2bd78966937642dc4924d64d459048744cf430201b695e5ab8cd5581d89472
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17129598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e9c0979026325c34d28e23565baea3d20d13608f2a54353514be94a6ea9ebdc`
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
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 14:20:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 14:20:57 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 14:20:57 GMT
VOLUME [/data]
# Sat, 11 May 2019 14:20:57 GMT
WORKDIR /data
# Sat, 11 May 2019 14:20:58 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 14:20:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 14:20:58 GMT
EXPOSE 6379
# Sat, 11 May 2019 14:20:58 GMT
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
	-	`sha256:4f657a1131eba36fee35397da770cb8f49c91aa5dcc70b740f87cbbb7c7912af`  
		Last Modified: Sat, 11 May 2019 14:22:07 GMT  
		Size: 14.0 MB (13966770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cccd68cbe338abc68431db2ed284b0c8fe64671fc5f50fcbe67640cd6b1a77f6`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b491d8b3ea12c55389dea6640c0ff738fe6cd04161c50ed81cb45dea07275d`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:d569b4a0bd97bb5b6878cc756732296567b1e990d676c07514d0eb146b59c091
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18618574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f961495ad921998aa1da6838a3b2d8b5192389c80f7a7b861772dc213d6b63f`
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
# Sat, 11 May 2019 08:59:04 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 08:59:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 08:59:38 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 09:00:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 09:00:49 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 09:00:53 GMT
VOLUME [/data]
# Sat, 11 May 2019 09:00:59 GMT
WORKDIR /data
# Sat, 11 May 2019 09:01:03 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 09:01:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:01:10 GMT
EXPOSE 6379
# Sat, 11 May 2019 09:01:15 GMT
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
	-	`sha256:d595595300bc8a81f2a88f3390aa64532f4b2c95048f594e99dcdd4e35d9c5e4`  
		Last Modified: Sat, 11 May 2019 09:03:46 GMT  
		Size: 15.4 MB (15424523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90c80fb62e77b09c70f5b58db276a69ccdacb4dcc2ba7b85eb8f2200d12b7ed`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0276a3e88f4c305e7f413768283776d6e2073ad27f9ed470b7254183415b0d`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:e02c7407f8e10e8f07a22a978de37b8360444c2c6c38b2d3e05b7b8283c129c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17822678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f46fb474d5c752e52c6aa4feb18d02bdde8504cb1a178269214072173c66087c`
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
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 13:30:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 13:30:43 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 13:30:43 GMT
VOLUME [/data]
# Sat, 11 May 2019 13:30:44 GMT
WORKDIR /data
# Sat, 11 May 2019 13:30:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 13:30:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 13:30:44 GMT
EXPOSE 6379
# Sat, 11 May 2019 13:30:44 GMT
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
	-	`sha256:728b86051c3d69795b194a1223812eb51170a19fec8c73b55b1bf881bcba0394`  
		Last Modified: Sat, 11 May 2019 13:32:12 GMT  
		Size: 14.9 MB (14868831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3189edd34dda98b805f8476c29b5c74e11b38176f066ff5f6b21d79300f5ea5`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de475c47fbb243ce8d63c6a9d5b05d1000b9110cb149a121c01ceba19ebe5b31`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:5-stretch`

```console
$ docker pull redis@sha256:2dfa6432744659268d001d16c39f7be52ee73ef7e1001ff80643f0f7bdee117e
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
$ docker pull redis@sha256:82ac0e8f4f2cb5db18714b726febea6de9666ad9d9ad6f62f433f073bc3048f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35215350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fe14ff19812e816e1b21f7daa5fa25ab9bff4365252fe38d8eef4bdf1150ee`
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
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 04:51:03 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:51:04 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:51:04 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:51:04 GMT
WORKDIR /data
# Wed, 08 May 2019 04:51:04 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:51:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:51:05 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:51:05 GMT
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
	-	`sha256:98afd60e45e486761d7af1e91f6ec18833e5f3d1996b89efc7e77d99a2346324`  
		Last Modified: Wed, 08 May 2019 04:55:47 GMT  
		Size: 11.8 MB (11782379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495c87fda8597a435f2f0e2b03678a30834a84b35038e5fa2976268e0408f6df`  
		Last Modified: Wed, 08 May 2019 04:55:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed676785841677297b27a68be0b5358106bcb4136e5d393b1b1655d563d0afca`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:84569312082422dc1d8e3de786232d0c02785ee2b2763e4590bfc95474feb8f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33535203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2a0a484cdb7f9445da8ff1f4c81bc29cffd3f27840d1b0fdbb2fb27f1b9c96`
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
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 09:46:33 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 09:46:34 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 09:46:34 GMT
VOLUME [/data]
# Wed, 08 May 2019 09:46:35 GMT
WORKDIR /data
# Wed, 08 May 2019 09:46:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 09:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 09:46:36 GMT
EXPOSE 6379
# Wed, 08 May 2019 09:46:37 GMT
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
	-	`sha256:377b34ce418aa6f727f895c814df11520097257efe400aff206ee25adee76316`  
		Last Modified: Wed, 08 May 2019 09:47:48 GMT  
		Size: 11.4 MB (11445861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3aba87501f3bdfdc69c75d102b55d3ac29b4fd641b0831756b1276467fd1215`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3c93d64dc3ddb49669e7c3f0c13e80e5e297c0823654f0aeca23153f7d6a17`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:4574b95d794a232a3b0fd35a7468b0c4793b904e9ba5a754859fa5791d20901c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31333365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eca94f5741f6aa607494482a9416117fef5f86b99c7383fa4ff02ee505c2661`
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
# Wed, 08 May 2019 14:54:32 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 14:54:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 14:54:33 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:55:34 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:55:38 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:55:39 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:55:39 GMT
WORKDIR /data
# Wed, 08 May 2019 14:55:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:55:41 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:55:42 GMT
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
	-	`sha256:5d68aa0d67ad92f6a0ae85ded8d62301312a2ae372ec9ed42e8ae31c48b221d8`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 11.1 MB (11139036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bed5b6abf638a3ae727eea5f93cc44c4112a5911c90f077e08e97c180c38e08`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9591faf9a9a8e580237305eed699371f075e14dd925482e2f041ef9eed4df1`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:fa04d74cc975e9a6e66542ab3f84292075f16f05d239aa67cfb171c4b0c483f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32828249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61ab367aee1be0fd630916c650fc5ea7ea963f77eb815be618ddf7bb906284d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:32:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:33:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 19:33:38 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 19:33:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 19:33:39 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 19:36:12 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:36:15 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:36:16 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:36:18 GMT
WORKDIR /data
# Wed, 08 May 2019 19:36:19 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:36:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:36:21 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:36:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c417db3b6fef5fa03d3ab5269f6334eecfaf21aac24e90ccfb27616fdae4b81`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262a0c65662c006f0a35e36f0b9e354abe8843f584d789a8ab7211e4c514f0b3`  
		Last Modified: Wed, 08 May 2019 19:42:40 GMT  
		Size: 908.1 KB (908087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36db11a6661e8a7174d7bc8fb5952efa16124c8d3b6bae8f169fde5fb2989f22`  
		Last Modified: Wed, 08 May 2019 19:42:45 GMT  
		Size: 11.6 MB (11584081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d8b93264803c65859edcca29f57553c9c68b63103d99fe2dafe3c53c3157f1`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9148e44a67e56fb812bf5278c1fe1623f9d3e5cc0c7c50982bc538133ffbd2`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; 386

```console
$ docker pull redis@sha256:4e7424771cb251675ca03a436ec5341a8adcf1cb625fa44f6e7db1c1799c8b84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35232467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fb641b7565e516df7592c570101d9e05579b498cc4a3921a6069d56ff380bc`
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
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 19:28:33 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:28:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:28:33 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:28:34 GMT
WORKDIR /data
# Wed, 08 May 2019 19:28:34 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:28:34 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:28:34 GMT
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
	-	`sha256:89e4b721bf5244e84393fc827b80f3de96c2c424da7980f73025e767139dd872`  
		Last Modified: Wed, 08 May 2019 19:29:43 GMT  
		Size: 11.2 MB (11189205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ac5302bbee4bf8de96dbc90a4fcf419a600612aa894d938c4e0fcaf4d89c46`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e5333b2af74ba6dfba85bacaacf030d745a49abf8977104f74555b00dcbe95`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:1a1170b855fa1f04a159d01867480c11a0c2bf36bcf9d5351403d4f65b4e9c6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35632061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cad3e8b56fb997a6de849983526b725d4da2c1ea2282a60857cfb64a3f423e3`
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
# Wed, 08 May 2019 13:57:21 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 13:57:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 13:57:34 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:02:22 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:02:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:02:47 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:02:54 GMT
WORKDIR /data
# Wed, 08 May 2019 14:02:57 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:03:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:03:10 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:03:17 GMT
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
	-	`sha256:46dd66674bf3eda5456e0003072a2604f53ec283b233d1f7b888c16803f37a50`  
		Last Modified: Wed, 08 May 2019 14:09:41 GMT  
		Size: 12.0 MB (11974749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f5b5169ee152e631bdad74726bc86f80a1cc9c4fd319d1730229728c86913c`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88b79c0efed44abcd5d926b91926dcfad216e9c1b20a38387e3d123566410bd`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:5-stretch` - linux; s390x

```console
$ docker pull redis@sha256:18d0db45b0310f177739b5361daa4ca3f67063ef3cd148527fb654ca8e5dd746
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35506219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:349668c96c4dda3a742fa2b4cbd3d9d94d073cfb93fa9b98daef555a288a4c90`
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
# Wed, 08 May 2019 14:39:39 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 14:39:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 14:39:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:42:34 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:42:37 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:42:39 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:42:40 GMT
WORKDIR /data
# Wed, 08 May 2019 14:42:41 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:42:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:42:45 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:42:46 GMT
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
	-	`sha256:a4450b9037bba96daa422b9b12579ad9786713caf6d7f1d46ffc8d3809aaaa6d`  
		Last Modified: Wed, 08 May 2019 14:46:59 GMT  
		Size: 12.2 MB (12238116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00efd50a9bb811b74d01717cb4ae9f31c8163fe1d10d93cb6023890266defee5`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80df131c81c1a6db961b53da0aeb2ec99a62f6c4e17d79b0611bcb76d531d4fe`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine`

```console
$ docker pull redis@sha256:c8d2a155166857e772e5389a44f2c9cbdabc7e7500123fdb9a04b5181b9756b8
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
$ docker pull redis@sha256:8205a681aa6eea2b0c27249894def02a14ff2cbe9fc78e83d62ad04d1180deb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17767533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:631bf69df08e11fff62ae65c901ba312618056a197b8e44a8c8b5a14e19599f2`
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
# Sat, 11 May 2019 01:43:52 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 01:43:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 01:43:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 01:45:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 01:45:44 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 01:45:45 GMT
VOLUME [/data]
# Sat, 11 May 2019 01:45:45 GMT
WORKDIR /data
# Sat, 11 May 2019 01:45:45 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 01:45:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:45:46 GMT
EXPOSE 6379
# Sat, 11 May 2019 01:45:46 GMT
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
	-	`sha256:bd01e7204bc2e6511d76700eae62c49824b429140735ce33c26ec5cf7cd2fd08`  
		Last Modified: Sat, 11 May 2019 01:48:21 GMT  
		Size: 14.6 MB (14604899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3250e649335b95bc1de7ab27c52ca193d65d443aebb81d0b41a93c3cebcd8fe1`  
		Last Modified: Sat, 11 May 2019 01:48:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4e8d78e015de17d85dccd54bb6fcae57e89d1840062fc71b8f6cf97d34be64`  
		Last Modified: Sat, 11 May 2019 01:48:14 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:fa9576eb0d73ee083b7084aa85e4cee76a1c2918c2763d72565e53bb5e83ca76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17145147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e55d12121b6706bac8400b69524c5f7b66151b892fe4357790930b36355d8710`
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
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 08:30:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 08:30:15 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 08:30:15 GMT
VOLUME [/data]
# Sat, 11 May 2019 08:30:16 GMT
WORKDIR /data
# Sat, 11 May 2019 08:30:17 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 08:30:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:30:17 GMT
EXPOSE 6379
# Sat, 11 May 2019 08:30:18 GMT
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
	-	`sha256:faa590537db896f7dbd59eefa136b0b4ec5fde41ed935c55766e4c1fc3dd4bd0`  
		Last Modified: Sat, 11 May 2019 08:31:13 GMT  
		Size: 14.2 MB (14193661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad25456d273d355a363facc212c03553f592d3294d4c668dcb9d760771406786`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fbeb570419e4c2bcd05116800b7e346150a94789b074c6a3bd074e8bdac81b`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:86ead9df3c076636361c768b7867ca8218ee7e33a08a59120079d3717bf517a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16695218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f14051796eac5c87272605b003e27c14d0931343d0e6a19663992e882d3c44`
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
# Sat, 11 May 2019 12:44:06 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 12:44:06 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 12:44:07 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 12:44:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:44:53 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:44:53 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:44:54 GMT
WORKDIR /data
# Sat, 11 May 2019 12:44:54 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:44:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:44:55 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:44:56 GMT
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
	-	`sha256:d4602ba16023ffa9bfcae68c957eabe7e2c2033db311272302ae47e81dc76fba`  
		Last Modified: Sat, 11 May 2019 12:46:11 GMT  
		Size: 13.9 MB (13942626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc179faa7a69c3f71a476937b9317ea0d372a8bb5ea5a152ba3efafff02f21fa`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed8a8a5680ba28b4c0046fe05884d18d251fba7a176c9462d6c7b8cf7a513b2`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:481163e642606e2b797e1fa944d8dd7578562068101e196d3b8130726c2e733d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17606493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120bbe7d80ce44b20582f048319ce9e54337ca73aaecab166a95d8c4f37f7f46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:20:35 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:20:40 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 12:20:42 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 12:20:43 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 12:20:44 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 12:24:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:24:18 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:24:20 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:24:21 GMT
WORKDIR /data
# Sat, 11 May 2019 12:24:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:24:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:24:25 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:24:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2bbc591442d67f5c6f1b59929eaab9c201bad200fa822ea07b7c9ee545f560`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedf954ee4011d466f4e0013d01503e2b3eb44afa0bf96a32410628ab18ed2e1`  
		Last Modified: Sat, 11 May 2019 12:27:38 GMT  
		Size: 406.0 KB (405994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e9d4f1599b3a8f1b1789b8fcb095a2d455fd061f22e22764cd250add1e8403`  
		Last Modified: Sat, 11 May 2019 12:27:50 GMT  
		Size: 14.5 MB (14509954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6a55055b9d3f0d2668fff43134b4c73a25f9c890b29a6d43379fd0bd5ef427`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc47553cb219b9b45a4d61a50c44dcf2951239e0d4c031a8cecd2116741ba568`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; 386

```console
$ docker pull redis@sha256:1f2bd78966937642dc4924d64d459048744cf430201b695e5ab8cd5581d89472
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17129598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e9c0979026325c34d28e23565baea3d20d13608f2a54353514be94a6ea9ebdc`
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
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 14:20:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 14:20:57 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 14:20:57 GMT
VOLUME [/data]
# Sat, 11 May 2019 14:20:57 GMT
WORKDIR /data
# Sat, 11 May 2019 14:20:58 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 14:20:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 14:20:58 GMT
EXPOSE 6379
# Sat, 11 May 2019 14:20:58 GMT
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
	-	`sha256:4f657a1131eba36fee35397da770cb8f49c91aa5dcc70b740f87cbbb7c7912af`  
		Last Modified: Sat, 11 May 2019 14:22:07 GMT  
		Size: 14.0 MB (13966770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cccd68cbe338abc68431db2ed284b0c8fe64671fc5f50fcbe67640cd6b1a77f6`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b491d8b3ea12c55389dea6640c0ff738fe6cd04161c50ed81cb45dea07275d`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:d569b4a0bd97bb5b6878cc756732296567b1e990d676c07514d0eb146b59c091
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18618574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f961495ad921998aa1da6838a3b2d8b5192389c80f7a7b861772dc213d6b63f`
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
# Sat, 11 May 2019 08:59:04 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 08:59:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 08:59:38 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 09:00:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 09:00:49 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 09:00:53 GMT
VOLUME [/data]
# Sat, 11 May 2019 09:00:59 GMT
WORKDIR /data
# Sat, 11 May 2019 09:01:03 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 09:01:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:01:10 GMT
EXPOSE 6379
# Sat, 11 May 2019 09:01:15 GMT
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
	-	`sha256:d595595300bc8a81f2a88f3390aa64532f4b2c95048f594e99dcdd4e35d9c5e4`  
		Last Modified: Sat, 11 May 2019 09:03:46 GMT  
		Size: 15.4 MB (15424523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90c80fb62e77b09c70f5b58db276a69ccdacb4dcc2ba7b85eb8f2200d12b7ed`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0276a3e88f4c305e7f413768283776d6e2073ad27f9ed470b7254183415b0d`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; s390x

```console
$ docker pull redis@sha256:e02c7407f8e10e8f07a22a978de37b8360444c2c6c38b2d3e05b7b8283c129c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17822678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f46fb474d5c752e52c6aa4feb18d02bdde8504cb1a178269214072173c66087c`
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
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 13:30:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 13:30:43 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 13:30:43 GMT
VOLUME [/data]
# Sat, 11 May 2019 13:30:44 GMT
WORKDIR /data
# Sat, 11 May 2019 13:30:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 13:30:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 13:30:44 GMT
EXPOSE 6379
# Sat, 11 May 2019 13:30:44 GMT
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
	-	`sha256:728b86051c3d69795b194a1223812eb51170a19fec8c73b55b1bf881bcba0394`  
		Last Modified: Sat, 11 May 2019 13:32:12 GMT  
		Size: 14.9 MB (14868831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3189edd34dda98b805f8476c29b5c74e11b38176f066ff5f6b21d79300f5ea5`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de475c47fbb243ce8d63c6a9d5b05d1000b9110cb149a121c01ceba19ebe5b31`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:alpine3.9`

```console
$ docker pull redis@sha256:c8d2a155166857e772e5389a44f2c9cbdabc7e7500123fdb9a04b5181b9756b8
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
$ docker pull redis@sha256:8205a681aa6eea2b0c27249894def02a14ff2cbe9fc78e83d62ad04d1180deb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17767533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:631bf69df08e11fff62ae65c901ba312618056a197b8e44a8c8b5a14e19599f2`
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
# Sat, 11 May 2019 01:43:52 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 01:43:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 01:43:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 01:45:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 01:45:44 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 01:45:45 GMT
VOLUME [/data]
# Sat, 11 May 2019 01:45:45 GMT
WORKDIR /data
# Sat, 11 May 2019 01:45:45 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 01:45:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:45:46 GMT
EXPOSE 6379
# Sat, 11 May 2019 01:45:46 GMT
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
	-	`sha256:bd01e7204bc2e6511d76700eae62c49824b429140735ce33c26ec5cf7cd2fd08`  
		Last Modified: Sat, 11 May 2019 01:48:21 GMT  
		Size: 14.6 MB (14604899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3250e649335b95bc1de7ab27c52ca193d65d443aebb81d0b41a93c3cebcd8fe1`  
		Last Modified: Sat, 11 May 2019 01:48:14 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4e8d78e015de17d85dccd54bb6fcae57e89d1840062fc71b8f6cf97d34be64`  
		Last Modified: Sat, 11 May 2019 01:48:14 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; arm variant v6

```console
$ docker pull redis@sha256:fa9576eb0d73ee083b7084aa85e4cee76a1c2918c2763d72565e53bb5e83ca76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17145147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e55d12121b6706bac8400b69524c5f7b66151b892fe4357790930b36355d8710`
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
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 08:29:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 08:30:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 08:30:15 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 08:30:15 GMT
VOLUME [/data]
# Sat, 11 May 2019 08:30:16 GMT
WORKDIR /data
# Sat, 11 May 2019 08:30:17 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 08:30:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:30:17 GMT
EXPOSE 6379
# Sat, 11 May 2019 08:30:18 GMT
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
	-	`sha256:faa590537db896f7dbd59eefa136b0b4ec5fde41ed935c55766e4c1fc3dd4bd0`  
		Last Modified: Sat, 11 May 2019 08:31:13 GMT  
		Size: 14.2 MB (14193661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad25456d273d355a363facc212c03553f592d3294d4c668dcb9d760771406786`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fbeb570419e4c2bcd05116800b7e346150a94789b074c6a3bd074e8bdac81b`  
		Last Modified: Sat, 11 May 2019 08:31:09 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; arm variant v7

```console
$ docker pull redis@sha256:86ead9df3c076636361c768b7867ca8218ee7e33a08a59120079d3717bf517a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16695218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f14051796eac5c87272605b003e27c14d0931343d0e6a19663992e882d3c44`
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
# Sat, 11 May 2019 12:44:06 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 12:44:06 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 12:44:07 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 12:44:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:44:53 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:44:53 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:44:54 GMT
WORKDIR /data
# Sat, 11 May 2019 12:44:54 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:44:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:44:55 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:44:56 GMT
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
	-	`sha256:d4602ba16023ffa9bfcae68c957eabe7e2c2033db311272302ae47e81dc76fba`  
		Last Modified: Sat, 11 May 2019 12:46:11 GMT  
		Size: 13.9 MB (13942626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc179faa7a69c3f71a476937b9317ea0d372a8bb5ea5a152ba3efafff02f21fa`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed8a8a5680ba28b4c0046fe05884d18d251fba7a176c9462d6c7b8cf7a513b2`  
		Last Modified: Sat, 11 May 2019 12:46:07 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:481163e642606e2b797e1fa944d8dd7578562068101e196d3b8130726c2e733d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17606493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120bbe7d80ce44b20582f048319ce9e54337ca73aaecab166a95d8c4f37f7f46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:20:35 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 11 May 2019 12:20:40 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Sat, 11 May 2019 12:20:42 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 12:20:43 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 12:20:44 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 12:24:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 12:24:18 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 12:24:20 GMT
VOLUME [/data]
# Sat, 11 May 2019 12:24:21 GMT
WORKDIR /data
# Sat, 11 May 2019 12:24:22 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 12:24:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:24:25 GMT
EXPOSE 6379
# Sat, 11 May 2019 12:24:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2bbc591442d67f5c6f1b59929eaab9c201bad200fa822ea07b7c9ee545f560`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedf954ee4011d466f4e0013d01503e2b3eb44afa0bf96a32410628ab18ed2e1`  
		Last Modified: Sat, 11 May 2019 12:27:38 GMT  
		Size: 406.0 KB (405994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e9d4f1599b3a8f1b1789b8fcb095a2d455fd061f22e22764cd250add1e8403`  
		Last Modified: Sat, 11 May 2019 12:27:50 GMT  
		Size: 14.5 MB (14509954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6a55055b9d3f0d2668fff43134b4c73a25f9c890b29a6d43379fd0bd5ef427`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc47553cb219b9b45a4d61a50c44dcf2951239e0d4c031a8cecd2116741ba568`  
		Last Modified: Sat, 11 May 2019 12:27:37 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; 386

```console
$ docker pull redis@sha256:1f2bd78966937642dc4924d64d459048744cf430201b695e5ab8cd5581d89472
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17129598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e9c0979026325c34d28e23565baea3d20d13608f2a54353514be94a6ea9ebdc`
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
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 14:19:53 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 14:20:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 14:20:57 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 14:20:57 GMT
VOLUME [/data]
# Sat, 11 May 2019 14:20:57 GMT
WORKDIR /data
# Sat, 11 May 2019 14:20:58 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 14:20:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 14:20:58 GMT
EXPOSE 6379
# Sat, 11 May 2019 14:20:58 GMT
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
	-	`sha256:4f657a1131eba36fee35397da770cb8f49c91aa5dcc70b740f87cbbb7c7912af`  
		Last Modified: Sat, 11 May 2019 14:22:07 GMT  
		Size: 14.0 MB (13966770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cccd68cbe338abc68431db2ed284b0c8fe64671fc5f50fcbe67640cd6b1a77f6`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b491d8b3ea12c55389dea6640c0ff738fe6cd04161c50ed81cb45dea07275d`  
		Last Modified: Sat, 11 May 2019 14:22:04 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; ppc64le

```console
$ docker pull redis@sha256:d569b4a0bd97bb5b6878cc756732296567b1e990d676c07514d0eb146b59c091
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18618574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f961495ad921998aa1da6838a3b2d8b5192389c80f7a7b861772dc213d6b63f`
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
# Sat, 11 May 2019 08:59:04 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 08:59:18 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 08:59:38 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 09:00:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 09:00:49 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 09:00:53 GMT
VOLUME [/data]
# Sat, 11 May 2019 09:00:59 GMT
WORKDIR /data
# Sat, 11 May 2019 09:01:03 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 09:01:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:01:10 GMT
EXPOSE 6379
# Sat, 11 May 2019 09:01:15 GMT
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
	-	`sha256:d595595300bc8a81f2a88f3390aa64532f4b2c95048f594e99dcdd4e35d9c5e4`  
		Last Modified: Sat, 11 May 2019 09:03:46 GMT  
		Size: 15.4 MB (15424523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90c80fb62e77b09c70f5b58db276a69ccdacb4dcc2ba7b85eb8f2200d12b7ed`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0276a3e88f4c305e7f413768283776d6e2073ad27f9ed470b7254183415b0d`  
		Last Modified: Sat, 11 May 2019 09:03:41 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine3.9` - linux; s390x

```console
$ docker pull redis@sha256:e02c7407f8e10e8f07a22a978de37b8360444c2c6c38b2d3e05b7b8283c129c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17822678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f46fb474d5c752e52c6aa4feb18d02bdde8504cb1a178269214072173c66087c`
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
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_VERSION=5.0.4
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Sat, 11 May 2019 13:29:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Sat, 11 May 2019 13:30:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .redis-rundeps $runDeps; 	apk del .build-deps; 		redis-server --version
# Sat, 11 May 2019 13:30:43 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 11 May 2019 13:30:43 GMT
VOLUME [/data]
# Sat, 11 May 2019 13:30:44 GMT
WORKDIR /data
# Sat, 11 May 2019 13:30:44 GMT
COPY file:c48b97ea65422782310396358f838c38c0747767dd606a88d4c3d0b034a60762 in /usr/local/bin/ 
# Sat, 11 May 2019 13:30:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 13:30:44 GMT
EXPOSE 6379
# Sat, 11 May 2019 13:30:44 GMT
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
	-	`sha256:728b86051c3d69795b194a1223812eb51170a19fec8c73b55b1bf881bcba0394`  
		Last Modified: Sat, 11 May 2019 13:32:12 GMT  
		Size: 14.9 MB (14868831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3189edd34dda98b805f8476c29b5c74e11b38176f066ff5f6b21d79300f5ea5`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de475c47fbb243ce8d63c6a9d5b05d1000b9110cb149a121c01ceba19ebe5b31`  
		Last Modified: Sat, 11 May 2019 13:32:08 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:latest`

```console
$ docker pull redis@sha256:2dfa6432744659268d001d16c39f7be52ee73ef7e1001ff80643f0f7bdee117e
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
$ docker pull redis@sha256:82ac0e8f4f2cb5db18714b726febea6de9666ad9d9ad6f62f433f073bc3048f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35215350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fe14ff19812e816e1b21f7daa5fa25ab9bff4365252fe38d8eef4bdf1150ee`
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
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 04:51:03 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:51:04 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:51:04 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:51:04 GMT
WORKDIR /data
# Wed, 08 May 2019 04:51:04 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:51:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:51:05 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:51:05 GMT
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
	-	`sha256:98afd60e45e486761d7af1e91f6ec18833e5f3d1996b89efc7e77d99a2346324`  
		Last Modified: Wed, 08 May 2019 04:55:47 GMT  
		Size: 11.8 MB (11782379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495c87fda8597a435f2f0e2b03678a30834a84b35038e5fa2976268e0408f6df`  
		Last Modified: Wed, 08 May 2019 04:55:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed676785841677297b27a68be0b5358106bcb4136e5d393b1b1655d563d0afca`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v5

```console
$ docker pull redis@sha256:84569312082422dc1d8e3de786232d0c02785ee2b2763e4590bfc95474feb8f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33535203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2a0a484cdb7f9445da8ff1f4c81bc29cffd3f27840d1b0fdbb2fb27f1b9c96`
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
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 09:46:33 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 09:46:34 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 09:46:34 GMT
VOLUME [/data]
# Wed, 08 May 2019 09:46:35 GMT
WORKDIR /data
# Wed, 08 May 2019 09:46:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 09:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 09:46:36 GMT
EXPOSE 6379
# Wed, 08 May 2019 09:46:37 GMT
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
	-	`sha256:377b34ce418aa6f727f895c814df11520097257efe400aff206ee25adee76316`  
		Last Modified: Wed, 08 May 2019 09:47:48 GMT  
		Size: 11.4 MB (11445861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3aba87501f3bdfdc69c75d102b55d3ac29b4fd641b0831756b1276467fd1215`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3c93d64dc3ddb49669e7c3f0c13e80e5e297c0823654f0aeca23153f7d6a17`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v7

```console
$ docker pull redis@sha256:4574b95d794a232a3b0fd35a7468b0c4793b904e9ba5a754859fa5791d20901c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31333365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eca94f5741f6aa607494482a9416117fef5f86b99c7383fa4ff02ee505c2661`
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
# Wed, 08 May 2019 14:54:32 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 14:54:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 14:54:33 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:55:34 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:55:38 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:55:39 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:55:39 GMT
WORKDIR /data
# Wed, 08 May 2019 14:55:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:55:41 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:55:42 GMT
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
	-	`sha256:5d68aa0d67ad92f6a0ae85ded8d62301312a2ae372ec9ed42e8ae31c48b221d8`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 11.1 MB (11139036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bed5b6abf638a3ae727eea5f93cc44c4112a5911c90f077e08e97c180c38e08`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9591faf9a9a8e580237305eed699371f075e14dd925482e2f041ef9eed4df1`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:fa04d74cc975e9a6e66542ab3f84292075f16f05d239aa67cfb171c4b0c483f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32828249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61ab367aee1be0fd630916c650fc5ea7ea963f77eb815be618ddf7bb906284d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:32:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:33:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 19:33:38 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 19:33:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 19:33:39 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 19:36:12 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:36:15 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:36:16 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:36:18 GMT
WORKDIR /data
# Wed, 08 May 2019 19:36:19 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:36:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:36:21 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:36:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c417db3b6fef5fa03d3ab5269f6334eecfaf21aac24e90ccfb27616fdae4b81`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262a0c65662c006f0a35e36f0b9e354abe8843f584d789a8ab7211e4c514f0b3`  
		Last Modified: Wed, 08 May 2019 19:42:40 GMT  
		Size: 908.1 KB (908087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36db11a6661e8a7174d7bc8fb5952efa16124c8d3b6bae8f169fde5fb2989f22`  
		Last Modified: Wed, 08 May 2019 19:42:45 GMT  
		Size: 11.6 MB (11584081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d8b93264803c65859edcca29f57553c9c68b63103d99fe2dafe3c53c3157f1`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9148e44a67e56fb812bf5278c1fe1623f9d3e5cc0c7c50982bc538133ffbd2`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; 386

```console
$ docker pull redis@sha256:4e7424771cb251675ca03a436ec5341a8adcf1cb625fa44f6e7db1c1799c8b84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35232467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fb641b7565e516df7592c570101d9e05579b498cc4a3921a6069d56ff380bc`
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
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 19:28:33 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:28:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:28:33 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:28:34 GMT
WORKDIR /data
# Wed, 08 May 2019 19:28:34 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:28:34 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:28:34 GMT
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
	-	`sha256:89e4b721bf5244e84393fc827b80f3de96c2c424da7980f73025e767139dd872`  
		Last Modified: Wed, 08 May 2019 19:29:43 GMT  
		Size: 11.2 MB (11189205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ac5302bbee4bf8de96dbc90a4fcf419a600612aa894d938c4e0fcaf4d89c46`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e5333b2af74ba6dfba85bacaacf030d745a49abf8977104f74555b00dcbe95`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; ppc64le

```console
$ docker pull redis@sha256:1a1170b855fa1f04a159d01867480c11a0c2bf36bcf9d5351403d4f65b4e9c6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35632061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cad3e8b56fb997a6de849983526b725d4da2c1ea2282a60857cfb64a3f423e3`
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
# Wed, 08 May 2019 13:57:21 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 13:57:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 13:57:34 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:02:22 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:02:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:02:47 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:02:54 GMT
WORKDIR /data
# Wed, 08 May 2019 14:02:57 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:03:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:03:10 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:03:17 GMT
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
	-	`sha256:46dd66674bf3eda5456e0003072a2604f53ec283b233d1f7b888c16803f37a50`  
		Last Modified: Wed, 08 May 2019 14:09:41 GMT  
		Size: 12.0 MB (11974749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f5b5169ee152e631bdad74726bc86f80a1cc9c4fd319d1730229728c86913c`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88b79c0efed44abcd5d926b91926dcfad216e9c1b20a38387e3d123566410bd`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; s390x

```console
$ docker pull redis@sha256:18d0db45b0310f177739b5361daa4ca3f67063ef3cd148527fb654ca8e5dd746
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35506219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:349668c96c4dda3a742fa2b4cbd3d9d94d073cfb93fa9b98daef555a288a4c90`
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
# Wed, 08 May 2019 14:39:39 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 14:39:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 14:39:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:42:34 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:42:37 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:42:39 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:42:40 GMT
WORKDIR /data
# Wed, 08 May 2019 14:42:41 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:42:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:42:45 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:42:46 GMT
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
	-	`sha256:a4450b9037bba96daa422b9b12579ad9786713caf6d7f1d46ffc8d3809aaaa6d`  
		Last Modified: Wed, 08 May 2019 14:46:59 GMT  
		Size: 12.2 MB (12238116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00efd50a9bb811b74d01717cb4ae9f31c8163fe1d10d93cb6023890266defee5`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80df131c81c1a6db961b53da0aeb2ec99a62f6c4e17d79b0611bcb76d531d4fe`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redis:stretch`

```console
$ docker pull redis@sha256:2dfa6432744659268d001d16c39f7be52ee73ef7e1001ff80643f0f7bdee117e
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
$ docker pull redis@sha256:82ac0e8f4f2cb5db18714b726febea6de9666ad9d9ad6f62f433f073bc3048f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35215350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fe14ff19812e816e1b21f7daa5fa25ab9bff4365252fe38d8eef4bdf1150ee`
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
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 04:49:51 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 04:51:03 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 04:51:04 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 04:51:04 GMT
VOLUME [/data]
# Wed, 08 May 2019 04:51:04 GMT
WORKDIR /data
# Wed, 08 May 2019 04:51:04 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 04:51:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 04:51:05 GMT
EXPOSE 6379
# Wed, 08 May 2019 04:51:05 GMT
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
	-	`sha256:98afd60e45e486761d7af1e91f6ec18833e5f3d1996b89efc7e77d99a2346324`  
		Last Modified: Wed, 08 May 2019 04:55:47 GMT  
		Size: 11.8 MB (11782379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495c87fda8597a435f2f0e2b03678a30834a84b35038e5fa2976268e0408f6df`  
		Last Modified: Wed, 08 May 2019 04:55:46 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed676785841677297b27a68be0b5358106bcb4136e5d393b1b1655d563d0afca`  
		Last Modified: Wed, 08 May 2019 04:55:45 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; arm variant v5

```console
$ docker pull redis@sha256:84569312082422dc1d8e3de786232d0c02785ee2b2763e4590bfc95474feb8f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33535203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2a0a484cdb7f9445da8ff1f4c81bc29cffd3f27840d1b0fdbb2fb27f1b9c96`
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
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 09:45:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 09:46:33 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 09:46:34 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 09:46:34 GMT
VOLUME [/data]
# Wed, 08 May 2019 09:46:35 GMT
WORKDIR /data
# Wed, 08 May 2019 09:46:35 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 09:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 09:46:36 GMT
EXPOSE 6379
# Wed, 08 May 2019 09:46:37 GMT
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
	-	`sha256:377b34ce418aa6f727f895c814df11520097257efe400aff206ee25adee76316`  
		Last Modified: Wed, 08 May 2019 09:47:48 GMT  
		Size: 11.4 MB (11445861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3aba87501f3bdfdc69c75d102b55d3ac29b4fd641b0831756b1276467fd1215`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3c93d64dc3ddb49669e7c3f0c13e80e5e297c0823654f0aeca23153f7d6a17`  
		Last Modified: Wed, 08 May 2019 09:47:45 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; arm variant v7

```console
$ docker pull redis@sha256:4574b95d794a232a3b0fd35a7468b0c4793b904e9ba5a754859fa5791d20901c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31333365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eca94f5741f6aa607494482a9416117fef5f86b99c7383fa4ff02ee505c2661`
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
# Wed, 08 May 2019 14:54:32 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 14:54:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 14:54:33 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:55:34 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:55:38 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:55:39 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:55:39 GMT
WORKDIR /data
# Wed, 08 May 2019 14:55:40 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:55:41 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:55:42 GMT
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
	-	`sha256:5d68aa0d67ad92f6a0ae85ded8d62301312a2ae372ec9ed42e8ae31c48b221d8`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 11.1 MB (11139036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bed5b6abf638a3ae727eea5f93cc44c4112a5911c90f077e08e97c180c38e08`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9591faf9a9a8e580237305eed699371f075e14dd925482e2f041ef9eed4df1`  
		Last Modified: Wed, 08 May 2019 14:57:14 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:fa04d74cc975e9a6e66542ab3f84292075f16f05d239aa67cfb171c4b0c483f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32828249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61ab367aee1be0fd630916c650fc5ea7ea963f77eb815be618ddf7bb906284d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:39 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 08 May 2019 19:32:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 08 May 2019 19:33:37 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 08 May 2019 19:33:38 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 19:33:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 19:33:39 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 19:36:12 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:36:15 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:36:16 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:36:18 GMT
WORKDIR /data
# Wed, 08 May 2019 19:36:19 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:36:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:36:21 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:36:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c417db3b6fef5fa03d3ab5269f6334eecfaf21aac24e90ccfb27616fdae4b81`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262a0c65662c006f0a35e36f0b9e354abe8843f584d789a8ab7211e4c514f0b3`  
		Last Modified: Wed, 08 May 2019 19:42:40 GMT  
		Size: 908.1 KB (908087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36db11a6661e8a7174d7bc8fb5952efa16124c8d3b6bae8f169fde5fb2989f22`  
		Last Modified: Wed, 08 May 2019 19:42:45 GMT  
		Size: 11.6 MB (11584081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d8b93264803c65859edcca29f57553c9c68b63103d99fe2dafe3c53c3157f1`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9148e44a67e56fb812bf5278c1fe1623f9d3e5cc0c7c50982bc538133ffbd2`  
		Last Modified: Wed, 08 May 2019 19:42:39 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; 386

```console
$ docker pull redis@sha256:4e7424771cb251675ca03a436ec5341a8adcf1cb625fa44f6e7db1c1799c8b84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35232467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fb641b7565e516df7592c570101d9e05579b498cc4a3921a6069d56ff380bc`
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
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 19:27:29 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 19:28:33 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:28:33 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 19:28:33 GMT
VOLUME [/data]
# Wed, 08 May 2019 19:28:34 GMT
WORKDIR /data
# Wed, 08 May 2019 19:28:34 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 19:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:28:34 GMT
EXPOSE 6379
# Wed, 08 May 2019 19:28:34 GMT
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
	-	`sha256:89e4b721bf5244e84393fc827b80f3de96c2c424da7980f73025e767139dd872`  
		Last Modified: Wed, 08 May 2019 19:29:43 GMT  
		Size: 11.2 MB (11189205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ac5302bbee4bf8de96dbc90a4fcf419a600612aa894d938c4e0fcaf4d89c46`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e5333b2af74ba6dfba85bacaacf030d745a49abf8977104f74555b00dcbe95`  
		Last Modified: Wed, 08 May 2019 19:29:41 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; ppc64le

```console
$ docker pull redis@sha256:1a1170b855fa1f04a159d01867480c11a0c2bf36bcf9d5351403d4f65b4e9c6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35632061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cad3e8b56fb997a6de849983526b725d4da2c1ea2282a60857cfb64a3f423e3`
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
# Wed, 08 May 2019 13:57:21 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 13:57:26 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 13:57:34 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:02:22 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:02:39 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:02:47 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:02:54 GMT
WORKDIR /data
# Wed, 08 May 2019 14:02:57 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:03:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:03:10 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:03:17 GMT
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
	-	`sha256:46dd66674bf3eda5456e0003072a2604f53ec283b233d1f7b888c16803f37a50`  
		Last Modified: Wed, 08 May 2019 14:09:41 GMT  
		Size: 12.0 MB (11974749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f5b5169ee152e631bdad74726bc86f80a1cc9c4fd319d1730229728c86913c`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88b79c0efed44abcd5d926b91926dcfad216e9c1b20a38387e3d123566410bd`  
		Last Modified: Wed, 08 May 2019 14:09:36 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:stretch` - linux; s390x

```console
$ docker pull redis@sha256:18d0db45b0310f177739b5361daa4ca3f67063ef3cd148527fb654ca8e5dd746
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35506219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:349668c96c4dda3a742fa2b4cbd3d9d94d073cfb93fa9b98daef555a288a4c90`
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
# Wed, 08 May 2019 14:39:39 GMT
ENV REDIS_VERSION=5.0.4
# Wed, 08 May 2019 14:39:40 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.4.tar.gz
# Wed, 08 May 2019 14:39:41 GMT
ENV REDIS_DOWNLOAD_SHA=3ce9ceff5a23f60913e1573f6dfcd4aa53b42d4a2789e28fa53ec2bd28c987dd
# Wed, 08 May 2019 14:42:34 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 14:42:37 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 08 May 2019 14:42:39 GMT
VOLUME [/data]
# Wed, 08 May 2019 14:42:40 GMT
WORKDIR /data
# Wed, 08 May 2019 14:42:41 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 08 May 2019 14:42:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:42:45 GMT
EXPOSE 6379
# Wed, 08 May 2019 14:42:46 GMT
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
	-	`sha256:a4450b9037bba96daa422b9b12579ad9786713caf6d7f1d46ffc8d3809aaaa6d`  
		Last Modified: Wed, 08 May 2019 14:46:59 GMT  
		Size: 12.2 MB (12238116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00efd50a9bb811b74d01717cb4ae9f31c8163fe1d10d93cb6023890266defee5`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80df131c81c1a6db961b53da0aeb2ec99a62f6c4e17d79b0611bcb76d531d4fe`  
		Last Modified: Wed, 08 May 2019 14:46:53 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
